<?php
use yii\bootstrap\Nav;

?>
<aside class="main-sidebar">

    <section class="sidebar">

        
        <?=
        Nav::widget(
            [
                'encodeLabels' => false,
                'options' => ['class' => 'sidebar-menu'],
                'items' => [
                    '<li class="header">Menu</li>',
                    
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Home</span>', 'url' => ['/site/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Pages and Content</span>', 'url' => ['/content/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Content Inside Page</span>', 'url' => ['/content-inner/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Advertise Comment</span>', 'url' => ['/advertise-comment/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Admin</span>', 'url' => ['/admin/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Advertisement</span>', 'url' => ['/advertisement/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Commercial Ads</span>', 'url' => ['/commercial-ads/index']],
//		      ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Ads on Search</span>', 'url' => ['/commercial-search-ads/index']],
//		      ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category</span>', 'url' => ['/category/index']],
     //               ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Images</span>', 'url' => ['/category-images/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Additional Fields</span>', 'url' => ['/category-additional-fields/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Optional Fields</span>', 'url' => ['/optional-fields/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Country</span>', 'url' => ['/country/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Region</span>', 'url' => ['/region/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>City</span>', 'url' => ['/city/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Post Code</span>', 'url' => ['/postcode/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Email</span>', 'url' => ['/email/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>PromotionDeals</span>', 'url' => ['/promotion-deals/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Content Configuration</span>', 'url' => ['/website-content/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Users</span>', 'url' => ['/user/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Organizational Info</span>', 'url' => ['/organization/index']],
//		      ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Credit Package Settings</span>', 'url' => ['/credit-packages/index']],
       
        //['label' => '<i class="glyphicon glyphicon-lock"></i><span>Gii</span>', 'url' => ['/gii']],
        //['label' => '<i class="fa fa-dashboard"></i><span>Debug</span>', 'url' => ['/debug']],
                    [
                        'label' => '<i class="glyphicon glyphicon-lock"></i><span>Sign in</span>', //for basic
                        'url' => ['/site/login'],
                        'visible' =>Yii::$app->user->isGuest
                    ],
                ],
            ]
        );
        ?>

         <ul class="sidebar-menu">
             
<!--             <li class="treeview">
                <a href="<?= \yii\helpers\Url::to(['site/index']) ?>">
                    <i class="fa fa-share"></i> <span>Home</span> 
                </a>
            </li>
            -->
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>advertisment </span><i class="fa fa-angle-left pull-right"></i> 
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['advertisement/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Advertisment</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['commercial-search-ads/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Ads on Search</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['commercial-ads/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Commercial Ads</a>
                    </li>
                   
                </ul>
            </li>
            
             <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>Admin </span><i class="fa fa-angle-left pull-right"></i> 
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['admin/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Admins</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['user/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Users</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['organization/view', 'id'=>1]) ?>"><span class="glyphicon glyphicon-lock"></span>Organizational info</a>
                    </li>
                   
                </ul>
            </li>
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>Category </span><i class="fa fa-angle-left pull-right"></i> 
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['category/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Category</a>
                    </li>
                    <li><a href="<?= \yii\helpers\Url::to(['filter-name/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Filter Name</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['optional-fields/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Opetional Fields</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['credit-packages/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Credit Packages</a>
                    </li>
                     
                </ul>
            </li>
            
            
             <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>Regions</span><i class="fa fa-angle-left pull-right"></i> 
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['country/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Country</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['region/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Regions</a>
                    </li>
                     <li><a href="<?= \yii\helpers\Url::to(['city/index']) ?>"><span class="glyphicon glyphicon-lock"></span> City</a>
                    </li>
                    <li><a href="<?= \yii\helpers\Url::to(['postcode/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Postcodes</a>
                    </li>
                   
                </ul>
            </li>
  
            </li>
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>Content</span> 
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['content/index']) ?>"><span class="glyphicon glyphicon-lock"></span> Pages and Content</a>
                    </li>
                    <li><a href="<?= \yii\helpers\Url::to(['content-inner/index']) ?>"><span class="fa fa-dashboard"></span> Content in Side Page</a>
                    </li>
                    <li><a href="<?= \yii\helpers\Url::to(['promotion-deals/index']) ?>"><span class="fa fa-dashboard"></span> Promotion Deals</a>
                    </li>
<!--                    <li>
                        <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>-->
                </ul>
            </li>
        </ul>

    </section>

</aside>
