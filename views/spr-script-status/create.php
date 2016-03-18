<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 11:49
 */
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-script-status-create'
]);?>
<?= $f->field($model,'ScriptStatus');?>
<?= $f->field($model,'StatusId')->label('ID-скрипт')?>

<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm']); ?>
</div>
<?php ActiveForm::end();     ?>
