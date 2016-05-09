<?php
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=virtuald_classified',
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
        ],
         'authManager' => [
        'class' => 'yii\rbac\DbManager',
    ],
                'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => FALSE,
        ],
    ],
    
    'modules' => [
    'rbac' =>  [
        'class' => 'johnitvn\rbacplus\Module',
        'userModelClassName'=>null,
        'userModelIdField'=>'id',
        'userModelLoginField'=>'username',
        'userModelLoginFieldLabel'=>null,
        'userModelExtraDataColumls'=>null,
        'beforeCreateController'=>null,
        'beforeAction'=>null
    ]        ]     
];
