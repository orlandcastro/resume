<?php $__env->startSection('title'); ?>
    Login
<?php $__env->stopSection(); ?>

<?php $__env->startSection('body-class'); ?>
signup ressuuhome
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>
<content class="row ">

    <center><img src="images/logo.png" class="signuplogo" /></center>
    <section class="container">

        <center>
        
        <div class="clearfix"></div>
            <h4>Welcome!</h4>


        <form method="POST" accept-charset="UTF-8" action="<?php echo e(url('/login')); ?>">
        <?php echo csrf_field(); ?>

            <div class="form-group <?php echo e($errors->has('email') ? ' has-error' : ''); ?>">
                <input required="required" class="" placeholder="Email Address" name="email" type="email">

                 <?php if($errors->has('email')): ?> 
                  <p class="label label-danger"><?php echo e($errors->first('email')); ?></p>
                <?php endif; ?>
            </div>

            <div class="form-group <?php echo e($errors->has('password') ? ' has-error' : ''); ?>">
                <input required="required" class="" placeholder="Password" name="password" type="password">
                 <?php if($errors->has('password')): ?>
                   <p class="label label-danger"><?php echo e($errors->first('password')); ?></p>             
                 <?php endif; ?>
            </div>
            <div class="form-group">
               <input class="signin" type="submit" value="Sign In!">
            </div>

            

        </form>
            <div class="signupfooter">
                <p><a href="<?php echo e(url('/password/reset')); ?>">Forgot you Password?</a></p>
                <p><a href="<?php echo e(url('/register')); ?>">Create Account</a></p>
            </div>  
        </center>

    </section>

</content>


<footer class="ressuufooter">
        
        <div class="container">
            <div class="col-md-6">
                <p>You can Sign In with popular Social Networks</p>
            </div>
            <div class="col-md-6 btn-group btnwrap">
                <center>
                    <button class="btn btn-success btn1"><i class="fa fa-facebook"></i>&nbsp;Sign In with Twitter</button>
                
                    <button class="btn btn-success btn2"><i class="fa fa-twitter"></i>&nbsp;Sign In with Facebook</button>
                </center>
            </div>
        </div>

</footer>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>