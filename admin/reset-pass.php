<?php

session_start();
include('adminpartials/head.php');

if(isset($_POST['login'])){

include('../part/connect.php');



$email=$_POST['email'];
$password=$_POST['password'];
$sql="SELECT * from admins Where username='$email' AND password='$password'";
$results=$connect->query($sql);
$final=$results->fetch_assoc();

$_SESSION['email']=$final['username'];
$_SESSION['password']=$final['password'];



if($email=$final['username'] AND $password=$final['password']){
  header('location: adminindex.php');
}else{
  header('location: adminlogin.php');
}






}



?>
<div class="row">

<div class="col-sm-4">
</div>

<div class="col-sm-4">

<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">şifreyi yenile</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" action="reset-pass-inc.php" method="POST">
              <div class="box-body">
                <div class="form-group">
                  <div class="col-sm-10">
                      <h3> Eposta giriniz</h3>
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-info pull-right" name="login"> ileleri</button>
              </div>
            
              <!-- /.box-footer -->
            </form>
            
      <?php
        if (isset($_GET["reset"])) {
          if ($_GET["reset"] == "success") {
            echo '<p class="signupsuccess">Check your e-mail!</p>';
          }
        }
      ?>


</div>

<div class="col-sm-4">
</div>







	</div>