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
            [['ScriptStatus'], 'string', 'max' => 20],
            [['ScriptStatus','ScriptId'],'required', 'message'=>'Необходимо заполнить поле "{attribute}"']

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ScriptStatus' => 'Название',
            'ScriptId'=>'ID-скрипт'
        ];
    }
    function getIpGroup(){
        return $this->hasMany(SprIpGroup::className(),['Status'=>'id']);
    }

    function getAccessList(){
        return $this->hasMany(AccessList::className(),['Status'=>'id']);

    }

    function getDns(){
        return $this->hasMany(DnsName::className(),['Status'=>'id']);
    }
}
