<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 17:46
 */
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Html;
use yii\helpers\ArrayHelper;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'access-list-create'
]);

?>
<?= $f->field($model,'IP');?>
<?= $f->field($model,'Description');?>
<?= $f->field($model,'Group')->dropDownList(ArrayHelper::map($group,'id','Name'),['prompt'=>'Не выбрано']);?>
<?= $f->field($model,'Status')->dropDownList(ArrayHelper::map($status,'id','StatusName'),['prompt'=>'Не выбрано']);?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm'])?>
</div>
<?php ActiveForm::end(); ?>

