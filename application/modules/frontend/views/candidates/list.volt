<div class="page-header" style="margin-top: -15px;">

    <div class="row">
        <div class="col-md-3"><h3><i class="fa fa-list-alt"></i> Список кандидатів</h3><span
                    class="text-muted">


                            </span></div>


        <div class="col-md-3" style="padding-top:20px;">

            <small class="text-muted">
                <span class="label label-success">&nbsp;</span>
                - відібрані кандидати
            </small>

            <br>

            <small class="text-muted">
                <span class="label label-warning">&nbsp;</span>
                - кандидати, що проходять відбір
            </small>


        </div>
        <div class="col-md-3" style="padding-top:20px; ">
            <small class="text-muted"><span class="label label-default">&nbsp;</span>
                - не прийняті кандидати </small>
            <br>
            &nbsp;#
            <small class="text-muted"> - номер кандидата </small>
        </div>


        <div class="col-md-3" style="padding-top:20px;">
            <form action="/tickets/list" method="post">
                <div class="input-group">

                    <input name="searchKey" type="text" class="form-control  input-sm" id="input_find"
                           data-toggle="tooltip" data-placement="bottom" title="">
                    <input name="find" type="hidden">
          <span class="input-group-btn">
            <button class="btn btn-default  btn-sm" type="submit" title="Нажмите для поиска"
                    id="">Пошук</button>
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
<div id="spinner" class="well well-large well-transparent lead">
    {#<center>#}
        {#<i class="fa fa-spinner fa-spin icon-2x"></i> Loading ...#}
    {#</center>#}
</div>

{% if page.items|length %}
    <table class="table table-bordered table-hover" style=" font-size: 14px; ">
        <thead>
        <tr>
            <th>
                <center>#</center>
            </th>
            <th>
                <center>ПІБ</center>
            </th>
            <th>
                <center>Адреса</center>
            </th>
            <th>
                <center>Водіння</center>
            </th>
            <th>
                <center>Робота за ПК</center>
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

        {% for candidate in page.items %}

            <tr id="tr_{{ candidate.id }}" class="">

                <td><small>{{ candidate.id }}</small></td>
                <td><small><a class="" data-toggle="tooltip"
                              data-placement="bottom"
                              title="test"
                              href="/frontend/view/{{ candidate.id }}">{{ candidate.pib }}</a></small></td>
                <td><small>{{ candidate.address }}</small></td>
                <td><small>{{ candidate.drivingExp }} ({{ candidate.drivingNumber }})</small></td>
                <td><small>{{ candidate.pcWorking }}</small></td>
                <td><small><time id="c" datetime="{{ candidate.created }}"></time>{{ candidate.created }}</small></td>
                <td><small><time id="a" datetime="{{ candidate.changed }}"></time>{{ candidate.changed }}</small></td>
                <td><small>t</small></td>
                {#<td><small>{{ ticket.user_to.fio }}</small></td>#}
                {#<td><small>{{ ticket.getStatusLayout() }}</small></td>#}
                {#<td style=" vertical-align: middle; ">#}
                    {#<center>#}
                        {#<div class="btn-group btn-group-xs actions">#}
                        {#<button data-toggle="tooltip" data-placement="bottom"#}
                        {#type="button"#}
                        {#class="btn btn-success" user="{{ user.id }}"#}
                        {#value="{{ ticket.id }}" id="action_list_ok"#}
                        {#status="lock">d</button>#}
                        {#</div>#}
                        {#<div class="btn-group btn-group-xs actions">#}
                            {#<button data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-warning" user="{{ user.id }}" value="{{ ticket.id }}" id="action_list_lock" status="{% if ticket.lock_by %}unlock{% else %}lock{% endif %}" data-original-title="разблокировать"><i class="fa fa-{% if ticket.lock_by %}lock{% else %}unlock{% endif %}"></i></button>#}

                            {#<button data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-success" user="{{ user.id }}" value="{{ ticket.id }}" id="action_list_ok" status="{% if ticket.ok_by %}unok{% else %}ok{% endif %}" data-original-title="выполнить"><i class="fa {% if ticket.ok_by %}fa-check-circle-o{% else %}fa-circle-o{% endif %}"></i></button>#}
                        {#</div>#}
                    {#</center>#}
                {#</td>#}

            </tr>

        {% endfor %}
        </tbody>

    </table>
{% else %}
    <div id="content">


        <div id="spinner" class="well well-large well-transparent lead">
            <center>
                Нет заявок<br>
                <img src="/img/notickets.png">
            </center>
        </div>


    </div>
{% endif %}
{#{% include('tickets/listContent') %}#}

{{ content() }}

{% if page.items|length %}
    <div class="">
        <div class="col-sm-12">

            <div class="">

                {#<button id="sort_list" value="main" type="button" class="btn btn-primary " data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Показать все"><i class="fa fa-home"></i></button>#}

                {#<button id="sort_list" value="free" data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-info " data-original-title="Свободные"><i class="fa fa-circle-thin"></i>#}
                {#</button>#}

                {#<button id="sort_list" value="ok" data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-success " data-original-title="Выполненные"><i class="fa fa-check-circle"></i>#}
                {#</button>#}

                {#<button id="sort_list" value="ilock" data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-warning " data-original-title="Заблокированные мной"><i class="fa fa-gavel"></i>#}
                {#</button>#}

                {#<button id="sort_list" value="lock" data-toggle="tooltip" data-placement="bottom" title="" type="button" class="btn btn-default " data-original-title="Заблокированые не мной"><i class="fa fa-gavel"></i>#}
                {#</button>#}

                <div class="row">
                    <div class="col-sm-1">
                        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
                            {{ page.current~"/"~page.total_pages }}
                        </p>
                    </div>
                    <div class="col-sm-11">
                        <nav>
                            <ul class="pagination">
                                <li>{{ link_to("frontend/candidates/list", "Перша") }}</li>
                                <li>{{ link_to("frontend/candidates/list?page="~page.before, "Попередня") }}</li>
                                <li>{{ link_to("frontend/candidates/list?page="~page.next, "Наступна") }}</li>
                                <li>{{ link_to("tickets/list?page="~page.last, "Остання") }}</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>


        </div>



        <div class="text-center">


            {#<div class="pull-right">#}

            {#<div class="btn-group btn-group-xs">#}
            {#<button id="list_set_ticket" type="button" class="btn btn-default ">10#}
            {#</button>#}
            {#<button id="list_set_ticket" type="button" class="btn btn-default ">15#}
            {#</button>#}
            {#<button id="list_set_ticket" type="button" class="btn btn-default ">20#}
            {#</button>#}
            {#</div>#}

            {#</div>#}
        </div>
    </div>
{% endif %}