<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 16:09
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$f= ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-ip-group-create'
]);
$sData=\yii\helpers\ArrayHelper::map($status,'id','StatusName');
?>
<?= $f->field($model,'Name');?>
<?= $f->field($model,'Description');?>
<?= $f->field($model, 'Status')->dropDownList($sData,['prompt'=>'Не выбрано']);?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'submit'])?>
</div>
<?php
    ActiveForm::end();
?>
