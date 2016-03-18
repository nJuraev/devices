<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 18.03.2016
 * Time: 11:20
 */
namespace app\controllers;

use app\models\SprOperator;
use app\models\SprPurveyors;
use app\models\SprPurveyorsSearch;
use Yii;
use yii\web\Controller;

class SprPurveyorsController extends Controller{

    function actionAdmin(){
        $searchModel=new SprPurveyorsSearch();
        $operator=SprOperator::find()->all();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'operator'=>$operator
        ]);
    }

    function actionCreate(){
        $model=new SprPurveyors();
        $oper=SprOperator::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,
                'oper'=>$oper,
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'oper'=>$oper
            ]);
        }
    }
}
