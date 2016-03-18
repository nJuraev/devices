<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 01.03.2016
 * Time: 11:10
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout' => 'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-tarif-create',

]);?>
<?= $f->field($model,'Tarif');?>

<?php $oData=ArrayHelper::map($provider,'id','Provider');   ?>
<?= $f->field($model,'Provider')->dropDownList($oData,['prompt'=>'Не выбрано'])?>

<div class="modal-footer">
    <?= Html::Button('Сохранить' , ['class'=>'btn btn-primary sendForm', 'type'=>'submit'])?>
</div>
<?php
ActiveForm::end();
?>



