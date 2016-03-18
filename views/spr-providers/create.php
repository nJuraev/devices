<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 11:43
 */

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'sprproviders-create'
]);
echo $f->field($model,'Provider');?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'button']);?>
</div>
<?php ActiveForm::end();?>
