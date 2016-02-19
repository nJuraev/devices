<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 19.02.2016
 * Time: 10:08
 */
namespace app\controllers;
use Yii;
use yii\web\Controller;
use  app\models\SprOperator;


class SprOperatorController extends Controller{

    public function actionAdmin(){
        return $this->render('admin');

    }

    public function create(){
        $moper=new SprOperator();

        if($moper->load(Yii::$app->request->post()) && $moper->validate){
            $form=Yii::$app->request->post('SprOperator');
            $moper->CodeOperator=$form['CodeOperator'];
            $moper->Nazvalie=$form['Nazvanie'];
            if($moper->save()){
                Yii::$app->getSession()->setFlash('success', 'Запись добавлена');
                return Yii::$app->getResponse()->redirect('spr-operator/admin');
            }
        }

        $this->render('create',[
            'moper'=>$moper
        ]);
    }
}
