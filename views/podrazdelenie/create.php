<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Podrazdelenie */

$this->title = 'Create Podrazdelenie';
$this->params['breadcrumbs'][] = ['label' => 'Podrazdelenies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="podrazdelenie-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>