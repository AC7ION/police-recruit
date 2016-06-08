<div class="page-header" style="margin-top: -15px;">

    <div class="row">
        <div class="col-md-3">
            <h3><i class="fa fa-list-alt"></i> Список вакансій</h3>
            <span class="text-muted">
                <a class="btn btn-success" href="/frontend/vacancies/new">Створити вакансію</a>
            </span>
        </div>

        <div class="col-md-3" style="padding-top:20px;">

            <small class="text-muted">
                <span class="label label-success">&nbsp;</span>
                - відібрані вакансії
            </small>

            <br>

            <small class="text-muted">
                <span class="label label-warning">&nbsp;</span>
                - вакансії, що проходять відбір
            </small>


        </div>
        <div class="col-md-3" style="padding-top:20px; ">
            <small class="text-muted"><span class="label label-default">&nbsp;</span>
                - не прийняті вакансії
            </small>
            <br>
            &nbsp;#
            <small class="text-muted"> - номер вакансії</small>
        </div>


        <div class="col-md-3" style="padding-top:20px;">
            <form action="/frontend/vacancies/list" method="post">
                <div class="input-group">

                    <input name="searchKey" type="text" class="form-control  input-sm" id="input_find"
                           data-toggle="tooltip" data-placement="bottom" title="">
                    <input name="find" type="hidden">
          <span class="input-group-btn">
            <button class="btn btn-default  btn-sm" type="submit" title="Нажмите для поиска" id="">Пошук</button>
          </span>

                </div>

            </form>
        </div>
    </div>
</div>


<div class="btn-group btn-group-justified">
    {#<a class="btn btn-default btn-sm {% if dispatcher.getParams()[0]=='in' %}active{% endif %}" role="button" href="/tickets/list/in"><i class="fa fa-download"></i> Входящие ({{ in_count }}) <span id="label_list_in"></span></a>#}
    {#<a class="btn btn-default btn-sm {% if dispatcher.getParams()[0]=='out' %}active{% endif %}" role="button" id="link_out" href="/tickets/list/out"><i class="fa fa-upload"></i> Исходящие ({{ out_count }}) <span id="label_list_out"></span> </a>#}
    {#<a class="btn btn-default btn-sm {% if dispatcher.getParams()[0]=='arch' %}active{% endif %}" role="button" href="/tickets/list/arch"><i class="fa fa-archive"></i> Архив</a>#}
</div>


<br>
{#<div id="spinner" class="well well-large well-transparent lead">#}
    {#<center>#}
        {#<i class="fa fa-spinner fa-spin icon-2x"></i> Loading ...#}
    {#</center>#}
{#</div>#}

{% if page.items|length %}
    <table class="table table-bordered table-hover" style=" font-size: 14px; ">
        <thead>
        <tr>
            <th>
                <center>#</center>
            </th>
            <th>
                <center>Назва</center>
            </th>
            <th>
                <center>Категорія</center>
            </th>
            <th>
                <center>Департамент</center>
            </th>
            <th>
                <center>Створено</center>
            </th>
            <th>
                <center>Змінено</center>
            </th>
            <th>
                <center>Дія</center>
            </th>
        </tr>
        </thead>
        <tbody>

        {% for vacancy in page.items %}

            <tr id="tr_{{ vacancy.id }}" class="">

                <td><small>{{ vacancy.id }}</small></td>
                <td><small><a class="" data-toggle="tooltip"
                              data-placement="bottom"
                              title="test"
                              href="/frontend/vacancies/view/{{ vacancy.id }}">{{ vacancy.title }}</a></small></td>
                <td><small>{#{ vacancy.category }#}</small></td>
                <td><small>{#{ vacancy.department }#}</small></td>
                <td><small><time id="c" datetime="{{ vacancy.created }}"></time>{{ vacancy.created }}</small></td>
                <td><small><time id="a" datetime="{{ vacancy.changed }}"></time>{{ vacancy.changed }}</small></td>
                <td style=" vertical-align: middle; ">
                <center>
                <div class="btn-group btn-group-xs actions">
                <button data-toggle="tooltip" data-placement="bottom"
                type="button"
                class="btn btn-success" user=""
                value="" id="action_list_ok"
                status="lock">d</button>
                </div>
                <div class="btn-group btn-group-xs actions">
                <button data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-warning" user="" value="" id="action_list_lock" data-original-title="разблокировать"></button>

                <button data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-success" user="" value="" id="action_list_ok"  data-original-title="выполнить"></button>
                </div>
                </center>
                </td>

            </tr>

        {% endfor %}
        </tbody>

    </table>
{% else %}
    <div id="content">


        <div id="spinner" class="well well-large well-transparent lead">
            <center>
                Вакансій немає<br>
                <img src="/img/notickets.png">
            </center>
        </div>


    </div>
{% endif %}
{#{% include('tickets/listContent') %}#}

{{ content() }}
