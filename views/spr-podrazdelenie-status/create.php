<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 13:21
 */
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

$f=ActiveForm::begin([
    'layout'=>'horizontal',
    'enableAjaxValidation'=>false,
    'id'=>'spr-podrazdelenie-status-create'
]);

echo $f->field($model,'PodrazdelenieStatus');
?>
<div class="modal-footer">
    <?= Html::button('Сохранить',['class'=>'btn btn-primary sendForm', 'type'=>'button']); ?>
</div>
<?php ActiveForm::end(); ?>

