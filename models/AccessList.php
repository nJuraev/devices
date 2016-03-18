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
            //[['IP'], 'ip','message'=>'Неправильный адрес IP'],
            [['Description'], 'string', 'max' => 100],
            [['Group','Status','IP','Description'], 'required','message'=>'Необходимо заполнить поле "{attribute}"']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'IP' => 'IP',
            'Description' => 'Описание',
            'Group' => 'Группа',
            'Status' => 'Статус',
        ];
    }

    function getIpGroup(){
        return $this->hasOne(SprIpGroup::className(),['id'=>'Group']);
    }

    function getStatus(){
        return $this->hasOne(SprStatus::className(),['id'=>'Status']);
    }
}
