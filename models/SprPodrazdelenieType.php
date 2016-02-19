<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_podrazdelenie_type".
 *
 * @property integer $id
 * @property string $Name
 */
class SprPodrazdelenieType extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_podrazdelenie_type';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Name'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Name' => 'Name',
        ];
    }
}
