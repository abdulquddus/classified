 <?php

use yii\helpers\html;
use yii\widgets\LinkPager;
use yii\helpers\Url;
?>

<main>
    <form class="navbar-form" role="search" action="" id="search_add_frm">
        <input type="hidden" name="r" value="site/searchad"
    <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 search-wrap">
        <!-- header-search-main -->
       
        <section class="container">
                
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-search-main">
        
                    <div class="form-group">
                        <input onkeydown="return false" type="text" onchange="submit_frm_cate()" name="category"  class="form-control custom-sel-form-control"  value="<?php if(isset( $_GET['id'])) { echo $ctegory_name;  } ?>"  id="category" placeholder="Category" autocomplete="off">
                        <input  type="text" name="city"  class="hidden" id="region" value="<?php if(isset( $_GET['city'])) { echo $_GET['city']; } ?>">
                        <input onkeydown="return false" onchange="submit_frm()" type="text" name="location" class="form-control" value="<?php if(isset( $_GET['location'])) { echo $_GET['location']; } ?>" id="location" placeholder="Location" data-toggle="modal" data-target="#myModal"  autocomplete="off"/><!--<input id="sel1" class="form-control custom-sel-form-control" type="text" placeholder="Category">-->
                        <input type="text" class="form-control search-box-ad-screen"  placeholder="e.g Samsung, swift, shirts etc" name="skey" value="<?php if(isset( $_GET['skey'])) { echo $_GET['skey']; } ?>" autocomplete="off"/>
                       

                        <button type="button" id="key" class="btn btn-default btn-hdr-search" onclick="submit_frm()"><i class="fa fa-search"></i>Søk</button>    
 <!--             <button onclick="search(); return false" class="btn btn-default btn-hdr-search"><i class="fa fa-search"></i>Søk</button> -->
                        <div class="header" style="display:none">

                            <div class="container-tag" id="mainMenu_div" >   
                                <nav>
                                    <ul class="nav nav-pills nav-main" id="mainMenu">
                        <?php foreach ($category as $categ) { ?>
                                            <li class="dropdown">
                                                <a onClick="submit_frm_cate()"  class="myCategory" href="#">
                                                    <?= $categ->title ?>
                                                    <i class="fa fa-angle-right pull-right bold"></i>
                                                </a>

                                                <ul class='dropdown-menu'>
                                               <?php $submenu->getsubcate($categ->id); ?>
                                                </ul>
                                            </li>
                                <?php } ?>

                                    </ul>
                                </nav>

                            </div>
                        </div>
                    </div>
               
            </div>


            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <div class="text-div">
                                <input id="locatio" type="text" id="default" list="languages" class="form-control" placeholder="Your location" style="width:40%;float:left;box-shadow: none ;">
                                <datalist id="languages">
                                    <?php 
                                    foreach($regions as $region){
                                       echo "<option value='$region->name'>";
                                    }
                                    ?>
                                    
                                </datalist>	
                                <p>Last visit: <span><a href="" id="lasetlocation">karachi</a></span></p>
                            </div>
                        </div>
                        <div class="modal-body pad150 display-block">
                            <div class="cities">
                                <p>Populære byer:</p>
<?php foreach ($regions as $regiond) { ?>
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 myLi">
                                        <a href="#"><?= $regiond->name ?></a>
                                    </div>

<?php } ?>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <ul id="popup-hide">
                                    <li><a class='myLi' href='#'>All Norge</a></li>
                                    <?php
                                    $main_regions = [];
                                    foreach ($regions as $region) {
                                        array_push($main_regions, $region->id);
                                        echo "<li id='azad' onclick='city($region->id, this)'><a class='myLi' href='#'>$region->name</a> "
                                                . "<a href='#'><i class='fa fa-angle-right pull-right bold'></i></a></li>";
                                    }
                                    ?>
                                </ul>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12 cities-name">
                                <?php
                                foreach ($main_regions as $main_region) {
                                    $reg_cities = \frontend\models\City::find()->where(['region_id' => $main_region])->all();
                                    ?>
                                    <ul class="subcities" id="<?= $main_region ?>" style="display:none;">
                                        <li class="back"><a href="#">Back</a></li>
                                        <?php
                                        foreach ($reg_cities as $reg_city) {
                                            echo "<li class='myLi'><a href='#'>$reg_city->name</a></li>";
                                        }
                                        ?>
                                    </ul>
<?php } ?>
                            </div>
                        </div>
                        <!--           <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                  </div> -->
                    </div>

                </div><!-- /Modal content-->
            </div><!-- /Modal -->
         
        </section>
        <div class="container">
            <!--search-main-->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 search-main">
                <!--search-main-top-->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 search-main-top">
                    <ul>
                        <?php  $ads = new \frontend\models\Advertisement(); ?>
                        <?php foreach($relcategory as $relcat){ ?>
                        <li><a href="<?= Url::to(['site/searchad', 'category' => $relcat->title]); ?>"><?= $relcat->title;?> <span>(<?php echo $ads->getadcount($relcat->id); ?>)</span></a></li>
                        <?php } ?>
<!--                        <li><a href="">Cars <span>(2,817)</span></a></li>
                        <li><a href="">Motorcycles <span>(17)</span></a></li>
                        <li><a href="">Spare Parts & Accessories <span>(5,817)</span></a></li>
                        <li><a href="">Other Vehicles <span>(7)</span></a></li>-->
                    </ul>

                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 prc-rng-main">

                        <label>Price Range</label>
                        <input id="min_price" name="min_price"  onchange="submit_frm()" type="text" value="<?php if(isset( $_GET['min_price'])) { echo $_GET['min_price']; } ?>" class=""><b>-</b>
                        <input id="max_price" name="max_price" onchange="submit_frm()" type="text" value="<?php if(isset( $_GET['max_price'])) { echo $_GET['max_price']; } ?>" class="">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 my-thumb">
                        <div class="pull-left">
                            <div class="view">
                                View:</div>
                            <div class="detail">
                            </div>
                            <div class="small-icon">
                            </div>
                            <div class="compact">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 sort-main">
                        <label>Sort By</label>
                        <select name="sort_by" onchange="submit_frm()" class="form-control custom-sel-form-control selct_fld" id="sel1">
                            <option value="most_recent" >Most Recent</option>
                            <option value="low_price" >Price Low to High</option>
                            <option value="high_price">Price High to Low</option>
                        </select>
                    </div>

                </div>
                <!--/search-main-top-->
                <!--search-left-->
                    
                    
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 search-left bgcolr">

<!--                    <div class="breadcrums">
                        <a href="">Home</a><i class="fa fa-angle-double-right"></i>
                        <a href="">All ads</a><i class="fa fa-angle-double-right"></i>
                        <a href="">Mobile</a><i class="fa fa-angle-double-right"></i>
                    </div>-->
                    <!--          <div class="search-left-box-btn">
                                <a href="" class="btn btn-default">Save Search</a><br/>
                                <a href="" class="btn btn-default">Reset</a>
                              </div>-->

                    <!--          <div class="search-left-inr-box">
                                <h3>Brands</h3>
                                <ul>
                                  <li><a href="">Apple</a></li>
                                  <li><a href="">Samsung</a></li>
                                  <li><a href="">Motorola</a></li>
                                  <li><a href="">Nokia</a></li>
                                            </ul>
                                            
                                    <div class="some_parent_class">
                                             <ul class="widget_body_type">
                                  <li><a href="">Apple</a></li>
                                  <li><a href="">Samsung</a></li>
                                  <li><a href="">Motorola</a></li>
                                  <li><a href="">Nokia</a></li>
                                            </ul>
                                             <div class="widget_head_type">
                                            <a href="#" class="test pull-right">see more</a>
                                                    </div>
                                                    </div>
                              </div>          -->
                    <div class="search-left-inr-box hidden-sm hidden-xs">
                        <h3>Published</h3>
                        <ul class="rdio_btn">
                            <li><input type="radio" class="rdo_main" onclick="submit_frm()" value="0" name="published" checked/>All</li>
                            <li><input type="radio" class="rdo_main" onclick="submit_frm()" value="1" name="published" <?php if(isset($_GET['published']) && $_GET['published']==1 ) { echo "checked"; } ?>/>Last 24 hours</li>
                            <li><input type="radio" class="rdo_main" onclick="submit_frm()" value="2" name="published" <?php if(isset($_GET['published']) && $_GET['published']==2 ) { echo "checked"; } ?> />Last 72 hours</li>

                        </ul>

                    </div>
                     <div class="search-left-inr-box visible-sm  visible-xs ">
                        <h3>Published</h3>
                        <select class="col-md-12 ">
                            <option>All</option>
                            <option>Last 24 hours</option>
                            <option>Last 72 hours</option>
                            
                        </select>
                      

                    </div>
<!--                    <div class="search-left-inr-box">

                        <ul>
                            <li><a  onclick="set_day(150)">All</a></li>
                            <li><a  onclick="set_day(1)">last 24 hours</a></li>
                            <li><a onclick="set_day(2)">last 72 hours</a></li>

                            <li><input id="day" type="text" name="published" value="" class="hidden" /></li>
                        </ul>
                                    <a href="" class="pull-right">see more</a>
                    </div>-->
                    <div class="search-left-inr-box hidden-sm hidden-xs">
                        <h3>Conditions</h3>
                        <ul class="rdio_btn">
                            <li><input type="radio" class="rdo_main" onclick="submit_frm()" value="all" name="condition" checked/> All</li>
                            <li><input type="radio" class="rdo_main" onclick="submit_frm()" value="used" name="condition" class="rdo_main" <?php if(isset($_GET['condition']) && $_GET['condition']=='used' ) { echo "checked"; } ?> /> Used</li>
                            <li><input type="radio" onclick="submit_frm()" value="new" name="condition" <?php if(isset($_GET['condition']) && $_GET['condition']=='new' ) { echo "checked"; } ?> /> New</li>

                        </ul>

                    </div>
 <div class="search-left-inr-box visible-sm  visible-xs ">
                        <h3>Conditions</h3>
                        <select class="col-md-12 ">
                            <option>All</option>
                            <option>used</option>
                            <option>New</option>
                            
                        </select>
                      

                    </div>
                    <div class="search-left-inr-box hidden-sm hidden-xs">
                        <h3>Type</h3>
                        <ul class="rdio_btn">
                            <li><input class="rdo_main" type="radio" onclick="submit_frm()" value="" name="type" checked/> All</li>
                            <li><input class="rdo_main" type="radio" onclick="submit_frm()" value="1" name="type" <?php if(isset($_GET['type']) && $_GET['type']==1 ) { echo "checked"; } ?> /> Company</li>
                            <li><input class="rdo_main" type="radio" onclick="submit_frm()" value="2" name="type" <?php if(isset($_GET['type']) && $_GET['type']==2 ) { echo "checked"; } ?> /> Private</li>

                        </ul>

                    </div>
 <div class="search-left-inr-box visible-sm  visible-xs ">
                        <h3>Type</h3>
                        <select class="col-md-12 ">
                            <option>All</option>
                            <option>Company</option>
                            <option>Private</option>
                            
                        </select>
                      

                    </div>
                    <div class="search-left-inr-box">
                        <h3>Filters <?php ?></h3>
                        <ul id="myList" class="rdio_btn" >
                            <?php   foreach ($filters as $filter) {
                                 
                                $dd_option_id =   \backend\models\FilterName::find()->where(['parent_filter'=>$filter->id])->all();

                                if($filter->display_for_screen_page == 1) //Dropdown
                                {
                                   echo "  <form class='form-horizontal' role='form'> <div class='form-group bg-none mrgn-padng'>
                                             <label class='col-md-12 control-label mrgn-padng'>" . $filter['filter_name'] . "</label>
                                             <select name='Advertisements[additional_optional][". $filter['id'] ."][]' id='basic' class='selectpicker bg-none mrgn-padng form-control ' onchange='subdropdown(this)' name=''><option>Please Select</option>
                                             ";
                                   
                                   foreach ($dd_option_id as $a_value) 
                                   {
                                        //print_r($a_value->id);
                                       // $dd_option_main = \backend\models\FilterName::find()->where(['id'=>$a_value->filter_field_key])->all();
                                        echo '<option data_value="'. $a_value['id']  .'" value="'. $a_value['filter_name']  .'">'. $a_value['filter_name'] .'</option>';         
                                   }
                                   echo "</select></div><div id='additional_optional'></div></form>";
                                }

                                if($filter->display_for_screen_page == 2) //CheckBox
                                {
                                echo "<div class='input-group contact-field-wrap'>
                                         <label>" . $filter['filter_name'] . "</label></div>";

                                foreach ($dd_option_id as $a_value) 
                                {
                                   //$dd_option_main = \backend\models\FilterName::find()->where(['id'=>$a_value->filter_field_key])->all();
                                   //echo '<option value="'. $dd_option_main[0]['id']  .'">'. $dd_option_main[0]['filter_name'] .'</option>';         
                                   echo "<input name='Advertisements[additional_optional][". $filter['id'] ."][]' type='checkbox' class='checkbox'  value='" . $a_value['filter_name'] . "'>" . $a_value['filter_name'] ."<br>";
                                }
                                }
                                if($filter->display_for_screen_page == 3) //TextBox Number
                                {
                                    echo "<div class='input-group contact-field-wrap'>
                                    <label>" . $filter['filter_name'] . "</label>
                                    <input class='form-control' type='number' name='Advertisements[additional_optional][". $filter['id'] ."][]' value=''>
                                    </div>";
                                }

                                if($filter->display_for_screen_page == 4) //TextBox
                                {
                                    echo "<div class='input-group contact-field-wrap'>
                                    <label>" . $filter['filter_name'] . "</label>
                                    <input class='form-control' type='text' name='Advertisements[additional_optional][". $filter['id'] ."][]' value=''>
                                    </div>";
                                }

                                //}

                                if($filter->display_for_screen_page == 5) //Range
                                {
                                //First Range Textbox
                                echo "<div class='input-group contact-field-wrap'>
                                <label>" . $filter['filter_name'] . "</label>
                                      <input type='number' placeholder='From' class='form-control' name='Advertisements[additional_optional][". $filter['id'] ."][]' value=''></div>";

                                //Second Range Textbox
                                echo "<div class='input-group contact-field-wrap'>
                                <label>" .                         "</label>
                                      <input type='number' placeholder='To' class='form-control'  name='Advertisements[additional_optional][". $filter['id'] ."][]'
                                  value=''></div>";
                                }














                                ?>



                            
                                 
                            <?php  } ?>
                        </ul>

                    </div>

                </div>
                    
                    <!--<input type="submit"/>-->
     
                <!--/search-left-->
                <!--search-wide-->
                <div id="ads">
                    <div  class="col-lg-9 col-md-9 col-sm-9 col-xs-12 search-wide padng_zero">
                        <?php
                        if (!empty($result)) {
                          
                             foreach ($search_commer as $cate) {
//print_r($cate);
//break;
//                                $img = \frontend\models\Images::findOne(['advertise_id' => $cate->id]);
                                ?>
                               <div id="" class="selectedcat-box ">
                                   <div class="col-md-4 col-sm-12 col-xs-12 mrgn_zero padng_zero extracls">
                                    <div class=" image-box">
                                        <img class="img-responsive" src="<?= Yii::$app->urlManager->createUrl('/site/loadimage'); ?>" alt="" />
                                    </div>
                                    </div>
                                    <div class="col-md-8 col-sm-12 col-xs-12 product_detail">
                                        <div class="top-detail">
                                            <span>Detail</span> 8000KM
                                        </div>
                                        <div class="top-detail pull-right">
                                            <span>Detail</span> Detail 2016 model
                                        </div>
                                        <a href="<?= $cate['url']; ?>" class="title_head"><?= $cate['title']; ?> (Commercial Ads)</a>
                                        <div class="top-detail">
                                            <span>Detail</span> Deisel  
                                        </div>
                                        <div class="top-detail">
                                            <span>Detail</span> Automatic
                                        </div>
                                        <div class="address-detail">
                                            Adress  12 p 1271 Oslo
  
                                        </div>
<!--                                        <span>Honda Civic Â» Parado Foxy </span>
                                        <h1>NOK: 150,0000</h1>
                                        <p>Lorem Ipsum is simply dummy text of the printing and type setting industry.</p>
                                        <span>Karachi, Pakistan </span>-->
                                       
                                    </div>
                                    <div class="productprice">
                                        Kr. 5000</div>
                                     <a href="#" class="verifyadd"></a>
                                </div>
                            <?php
                            }
                            
                            foreach ($result as $cate) {

                                $img = \frontend\models\Images::findOne(['advertise_id' => $cate->id]);
                                ?>
                                
                        <div id="" class="selectedcat-box ">
                                    <div class="col-md-4 col-sm-12 col-xs-12 mrgn_zero padng_zero extracls">
                                    <div class=" image-box">
                                       <a href="<?= Yii::$app->urlManager->createUrl(['advertisement/ad-view', 'id' => $cate->id]) ?>">
                                        <img class="img-responsive" src="<?= Yii::getAlias('@web') . "/uploads/" . $cate->id . "/" . $img['image'] ?>" alt="" />
                                       </a>
                                    </div>
				    </div>
                                    <div class="col-md-8 col-sm-12 col-xs-12 product_detail">
<!--                                        <div class="top-detail">
                                            <span>Detail</span> 8000KM
                                        </div>
                                        <div class="top-detail pull-right">
                                            <span>Detail</span> Detail 2016 model
                                        </div>-->
                                        <a href="<?= Yii::$app->urlManager->createUrl(['advertisement/ad-view', 'id' => $cate->id]) ?>" class="title_head">
                                            <?= $cate->advertise_title ?>
                                        </a>
                                        
                                        <?php $results = \frontend\models\FormAdditionalValues::find()->where(['ad_id'=>$cate->id])->all(); 
                                        
                                        foreach ($results as $value) {
                                            $filter_names = \backend\models\FilterName::find()->where(['id'=>$value->field_id])->one();    
                                            echo '<div class="top-detail"><span>' . $filter_names->filter_name . '</span>' . ltrim(str_replace("|","-",$value->values), '-') .'</div>'; 
                                        }
                                        ?>
                                        <div class="address-detail">
                                            <?php echo $cate->address?>
  
                                        </div>
<!--                                        <span>Honda Civic Â» Parado Foxy </span>
                                        <h1>NOK: 150,0000</h1>
                                        <p>Lorem Ipsum is simply dummy text of the printing and type setting industry.</p>
                                        <span>Karachi, Pakistan </span>-->
                                       
                                    </div>
                                    <div class="productprice">
                                        Kr. <?= $cate->price ?></div>
                                     <a href="#" class="verifyadd"></a>
                                </div>
                            <?php
                            }
                        } else {

                            echo "<h1 style='text-align: center;'> No Results Found </h1>";
                        }
                        ?>

                    </div>
                    <!--/search-wide-->
                    <nav class="text-right">

<?php echo \yii\widgets\LinkPager::widget(['pagination' => $pagination]); ?>
                    </nav>
                </div>
            </div>
            <!--/search-main-->
        </div>

        <!-- /container-->
    </section>
</form>
    <!-- Ads Boxes -->
    <div class="ads-vr ads-vr-left">Space Available For Ad</div>
    <div class="ads-vr ads-vr-right">Space Available For Ad</div>
    <!-- /Ads Boxes -->
</main>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="template/js/jquery-1.9.1.min.js"></script>
<!--<script>
        
        jQuery(document).ready(function(){
        jQuery('#wwa').on('click', function(event) {        
             jQuery('#wwa-content').toggle('show');
        });
    });
        jQuery(document).ready(function(){
        jQuery('#wwa1').on('click', function(event) {        
             jQuery('#wwa1-content').toggle('show');
        });
    });
        jQuery(function ($) {
        $('.widget_head_type').each(function () {
                // closures
                var $toggle = $(this);
                var $parent = $toggle.closest('.some_parent_class');
                var $target = $parent.find('.widget_body_type');
                var $label = $toggle.find('.test');
                var bIsTweening = false;
                // OR var $target = $toggle.next('.widget_body_type');
                // event methods (closures)
                var fClickToggle = function () {
                        if (!bIsTweening) {
                                bIsTweening = true;
                                $target.slideToggle('slow', fToggleCallback);
                        }
                };
                var fToggleCallback = function () {
                        bIsTweening = false;
                        fSetLabel();
                };
                var fSetLabel = function () {
                        var sLabel = $label.text().replace('see more', '').replace('less', '');
                        sLabel = ($target.is(':visible') ? 'less' : 'see more') + sLabel;
                        $label.html(sLabel);
                };
                // handle event
                $toggle.click(fClickToggle);
                $target.hide();
                fSetLabel();
        });
});
        -------this script use in list gallary--
        $('.detail').click(function(){
                $('.selectedcat-box').animate({width:'100%'},500);
                $('.image-box').animate({width:'28%'},500);
        });

    $('.small-icon').click(function(){
                $('.selectedcat-box').animate({width:'28%'},500);
                $('.image-box').animate({width:'100%'},500);
        });
        $('.compact').click(function(){
                $('.selectedcat-box').animate({width:'100%'},500);
                $('.image-box').animate({width:'100%'},500);
                
        });
        -------this script use in model popup--
     function city(id, item){
          
        $('#popup-hide').hide();
        $('#region').val($(item).text());
//        alert($(item).text());
        $('#'+id).fadeIn(100);
    
        }
     
        
//    $('#azad').click(function () {
//        $('#popup-hide').hide();
//        $('#show-kashmir').fadeIn(100);
//    });
//	$('#balochistan').click(function () {
//        $('#popup-hide').hide();
//        $('#show-balochistan').fadeIn(100);
//    });
//	$('#fata').click(function () {
//        $('#popup-hide').hide();
//        $('#show-fata').fadeIn(100);
//    });
//	$('#islamabad').click(function () {
//        $('#popup-hide').hide();
//        $('#show-islamabad').fadeIn(100);
//    });
//	$('#khyber').click(function () {
//        $('#popup-hide').hide();
//        $('#show-khyber').fadeIn(100);
//    });
//	$('#northen').click(function () {
//        $('#popup-hide').hide();
//        $('#show-northen').fadeIn(100);
//    });
//	$('#punjab').click(function () {
//        $('#popup-hide').hide();
//        $('#show-punjab').fadeIn(100);
//    });
//	$('#sindh').click(function () {
//        $('#popup-hide').hide();
//        $('#show-sindh').fadeIn(100);
//    });
//        subcities
      
        $('.back').click(function () {
        $('#popup-hide').fadeIn(100);
        
        $('.subcities').hide();
    });
//	$('.back').click(function () {
//        $('#popup-hide').fadeIn(100);
//        $('#show-kashmir').hide();
//		$('#show-balochistan').hide();
//		$('#show-fata').hide();
//		$('#show-islamabad').hide();
//		$('#show-khyber').hide();
//		$('#show-northen').hide();
//		$('#show-punjab').hide();
//		$('#show-sindh').hide();
//    });
                                
        $(".myLi").click(function(){
    $('#location').val($(this).text());
        $('#myModal').fadeOut(100);	
        $('.modal-backdrop').fadeOut(100);

        
});
$("#category").click(function(){
    $('.header').show();
});
$(".myCategory").click(function(){
    $('#category').val($(this).text());
        $('.header').hide();
        return false;
        });
</script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="template/js/bootstrap.min.js"></script>
<!-- boostrap lightbox -->
<script src="template/js/bootstrap-lightbox.min.js"></script>
<!-- jquery -->
<script src="template/js/jquery.js"></script>
<!-- jquery -->
<script src="template/js/custom-script.js"></script>
<script>

function submit_frm_cate()
        {
           // alert('sdsdsd')
            var str ;


         setTimeout(function(){  str =  document.getElementById('category').value;  
        str = str.trim();
        document.getElementById('category').value = str; 
            $.ajax({
        type: "GET",
        url: "<?php  echo Yii::$app->getUrlManager()->createUrl('site/getfilters'); ?>",
        data: "cate_name="+str,
        success: function(data) {
            console.log('get data '+data )
            document.getElementById("myList").innerHTML = data;
        }
    });

            }, 100);


            submit_frm();
        }


    function submit_frm()
    {         
          var str;
       
         setTimeout(function(){  str =  document.getElementById('category').value;  
        str = str.trim(); console.log(str);document.getElementById('category').value = str; }, 100);
     
        setTimeout(function(){
            $.ajax({
        type: "GET",
        url: "<?php  echo Yii::$app->getUrlManager()->createUrl('site/searchad'); ?>",

        data: $("#search_add_frm").serialize(),
        //       setTimeout(function(){ alert("No result found"); }, 3000);          
        success: function(data) {
            //       alert(data);
            document.getElementById("ads").innerHTML = data;
        }
    });}, 1000);

        setTimeout(function(){
            $.ajax({
        type: "GET",
        url: "<?php  echo Yii::$app->getUrlManager()->createUrl('site/searchad'); ?>",

        data: $("#search_add_frm").serialize(),
        //       setTimeout(function(){ alert("No result found"); }, 3000);          
        success: function(data) {
            //       alert(data);
            // document.getElementById("ads").innerHTML = data;
        }
    });}, 1000);
        
//        alert('dddd');
//          $(form).submit();
        //  $( ".navbar-form" ).submit();
    }

</script>

<script>
$('body').click(function(event) {
   // alert('is block display');
//Hide the menus if visible
 console.log(event.target.id);
 if(event.target.id!='category'){
if ( $('.header').attr('style') == 'display: block;' ) {
    // do this
    
$(".header").css('display','none');
} }
//$(".header").css("display","none");
//alert('hji');
});

</script>


 <script>
     

         function subdropdown(id)
    {
        var dd_id = id.value;
        dd_id = $(id).find(':selected').attr('data_value')  //this variable contains the ID of dropdown's options
        //alert(dd_id)
          $.ajax({
            type: "GET",
            dataType: "html",
            url: "<?php echo Yii::$app->getUrlManager()->createUrl('site/sub_dd_options'); ?>",
            data: {
                id: dd_id
            },success: function(data) {
              console.log(data)
                document.getElementById("additional_optional").innerHTML = data;
            },
            error: function() {
            console.log(arguments);
            }

            });
    }
 </script>