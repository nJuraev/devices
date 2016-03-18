<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_os".
 *
 * @property integer $id
 * @property string $Os
 */
class SprOs extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_os';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Os'], 'string', 'max' => 40],
            [['Os'],'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Os' => 'ОС',
        ];
    }
}
