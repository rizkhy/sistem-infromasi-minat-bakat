<?php 

include "koneksi.php";
$query = mysqli_query($kon,"select *
                            from komentar");

  while($data = mysqli_fetch_array($query)){

?>
          <div class="row">
            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title mb-4">Manage Komentar</h5>
                  <div class="fluid-container">
                    <div class="row ticket-card mt-3 pb-2 border-bottom pb-3 mb-3">
                      <!-- <div class="col-md-1">
                        <img class="img-sm rounded-circle mb-4 mb-md-0" src="" alt="profile image">
                      </div> -->
                      <div class="ticket-details col-md-9">
                        <div class="d-flex">
                          <p class="text-dark font-weight-semibold mr-2 mb-0 no-wrap">Nama :</p>
                          <p class="text-primary mr-1 mb-0"><?php echo  $data["nama"]; ?></p>
                        </div>
                        <p class="text-gray ellipsis mb-2"><?php echo  $data["komen"]; ?>
                        </p>
                        <div class="row text-gray d-md-flex d-none">
                          <div class="col-4 d-flex">
                            <small class="mb-0 mr-2 text-muted text-muted">Tanggal :</small>
                            <small class="Last-responded mr-2 mb-0 text-muted text-muted"><?php echo  $data["tanggal"]; ?></small>
                          </div>
                        </div>
                      </div>
                      <div class="ticket-actions col-md-2">
                        <div class="btn-group dropdown">
                          <button type="button" class="btn btn-success dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Manage
                          </button>
                          <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">
                              <i class="fa fa-reply fa-fw"></i>Balas Komentar</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="hapus_komentar.php?id=<?php echo $data['id'] ?>">
                              <i class="fa fa-check text-success fa-fw"></i>Hapus Komentar</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>