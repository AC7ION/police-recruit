<div class="row">

    <?php echo $this->getContent(); ?>

    <?php if ($isCreating) { ?>

        <div class="form-horizontal" id="main-form">
            <?php echo $this->tag->form(array('frontend/vacancies/new', 'id' => 'new-candidate')); ?>
            <?php $v43288242106290993811iterator = $form; $v43288242106290993811incr = 0; $v43288242106290993811loop = new stdClass(); $v43288242106290993811loop->length = count($v43288242106290993811iterator); $v43288242106290993811loop->index = 1; $v43288242106290993811loop->index0 = 1; $v43288242106290993811loop->revindex = $v43288242106290993811loop->length; $v43288242106290993811loop->revindex0 = $v43288242106290993811loop->length - 1; ?><?php foreach ($v43288242106290993811iterator as $element) { ?><?php $v43288242106290993811loop->first = ($v43288242106290993811incr == 0); $v43288242106290993811loop->index = $v43288242106290993811incr + 1; $v43288242106290993811loop->index0 = $v43288242106290993811incr; $v43288242106290993811loop->revindex = $v43288242106290993811loop->length - $v43288242106290993811incr; $v43288242106290993811loop->revindex0 = $v43288242106290993811loop->length - ($v43288242106290993811incr + 1); $v43288242106290993811loop->last = ($v43288242106290993811incr == ($v43288242106290993811loop->length - 1)); ?>
                <?php if (is_a($element, 'Phalcon\Forms\Element\Hidden')) { ?>
                    <?php echo $element; ?>
                <?php } elseif (is_a($element, 'Phalcon\Forms\Element\Submit')) { ?>
                    <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-10">
                            <?php echo $element; ?>
                        </div>
                    </div>
                <?php } else { ?>
                    <?php if ($v43288242106290993811loop->index == 2) { ?>
                        <hr>
                    <?php } ?>
                    <div class="form-group">
                        <label class="col-md-2 control-label">
                            <small><?php echo $element->label(); ?>:</small>
                        </label>
                        <div class="col-md-10">
                            <?php echo $element->render(); ?>
                        </div>
                    </div>
                <?php } ?>
            <?php $v43288242106290993811incr++; } ?>
            <?php echo $this->tag->endform(); ?>

        </div>

    <?php } else { ?>

        <div class="row">

            <?php if ($status) { ?>
                <h1>Вакансію успішно створено!</h1>
            <?php } else { ?>
                <h1>Вакансію НЕ створено!</h1>
            <?php } ?>
        </div>

    <?php } ?>
</div>