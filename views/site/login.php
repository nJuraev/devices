
<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<link href="<?= Yii::$app->request->baseUrl?>/css/login.css" rel="stylesheet" type="text/css">
<link href="<?= Yii::$app->request->baseUrl?>/css/bootstrap.css" rel="stylesheet" type="text/css">
<div class="wrapper">
    <?php $form = ActiveForm::begin(['id' => 'login-form','class'=>'form-signin']); ?>

       <?= $form->field($model, 'username') ?>
        <?= $form->field($model, 'password')->passwordInput() ?>
    <div class="submit">
        <table>
            <tr>
                <td> <?= $form->field($model, 'rememberMe')->checkbox() ?></td>
                <td style="text-align: end ; padding-left: 30%"><?= Html::submitButton('Войти', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?></td>
            </tr>
        </table>


    </div>
    <?php ActiveForm::end(); ?>

</div>