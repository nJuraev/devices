<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_tarif".
 *
 * @property integer $id
 * @property string $Tarif
 * @property integer $Provider
 */
class SprTarif extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_tarif';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Provider'], 'integer'],
            [['Tarif'], 'string', 'max' => 60],
            [['Tarif','Provider'],'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Tarif' => 'Тариф',
            'Provider' => 'Провайдер',
        ];
    }

    function  getProvider()
    {
        return $this->hasOne(SprProviders::className(),['id'=>'Provider']);
    }
}
