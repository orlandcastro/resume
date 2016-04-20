<?php $__env->startSection('title'); ?>
    Jobs
<?php $__env->stopSection(); ?>

<?php $__env->startSection('body-class'); ?>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>

<div class="container wrap">

<sidebar class="col-md-3 ">

             <div class="row">
                <div class="user">
                  <img src="images/user.png">     
                </div>  
                   <div class="name-panel">
                   <p class="name">
                   <?php if ($if_exist == 1) { ?>
                         <?php echo $userProfile->name; ?>   
                    <?php }else{ ?>
                        <?php echo e($name); ?>

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
                        <a href="<?php echo e(url('/home')); ?>"><li><span class="glyphicon glyphicon-inbox">&nbsp;</span>Dashboard</li></a>
                         <?php if ($if_exist_settings == 1) { ?>
                         <?php $URL = 'http://'.str_ireplace('http://','',$userSettings->permalink); ?>
                             <a href="<?php echo e($URL); ?>" target="_blank" ><li><span class="glyphicon glyphicon-list-alt">&nbsp;</span>My CV</li></a>
                        <?php } ?>   
                        <a href="<?php echo e(url('/profile')); ?>"><li><span class="glyphicon glyphicon-star">&nbsp;</span>Profile</li></a>
                        <a href="<?php echo e(url('/resume')); ?>"><li><span class="glyphicon glyphicon-flag">&nbsp;</span>Resume</li></a>
                        <a href="<?php echo e(url('/portfolio')); ?>"><li><span class="glyphicon glyphicon-send">&nbsp;</span>Portfolio</li></a>
                        <a href="<?php echo e(url('/jobs')); ?>"><li   class="menuactive"><span class="glyphicon glyphicon-calendar">&nbsp;</span>Jobs</li><span class="jobbagde">6</span></a>    
                        <a href="<?php echo e(url('/setting')); ?>"><li><span class="glyphicon glyphicon-cog">&nbsp;</span>Settings</li></a>
                        <a href="<?php echo e(url('/logout')); ?>"><li><span class="glyphicon glyphicon-off">&nbsp;</span>Logout</li></a>
                  </ul>
              </nav>

</sidebar>
<content class="col-md-9"> 
<section class="col-md-12 content-header">
  
                    <div class="col-md-10">
                      <h3>Jobs</h3>     
                    </div>

                    <div  class="col-md-2">
                      <img src="images/cancel.png"  class="cancel-button">
                    </div>

                    <div class="col-md-12">
                        <div class="col-md-4 content-header-tabs">                        
                           <div class="jobs">
                             <h4>1,890</h4>
                             <p>Jobs Available</p>
                             <button class="view">View</button>
                           </div>

                        </div>
                        <div class="col-md-4 content-profile-people">
                        <div class="jobs">
                             <h4>250</h4>
                             <p>In your location</p>
                             <button class="views">View</button>
                           </div>                        
                           

                        </div>
                        <div class="col-md-4 content-profile-people">   
                        <div class="jobs">
                             <h4>16</h4>
                             <p>Your Application</p>
                             <button class="views">View</button>
                          </div>                     
                           

                        </div>
                    </div>

</section>
<section>   


<?php foreach ($userJobs as $jobs) { ?>



          <div class="col-md-12  content-panel-header">
              
            <div class="col-md-2 img">
                    <img src="images/job_pic.png" class="img-responsive"> 
            </div>
            <div class="col-md-8 content-panel-jobs">
                       <h4><?php echo e($jobs->company_job); ?></h4>
                       <p><?php echo e($jobs->company_address); ?></p>
                       <div><a href="#">Link</a> | <a href="#">Comment</a></div>
            </div>
             <div class="col-md-2 apply">      
                        <p>2 Day Ago</p>
                        <button data-toggle="modal" data-target="#jobs_<?php echo e($jobs->job_id); ?>">Apply</button>           
            </div>

          </div>

            <!-- Modal for deleteSkills -->
                                      <section>

                                                 <div class="modal fade" id="jobs_<?php echo e($jobs->job_id); ?>" role="dialog">
                                                  <div class="modal-dialog">
                                                  
                                                    <!-- Modal content-->
                                                    <div class="modal-content">

                                                    <form method="" action="jobs/addJob" class="theme1">
                                                               <div class="modal-header col-md-12 content-panel-header">
                                                                    <h3>Applying for <?php echo e($jobs->company_job); ?></h3>
                                                               </div>
                                                                        
                                                               <div class="col-md-12  content-panel">
                                                                    <div class="col-md-4">
                                                                              <p>Company Name: </p>
                                                                    </div>
                                                                    <div class="col-md-7">
                                                                              <p><?php echo e($jobs->company_name); ?></p>
                                                                    </div>
                                                                          
                                                               </div>      

                                                               <div class="col-md-12  content-panel">
                                                                    <div class="col-md-4">
                                                                              <p>Company Address: </p>
                                                                    </div>
                                                                    <div class="col-md-7">
                                                                              <p><?php echo e($jobs->company_address); ?></p>
                                                                    </div>
                                                                     
                                                               </div> 

                                                               <div class="col-md-12  content-panel">
                                                                    <div class="col-md-4">
                                                                              <p>Company Details: </p>
                                                                    </div>
                                                                    <div class="col-md-7">
                                                                              <p><?php echo e($jobs->company_details); ?></p>
                                                                    </div>
                                                                                  
                                                               </div>

                                                               <div class="col-md-12  content-panel">
                                                                    <div class="col-md-4">
                                                                              <p>Salary Rate </p>
                                                                    </div>  
                                                                    <div class="col-md-7">
                                                                              <p class="job_salary"><?php echo e($jobs->company_rate); ?></p>
                                                                    </div>
                                                                                  
                                                               </div>

                                                              <div class="modal-footer">
                                                                   <button type="submit" class="btn btn-default">Confirm</button> 
                                                              </div>
                                                    </form>
                                                    </div>
                                            
                                          </div>
                                        </div>

                                      </section>
                  <!-- Modal for deleteSkills -->


<?php } ?>
          
          
         
                     
</section>  
</content>
              
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>