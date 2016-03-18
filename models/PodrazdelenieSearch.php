<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * PodrazdelenieSearch represents the model behind the search form about `app\models\Podrazdelenie`.
 */
class PodrazdelenieSearch extends Podrazdelenie
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'RegionId', 'ParentId', 'PodrazdelenieType', 'ProgrammistId', 'OblastId', 'Status', 'AddBy', 'ChangedBy', 'Position', 'Slave'], 'integer'],
            [['Code', 'Name', 'Adres', 'DateAdd', 'DateChange', 'FormingDate', 'Latitude', 'Longitude'], 'safe'],
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
        $query = Podrazdelenie::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'RegionId' => $this->RegionId,
            'ParentId' => $this->ParentId,
            'PodrazdelenieType' => $this->PodrazdelenieType,
            'ProgrammistId' => $this->ProgrammistId,
            'OblastId' => $this->OblastId,
            'Status' => $this->Status,
            'AddBy' => $this->AddBy,
            'ChangedBy' => $this->ChangedBy,
            'Position' => $this->Position,
            'Slave' => $this->Slave,
        ]);

        $query->andFilterWhere(['like', 'Code', $this->Code])
            ->andFilterWhere(['like', 'Name', $this->Name])
            ->andFilterWhere(['like', 'Adres', $this->Adres])
            ->andFilterWhere(['like', 'DateAdd', $this->DateAdd])
            ->andFilterWhere(['like', 'DateChange', $this->DateChange])
            ->andFilterWhere(['like', 'FormingDate', $this->FormingDate])
            ->andFilterWhere(['like', 'Latitude', $this->Latitude])
            ->andFilterWhere(['like', 'Longitude', $this->Longitude]);

        return $dataProvider;
    }
}
