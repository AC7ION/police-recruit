<div id="home" class="jumbotron starter-template">
    <h1>Police Recruitment Project</h1>
    <div class="row">
        <a class="btn btn-success btn-sm" href="https://github.com/recrutial" target="_blank"><i class="fa fa-github"></i> Source code on Github</a>
        
    </div>
</div>
<div class="row">
    <div class="form-horizontal" id="main-form">
        <?php echo $this->tag->form(array('frontend/candidates/index', 'id' => 'new-candidate')); ?>
            <?php $v5677086836830995341iterator = $form; $v5677086836830995341incr = 0; $v5677086836830995341loop = new stdClass(); $v5677086836830995341loop->length = count($v5677086836830995341iterator); $v5677086836830995341loop->index = 1; $v5677086836830995341loop->index0 = 1; $v5677086836830995341loop->revindex = $v5677086836830995341loop->length; $v5677086836830995341loop->revindex0 = $v5677086836830995341loop->length - 1; ?><?php foreach ($v5677086836830995341iterator as $element) { ?><?php $v5677086836830995341loop->first = ($v5677086836830995341incr == 0); $v5677086836830995341loop->index = $v5677086836830995341incr + 1; $v5677086836830995341loop->index0 = $v5677086836830995341incr; $v5677086836830995341loop->revindex = $v5677086836830995341loop->length - $v5677086836830995341incr; $v5677086836830995341loop->revindex0 = $v5677086836830995341loop->length - ($v5677086836830995341incr + 1); $v5677086836830995341loop->last = ($v5677086836830995341incr == ($v5677086836830995341loop->length - 1)); ?>
                <?php if (is_a($element, 'Phalcon\Forms\Element\Hidden')) { ?>
                    <?php echo $element; ?>
                <?php } else { ?>
                    <?php if ($v5677086836830995341loop->index == 2) { ?>
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
            <?php $v5677086836830995341incr++; } ?>
        <?php echo $this->tag->endform(); ?>
    </div>
</div>

    
        
    
    
        
        
            
            
            
            
            
            
            
            
        
        
    
    
        
            
            
        
    


    
        
            
        
    


    

        
        
    


    
        
    


    
        
        
        
        
            
            
            
            
        
    
    
        
        
        
        
            
            
            
        
    
    
        
        
        
        
            
            
        
    


    
        
        
        
        
            
            
            
            
        
    
    
        
        
        
        
            
        
        
        
            
        
    
    
        
        
        
        
            
        
        
        
            
        
    

