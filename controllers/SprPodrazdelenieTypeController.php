<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 04.03.2016
 * Time: 16:30
 */

namespace app\controllers;
use app\models\SprPodrazdelenieType;
use app\models\SprPodrazdelenieTypeSearch;
use Yii;
use yii\web\Controller;

class SprPodrazdelenieTypeController extends Controller{
    function actionAdmin()
    {
        $searchModel=new SprPodrazdelenieTypeSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);


        return $this->render('admin',[
            'searchModel'=>$searchModel,
            'dataProvider'=>$dataProvider
        ]);
    }

    function actionCreate()
    {
        $model=new SprPodrazdelenieType();
        if($model->load(Yii::$app->request->post()) && $model->validate() && $model->save()){
            $this->redirect('admin');

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