{{ content() }}

<div class="row" style="padding-bottom:20px;">

    <div class="col-md-8"> <center><h3><i class="fa fa-tag"></i> Регистрация</h3></center></div>


</div>

{{ form("frontend/users/register", 'id': 'new-ticket') }}

<div class="row">
    <div class="col-md-8" id="div_new">
        <div class="panel panel-success">
            <div class="panel-body">
                <div class="form-horizontal" id="main_form" novalidate="" action="" method="post">
                    {% for element in form %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {{ element }}
                        {% else %}
                            {% if loop.index == 2 %}
                                <hr>
                            {% endif %}
                            <div class="form-group">
                                <label class="col-md-2 control-label">
                                    <small>{{ element.label() }}:</small>
                                </label>
                                <div class="col-md-10">
                                    {{ element.render() }}
                                </div>
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
            </div>
        </div>
    </div>
</div>
{{ endForm() }}
