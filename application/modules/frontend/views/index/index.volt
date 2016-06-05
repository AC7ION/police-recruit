<div id="home" class="jumbotron starter-template">
    <h1>Police Recruitment Project</h1>
    <div class="row">
        <a class="btn btn-success btn-sm" href="https://github.com/recrutial" target="_blank"><i class="fa fa-github"></i> Source code on Github</a>
        {#<iframe src="//ghbtns.com/github-btn.html?user=ovr&repo=phalcon-module-skeleton&type=watch&count=true&size=large" allowtransparency="true" frameborder="0" scrolling="0" width="160px" height="30px" style="vertical-align: bottom;"></iframe>#}
    </div>
</div>
<div class="row">
    <div class="form-horizontal" id="main-form">
        {{ form("frontend/candidates/index", 'id': 'new-candidate') }}
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
        {{ endForm() }}
    </div>
</div>
{#<div class="row">#}
    {#<div class="col-lg-12">#}
        {#<h2 class="page-header">Main futures</h2>#}
    {#</div>#}
    {#<div class="col-md-6">#}
        {#<p>The project consists and include:</p>#}
        {#<ul>#}
            {#<li><strong>Modules structure with preinstalled modules</strong>#}
            {#<li>Easy application bootstrapping</li>#}
            {#<li>Full frontend developer stuck composer/npm/bower/gulp</li>#}
            {#<li><strong>Design is builded by Bootstrap v3.2.0</strong>#}
            {#</li>#}
            {#<li>Console task support (provided by symfony/console)</li>#}
            {#<li>Error handling (not found router, dispatcher exceptions)</li>#}
            {#<li>Shared layouts and services</li>#}
        {#</ul>#}
        {#<p>This is a skeleton application written on phalcon framework with performance boost. This project created to develop applications in easy way.</p>#}
    {#</div>#}
    {#<div class="col-md-6">#}
        {#<div class="phalcony-box">#}
            {#<h4>Build with Phalcon + Phalcony:</h4>#}
            {#<img src="/phalcony.svg" id="phalcony">#}
        {#</div>#}
    {#</div>#}
{#</div>#}
{#<div class="row">#}
    {#<div class="col-sm-12">#}
        {#<legend>#}
            {#<h3 class="text-center"><i class="fa fa-user"></i> OAuth module builded with <a href="https://github.com/socialconnect/auth">socialconnect/auth</a></h3>#}
        {#</legend>#}
    {#</div>#}
{#</div>#}
{#<div class="row">#}
    {#<div class="col-sm-6 col-md-offset-3">#}

        {#<div class="buttons" style="margin-left: 42px;">#}
        {#</div>#}
    {#</div>#}
{#</div>#}
{#<div class="row">#}
    {#<div class="col-sm-12">#}
        {#<legend><h2 class="text-center">Preinstalled modules</h2></legend>#}
    {#</div>#}
{#</div>#}
{#<div class="row">#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-user"></i> User</h3>#}
        {#<p>User module.</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>User view.</li>#}
            {#<li>Users list.</li>#}
            {#<li>User model.</li>#}
            {#<li>User group model.</li>#}
        {#</ol>#}
    {#</div>#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-bars"></i> Catalog</h3>#}
        {#<p>Catalog with products and categories for products.</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>Index view.</li>#}
            {#<li>Category view (future).</li>#}
            {#<li>Product view (future).</li>#}
        {#</ol>#}
    {#</div>#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-shopping-cart"></i> Cart (future)</h3>#}
        {#<p>Cart module.</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>Cart service (get, set).</li>#}
            {#<li>Cart index/proccess/view.</li>#}
        {#</ol>#}
    {#</div>#}
{#</div>#}
{#<div class="row">#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-tasks"></i> Admin</h3>#}
        {#<p>Backend admin panel builded with Backbone like single page application and work under Rest Api module.</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>Admin auth.</li>#}
            {#<li>Dashboard.</li>#}
            {#<li>Users list.</li>#}
            {#<li>Products list.</li>#}
        {#</ol>#}
    {#</div>#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-tachometer"></i> Api (Rest)</h3>#}
        {#<p>REST APIs provide access to resources via URI paths. To use a REST API, your plugin or script will make an HTTP request and parse the response. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API..</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>User get.</li>#}
        {#</ol>#}
        {#<h5>Future:</h5>#}
        {#<ol>#}
            {#<li>choose JSON or XML for the response format..</li>#}
        {#</ol>#}
    {#</div>#}
    {#<div class="col-sm-4">#}
        {#<h3><i class="fa fa-child"></i> Frontend</h3>#}
        {#<p>Main frontend module.</p>#}
        {#<h4>Functional:</h4>#}
        {#<ol>#}
            {#<li>Index layout.</li>#}
        {#</ol>#}
        {#<h5>Futures:</h5>#}
        {#<ol>#}
            {#<li>Contact page.</li>#}
        {#</ol>#}
    {#</div>#}
{#</div>#}
