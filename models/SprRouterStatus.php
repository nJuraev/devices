<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_router_status".
 *
 * @property integer $id
 * @property string $RouterStatus
 */
class SprRouterStatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_router_status';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['RouterStatus'], 'string', 'max' => 25],
            [['RouterStatus'], 'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'RouterStatus' => 'Статус роутера',
        ];
    }
}
