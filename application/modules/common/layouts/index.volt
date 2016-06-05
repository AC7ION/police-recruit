<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Andrew Korniychuk">

    <title>Поліція | Рекрутинг</title>

    <link href="/dist/all.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/%D0%93%D0%B5%D1%80%D0%B0%D0%BB%D1%8C%D0%B4%D0%B8%D1%87%D0%BD%D0%B8%D0%B9_%D0%B7%D0%BD%D0%B0%D0%BA_-_%D0%B5%D0%BC%D0%B1%D0%BB%D0%B5%D0%BC%D0%B0_%D0%9C%D0%92%D0%A1_%D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B8.svg/200px-%D0%93%D0%B5%D1%80%D0%B0%D0%BB%D1%8C%D0%B4%D0%B8%D1%87%D0%BD%D0%B8%D0%B9_%D0%B7%D0%BD%D0%B0%D0%BA_-_%D0%B5%D0%BC%D0%B1%D0%BB%D0%B5%D0%BC%D0%B0_%D0%9C%D0%92%D0%A1_%D0%A3%D0%BA%D1%80%D0%B0%D1%97%D0%BD%D0%B8.svg.png" height="24"> Police Recruiting</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    {% set uri = router.getRewriteUri() %}
                    <li {{ (uri == '/') ? ' class="active"' : '' }}>
                        <a href="/">Новий кандидат</a>
                    </li>
                    <li {{ (uri == '/frontend/candidates/list/') ? ' class="active"' : '' }}>
                        <a href="/frontend/candidates/list/">Кандидати</a>
                    </li>
                    <li {{ (uri == '/frontend/vacancies/list/') ? ' class="active"' : '' }}>
                        <a href="/frontend/vacancies/list/">Вакансії</a>
                    </li>
                    <li>
                        <a href="#">Статистика</a>
                    </li>
                    <li {{ (uri == '/frontend/index/about') ? ' class="active"' : '' }}>
                        <a href="/frontend/index/about">Про систему</a>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

    <div class="container">
        {#{{ uri }}#}
        {{ flash.output() }}
        {{ content() }}
        {{ partial('footer') }}
    </div>
</body>
</html>