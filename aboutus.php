<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <?php include 'includes/navbar.php'; ?>
   
    <div class="content-wrapper">
      <div class="container">

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col">

              <div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>Hello , If you any Queries ,Contact US</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Get in Touch.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Kausaltar, Bhaktapur</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +977 9816989437</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: prasainrijip@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  <br>
  <h3 class="text-center">Our Team</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Rijip</a></li>
    <li><a data-toggle="tab" href="#menu1">Sabin</a></li>
    <li><a data-toggle="tab" href="#menu2">Nikhil</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Rijip Prasain , Front-End Designer</h2>
      <p>Front-End Effort of this Project is accomplished by Rijip.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Sabin Gautam , Back-End Designer</h2>
      <p>Back-End Effort of this Project is accomplished by Sabin.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Nikhil Dahal,Documentation</h2>
      <p>Documentation Effort of this Project is accomplished by Nikhil.</p>
    </div>
  </div>
</div>

              
              
          
                        
                
          </div>
        </section>
       
      </div>
    </div>
  
    <?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>