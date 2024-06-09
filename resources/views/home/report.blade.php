@extends('layouts.main')
@section('content')
    <div class="container mt-4">
        <div class="row">
            <div class="col-8 d-flex align-items-center flex-column d-none" id="no_covid">
                <img style="width: 300px;" src="https://img.freepik.com/free-vector/healthy-lungs-concept-illustration_114360-4781.jpg" alt="">
                <div class="alert alert-success text-center">
                    <h5>Yeayy Sepertinya kamu tidak memiliki masalah <br> pada paru-parumu.</h5>
                    <p class="text-center">Tetap jaga kesehatan agar paru-parumu tetap sehat.</p>
                </div>
                <button onclick="tesulang()" class="btn btn-primary mt-4 mb-5">Tes Ulang</button>
            </div>
            <div id="ada_covid" class="col-8 d-none">
                <h4 class="mb-5">Kenali gejala COVID-19 mu</h4>
        <div class="deskripsi">
            <img id="foto_covid" class="img-fluid float-start me-4" style="width: 250px; height: 250px; object-fit: cover;" src="" alt="">
            <h5>Kamu mempunyai gejala <b id="covid"></b></h5>
            <p id="deskripsi"></p>
        </div> <br><br><br><br>
        <h4>Solusi gejalamu</h4>
        <p id="solusi"></p>
        <br><br>
        <div class="d-flex justify-content-center">
            <button onclick="tesulang()" class="btn btn-primary mt-4 mb-5">Tes Ulang</button>
        </div>
            </div>
            <div id="riwayat_tes" class="col shadow-sm rounded-4 pt-4">
                <h6>Riwayat Tes</h6>
            </div>
        </div>
        <br><br>
        <h4 id="title_obat" class="mt-2 d-none">Produk kesehatan untuk membantumu</h4>
        <div id="container_obat" class="mt-3 d-none mb-5 row row-cols-2 row-cols-lg-4 g-4">
        </div>
    </div>
@endsection
@push('script')
    <script>
        localStorage.setItem('isDone',"done")
        axios.get('/get-report/'+localStorage.getItem('no_telp')).then(({data})=>{
            console.log(data)
            data.forEach(e=>{
                document.querySelector("#riwayat_tes").innerHTML += `<div class="card mb-3 rounded-4" style="width: 100%;">
                    <div class="row g-0">
                        <div class="col-md-4">
                        <img src="${e.foto ? '/uploads/'+e.foto : 'https://img.freepik.com/free-vector/healthy-lungs-concept-illustration_114360-4781.jpg'}" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                        <div class="card-body">
                            <p class="card-title">${e.nama ?? "Tidak ada gejala"}</p>
                            <p class="card-text"><small class="text-muted">${e.tanggal}</small></p>
                        </div>
                        </div>
                    </div>
                </div>`
            })
            if(data[0].id === null){
                document.querySelector('#no_covid').classList.remove('d-none')
            }else{
                document.querySelector('#covid').innerHTML = data[0].nama
                document.querySelector('#deskripsi').innerHTML = data[0].penjelasan
                document.querySelector('#solusi').innerHTML = data[0].tindakan
                document.querySelector('#foto_covid').setAttribute('src','/uploads/'+data[0].foto)
                document.querySelector('#ada_covid').classList.remove('d-none')
                axios.get('/get-obat-penyakit-relation/'+data[0].penyakit_id).then(({data})=>{
                // document.querySelector("#container_obat").
                data.forEach(obat=>{
                    document.querySelector("#container_obat").classList.remove('d-none')
                    document.querySelector("#title_obat").classList.remove('d-none')
                    document.querySelector("#container_obat").innerHTML += `<div class="col">
                <div class="card h-100">
                <img style="height: 200px; object-fit: cover;" src="/uploads/${obat.foto}" class="card-img-top img-fluid" alt="...">
                <div class="card-body">
                    <h5 class="card-title">${obat.nama}</h5>
                    <small class="card-text">${obat.deskripsi}</small>
                </div>
                </div>
            </div>`
                })
            })
            }
        })
        function tesulang(){
            localStorage.removeItem('jawaban')
            localStorage.removeItem('index')
            localStorage.removeItem('isDone')
            window.location = '/tes-online'
        }
    </script>
@endpush
