<?php include('header.php'); ?>
        <!-- Main Header Area End Here -->
        <!-- Breadcrumb Start -->
    
        <!-- Breadcrumb End -->
        <!-- LogIn Page Start -->
        <div class="log-in ptb-45">
            <div class="container">
                <div class="row">
                 
                    <!-- Returning Customer Start -->
                    <div class="col-md-6 mx-auto">
                        <div class="well">
                            <div class="return-customer">
                                <h3 class="mb-10 custom-title">Log in</h3>
                                <p class="mb-10"><strong>I am a returning customer</strong></p>
                                <form action="#">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="text" name="email" placeholder="" id="input-email" class="form-control">
                                        </div>    
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="text" name="pass" placeholder="" id="input-password" class="form-control">
                                        </div>
                                         <p class="lost-password text-right"><a href="forgotpassword.php">Forgot password?</a></p>
                                    </div>
                                    <div class="col-md-12">    
                                       
                                        <input type="submit" value="Login" class="btn-colour-blue">
                                    </div> 
                                    <div class="col-md-12 mt-3">    
                                       
                                        <p>Don't have an account yet? <a href="register.php">Register Now</a></p>
                                    </div>    
                                 </div>   
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Returning Customer End -->
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->
        </div>
        <!-- LogIn Page End -->
<?php include('footer.php'); ?>