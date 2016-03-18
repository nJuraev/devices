<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 14:37
 */
namespace app\controllers;
use app\models\SprScriptStatus;
use app\models\SprScriptStatusSearch;
use Yii;
use yii\web\Controller;

class SprScriptStatusController extends Controller{
    function actionAdmin()
    {
        $searchModel=new SprScriptStatusSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);

        return $this->render('admin',[
            'searchModel'=>$searchModel,
            'dataProvider'=>$dataProvider
        ]);
    }

    function actionCreate()
    {
        $model=new SprScriptStatus();

        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            return $this->redirect('admin');

        }else if(Yii::$app->request->isAjax){
            return $this->renderAjax('create',[
                'model'=>$model,

            ]);
        }else{
            return $this->render('create',[
                'model'=>$model,

            ]);
        }
    }

}