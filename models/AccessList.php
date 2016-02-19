<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "access_list".
 *
 * @property integer $id
 * @property string $IP
 * @property string $Description
 * @property integer $Group
 * @property integer $Status
 */
class AccessList extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'access_list';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Group', 'Status'], 'integer'],
            [['IP'], 'string', 'max' => 20],
            [['Description'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'IP' => 'Ip',
            'Description' => 'Description',
            'Group' => 'Group',
            'Status' => 'Status',
        ];
    }
}
