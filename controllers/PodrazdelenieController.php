<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 17:02
 */
namespace app\controllers;
use Yii;
use yii\web\Controller;

class PodrazdelenieController extends Controller{
    function actionAdmin(){
        return $this->render('admin');
    }
}