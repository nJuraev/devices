<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_mask".
 *
 * @property integer $id
 * @property string $Sidr
 * @property string $Mask
 */
class SprMask extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_mask';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Sidr'], 'string', 'max' => 10],
            [['Mask'], 'string', 'max' => 16]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Sidr' => 'Sidr',
            'Mask' => 'Mask',
        ];
    }
}
