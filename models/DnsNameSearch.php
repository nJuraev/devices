<?php
/**
 * Created by PhpStorm.
 * User: N_Juraev
 * Date: 11.03.2016
 * Time: 16:47
 */

namespace app\models;
use Yii;

class DnsNameSearch extends DnsName{

    function rules()
    {
        return [
            [['DnsName','IpAdress','Status'],'safe']
        ]; // TODO: Change the autogenerated stub
    }

    function attributeLabels()
    {
        return parent::attributeLabels(); // TODO: Change the autogenerated stub
    }

    function search($params)
    {
        $query = DnsName::find();
        $query->joinWith('status');
        $dataProvider = new \yii\data\ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => ['id' => SORT_ASC]
            ]
        ]);
        if (!$this->load($params) && $this->validate()) {
            return $dataProvider;
        }

        $this->addConditions($query, 'DnsName', true);
        $this->addConditions($query, 'IpAdress', true);
        $this->addConditions($query, 'Podrazdelenie', false);
        $this->addConditions($query, 'Status', false);
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
        $attribute = "dns_name." . $attribute;

        if ($partialMatch) {
            $query->andWhere(['like', $attribute, $value]);
        } else {
            $query->andWhere([$attribute => $value]);

        }

    }
}