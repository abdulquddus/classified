<?php
namespace frontend\controllers;

use Yii;
use common\models\LoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\PasswordResetRequestsms;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use frontend\models\TmpUser;
use frontend\models\User;
use yii\helpers\Url;
use backend\models\Email;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;
use yii\data\Pagination;
/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['GET'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
//      if (!\Yii::$app->user->isGuest) {
//           $this->layout = 'main_login';
//           }
        
        
        
        $content_inner=  \backend\models\ContentInner::find()->where(['status'=>1])->all();
        
           $regions = \frontend\models\Region::findAll(['status'=>1]);
        return $this->render('index', ['regions'=>$regions, 'content_inner'=>$content_inner]);
    }
    
    /**
     * Displays homepage.
     *
     * @return mixed
     */
     public function actionSearch($id)
    {
        $list = new \frontend\models\Category();
         $item = $list->getsubcateides($id);
        
        $regions = \frontend\models\Region::findAll(['status'=>1]);
        $category = \frontend\models\Category::find()->where(['status'=>1, 'parent_id'=>0])->all();
        $search = \frontend\models\Advertisement::find()->where(['status'=>1, 'category_id'=>$item]);
        $count=$search->count();
        $pagination=new Pagination(['totalCount'=>$count, 'pageSize'=>10]);
        $result=$search->offset($pagination->offset)->limit($pagination->limit)->all();
        $submenu = new \frontend\models\Category();
        return $this->render('adsearch', ['regions'=>$regions, 'category'=>$category, 'submenu'=>$submenu, 'search'=>$search,'result'=>$result, 'pagination'=>$pagination]);
    }
     /**
     * 
     *
     * @return location id(region id and state id)
     */
    public function city($city)
    {
        if($city != 0){
            $city = \frontend\models\City::find()->where(['LIKE', 'name', $city])->one();
            if ($city) 
         return $city->id;
            else 
                return 0;
        }
        else{
            return 0;
        }       
    }
   
    public function category($cate)
    {
        $category = \frontend\models\Category::find()->where(['LIKE', 'title', $cate])->one();
        if(isset($category->id)){
         $id = $category->id; 
        }
        else{
            $id = 0;            
        }  
        
//        kkkkkkkk
       
      $item=[$id];
      $lists = \frontend\models\Category::find()->where(['parent_id'=>$id])->all();
      foreach($lists as $list ){
         
      array_push($item, $list->id);
      $lists2 = \frontend\models\Category::find()->where(['parent_id'=>$list->id])->all();
                        foreach($lists2 as $list2){
                        array_push($item, $list2->id);
                        }
          
      }
     return $item;
        
        
        
    }
    
    
     public function related_category($cate)
    {
        $category = \frontend\models\Category::find()->where(['LIKE', 'title', $cate])->one();
        if(isset($category->id)){
         $id = $category->id; 
        }
        else{
            $id = 0;            
        }  
        
       
      $item=[$id];
      $lists = \frontend\models\Category::find()->where(['parent_id'=>$id])->all();
     
     return $lists;
        
        
        
    }
    
    public function region($region)
    {
        $region = str_replace(" ","", $region);
        if($region != 0)
        {
            $regions = \frontend\models\Region::find()->Where(['LIKE', 'name', $region])->one();
//         $regions = \frontend\models\Region::find()->where(['LIKE', 'slug', $region])->one();
//         print_r($regions);
//         return $regions->id;
            if(isset($regions->id)){
                return $regions->id;
            }
            else
            {
                return 0;
            }
        }
        else{
            return 0;
     }
       
      
        }
         public function actionTest()
    {
             $ads = \frontend\models\Advertisement::find()->where(['status'=>1])->all();
            foreach($ads as $ad){
                echo $ad->id."<br />";
                foreach($ad->formAdditionalValues as $adi){
                    echo "->".$adi->id;
                            }

                }
            
         }
        
    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionSearchad()
    {
        $request = Yii::$app->request;
       
           if(!empty($_GET['city'])){
               $city =  $_GET['city'];
               $c = $this->city($city);
               $city = ['city_id'=> $c]; 
           } else{
               $city = array();
           }
           
           
            if(!empty($_GET['published'])){
             
           } else{
               $city = array();
           }
           
          
           if(!empty($_GET['category'])){
              $cate =  $_GET['category'];
              $category = $this->category($cate);
              $cat_ids = $category; 
              $category  = ['category_id'=>$category];
             
           }else{
               $category = array();
               $cat_ids = array() ;
              
           }

           if(!empty($_GET['filters'])){
            $filters_search =  $_GET['filters'];
            $filters_categories = \backend\models\CategoryAdditionalFields::find()->
                    where(['optional_field_id'=>$filters_search])->
                    select(['category_id'])->all();
            //print_r($filters_categories);
           $filter_cates =array(); 
              foreach ($filters_categories as $filters_category) {
                array_push($filter_cates, $filters_category->optional_field_id);
                }
                $category_filters  = ['category_id'=>$filter_cates];
            //$key = ['LIKE', 'advertise_title', $key];
           }else{
            $category_filters = array();
           }
            if(!empty($_GET['skey'])){
            $key =  $_GET['skey'];
            $key = ['LIKE', 'advertise_title', $key];
           }else{
            $key = array();
           }
           
            if(!empty($_GET['min_price']) ){
            $min_price = ['<=', 'price', $_GET['min_price'] ];
           }else{
            $min_price = array();
           }
           
            if(!empty($_GET['max_price'])){
            $max_price = ['>=', 'price', $_GET['max_price']];
            }else{
                $max_price = array();
           }
            if(!empty($_GET['published']) && $_GET['published'] !=0){
            $day =  $_GET['published'];
            $created = ['>=', 'created_date', date('Y-m-d',strtotime("-$day days"))];
           }else{
               $created = array();
           
           }
           
            if(!empty($_GET['condition']) && $_GET['condition'] !='all' ){
            $condition =  $_GET['condition'];
            $condition = ['=','condition', $condition];
            }
            else 
            {
               $condition = array(); 
            }
            
            if(!empty($_GET['type'])){
            $type = ['=','type', $_GET['type']];
            }
           else
           {  
              $type = array();
           }
            
           if (isset($_GET['sort_by']) && $_GET['sort_by'] =='low_price')
           {
               $order_by = ['price'=>SORT_ASC];
           }
           elseif (isset($_GET['sort_by']) && $_GET['sort_by'] =='high_price')
           {
               $order_by = ['price'=>SORT_DESC];
           }
           else 
           {
               $order_by = ['id'=>SORT_DESC];
           }
            if(!empty($_GET['op_fi'])){
            $op_fi =  $_GET['op_fi'];
           }

           $list = new \frontend\models\Category();
    
 if(!empty($_GET['category'])){
              $cate =  $_GET['category'];
              $relcategory = $this->related_category($cate);
            
           }else{
               $relcategory = array();
              
           }
           
    $search = \backend\models\Advertisement::find()->
              where(['status'=>1])->
              andWhere($category)->
              andWhere($category_filters)->
              andWhere($max_price)->
              andWhere($min_price)->
              andWhere($created)->
              andWhere($condition)->
              andWhere($type)->
              andWhere($city)->
              andWhere($key)->
              orderBy($order_by);
    
          $count = $search->count();
          $pagination = new Pagination(['totalCount'=>$count, 'pageSize'=>10]);
          $ads=$search->offset($pagination->offset)->limit($pagination->limit)->all();
  
          $regions = \frontend\models\Region::findAll(['status'=>1]);
        $categories_list = \frontend\models\Category::find()->where(['status'=>1, 'parent_id'=>0])->all();
        $submenu = new \frontend\models\Category();
        
        if ($request->isAjax) {
         $regions = \frontend\models\Region::findAll(['status'=>1]);
    //    $category = \frontend\models\Category::find()->where(['status'=>1, 'parent_id'=>0])->all();
        $submenu = new \frontend\models\Category();
        $_GET['skey'] = $key;
        return $this->renderPartial('_adsearch', ['regions'=>$regions, 'category'=>$category, 'submenu'=>$submenu, 'result'=>$ads, 'pagination'=>$pagination,'ajax'=>1]);
    
        }
    
          else{
              $filtes_ids = \backend\models\CategoryAdditionalFields::find()->where([ 'category_id'=>$cat_ids])->
                      select(['optional_field_id'])->all();
              $f_ids =array(); 
              foreach ($filtes_ids as $filtes_id) {
                array_push($f_ids, $filtes_id->optional_field_id);
                }
          $filerts=   \backend\models\OptionalFields::findAll(['status'=>1,'id'=>$f_ids]);      ;
        return $this->render('adsearch', ['regions'=>$regions,
                                          'category'=>$categories_list,
                                          'submenu'=>$submenu,
                                          'result'=>$ads,
                                          'pagination'=>$pagination,
                                          'relcategory'=>$relcategory,
                                          'filters'=>$filerts,
                                          'ajax'=>0,
                                           'selected_category'=>$cat_ids
                                          ]);
              
          } 
   
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionSignout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
    
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
    
    public function actionSelect_city(){
        $code = $_GET['id'];
       $city_code= \frontend\models\City::find()->where(['region_id'=>$code])->all();
      
        echo '<label>City<b class="asterisk">*</b></label><select id="advertisement-state_id" class="form-control" name="Advertisements[city_id]">';
        foreach ($city_code as $city){
             echo' <option value="'. $city->id .'">'. $city->name .'</option>';
             }
              echo '</select>';
    }
    
    public function actionSelect_city_for_user_details(){
        $code = $_GET['id'];
       $city_code= \frontend\models\City::find()->where(['region_id'=>$code])->all();
      
        echo '<label>City<b class="asterisk">*</b></label><select id="advertisement-state_id" class="form-control" name="city">';
        foreach ($city_code as $city){
             echo' <option value="'. $city->id .'">'. $city->name .'</option>';
             }
              echo '</select>';
    }

        public function actionSubmitad()
    {
        
        if (\Yii::$app->user->isGuest) {    
             Yii::$app->session->setFlash('success', 'Please Login First.');
              return $this->redirect(['login']);
        }

        $id = Yii::$app->user->id;
        $user = User::findOne(['id'=>$id]);
        $model = new \frontend\models\Advertisements(); 
       
//        $counter=ArrayHelper::map($city,'code','name');
       
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            //print_r($_REQUEST);
            //exit();
//            echo $_POST['city_id'];
//            echo $model->city_id;
//            echo $model->state_id;
//            echo $model->furnished;
//            echo $model->rooms;
//            echo $model->square_feet;
//            echo $model->address;
//         echo   $model->mobile_number ;
//         print_r($model->additional_field);
//            echo $_POST['Advertisements']['6'],
       $model->user_id = Yii::$app->user->id;
       $model->created_date = date("Y-m-d H:i:s");
        $model->v_code = rand(1000, 9999);
      $model->email = $user->email;
      $type= $user->is_company;
      if($user->is_company==0){
         $type=2;  
      }
       $model->type = $type;
        
        
           if($model->save()){
              //  print_r($model);
               if(isset($model->additional_field)){
                  // echo 'in condition';
             foreach($model->additional_field as $op_field){
                  $ad_f = new \frontend\models\FormAdditionalValues();
                 $ad_f->ad_id = $model->id;
                 $ad_f->field_id = $op_field;
                 $ad_f->values = $_POST['Advertisements'][$op_field];
                 
                // echo $ad_f->save();
               //exit;  
               }
               
             }
            // exit();
           }
           $model->imageFiles = UploadedFile::getInstances($model, 'imageFiles');
          
           $model->advertise_title;
           
            if ($model->upload()) {
                // file is uploaded successfully
//                $this->Sentsms($model->mobile_number, $model->v_code);
                
                if ( $_POST['perview_true']==1)
                {
                //  return $this->redirect(\Yii::$app->urlManager->createUrl("site/edit-ad",['id'=>$model->id,"new"=>1])); 
                Yii::$app->response->redirect(['advertisement/ad-view','id'=>$model->id,"new"=>1]);
                    
                }
                else
                {
                $this->Sentsms($model->mobile_number, $model->v_code);
                Yii::$app->session->setFlash('success', 'Enter your confirmation code.');
                return $this->redirect(\Yii::$app->urlManager->createUrl("site/verifysms_ad")); 
                }
            }
        }
         $main_cat = \frontend\models\Category::find()->where(['parent_id'=>0])->all();
        $sub_cat = \frontend\models\Category::find()->where('parent_id != :parent_id', ['parent_id'=>0])->all();
        $regions =  \frontend\models\Region::find()->all();

        $counter=ArrayHelper::map($regions,'id','name');
        
       return $this->render('submitad',['model'=>$model,
                                        'user'=>$user, 
                                        'region'=>$counter,
                                        'main_cat'=>$main_cat,
                                        'sub_cat'=> $sub_cat  
                                          ]);
    }
    
    public function actionConfirmsubmit($id)
    {
        $model =  \frontend\models\Advertisements::findOne(['id'=>$_GET['id']]);
        $this->Sentsms($model->mobile_number, $model->v_code);
        Yii::$app->session->setFlash('success', 'Enter your confirmation code.');
        return $this->redirect(\Yii::$app->urlManager->createUrl("site/verifysms_ad")); 
    }

    public function actionEditAd($id)
    {
        $pid=$_GET['id'];
        if (\Yii::$app->user->isGuest) {    
             Yii::$app->session->setFlash('success', 'Please Login First.');
              return $this->redirect(['login']);
        }

        $id = Yii::$app->user->id;
        $user = User::findOne(['id'=>$id]);
        $model =  \frontend\models\Advertisements::findOne(['id'=>$pid]); 
       
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
       $model->user_id = Yii::$app->user->id;
       $model->created_date = date("Y-m-d H:i:s");
        $model->v_code = rand(1000, 9999);
      $model->email = $user->email;
        
        
           if($model->save()){
               
               if(isset($model->additional_field)){
             foreach($model->additional_field as $op_field){
                  $ad_f = new \frontend\models\FormAdditionalValues;
                 $ad_f->ad_id = $model->id;
                 $ad_f->field_id = $op_field;
                 $ad_f->values = $_POST['Advertisements'][$op_field];
                 $ad_f->save();
           
               }}
               
           }
           $model->imageFiles = UploadedFile::getInstances($model, 'imageFiles');
          
          $model->advertise_title;
           
            if ($model->upload()) {
                // file is uploaded successfully
//                $this->Sentsms($model->mobile_number, $model->v_code);
                $this->Sentsms($model->mobile_number, $model->v_code);
                 Yii::$app->session->setFlash('success', 'Enter your confirmation code.');
                  return $this->redirect(\Yii::$app->urlManager->createUrl("site/verifysms_ad")); 
                
            }
        }
        $main_cat = \frontend\models\Category::find()->where(['parent_id'=>0])->all();
        $sub_cat = \frontend\models\Category::find()->where('parent_id != :parent_id', ['parent_id'=>0])->all();
        $regions =  \frontend\models\Region::find()->all();

        $counter=ArrayHelper::map($regions,'id','name');


        $imgs=  \backend\models\Images::find()->where(['advertise_id'=>$pid])->all();
        
       return $this->render('edit-ad',['model'=>$model,
                                        'user'=>$user, 
                                        'region'=>$counter,
                                        'main_cat'=>$main_cat,
                                        'sub_cat'=> $sub_cat,
                                        'imgs'=>$imgs,
                                          ]);
    }
    

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending email.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }
    
    
    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    /**
     * Signs user up.
     *
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new TmpUser();
        
        if ($model->load(Yii::$app->request->post())) {
              if(isset($_GET['type'])){
                  $is_company=$_GET['type'];
              }else{
                  $is_company=0;
              }
            if ($model->validate()) {
                $model->username = $model->email;

                $model->v_code =  rand(1000, 9999);
                $model->created_at = date('y-m-d');
                $model->is_company = $is_company;
                $model->save();
                $v_code = $model->v_code;
                $mobile = $model->mobile;
             $err = $this->sentsms($mobile, $v_code);
                //-------------------
                $email_user = Email::find()->where(['id'=>4])->orderBy(['id' => SORT_DESC])->one();
                $email_admin = Email::find()->where(['id'=>5])->orderBy(['id' => SORT_DESC])->one();
                
                $to = $model->email;
                
                $to_admin = "info@virtual-developers.com";
                
                
            $subject = $email_user->title;
            $link = Yii::$app->urlManager->createAbsoluteUrl('site/verifycode')."&code=".$v_code;
            $message = str_replace("{link}", $link, $email_user->content);
            $subject_admin = $email_admin->title;
            $message_admin = $email_admin->content; 
            
//            $headers = "";
//            $headers .= "MIME-Version: 1.0\n";
//            $headers .= "Content-Type: multipart/mixed; boundary=\"\"\n\n";
//            $headers .= "This is a multi-part message in MIME format.\n";
//            $headers .= "--\n";
//            //$headers .= "Content-type: text/html; charset=utf-8\n";
//            $headers .= "Content-type: text/html; charset=iso-8859-1\n";
//            $headers .= "From: Devtesting<Info@devtesting.com >\n\n";
//            $headers = "From: Info@devtesting.com \r\n";
//            $headers .= "Reply-To: info@virtual-developers.com \r\n";
//            $headers .= "MIME-Version: 1.0\r\n";
//            $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
//                
//                
//            mail($to, $subject, $message, $headers);
//            mail($to_admin, $subject_admin, $message_admin, $headers);
            Yii::$app->mailer->compose()
            ->setFrom('info@virtual-developers.com')
            ->setTo($to)
            ->setSubject($subject)
            ->setHtmlBody($message)
            ->send();

            Yii::$app->mailer->compose()
            ->setFrom('info@virtual-developers.com')
            ->setTo($to_admin)
            ->setSubject($subject_admin)
            ->setHtmlBody($message_admin)
            ->send();
       
            Yii::$app->session->setFlash('success', 'Please Enter your registration Code to complete your registration');
                return $this->redirect(\Yii::$app->urlManager->createUrl("site/verifycode"));   
            }
        }
       
        return $this->render('signup', [
            'model' => $model,
        ]);
    }
    public function Sentsms($mobile, $v_code) {
        
       $email_user = Email::find()->where(['id'=>6])->orderBy(['id' => SORT_DESC])->one();
       $message = str_replace("{code}", $v_code, $email_user->content);
      
        $username = '923453130776';
        $password = '1785';
        $destination = $mobile;
        $source    = 'FROM NAME';
        $text = strip_tags($message);
        
    $content =  '&username='.rawurlencode($username).
                '&password='.rawurlencode($password).
                '&mobile='.rawurlencode($destination).
                '&sender='.rawurlencode($source).
                '&message='.rawurlencode($text);
    
        $ch = curl_init('http://sendpk.com/api/sms.php?');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec ($ch);
        curl_close ($ch);
       // print_r($output); exit;
        return $output;    
    
    }
    
    /**
     * Signs user up after cod verification.
     *
     * @return mixed
     */
    public function actionVerifycode(){
        if(isset($_POST['code'])){
         $code = $_POST['code'];
         $find = \frontend\models\TmpUser::find()->where(['v_code'=>$code])->one();
       
         if (!empty($find)){
             // users exists
//              Yii::$app->session->setFlash('success', 'Your Registion Completed Sucessfully Please login ');
              $find = \frontend\models\TmpUser::find()->where(['v_code'=>$code])->one();
            $find->email;
            $find->password_hash;
            $find->username;
            $find->mobile;
            $user = new \frontend\models\User2;
            $user->username=$find->username;
            $user->email = $find->email;
            $user->mobile = $find->mobile;
            $user->is_company = $find->is_company;
            $user->status = 10;
            $user->password_hash = Yii::$app->getSecurity()->generatePasswordHash($find->password_hash);
          if($user->save()){
            Yii::$app->session->setFlash('success', 'Your Registration has been completed sucessfully... Please login');
            return  $this->redirect(array("login"));
          }
            } else {
             // user does not exist 
               Yii::$app->session->setFlash('success', 'Please tyr again ');
               return $this->render('verifycode');    
                  
                }
                 
        }
         if(isset($_GET['code'])){
            $code = $_GET['code'];
            $find = \frontend\models\TmpUser::find()->where(['v_code'=>$code])->one();
           
            $user = new \frontend\models\User2;
            $user->username=$find->username;
            $user->email = $find->email;
            $user->mobile = $find->mobile;
            $user->is_company = $find->is_company;
            $user->status = 10;
            $user->password_hash = Yii::$app->getSecurity()->generatePasswordHash($find->password_hash);
          if($user->save()){
            Yii::$app->session->setFlash('success', 'Your Registration has been completed sucessfully ... Please login');
            return  $this->redirect(array("login"));
          }
             
         }
        return $this->render('verifycode'); 
                  }
                  
        public function actionVerifycodesms(){
        if(isset($_POST['code'])){
         $code = $_POST['code'];
         $find = \frontend\models\User::find()->where(['sms_verify'=>$code])->one();
       
         if (!empty($find)){
             // users exists
//              Yii::$app->session->setFlash('success', 'Your Registion Completed Sucessfully Please login ');
              
             $find->email;
             $find->password_hash;
             $find->username;
             $find->mobile;
//           
          return  $this->redirect(["password", 'id'=>$find->id]);
             if($user->save()){
            Yii::$app->session->setFlash('success', 'Your Registration has been completed sucessfully... Please login');
            return  $this->redirect(array("login"));
          }
            } else {
             // user does not exist 
               Yii::$app->session->setFlash('success', 'Please tyr again ');
               
                  
                }
                 
        }
        
        return $this->render('verifycode'); 
                  }
                  
                  
     public function actionPassword($id){
        $model = new \frontend\models\Password();
          if ($model->load(Yii::$app->request->post())) {
           $model->password_hash;
//           $id = $_GET['id'];
            $hash = Yii::$app->getSecurity()->generatePasswordHash($model->password_hash);
      
           
            $sql="UPDATE `user` SET `password_hash`='$hash' WHERE `id`='$id'";
            \Yii::$app->db->createCommand($sql)->execute();
          $query =  Yii::$app->session->setFlash('success', 'Passwor Updated.');
//          if(isset($query)){
          return $this->redirect(['site/index']);
//          }
          }
       
                 
         return $this->render('resetPasswordsms', [
            'model' => $model,
        ]);
                      
                  }
         
                   /**
     * Requests password reset.
     *
     * @return mixed
     */
     public function actionRstsms()
    {
        $model = new PasswordResetRequestsms();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($v_code=$model->sendSms()) {
//            echo $model->mobile."<br />";
//            echo $v_code;
          $this->Sentsms($model->mobile, $v_code);
                  Yii::$app->session->setFlash('success', 'Please Enter your Code to Reset your Password');
//                return $this->goHome();
                 return $this->redirect(\Yii::$app->urlManager->createUrl("site/verifycodesms")); 
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset your password for the provided email.');
            }
        }

        return $this->render('requestPasswordResetTokensms', [
            'model' => $model,
        ]);
    }
                  

    /**
     * Requests password reset.
     *
     * @return mixed
     */
     public function actionRst()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Please check your email for further instructions.');

                Yii::$app->mailer->compose()
                ->setFrom('from@domain.com')
                ->setTo('to@domain.com')
                ->setSubject('Message subject')
                ->setTextBody('Plain text content')
                ->setHtmlBody('<b>HTML content</b>')
                ->send();
                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset your password for the provided email.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Please check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for provided email.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'Congratulation! New password was saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }
    
    public function actionCjob()
    {
         //$tam = new TmpUser();
        $tmpusers = TmpUser::find()->all();
        foreach($tmpusers as $tmpuser){
          $datetime1 = date_create($tmpuser->created_at);
          $datetime2 = date_create(date('y-m-d'));
          $interval = date_diff($datetime1, $datetime2);
          
          if($interval->format('%a') >= 2){
            $id =  $tmpuser->id;
            TmpUser::findOne($id)->delete();
            }
        }     
    }
    
    public function actionPromotiondeals(){
        $page_content = \backend\models\PromotionDeals::find()->where(['key'=>'key_1'])->all();
        return $this->render('promotiondeals', [
            'page_content' => $page_content,
        ]);
        
    }
    
    public function actionNewpromotiondeals(){
        $page_content = \backend\models\PromotionDeals::find()->where(['key'=>'key_2'])->all();
        return $this->render('newPromotionDeals', [
            'page_content' => $page_content,
        ]);
        
    }
    
    public function actionPackages(){
        $page_content = \backend\models\PromotionDeals::find()->where(['key'=>'key_3'])->all();
        return $this->render('packages', [
            'page_content' => $page_content,
        ]);
        
    }
    function actionSms() {
        
//       $email_user = Email::find()->where(['id'=>6])->orderBy(['id' => SORT_DESC])->one();
//       $message = str_replace("{code}", $v_code, $email_user->content);
      
        $username = '923453130776';
        $password = '1785';
        $destination = '+923150208667';
        $source    = 'FROM NAME';
        $text = 'ponka';
        
    $content =  '&username='.rawurlencode($username).
                '&password='.rawurlencode($password).
                '&mobile='.rawurlencode($destination).
                '&sender='.rawurlencode($source).
                '&message='.rawurlencode($text);
    
        $ch = curl_init('http://sendpk.com/api/sms.php?');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $content);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec ($ch);
        curl_close ($ch);
       // print_r($output); exit;
        return $output;    
   
    }
    
    /**
     * This will return the array of additional/optional fields
     * Takes id of category
     * @return mixed
     */
    public function actionOptionalfields($id)
    {
       $cat_op_fld = \backend\models\CategoryAdditionalFields::find()->where(['category_id'=>$id])->all();
      foreach($cat_op_fld as $optionals){
//       echo $optionals->optional_field_id."<br />"; 
       $field = \frontend\models\OptionalFields::find()->where(['id'=>$optionals->optional_field_id])->one();
//      print_r($field);
        echo "<div class='input-group custom-field-wrap hidden'>
              <label>$field->titles <b class='asterisk'>*</b></label>
              <input type='text' id='advertisements-advertise_title' class='form-control' name='Advertisements[additional_field][]' value='$field->id'><div style='text-align:right'><div class='help-block'></div></div>
            </div>
            </div>" ;
        
        
        echo "<div class='input-group custom-field-wrap'>
              <label>$field->titles <b class='asterisk'>*</b></label>
              <input type='text' id='advertisements-advertise_title' class='form-control' name='Advertisements[$field->id]' ><div style='text-align:right'><div class='help-block'></div></div>
            </div>
            </div>" ;
     
       }
       
    }
    
    public function actionGetimg($id)
    {
       $cateimg = \frontend\models\Category::find()->where(['id'=>$id])->one();
       echo $cateimg->image;    
    }
       
    public function actionVerifysms_ad(){
    if(isset($_POST['code'])){
     $code = $_POST['code'];
     $find = \frontend\models\Advertisements::find()->where(['v_code'=>$code])->one();

     if (!empty($find)){
         // users exists
          Yii::$app->session->setFlash('success', 'Your ad has been posted ');

        $find->v_code = 1;
       $find->save();
         return  $this->redirect(["index"]);
        Yii::$app->session->setFlash('success', 'Your');

        } else {
         // user does not exist 
           Yii::$app->session->setFlash('success', 'Please tyr again ');


            }

    }

    return $this->render('verifycode'); 

    }
    
    public function actionSubmitad_preview(){
        if (\Yii::$app->user->isGuest)
        {
            Yii::$app->session->setFlash('success', 'Please Login First.');
            return $this->redirect(['login']);
        }

        $id = Yii::$app->user->id;
        $user = User::findOne(['id'=>$id]);
        $model = new \frontend\models\Advertisements(); 
        //$model->imageFiles = UploadedFile::getInstances($model, 'imageFiles');
        
        
        if(isset($_POST['preview']))
        {
            
            
            if ($model->load(Yii::$app->request->post())){
                $model->user_id = Yii::$app->user->id;
                $model->created_date = date("Y-m-d H:i:s");
                $model->email = $user->email;
                $model->advertise_title;
                $model->category_id;
                $model->description;
                $model->price;
                $model->contact_name;
                $model->mobile_number;
                $model->state_id;
                $model->city_id;
                $model->address;
                $model->mobile_number;
                //$model->imageFiles[];                
                $model->imageFiles = UploadedFile::getInstances($model, 'imageFiles');
                $model->uploadtmp();
//                print_r($model->imageFiles);
//                echo '<pre>';                
//                print_r($_FILES['imageFiles'][0]);
//                echo '</pre>';
//                exit();
               
                
            }
            
            
            
            
            
            
            
            if(isset($model->additional_field)){
                foreach($model->additional_field as $op_field){
                    $ad_f = new \frontend\models\FormAdditionalValues;
                    $ad_f->ad_id = $model->id;
                    $ad_f->field_id = $op_field;
                    $ad_f->values = $_POST['Advertisements'][$op_field];
           
               }}
               
            $main_cat = \frontend\models\Category::find()->where(['parent_id'=>0])->all();
        $sub_cat = \frontend\models\Category::find()->where('parent_id != :parent_id', ['parent_id'=>0])->all();
        $regions =  \frontend\models\Region::find()->all();
        
        $counter=ArrayHelper::map($regions,'id','name');   
        return $this->render('ad-viewpreview',['model'=>$model,
                'user'=>$user, 
                'region'=>$counter,
                'main_cat'=>$main_cat,
                'sub_cat'=> $sub_cat  
                  ]);
            
        }
//        $main_cat = \frontend\models\Category::find()->where(['parent_id'=>0])->all();
//        $sub_cat = \frontend\models\Category::find()->where('parent_id != :parent_id', ['parent_id'=>0])->all();
//        $regions =  \frontend\models\Region::find()->all();
//        
//        $counter=ArrayHelper::map($regions,'id','name');
//        
//        
//       return $this->render('submitad',['model'=>$model,
//                                        'user'=>$user, 
//                                        'region'=>$counter,
//                                        'main_cat'=>$main_cat,
//                                        'sub_cat'=> $sub_cat  
//                                          ]);
        
    }
    

    }
    
            
