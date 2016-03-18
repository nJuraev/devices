<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Podrazdelenie */

$this->title = $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Podrazdelenies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="podrazdelenie-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'Code',
            'Name',
            'Adres',
            'RegionId',
            'ParentId',
            'PodrazdelenieType',
            'ProgrammistId',
            'OblastId',
            'Status',
            'DateAdd',
            'AddBy',
            'DateChange',
            'ChangedBy',
            'Position',
            'Slave',
            'FormingDate',
            'Latitude',
            'Longitude',
        ],
    ]) ?>

</div>