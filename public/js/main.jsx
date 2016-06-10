var React = require('react');
var ReactDOM = require('react-dom');
var WebStorage = require('react-webstorage');
var Button = require('react-bootstrap').Button;
var ButtonToolbar = require('react-bootstrap').ButtonToolbar;
var FormGroup = require('react-bootstrap').FormGroup;
var ControlLabel = require('react-bootstrap').ControlLabel;
var FormControl = require('react-bootstrap').FormControl;
var Grid = require('react-bootstrap').Grid;
var Row = require('react-bootstrap').Row;
var Col = require('react-bootstrap').Col;

var webStorage = new WebStorage(window.localStorage ||
    window.sessionStorage /* or poly-fill thereof */
);
const weightsContainer = document.getElementById('weightsContainer');


var WeightsRow = React.createClass({
    getInitialState: function() {
        return {
            columnValue: this.props.column,
            operationValue: this.props.operation,
            inputValue: this.props.value
        }
    },
    handleColumnChange: function(event) {
        this.state.columnValue = event.target.value;
    },
    handleOperationChange: function(event) {
        this.state.operationValue = event.target.value;
    },
    handleValueChange: function(event) {
        this.state.inputValue = event.target.value;
    },
    render: function() {
        return (
            <Row className="show-grid" style={{marginBottom: 15+'px'}}>
                <Col xs={6} md={4}>
                    <FormControl ref="columnSelect" onChange={this.handleColumnChange} defaultValue={this.props.column}
                                 pullLeft componentClass="select" placeholder="Оберіть поле">
                        <option value="1">ФІО</option>
                        <option value="2">Адреса</option>
                        <option value="3">Рекомендації</option>
                        <option value="4">Досвід водіння</option>
                        <option value="5">Водійське посвідчення</option>
                        <option value="6">Робота на ПК</option>
                        <option value="7">Освіта</option>
                    </FormControl>
                </Col>
                <Col sm={1} className="col-icon">
                    <i className="fa fa-arrow-right" aria-hidden="true"></i>
                </Col>
                <Col xs={6} md={3} className="">
                    <FormControl ref="operationSelect" defaultValue={this.props.operation}
                                 onChange={this.handleOperationChange} componentClass="select"
                                 placeholder="Оберіть тип ваги">
                        <option value="equal">Рівність</option>
                        <option value="like">LIKE</option>
                        <option value="notlike">Not LIKE</option>
                        <option value="notnull">Заповнене</option>
                        <option value="null">Не заповнене</option>
                    </FormControl>
                </Col>
                <Col sm={1} className="col-icon">
                    <i className="fa fa-arrow-right" aria-hidden="true"></i>
                </Col>
                <Col xsHidden md={4}>
                    <FormControl ref="valueInput" onChange={this.handleValueChange}
                                 defaultValue={this.props.value} inputRef={ref => {this.input = ref;}}
                                 type="text" placeholder='Введіть значення' />
                </Col>
            </Row>
        );
    },
    animate: function() {
        console.log('Pretend %s is animating', this.props.title);
    }
});


var WeightsField = React.createClass({
    getInitialState: function() {
        return {
            items: [],
            count: 0
        }
    },
    componentDidMount: function() {
        this.serverRequest = $.get('/frontend/vacancies/getWeightsById/4', function (result) {
            var serverData = JSON.parse(result);
            //console.log(serverData);

            serverData.map(function(item, i) {
                this.addWeight(item.column, item.operation, item.value);
            }, this);


        }.bind(this));
    },
    handleAddWeight: function() {
        this.addWeight();
    },
    addWeight: function(column = 1, operation = 'equal', value = '') {
        var i = this.state.count;
        if (++i < 6) {
            this.state.count++;
            var items = this.state.items;

            var newItem = {column: column, operation: operation, value: value};

            items.push(newItem);
            this.setState({items: items}, function() {
                if (items.length === 1) {
                    this.refs.item0.animate();
                }
            }.bind(this));
        } else {
            alert('Можна додали не більше 5 ваг');
        }
    },
    handleSubmit: function() {
        console.log(this.refs);
        var finalData = [];
        for (var i = 0; i < this.state.count; i++) {
            finalData.push(this.refs['item' + i].state);
        }
        $.post({
            type: "POST",
            url: '/frontend/vacancies/setWeights/' + vacancyId,
            data: { data: finalData },
            success: function(data){
                console.log(JSON.parse(data));
            },
            error: function(e){console.log(e);}
        });

    },
    render: function() {
        return (
            <FormGroup controlId="formControlsSelect">
                <form>
                    {this.state.items.map(function(item, i) {
                        return (
                            <WeightsRow column={item.column} operation={item.operation} value={item.value}
                                        key={i} title={item} ref={'item' + i} />
                        );
                    }, this)}
                    <Row>
                        <Col md={12}>
                            <ButtonToolbar>
                                <Button onClick={this.handleAddWeight}>Додати вагу</Button>
                                <Button onClick={this.handleSubmit} bsStyle="success">Зберегти зміни</Button>
                            </ButtonToolbar>
                        </Col>
                    </Row>
                </form>
            </FormGroup>
        );
    }
});

ReactDOM.render(
    <WeightsField />
, weightsContainer);

