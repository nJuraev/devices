<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "view_control".
 *
 * @property integer $id
 * @property string $Description
 */
class ViewControl extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'view_control';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Description'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Description' => 'Description',
        ];
    }
}
