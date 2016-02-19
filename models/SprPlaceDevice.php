<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_place_device".
 *
 * @property integer $id
 * @property string $PlaceStatus
 */
class SprPlaceDevice extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_place_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['PlaceStatus'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'PlaceStatus' => 'Place Status',
        ];
    }
}
