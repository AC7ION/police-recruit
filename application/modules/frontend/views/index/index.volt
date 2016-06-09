{{ content() }}
<div id="home" class="jumbotron starter-template">
    <h1>Police Recruitment Project</h1>
    <div class="row">
        <a class="btn btn-success btn-sm" href="https://github.com/recrutial" target="_blank"><i class="fa fa-github"></i> Source code on Github</a>
        {#<iframe src="//ghbtns.com/github-btn.html?user=ovr&repo=phalcon-module-skeleton&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160px" height="30px" style="vertical-align: bottom;"></iframe>#}
    </div>
</div>
<header class="page-header">
    <h1 class="page-title">Створення нового кандидата</h1>
</header>
<div class="row">
    <div class="form-horizontal" id="main-form">
        {% set elems = form.getElements() %}

        {% set elemsHidden = {} %}
        {% for el in elems %}
            {% if is_a(el, 'Phalcon\Forms\Element\Hidden') %}
                {% set elemsHidden[loop.index] = el %}
            {% endif %}
        {% endfor %}


        {% set info0 = array_splice(elems, 0, 3) %}
        {% set info1 = array_splice(elems, 0, 3) %}
        {% set info2 = array_splice(elems, 0, 3) %}
        {% set info3 = array_splice(elems, 0, 3) %}
        {% set info4 = array_splice(elems, 0, 1) %}

        {{ form("frontend/candidates/index", 'id': 'new-candidate') }}
        <div class="col-md-12">
            <div class="bs-callout bs-callout-info">
                <div class="col-sm-3">
                    <h4>Основна інформація</h4>
                </div>
                <div class="col-sm-9">
                    {% for element in info0 %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {#{{ element }}#}
                        {% else %}
                            <div class="form-group">
                                <label class="control-label">{{ element.label() }}</label>
                                {{ element.render() }}
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="bs-callout bs-callout-danger">
                <div class="col-sm-3">
                    <h4>Контактна інформація</h4>
                </div>
                <div class="col-sm-9">
                    {% for element in info1 %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {#{{ element }}#}
                        {% else %}
                            <div class="form-group">
                                <label class="control-label">{{ element.label() }}</label>
                                {{ element.render() }}
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="bs-callout bs-callout-danger">
                <div class="col-sm-3">
                    <h4>Освіта</h4>
                </div>
                <div class="col-sm-9">
                    {% for element in info2 %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {#{{ element }}#}
                        {% else %}
                            <div class="form-group">
                                <label class="control-label">{{ element.label() }}</label>
                                {{ element.render() }}
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="bs-callout bs-callout-danger">
                <div class="col-sm-3">
                    <h4>Навики</h4>
                </div>
                <div class="col-sm-9">
                    {% for element in info3 %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {#{{ element }}#}
                        {% else %}
                            <div class="form-group">
                                <label class="control-label">{{ element.label() }}</label>
                                {{ element.render() }}
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="bs-callout bs-callout-danger">
                <div class="col-sm-3">
                    <h4>Рекомендації</h4>
                </div>
                <div class="col-sm-9">
                    {% for element in info4 %}
                        {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                            {#{{ element }}#}
                        {% else %}
                            <div class="form-group">
                                <label class="control-label">{{ element.label() }}</label>
                                {{ element.render() }}
                            </div>
                        {% endif %}
                    {% endfor %}

                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        {% for hid in elemsHidden %}
            {% if is_a(hid, 'Phalcon\Forms\Element\Hidden') %}
                {{ hid }}
            {% endif %}
        {% endfor %}

        <div class="col-md-12">
            <input type="submit" value="Зберегти" class="form-control btn-success">
        </div>



        {{ endForm() }}

        {#<br><br><br>#}

        {#{{ form("frontend/candidates/index", 'id': 'new-candidate') }}#}
            {#{% for element in form %}#}
                {#{% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}#}
                    {#{{ element }}#}
                {#{% else %}#}
                    {#<div class="col-md-12">#}
                        {#<div class="bs-callout bs-callout-danger">#}
                            {#<div class="col-sm-3">#}
                                {#<h4></h4>#}
                            {#</div>#}
                            {#<div class="col-sm-9">#}
                                {#<div class="form-group">#}
                                    {#<label class="control-label">{{ element.label() }}</label>#}
                                    {#{{ element.render() }}#}
                                {#</div>#}

                            {#</div>#}
                            {#<div class="clearfix"></div>#}
                        {#</div>#}
                    {#</div>#}
                {#{% endif %}#}
            {#{% endfor %}#}
        {#{{ endForm() }}#}
    </div>
</div>
