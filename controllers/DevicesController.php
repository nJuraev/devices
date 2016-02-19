<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 16.02.2016
 * Time: 15:39
 */
namespace app\controllers;
use Yii;
use app\models\Devices;
use yii\web\Controller;

class DevicesController extends Controller{

    function actionAdmin(){
        return $this->render('admin');
    }
}