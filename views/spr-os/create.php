<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 8:30
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-os-create'
]);

?>
<?= $f->field($model,'Os');?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm']);?>
</div>
<?php ActiveForm::end();?>


