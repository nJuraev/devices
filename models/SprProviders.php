<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_providers".
 *
 * @property integer $id
 * @property string $Provider
 */
class SprProviders extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_providers';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Provider'], 'string', 'max' => 50],
            [['Provider'],'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Provider' => 'Провайдер',
        ];
    }

    function getTarif()
    {
        return $this->hasMany(SprTarif::className(),['Provider'=>'id']);
    }
}
