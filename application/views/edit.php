<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

    	<?php foreach($barang as $brg) { ?>

<form action="<?php echo base_url().'mahasiswa/update'; ?>"
	method="post">

	<div class="form-group">
		<label>NAMA MAHASISWA</label>
		<input type="hidden" name="id" class="form-control" value="<?php echo $mhs->id ?>">
		<input type="text" name="nama" class="form-control" value="<?php echo $mhs->nama ?>">
	</div>

	<div class="form-group">
		<label>NIM</label>
		<input type="text" name="nim" class="form-control" value="<?php echo $mhs->nim ?>">
	</div>

	<div class="form-group">
		<label>Tanggal Lahir</label>
		<input type="text" name="tgl_lahir" class="form-control" value="<?php echo $mhs->tgl_lahir ?>">
	</div> 

	<div class="form-group">
		<label>Jurusan</label>
		<select class="form-control" name="jurusan" value="<?php echo $mhs->jurusan ?>">
		<option>Sistem informasi</option>
		<option>Teknik Informatika</option>
		<option>DEVELOPER</option>
	</select>
	</div>

	<div class="form-group">
		<label>Alamat</label>
		<input type="text" name="alamat" class="form-control" value="<?php echo $mhs->alamat ?>">
	</div>

	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control" value="<?php echo $mhs->email ?>">
	</div>

	<div class="form-group">
		<label>No .Telepon</label>
		<input type="text" name="no_telp" class="form-control" value="<?php echo $mhs->no_telp ?>">
	</div>
<button type="reset" class="btn btn-danger">RESET</button>
<button type="submit" class="btn btn-primary">SIMPAN</button>
	</form>
	<?php } ?>
    </section>

</div>