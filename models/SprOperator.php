<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_operator".
 *
 * @property integer $id
 * @property string $CodeOperator
 * @property string $Nazvanie
 */
class SprOperator extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_operator';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['CodeOperator', 'Nazvanie'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'CodeOperator' => 'Code Operator',
            'Nazvanie' => 'Nazvanie',
        ];
    }
}
