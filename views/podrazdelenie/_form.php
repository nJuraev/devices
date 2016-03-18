<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Podrazdelenie */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="podrazdelenie-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Adres')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'RegionId')->textInput() ?>

    <?= $form->field($model, 'ParentId')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'PodrazdelenieType')->textInput() ?>

    <?= $form->field($model, 'ProgrammistId')->textInput() ?>

    <?= $form->field($model, 'OblastId')->textInput() ?>

    <?= $form->field($model, 'Status')->textInput() ?>

    <?= $form->field($model, 'DateAdd')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'AddBy')->textInput() ?>

    <?= $form->field($model, 'DateChange')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ChangedBy')->textInput() ?>

    <?= $form->field($model, 'Position')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Slave')->textInput() ?>

    <?= $form->field($model, 'FormingDate')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Latitude')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Longitude')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>