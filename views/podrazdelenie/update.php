<?php use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Podrazdelenie */

$this->title = 'Update Podrazdelenie: ' . ' ' . $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Podrazdelenies', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="podrazdelenie-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>