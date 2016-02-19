<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.02.2016
 * Time: 8:37
 */

namespace app\controllers;
use Yii;
use yii\web\Controller;
use app\models\Programmists;

class ProgrammistsController extends Controller{

    function actionAdmin(){
        return $this->render('admin');
    }

    function actionIndex(){
        return $this->render('admin');
    }
}