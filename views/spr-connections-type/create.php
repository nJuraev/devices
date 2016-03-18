<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 11:00
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout' => 'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'programmists-create',
    /*'enableAjaxValidation'=>false,
    'layout'=>'horizontal',
    'id'=>'sprprovider-create'*/
]);
$cData=ArrayHelper::map($connKind,'id','Kind');
?>
<?= $f->field($model,'Connection');?>
<?= $f->field($model,'Kind')->dropDownList($cData,['prompt'=>'Не выбрано']);?>
<div class="modal-footer">
    <?= Html::Button('Сохранить' , ['class'=>'btn btn-primary sendForm', 'type'=>'submit'])?>
</div>
<?php ActiveForm::end(); ?>
