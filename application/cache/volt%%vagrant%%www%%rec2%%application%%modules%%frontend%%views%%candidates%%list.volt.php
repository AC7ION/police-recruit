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
    
    
    
</div>


<br>
<div id="spinner" class="well well-large well-transparent lead">
    
        
    
</div>

<?php if ($this->length($page->items)) { ?>
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

        <?php foreach ($page->items as $candidate) { ?>

            <tr id="tr_<?php echo $candidate->id; ?>" class="">

                <td><small><?php echo $candidate->id; ?></small></td>
                <td><small><a class="" data-toggle="tooltip"
                              data-placement="bottom"
                              title="test"
                              href="/frontend/view/<?php echo $candidate->id; ?>"><?php echo $candidate->pib; ?></a></small></td>
                <td><small><?php echo $candidate->address; ?></small></td>
                <td><small><?php echo $candidate->drivingExp; ?> (<?php echo $candidate->drivingNumber; ?>)</small></td>
                <td><small><?php echo $candidate->pcWorking; ?></small></td>
                <td><small><time id="c" datetime="<?php echo $candidate->created; ?>"></time><?php echo $candidate->created; ?></small></td>
                <td><small><time id="a" datetime="<?php echo $candidate->changed; ?>"></time><?php echo $candidate->changed; ?></small></td>
                <td><small>t</small></td>
                
                
                
                    
                        
                        
                        
                        
                        
                        
                        
                        
                            

                            
                        
                    
                

            </tr>

        <?php } ?>
        </tbody>

    </table>
<?php } else { ?>
    <div id="content">


        <div id="spinner" class="well well-large well-transparent lead">
            <center>
                Нет заявок<br>
                <img src="/img/notickets.png">
            </center>
        </div>


    </div>
<?php } ?>


<?php echo $this->getContent(); ?>

<?php if ($this->length($page->items)) { ?>
    <div class="">
        <div class="col-sm-12">

            <div class="">

                

                
                

                
                

                
                

                
                

                <div class="row">
                    <div class="col-sm-1">
                        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
                            <?php echo $page->current . '/' . $page->total_pages; ?>
                        </p>
                    </div>
                    <div class="col-sm-11">
                        <nav>
                            <ul class="pagination">
                                <li><?php echo $this->tag->linkTo(array('frontend/candidates/list', 'Перша')); ?></li>
                                <li><?php echo $this->tag->linkTo(array('frontend/candidates/list?page=' . $page->before, 'Попередня')); ?></li>
                                <li><?php echo $this->tag->linkTo(array('frontend/candidates/list?page=' . $page->next, 'Наступна')); ?></li>
                                <li><?php echo $this->tag->linkTo(array('tickets/list?page=' . $page->last, 'Остання')); ?></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>


        </div>



        <div class="text-center">


            

            
            
            
            
            
            
            
            

            
        </div>
    </div>
<?php } ?>