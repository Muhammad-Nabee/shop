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
                                <h3 class="mb-10 custom-title">Create an account</h3>
                                <p class="mb-20"><strong>I am a new customer</strong></p>
                                <form action="#">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>First name <span>*</span></label>
                                            <input type="text" name="first_name" placeholder="" id="input-first-name" class="form-control">
                                        </div>    
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Last name <span>*</span></label>
                                            <input type="text" name="last_name" placeholder="" id="input-last-name" class="form-control">
                                        </div>    
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Gender <span>*</span></label><br />
                                            <span class="custom-radio mr-3">
                                                <label><input name="id_gender" value="1" type="radio" /> Male</label>
                                            </span>
                                            <span class="custom-radio mr-3">
                                                <label><input name="id_gender" value="1" type="radio" /> Female</label>
                                            </span>
                                            <span class="custom-radio">
                                                <label><input name="id_gender" value="1" type="radio" /> Others</label>
                                            </span> 
                                        </div>
                                    </div>

                                  
                                     <div class="col-md-12 mb-4">
                                        <label>Date of birth <span>*</span></label>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Day</label>
                                                    <select class="form-control">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                    </select>
                                                      
                                                </div> 
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Month</label>
                                                    <select class="form-control">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                    </select>
                                                      
                                                </div> 
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Year</label>
                                                    <select class="form-control">
                                                        <option>2021</option>
                                                        <option>2020</option>
                                                        <option>2019</option>
                                                        <option>20218</option>
                                                    </select>
                                                      
                                                </div> 
                                            </div>
                                        </div>   
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Contact number <span>*</span></label>
                                            <input type="text" name="contact_number" placeholder="" id="input-contact-number" class="form-control">
                                        </div>    
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email <span>*</span></label>
                                            <input type="email" name="email_address" placeholder="" id="input-email-address" class="form-control">
                                        </div>    
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Password <span>*</span></label>
                                            <input type="password" name="password" placeholder="" id="input-password" class="form-control">
                                        </div>
                                         
                                    </div>
                                    <div class="col-md-12">    
                                       
                                        <input type="submit" value="Create Account" class="btn-colour-blue">
                                    </div> 
                                    <div class="col-md-12 mt-3">    
                                       
                                        <p>Already a member? <a href="login.php">Login Now</a></p>
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