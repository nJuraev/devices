<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_localities".
 *
 * @property string $id
 * @property string $NameRuss
 * @property string $NameTaj
 */
class SprLocalities extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_localities';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['NameRuss', 'NameTaj'], 'string', 'max' => 40]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'NameRuss' => 'Name Russ',
            'NameTaj' => 'Name Taj',
        ];
    }
}
