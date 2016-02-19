<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_ip_group".
 *
 * @property integer $id
 * @property string $Name
 * @property string $Description
 * @property integer $Status
 */
class SprIpGroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_ip_group';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Status'], 'integer'],
            [['Name'], 'string', 'max' => 20],
            [['Description'], 'string', 'max' => 30]
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
            'Description' => 'Description',
            'Status' => 'Status',
        ];
    }
}
