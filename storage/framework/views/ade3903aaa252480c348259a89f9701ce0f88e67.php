<?php $__env->startSection('title'); ?>
Ressume
<?php $__env->stopSection(); ?>

<?php $__env->startSection('body-class'); ?>
ressuuhome
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>
 <section class="contentarea container padtop30">
        
        <a href="#"><img src="images/logo.png" /></a>

        <div class="clearfix"></div>

        <div class="col-md-9 padtop70">
                
            <h1>We revolutionize <br>your <span>Resume!</span></h1>

            <br>

            <h6>Access your resume anytime and anywhere.</h6>

            <br>

            <center><a href="<?php echo e(url('/login')); ?>"><button class="btn btn-danger">Join us now!</button></a></center>

        </div>

        <div class="col-md-3">
            
            <center><img src="images/phone.png" class="phoneimg"/></center>

        </div>

        <br>
        <br>
    </section>

    <footer class="ressuufooter">
        
        <div class="container">
            <div class="col-md-6">
                <p>You can Sign In with popular Social Networks</p>
            </div>
            <div class="col-md-6 btn-group btnwrap">
                <center>
                    <button class="btn btn-success btn1">Sign In with Twitter</button>
                
                    <button class="btn btn-success btn2">Sign In with Facebook</button>
                </center>
            </div>
        </div>

    </footer>
     



   
       
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>