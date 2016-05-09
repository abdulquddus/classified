<?php
namespace backend\models;

use common\models\Admin;
use yii\base\InvalidParamException;
use yii\base\Model;
use Yii;

/**
 * Password reset form
 */
class Password extends Model
{
    public $password_hash;
    public $password_repeat;

    /**
     * @var \common\models\User
     */
    private $_user;


    /**
     * Creates a form model given a token.
     *
     * @param  string                          $token
     * @param  array                           $config name-value pairs that will be used to initialize the object properties
     * @throws \yii\base\InvalidParamException if token is empty or not valid
     */
//    public function __construct($token, $config = [])
//    {
//        if (empty($token) || !is_string($token)) {
//            throw new InvalidParamException('Password reset token cannot be blank.');
//        }
//        $this->_user = User::findByPasswordResetToken($token);
//        if (!$this->_user) {
//            throw new InvalidParamException('Wrong password reset token.');
//        }
//        parent::__construct($config);
//    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
             ['password_hash', 'required'],
            ['password_hash', 'string', 'min' => 6],
              [['password_repeat'], 'required'],
            [['password_repeat'], 'compare', 'compareAttribute'=>'password_hash', 'message'=>"Password mismatch" ],//comparisons of the passwords
           
        ];
    }

    /**
     * Resets password.
     *
     * @return boolean if password was reset.
     */
    public function resetPassword()
    {
        $user = $this->_user;
        $user->setPassword($this->password);
        $user->removePasswordResetToken();

        return $user->save(false);
    }
    
      /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
           
            'password' => Yii::t('app', 'Enter Your New Password'),
            
        ];
    }
    
}

