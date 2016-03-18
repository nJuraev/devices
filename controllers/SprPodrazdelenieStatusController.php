<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 07.03.2016
 * Time: 14:15
 */
namespace app\controllers;
use app\models\SprPodrazdelenieStatus;
use app\models\SprPodrazdelenieStatusSearch;
use Yii;
use yii\web\Controller;

class SprPodrazdelenieStatusController extends Controller{
    function actionAdmin(){
        $searchModel=new SprPodrazdelenieStatusSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel
        ]);
    }

    function actionCreate(){
        $model=new SprPodrazdelenieStatus();

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