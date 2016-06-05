<div class="row">
    <?php echo $this->getContent(); ?>

    <?php if ($status) { ?>
        <h1>Кандидата успішно створено!</h1>
    <?php } else { ?>
        <h1>Кандидата НЕ створено!</h1>
    <?php } ?>
</div>