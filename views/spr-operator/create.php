<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 19.02.2016
 * Time: 11:44
 */
$this->title = 'Devices';
use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>

<?php $f=ActiveForm::begin(
    [
        'enableAjaxValidation' => false,
        'id' => 'sproperator-create'
    ]
);?>
<?= $f->field($model,'CodeOperator');?>
<?= $f->field($model,'Nazvanie');?>

<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm','type'=>'button'])?>
</div>

<?php
ActiveForm::end();


?>



