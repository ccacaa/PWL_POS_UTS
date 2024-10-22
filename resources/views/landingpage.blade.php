<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cacake Website</title>
    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <!-- lightgallery -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">
    <!-- custom css -->
    <link rel="stylesheet" href="{{ url('../resources/css/style.css') }}">
</head>
<body>

    <section class="header">
        <a href="#" class="logo"> <i class="fas fa-birthday-cake"></i>Cacake</a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#about">about</a>
        </nav>

        <div id="menu-btn" class="fas fa-bars"></div>
    </section>
    <!-- header -->

    <!-- home section -->
    <!-- home section -->
    <section class="home" id="home">
        <div class="swiper-slide slide" style="background: url('images/header-1.jpg') no-repeat; height: 100vh; display: flex; align-items: center; justify-content: flex-end;">
            <div class="content float-right" style="display: block;">
                <h3 style="color: #736454; font-size: 6rem;">Selamat Datang di toko kue Cacake</h3>
                <a href="{{route('login')}}" class="btn">Login</a>
            </div>
        </div>
    </section>

    
    <!-- home section -->

    <!-- about us section -->
    <section class="about" id="about">
        <h1 class="heading">about us</h1>
        <div class="row">
            <div class="image">
                <img src="{{ url('images/aboutus.jpg') }}" alt="">
            </div>
            <div class="content">
                <h3>home made cake for you</h3>
                <p>Selamat datang di Cacake! Kami adalah toko kue online yang berkomitmen untuk menyajikan kue-kue lezat dan indah untuk setiap kesempatan. Dengan visi menjadi pilihan utama para pecinta kue, kami menciptakan kue berkualitas tinggi yang tidak hanya enak, tetapi juga menarik secara visual.
                    Tim kami terdiri dari para ahli pastry yang berdedikasi, menggunakan bahan-bahan terbaik untuk menghasilkan karya seni dalam setiap kue. Kami mengutamakan pelayanan pelanggan dan siap membantu Anda menemukan kue yang sempurna untuk momen spesial Anda.
                    Bergabunglah dengan kami dan rasakan perbedaan Cacake dalam setiap gigitan!.</p>
            </div>
        </div>
    </section>
</body>
</html>