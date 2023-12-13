<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Tambah Data Surat masuk</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">

						 <div class="form-group">
                            <label for="no_rak" class="col-sm-3 control-label">Nomor Surat</label>
                            <div class="col-sm-9">
                                <input type="text" name="no_surat" class="form-control" id="inputEmail3" placeholder="Inputkan Nomor Surat" required>
                            </div>
                        </div>

						 <div class="form-group">
                            <label for="no_laci" class="col-sm-3 control-label">Asal Surat</label>
                            <div class="col-sm-9">
                                <input type="text" name="asal_surat" class="form-control" id="inputEmail3" placeholder="Inputkan Asal Surat" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="tgl_masuk" class="col-sm-3 control-label">Tanggal masuk</label>
                            <div class="col-sm-3">
                                <input type="date" name="tgl_masuk" class="form-control" id="inputEmail3" placeholder="Inputkan Tanggal masuk" required>
                            </div>
                        </div>

						<div class="form-group">
                            <label for="penerima" class="col-sm-3 control-label">Penerrima</label>
                            <div class="col-sm-9">
                                <input type="text" name="penerbit" class="form-control" id="inputPassword3" placeholder="Inputkan Staff Penerbit Surat" required>
                            </div>
                        </div>

						<div class="form-group">
                            <label for="ket" class="col-sm-3 control-label">Perihal</label>
                            <div class="col-sm-9">
                                <input type="text" name="perihal" class="form-control" id="inputPassword3" placeholder="Inputkan Perihal Surat">
                            </div>
                        </div>

                        <div class="form-group">
                            <form  method="post" enctype="multipart/form-data">
                                <label class="col-sm-3 control-label" for="pdfFile">Upload File Surat : </label>
                                <input type="file" name="pdfFile">
                                <br>
                                <div class="col-sm-offset-3 col-sm-9">
                                    <input type="submit" value="Simpan Data" value="Upload" class="btn btn-success">
                                        <span class="fa fa-save"></span></input>
                                </div>
                            </form>
                        </div>

<!-- 
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-save"></span> Simpan Data</button>
                            </div>
                        </div> -->
                    </form>


                </div>
                <div class="panel-footer">
                    <a href="?page=s_masukk&actions=tampil" class="btn btn-danger btn-sm">
                        Kembali Ke Data Surat
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>

<?php
if($_POST){
    //Ambil data dari form
    $no_surat   = $_POST['no_surat'];
	$asal_surat = $_POST['asal_surat'];
    $tglmasuk   = $_POST['tgl_masuk'];
	$penerima   = $_POST['penerbit'];
    $perihal    = $_POST['perihal'];
    $pdfFile    = $_POST['pdfFile'];

    //code for image uploading
	if($_FILES['pdfFile']['name']){
		move_uploaded_file($_FILES['pdfFile']['tmp_name'], "images/".$_FILES['pdfFile']['name']);
		$img="/images/".$_FILES['pdfFile']['name'];
	}
 

    
    //buat sql
    $sql="INSERT INTO tb_suratmasuk VALUES ('','$no_surat','$asal_surat','$tglmasuk','$penerima','$perihal', '$pdfFile')";
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Simpan Data Surat Error");
    if ($query){
        echo "<script>window.location.assign('?page=s_masuk&actions=tampil');</script>";
    }else{
        echo "<script>alert('Simpan Data Gagal');<script>";
    }
    }

?>
