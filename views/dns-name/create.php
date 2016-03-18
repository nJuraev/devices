<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.03.2016
 * Time: 10:44
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'dns-name-create'
]);?>
<?= $f->field($model,'DnsName');?>
<?= $f->field($model,'IpAdress');?>
<?= $f->field($model,'Status')->dropDownList(ArrayHelper::map($status,'id','StatusName'),['prompt'=>'Не выбрано']);?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'submit']);?>
</div>
<?php
    ActiveForm::end();
?>
