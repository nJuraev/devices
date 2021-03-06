<?php

namespace app\models;

use Yii;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "programmists".
 *
 * @property integer $id
 * @property string $Surname
 * @property string $Name
 * @property string $Patronymic
 * @property integer $Operator
 * @property string $Tel
 * @property string $Email
 * @property string $Login
 * @property string $Password
 * @property string $Status
 * @property integer $CommentAccess
 */
class Programmists extends \yii\db\ActiveRecord implements IdentityInterface
{
    /**
     * @inheritdoc
     */
    private static $users = [
        '100' => [
            'id' => '100',
            'username' => 'admin',
            'password' => 'admin',
            'authKey' => 'test100key',
            'accessToken' => '100-token',
        ],
        '101' => [
            'id' => '101',
            'username' => 'demo',
            'password' => 'demo',
            'authKey' => 'test101key',
            'accessToken' => '101-token',
        ],
    ];


    public static function tableName()
    {
        return 'programmists';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Operator', 'CommentAccess','Tel'], 'integer','message'=>'{attribute} должен состоять только из цифр'],
            [['Password', 'Status'], 'string'],
            [['Surname', 'Name', 'Patronymic'], 'string', 'max' => 40],
            [['Tel'], 'string', 'max' => 10],
            [['Email'], 'string', 'max' => 25],
            [['Email'], 'email','message'=>'Неправильный адрес {attribute}'],
            [['Login'], 'string', 'max' => 20],
            [['Login','Surname','Name','Password','Email','Operator'],'required', 'message'=>'Необходимо заполнить поле "{attribute}" ']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'Surname' => 'Фамилия',
            'Name' => 'Имя',
            'Patronymic' => 'Отчество',
            'Operator' => 'Оператор',
            'Tel' => 'Телефон',
            'Email' => 'E-mail',
            'Login' => 'Логин',
            'Password' => 'Пароль',
            'Status' => 'Статус',
            'CommentAccess' => 'Comment Access',
        ];
    }
 /* Хелперы */
    public function setPassword($password){
        $this->Password=Yii::$app->security->generatePasswordHash($password);
    }
    public function validatePassword($password){
        return Yii::$app->security->validatePassword($password,$this->Password);
    }
    public static function findByUsername($username){
        return static::findOne([
            'login'=>$username
        ]);
    }


    public static function findIdentity($id)
    {
        return static::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type = null)
    {
        return static::findOne(['access_token' => $token]);
    }

    public function getId()
    {
        return $this->id;
    }

    public function getAuthKey()
    {
      //  return $this->authKey;
    }

    public function validateAuthKey($authKey)
    {
        //return $this->authKey === $authKey;
    }

    function beforeSave($insert)
    {

        if( parent::beforeSave($insert)){
            $this->setPassword($this->Password);
            return true;
        }
    }
    public  function getCodeTel()
    {
        return $this->CodeOperator . ' ' . $this->Tel;
    }

    function getOperator(){
        return $this->hasOne(SprOperator::className(),['id'=>'Operator']);
    }



}
