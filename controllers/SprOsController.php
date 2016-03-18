<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 8:15
 */
namespace app\controllers;
use app\models\SprOs;
use app\models\SprOsSearch;
use Yii;
use yii\web\Controller;

class SprOsController extends Controller{

    function actionAdmin()
    {
        $searchModel =new SprOsSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'searchModel'=>$searchModel,
            'dataProvider'=>$dataProvider
        ]);
    }

    function actionCreate()
    {
        $model=new SprOs();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');
        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model
            ]);
        }
    }
}