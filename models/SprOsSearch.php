<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 10.03.2016
 * Time: 8:05
 */
namespace app\models;
use Yii;

class SprOsSearch extends SprOs{

    function rules(){
       return [
           [['Os'],'safe']
       ];
    }

    function attributeLabels()
    {
        return parent::attributeLabels(); // TODO: Change the autogenerated stub
    }

    function search($params){
        $query = SprOs::find();

        $dataProvider = new \yii\data\ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => ['id' => SORT_ASC]
            ]
        ]);
        if (!$this->load($params) && $this->validate()) {
            return $dataProvider;
        }

        $this->addConditions($query, 'Os', true);
        return $dataProvider;
    }

    protected function addConditions($query, $attribute, $partialMatch = false)
    {
        if (($pos = strrpos($attribute, '.')) !== false) {
            $modelAttribute = substr($attribute, $pos + 1);
        } else {
            $modelAttribute = $attribute;
        }

        $value = $this->$modelAttribute;
        if (trim($value) === '') {
            return;
        }

        /*
         * The following line is additionally added for right aliasing
         * of columns so filtering happen correctly in the self join
         */
        $attribute = "spr_os." . $attribute;

        if ($partialMatch) {
            $query->andWhere(['like', $attribute, $value]);
        } else {
            $query->andWhere([$attribute => $value]);

        }

    }
}