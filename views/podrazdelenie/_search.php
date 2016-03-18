<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PodrazdelenieSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="podrazdelenie-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'Code') ?>

    <?= $form->field($model, 'Name') ?>

    <?= $form->field($model, 'Adres') ?>

    <?= $form->field($model, 'RegionId') ?>

    <?php // echo $form->field($model, 'ParentId') ?>

    <?php // echo $form->field($model, 'PodrazdelenieType') ?>

    <?php // echo $form->field($model, 'ProgrammistId') ?>

    <?php // echo $form->field($model, 'OblastId') ?>

    <?php // echo $form->field($model, 'Status') ?>

    <?php // echo $form->field($model, 'DateAdd') ?>

    <?php // echo $form->field($model, 'AddBy') ?>

    <?php // echo $form->field($model, 'DateChange') ?>

    <?php // echo $form->field($model, 'ChangedBy') ?>

    <?php // echo $form->field($model, 'Position') ?>

    <?php // echo $form->field($model, 'Slave') ?>

    <?php // echo $form->field($model, 'FormingDate') ?>

    <?php // echo $form->field($model, 'Latitude') ?>

    <?php // echo $form->field($model, 'Longitude') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>