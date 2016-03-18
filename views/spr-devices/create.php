<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 17:01
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout' =>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-devices-create'
]);?>
<?= $f->field($model,'DeviceType');?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm'])?>
</div>
<?php  ActiveForm::end();?>
