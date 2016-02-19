<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_status".
 *
 * @property integer $id
 * @property string $StatusName
 */
class SprStatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_status';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['StatusName'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'StatusName' => 'Status Name',
        ];
    }
}
