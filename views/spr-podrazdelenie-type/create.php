<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 16:31
 */
use yii\bootstrap\ActiveForm;

$f=ActiveForm::begin([
    'enableAjaxValidation'=>false,
    'id'=>'spr-podrazdelenie-type-create',
    'layout'=>'horizontal'
]);

?>
<?= $f->field($model,'Name');?>
<div class="modal-footer">
    <?= \yii\bootstrap\Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'submit']);?>
</div>
<?php
    ActiveForm::end();
?>

