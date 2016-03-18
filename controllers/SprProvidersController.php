<?php

namespace app\controllers;

use app\models\SprProviders;
use app\models\SprProvidersSearch;
use Yii;
use yii\filters\VerbFilter;
use yii\web\Controller;

/**
 * SprProvidersController implements the CRUD actions for SprProviders model.
 */
class SprProvidersController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    function actionAdmin()
    {
        $searchModel=new SprProvidersSearch();
        $dataProvider=$searchModel->search(Yii::$app->request->queryParams);
        return $this->render('admin',[
            'dataProvider'=>$dataProvider,
            'searchModel'=>$searchModel
        ]) ;
    }

    function actionCreate()
    {
        $model=new SprProviders();
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

    /**
     * Lists all SprProviders models.
     * @return mixed
   */
}
