<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 19.02.2016
 * Time: 15:24
 */

use yii\bootstrap\Modal;
use yii\widgets\ActiveForm;

Modal::begin([
    'header'=>'Добавление сотового оператора',
    'toggleButton'=>['lable'=>'Окно'],
    'footer'=>'Devices'
]);
$f=ActiveForm::begin();

ActiveForm::end();
Modal::end();
