<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "spr_rule_status".
 *
 * @property integer $id
 * @property string $RuleStatus
 */
class SprRuleStatus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'spr_rule_status';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['RuleStatus'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'RuleStatus' => 'Rule Status',
        ];
    }
}
