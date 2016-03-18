<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 15:10
 */
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-model-device-create'
]);
$dData=\yii\helpers\ArrayHelper::map($deviceType,'id','DeviceType');
?>
<?= $f->field($model,'Model');?>
<?= $f->field($model,'Device')->dropDownList($dData,['prompt'=>'Не выбрано']);?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'submit']);?>
</div>
<?php
ActiveForm::end();
?>

