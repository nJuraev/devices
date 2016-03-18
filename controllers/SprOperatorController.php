<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 19.02.2016
 * Time: 10:08
 */
namespace app\controllers;
use app\models\SprOperator;
use app\models\SprOperatorSearch;
use Yii;
use yii\web\Controller;


class SprOperatorController extends Controller{

    public function actionAdmin(){
        $searchModel = new SprOperatorSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('admin', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
        /*$dp=new ActiveDataProvider([
           'query'=> SprOperator::find(),
            'pagination'=>[
                'pageSize'=>25
            ]
        ]);
        return $this->render('admin',[
            'dp'=>$dp
        ]);*/

    }

    public function actionCreate(){
        $model=new SprOperator();


        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['admin']);
        }elseif (Yii::$app->request->isAjax) {

            return $this->renderAjax('create', [
                'model' => $model
            ]);
        } else {

            return $this->render('create', [
                'model' => $model,
            ]);
        }


    }

}
