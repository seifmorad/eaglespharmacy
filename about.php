<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
   $about_title = $row['about_title'];
    $about_content = $row['about_content'];
    $about_banner = $row['about_banner'];
}

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $contact_map_iframe = $row['contact_map_iframe'];
    $contact_email = $row['contact_email'];
    $contact_phone = $row['contact_phone'];
    $contact_address = $row['contact_address'];
}
?>




<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $about_banner; ?>);">
    <div class="inner">
        <h1><?php echo $about_title; ?></h1>
    </div>
</div>
</div>

<div class="container" style="margin-top:70px;">
  <div class="row">
    <div class="col-md-4">
      <div class="card mb-4">
        <div class="card-img-top rounded-circle bg-secondary text-center p-4">
          <img src="assets\uploads\team\33.jpeg" class="img-fluid rounded-circle" alt="Placeholder">
        </div>
        <div class="card-body text-center">
          <h5 class="card-title">Yosser Eldin Khalid Medan</h5>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card mb-4">
        <div class="card-img-top rounded-circle bg-secondary text-center p-4">
          <img src="assets\uploads\team\22.jpeg" class="img-fluid rounded-circle fit-circle" alt="Placeholder">
        </div>
        <div class="card-body text-center">
          <h5 class="card-title">Hania Ayman Hegazy</h5>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card mb-4">
        <div class="card-img-top rounded-circle bg-secondary text-center p-4">
          <img src="assets\uploads\team\44.jpeg" class="img-fluid rounded-circle" alt="Placeholder">
        </div>
        <div class="card-body text-center">
          <h5 class="card-title">Mahmoud Nabil Medan</h5>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card mb-4">
        <div class="card-img-top rounded-circle bg-secondary text-center p-4">
          <img src="assets\uploads\team\66.jpeg" class="img-fluid rounded-circle" alt="Placeholder">
        </div>
        <div class="card-body text-center">
          <h5 class="card-title">Eyad mohamed younis</h5>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card mb-4">
        <div class="card-img-top rounded-circle bg-secondary text-center p-4">
          <img src="assets\uploads\team\55.jpeg" class="img-fluid rounded-circle" alt="Placeholder">
        </div>
        <div class="card-body text-center">
          <h5 class="card-title">Alaa Ashraf Namsha</h5>
        </div>
      </div>
    </div>
  </div>
</div>








<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                
                <p>
                    <?php echo $about_content; ?>
                </p>
                
                <h1>Find Us On Map</h1>
                <?php echo $contact_map_iframe; ?>
            </div>
        </div>
    </div>

</div>


<?php require_once('footer.php'); ?>