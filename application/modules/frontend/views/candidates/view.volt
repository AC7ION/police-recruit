<div class="container">

    {{ content() }}
    <div class="resume">
        <header class="page-header">
            <h1 class="page-title">Кандидатура {{ candidate.pib }}</h1>
            <small> <i class="fa fa-clock-o"></i> Останнє оновлення: <time>{{ candidate.changed }}</time></small>
        </header>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading resume-heading">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-xs-12 col-sm-4">
                                    <figure>
                                        <img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
                                    </figure>

                                    <div class="row">
                                        <div class="col-xs-12 social-btns">

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-google">
                                                    <i class="fa fa-google"></i> </a>
                                            </div>

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-facebook">
                                                    <i class="fa fa-facebook"></i> </a>
                                            </div>

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-twitter">
                                                    <i class="fa fa-twitter"></i> </a>
                                            </div>

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-linkedin">
                                                    <i class="fa fa-linkedin"></i> </a>
                                            </div>

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-github">
                                                    <i class="fa fa-github"></i> </a>
                                            </div>

                                            <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                <a href="#" class="btn btn-social btn-block btn-stackoverflow">
                                                    <i class="fa fa-stack-overflow"></i> </a>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <div class="col-xs-12 col-sm-8">
                                    <ul class="list-group">
                                        <li class="list-group-item">{{ candidate.pib }}</li>
                                        <li class="list-group-item"><i class="fa fa-phone"></i> {{ candidate.phoneMobile }} </li>
                                        <li class="list-group-item"><i class="fa fa-phone"></i> {{ candidate.phoneHome }} </li>
                                        <li class="list-group-item"><i class="fa fa-envelope"></i> {{ candidate.email }}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bs-callout bs-callout-info">
                        <h4>Рекомендації</h4>
                        <p>
                            {{ candidate.recommendations }}
                        </p>

                    </div>
                    <div class="bs-callout bs-callout-info">
                        <h4>Адреса</h4>
                        <p>
                            {{ candidate.address }}
                        </p>
                    </div>

                    {#<div class="bs-callout bs-callout-danger">#}
                        {#<h4>Prior Experiences</h4>#}
                        {#<ul class="list-group">#}
                            {#<a class="list-group-item inactive-link" href="#">#}
                                {#<h4 class="list-group-item-heading">#}
                                    {#Software Engineer at Twitter#}
                                {#</h4>#}
                                {#<p class="list-group-item-text">#}
                                    {#Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. Quis verear mel ne. Munere vituperata vis cu,#}
                                    {#te pri duis timeam scaevola, nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.#}
                                {#</p>#}
                            {#</a>#}
                            {#<a class="list-group-item inactive-link" href="#">#}
                                {#<h4 class="list-group-item-heading">Software Engineer at LinkedIn</h4>#}
                                {#<p class="list-group-item-text">#}
                                    {#Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur.#}
                                    {#Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola,#}
                                    {#nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.#}
                                {#</p><ul>#}
                                    {#<li>#}
                                        {#Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur.#}
                                        {#Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola,#}
                                        {#nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.#}
                                    {#</li>#}
                                    {#<li>#}
                                        {#Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur.#}
                                        {#Quis verear mel ne. Munere vituperata vis cu, te pri duis timeam scaevola,#}
                                        {#nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.#}
                                    {#</li>#}
                                {#</ul>#}
                                {#<p></p>#}
                            {#</a>#}
                        {#</ul>#}
                    {#</div>#}
                    {#<div class="bs-callout bs-callout-danger">#}
                        {#<h4>Key Expertise</h4>#}
                        {#<ul class="list-group">#}
                            {#<li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc </li>#}
                            {#<li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>#}
                            {#<li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>#}
                            {#<li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>#}
                            {#<li class="list-group-item">Lorem ipsum dolor sit amet, ea vel prima adhuc</li>#}
                            {#<li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>#}
                        {#</ul>#}
                    {#</div>#}

                    <div class="bs-callout bs-callout-info">
                        <h4>Освіта</h4>
                        <table class="table table-striped table-responsive ">
                            <thead>
                            <tr><th></th>
                            </tr></thead>
                            <tbody>
                            <tr>
                                <td>{{ candidate.educationText }}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>


                    <hr>
                    <div class="bs-callout bs-callout-danger">
                        <h4>Підбір вакансії</h4>
                        <ul class="list-group">
                            <a class="list-group-item inactive-link" href="#">


                                {% for vacancy in vacancies %}
                                    <div class="progress">
                                        <div data-placement="top" style="width: 100%;"
                                             aria-valuemax="100" aria-valuemin="0" aria-valuenow="{{ vacancy['percent'] }}" role="progressbar" class="progress-bar progress-bar-success">
                                            <span class="sr-only">{{ vacancy['percent'] }}%</span>
                                            <span class="progress-type">{{ vacancy['title'] }} <strong>{{ vacancy['percent'] }}%</strong></span>
                                        </div>
                                    </div>
                                {% endfor %}


                                <div class="progress-meter">
                                    <div style="width: 30%;" class="meter meter-left"><span class="meter-text">Не проходить</span></div>
                                    <div style="width: 30%;" class="meter meter-left"><span class="meter-text">Частково проходить</span></div>
                                    <div style="width: 30%;" class="meter meter-right"><span class="meter-text">Проходить по усіх критеріях</span></div>
                                </div>

                            </a>

                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </div>

</div>