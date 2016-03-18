<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 9:44
 */
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Html;
use yii\helpers\ArrayHelper;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'id'=>'spr-scripts-create',
    'enableAjaxValidation'=>false
]);?>
<?= $f->field($model,'ScriptIdentification');?>
<?= $f->field($model,'Description');?>
<?= $f->field($model,'DeviceType')->dropDownList(ArrayHelper::map($deviceType,'id','DeviceType'),['prompt'=>'Не выбрано']);?>
<?= $f->field($model,'ManageScript')->textarea(['cols'=>7,'rows'=>'3']);?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm'])?>

</div>
<?php ActiveForm::end();?>
