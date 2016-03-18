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
    'id'=>'spr-purveyors-create',

]);?>
<?= $f->field($model,'Purveyor');?>
<?= $f->field($model,'Surname');?>
<?= $f->field($model,'Name');?>
<?= $f->field($model,'Patronymic')?>
<?php $oData=ArrayHelper::map($oper,'id','CodeOperator');   ?>
<div class="form-group">
    <label class="col-sm-3 control-label" for="programmists-operator">Телефон</label>
    <div class="col-sm-8">

        <table><tr><td><div class="col-sm-2"><?= $f->field($model,'Operator')->dropDownList($oData,['prompt'=>'Не выбрано','style'=>'width:120px;'])->label(false);?></div></td>
                <td> <?= $f->field($model,'Tel')->textInput(['style'=>'width:200px;'])->label(false);?></td></tr></table>
    </div>
</div>

<?= $f->field($model,'Site');?>
<div class="modal-footer">
    <?= Html::Button('Сохранить' , ['class'=>'btn btn-primary sendForm', 'type'=>'submit'])?>
</div>
<?php
ActiveForm::end();
?>



