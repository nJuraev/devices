<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * SprConnectionsTypeSearch represents the model behind the search form about `app\models\SprConnectionsType`.
 */
class SprConnectionsTypeSearch extends SprConnectionsType
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_conn', 'Kind'], 'integer'],
            [['Connection'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = SprConnectionsType::find();
        $query->joinWith('connKind');
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'defaultOrder' => ['id_conn' => SORT_ASC]
            ]
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id_conn' => $this->id_conn,
            'Kind' => $this->Kind,
        ]);

        $query->andFilterWhere(['like', 'Connection', $this->Connection]);

        return $dataProvider;
    }
}
