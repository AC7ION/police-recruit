<div class="row">
    {{ content() }}

    {% if status %}
        <h1>Кандидата успішно створено!</h1>
    {% else %}
        <h1>Кандидата НЕ створено!</h1>
    {% endif %}
</div>