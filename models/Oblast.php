<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "oblast".
 *
 * @property integer $id
 * @property string $Name
 */
class Oblast extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'oblast';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Name'], 'string', 'max' => 20]
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
