<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 09.03.2016
 * Time: 15:31
 */
namespace app\controllers;

use app\models\SprIpGroup;
use app\models\SprIpGroupSearch;
use app\models\SprStatus;
use Yii;
use yii\web\Controller;

class SprIpGroupController extends Controller{

    function actionAdmin()
    {
        $searchModel=new SprIpGroupSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        $status=SprStatus::find()->all();
        return $this->render('admin',[
           'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel,
            'status'=>$status
        ]);
    }

    function actionCreate()
    {
        $model=new SprIpGroup();
        $status=SprStatus::find()->all();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
               'model'=>$model,
                'status'=>$status,
            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,
                'status'=>$status
            ]);

        }
    }
}