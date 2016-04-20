@extends('layouts.app')
@extends('layouts.header')

@section('title')
    Dashboard
@endsection

@section('body-class')

@endsection


@section('content')
<div class="container wrap">
<sidebar class="col-md-3 ">

               <div class="row">
                <div class="user">
                  <img src="images/user.png">     
                </div>
                 <div class="name-panel">
                   <div class="name-panel">
                   <p class="name">
                   <?php if ($if_exist == 1) { ?>
                         <?php echo $userProfile->name; ?>   
                    <?php }else{ ?>
                        {{ $name }}
                    <?php } ?> 
                   </p>
                   <p class="subname">
                    <?php if ($if_exist == 1) { ?>
                         <?php echo $userProfile->position; ?>   
                    <?php }else{ ?>
                       Not Set!
                    <?php } ?>
                    </p>
                 </div>
                 </div>
              </div>
              <div class="row panel-status">
                        <div class="col-md-4 panel-status-1">
                            <img src="images/heart.png"> 
                            <p>2,718</p>
                        </div>
                        <div class="col-md-4 panel-status-2">
                            <img src="images/users.png">
                            <p>5,718</p>  
                        </div>
                        <div class="col-md-4 panel-status-3">
                            <img src="images/eye.png">
                            <p>6,718</p>  
                        </div>
              </div>
             <nav class="row sidebar-menus">
                  <ul>
                        <a href="{{ url('/home') }}"><li  class="menuactive"><span class="glyphicon glyphicon-inbox">&nbsp;</span>Dashboard</li></a>

                         <?php if ($if_exist_settings == 1) { ?>
                         <?php $URL = 'http://'.str_ireplace('http://','',$userSettings->permalink); ?>
                             <a href="{{$URL}}" target="_blank" ><li><span class="glyphicon glyphicon-list-alt">&nbsp;</span>My CV</li></a>
                        <?php } ?>   
                        <a href="{{ url('/profile') }}"><li><span class="glyphicon glyphicon-star">&nbsp;</span>Profile</li></a>
                        <a href="{{ url('/resume') }}"><li><span class="glyphicon glyphicon-flag">&nbsp;</span>Resume</li></a>
                        <a href="{{ url('/portfolio') }}"><li><span class="glyphicon glyphicon-send">&nbsp;</span>Portfolio</li></a>
                        <a href="{{ url('/jobs') }}"><li><span class="glyphicon glyphicon-calendar">&nbsp;</span>Jobs</li><span class="jobbagde">6</span></a>    
                        <a href="{{ url('/setting') }}"><li><span class="glyphicon glyphicon-cog">&nbsp;</span>Settings</li></a>
                        <a href="{{ url('/logout') }}"><li><span class="glyphicon glyphicon-off">&nbsp;</span>Logout</li></a>
                  </ul>
              </nav>

</sidebar>
 
<content class="col-md-9"> 
<section class="col-md-12 content-header">
  
                    <div class="col-md-10">
                      <h3>People You May Know</h3>     
                    </div>

                    <div  class="col-md-2">
                      <img src="images/cancel.png"  class="cancel-button">
                    </div>

                    <div class="col-md-12">
                        <div class="col-md-4 content-profile-people">                        
                            <img src="images/user1.png">     
                           <div class="people-status">
                             <p class="people-name">Arya Stark</p>
                             <p class="people-subname">Winterfell</p>
                             <button class="following">Following</button>
                           </div>

                        </div>
                        <div class="col-md-4 content-profile-people">                        
                            <img src="images/user1.png">     
                           <div class="people-status">
                             <p class="people-name">Arya Stark</p>
                             <p class="people-subname">Winterfell</p>
                             <button class="follow">Follow</button>
                           </div>

                        </div>
                        <div class="col-md-4 content-profile-people">                        
                            <img src="images/user1.png">     
                           <div class="people-status">
                             <p class="people-name">Arya Stark</p>
                             <p class="people-subname">Winterfell</p>
                             <button class="follow">Follow</button>
                           </div>

                        </div>
                    </div>

</section>
<section class="cph-wrapper">
<?php if ($if_exist == 1) { ?>

<?php   foreach ($userFeeds as $value) { ?>

<?php $userConnReq = DB::select('select * from connection_requests where date = :date', ['date' => $value->date]); ?>

  <div class="col-md-12 content-panel-header">
            
            <div class="col-md-10" >
                      <div class="content-panel-status col-md-12">
                            
                               <img src="images/user.png">
                                  <h4><?php echo$userProfile->name; ?></h4>
                                  <p><?php echo $value->activity; ?> <a href="" data-toggle="modal" data-target="#newsfeed_{{ $value->id }}"><span>check it here.</span></a></p>
                                  <div><a href="#">Link</a> | <a href="#">Comment</a></div>
                                 <?php 
                                    /*foreach ($userConnReq as $data) {
                                      echo $data->to_user_id."/";
                                      echo $data->from_user_id;
                                    }*/ 
                                 ?>
                           
                      </div>
            </div>
             <div class="col-md-2 content-panel-lc">      
                              <p>2 Day Ago</p>
                              <img src="images/like.png"><span>2</span>
                              <img src="images/comment.jpg"><span>2</span>           
            </div>

  </div>
            <!-- Modal for newsFeed -->
                                      <section>

                                                 <div class="modal fade" id="newsfeed_{{ $value->id }}" role="dialog">
                                                  <div class="modal-dialog">
                                                  
                                                    <!-- Modal content-->
                                                    <div class="modal-content">

                                                    <form method="" action="resume/deleteSkill/{{ $value->id }}" class="theme1">
                                                               <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4>Delete Skills</h4>
                                                              </div>
                                                                        
                                                              <div class="col-md-12 content-panel-header">
                                                                    <h3>Are you sure you want to delete your skills in ?</h3>

                                                              </div>

                                                              <div class="modal-footer">
                                                                   <button type="submit" class="btn btn-default">Delete</button>   
                                                              </div>
                                                    </form>
                                                    </div>
                                            
                                          </div>
                                        </div>

                                      </section>
            <!-- Modal for newsFeed -->
<?php } ?>
                

 <?php }else{ ?>
 No File 
            
<?php } ?> 



   &nbsp;                  
</section>  
 <!--<section>
            <div class="col-md-12 content-panel">

                    <div class="content-dashboard">
                        <center><button>Load More</button></center>
                    </div>
            </div>   
</section>-->
</content> 

                
</div>
@endsection
