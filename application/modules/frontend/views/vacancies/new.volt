<div class="row">

    {{ content() }}

    {% if isCreating %}

        <div class="form-horizontal" id="main-form">
            {{ form("frontend/vacancies/new", 'id': 'new-candidate') }}
            {% for element in form %}
                {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                    {{ element }}
                {% elseif is_a(element, 'Phalcon\Forms\Element\Submit') %}
                    <div class="form-group">

                    </div>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            {{ element }}
                        </div>
                    </div>
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
            {{ endForm() }}

        </div>

    {% else %}

        <div class="row">

            {% if status %}
                <h1>Вакансію успішно створено!</h1>
            {% else %}
                <h1>Вакансію НЕ створено!</h1>
            {% endif %}
        </div>

    {% endif %}
</div>