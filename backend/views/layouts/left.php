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
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Pages and Content</span>', 'url' => ['/content/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Content Inside Page</span>', 'url' => ['/content-inner/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Advertise Comment</span>', 'url' => ['/advertise-comment/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Admin</span>', 'url' => ['/admin/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Advertisement</span>', 'url' => ['/advertisement/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Commercial Ads</span>', 'url' => ['/commercial-ads/index']],
					['label' => '<i class="glyphicon glyphicon-lock"></i><span>Ads on Search</span>', 'url' => ['/commercial-search-ads/index']],
					['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category</span>', 'url' => ['/category/index']],
     //               ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Images</span>', 'url' => ['/category-images/index']],
//                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Additional Fields</span>', 'url' => ['/category-additional-fields/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Category Optional Fields</span>', 'url' => ['/optional-fields/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Country</span>', 'url' => ['/country/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Region</span>', 'url' => ['/region/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>City</span>', 'url' => ['/city/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Post Code</span>', 'url' => ['/postcode/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Email</span>', 'url' => ['/email/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>PromotionDeals</span>', 'url' => ['/promotion-deals/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Content Configuration</span>', 'url' => ['/website-content/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Users</span>', 'url' => ['/user/index']],
                    ['label' => '<i class="glyphicon glyphicon-lock"></i><span>Organizational Info</span>', 'url' => ['/organization/index']],
       
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

        <!-- <ul class="sidebar-menu">
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>Same tools</span> 
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?= \yii\helpers\Url::to(['/gii']) ?>"><span class="glyphicon glyphicon-lock"></span> Gii</a>
                    </li>
                    <li><a href="<?= \yii\helpers\Url::to(['/debug']) ?>"><span class="fa fa-dashboard"></span> Debug</a>
                    </li>
                    <li>
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
                    </li>
                </ul>
            </li>
        </ul>-->

    </section>

</aside>
