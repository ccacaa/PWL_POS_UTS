<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Signup Pengguna</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('adminlte/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{ asset('adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{ asset('adminlte/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('adminlte/dist/css/adminlte.min.css') }}">
    <!-- Custom CSS -->
    <style>
        body {
            background: linear-gradient(135deg, #fce4ec, #f8bbd0); /* Soft pink gradient */
        }

        .login-box {
            width: 400px;
            padding: 40px 30px;
            margin-top: 60px;
        }

        .card {
            border-radius: 20px;
            border: 1px solid #f48fb1; /* Soft pink border */
        }

        .card-header a {
            font-size: 2rem;
            font-weight: bold;
            color: #f48fb1; /* Soft pink text */
        }

        .card-header a:hover {
            color: #f06292; /* Darker pink on hover */
        }

        .btn-primary {
            background-color: #f48fb1; /* Button color */
            border-color: #f48fb1;
        }

        .btn-primary:hover {
            background-color: #f06292; /* Darker pink button on hover */
            border-color: #f06292;
        }

        .form-control {
            border-color: #f48fb1; /* Input border pink */
        }

        .form-control:focus {
            border-color: #f06292; /* Input border on focus */
            box-shadow: none;
        }

        .input-group-text {
            background-color: #f8bbd0; /* Soft pink input group */
            border-color: #f48fb1;
            color: #f06292;
        }

        .error-text {
            color: #e91e63; /* Error message pink */
        }
    </style>
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="card card-outline card">
            <div class="card-header text-center">
                <a href="{{ url('/') }}" class="h1"><i class="fas fa-birthday-cake"></i> Cacake</a>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Daftar untuk Membuat Akun Baru</p>
                <form action="{{ url('register') }}" method="POST" id="form-tambah">
                    @csrf
                    <div class="form-group">
                        <label>Level</label>
                        <div class="col-11">
                            <select class="form-control" id="level_id" name="level_id" required>
                                <option value="">- Pilih Level -</option>
                                @foreach($level as $item)
                                    <option value="{{ $item->level_id }}">{{ $item->level_nama }}</option>
                                @endforeach
                            </select>
                            <small id="error-level_id" class="error-text form-text text-danger"></small>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <div class="col-11">
                            <input type="text" class="form-control" id="username" name="username" value="{{ old('username') }}" required>
                            <small id="error-username" class="error-text form-text text-danger"></small>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Nama</label>
                        <div class="col-11">
                            <input type="text" class="form-control" id="nama" name="nama" value="{{ old('nama') }}" required>
                            <small id="error-nama" class="error-text form-text text-danger"></small>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <div class="col-11">
                            <input type="password" class="form-control" id="password" name="password" required>
                            <small id="error-password" class="error-text form-text text-danger"></small>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <a class="btn btn-sm btn-default ml-1" href="{{ url('login') }}">Kembali</a>
                            </div>
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-primary btn-block">Daftar</button>
                        </div>
                    </div>
                </form>

                <!-- jQuery -->
                <script src="{{ asset('adminlte/plugins/jquery/jquery.min.js') }}"></script>
                <!-- Bootstrap 4 -->
                <script src="{{ asset('adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
                <!-- jquery-validation -->
                <script src="{{ asset('adminlte/plugins/jquery-validation/jquery.validate.min.js') }}"></script>
                <script src="{{ asset('adminlte/plugins/jquery-validation/additional-methods.min.js') }}"></script>
                <!-- SweetAlert2 -->
                <script src="{{ asset('adminlte/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
                <!-- AdminLTE App -->
                <script src="{{ asset('adminlte/dist/js/adminlte.min.js') }}"></script>
                <script>
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        }
                    });

                    $(document).ready(function() {
                        $("#form-tambah").validate({
                            rules: {
                                level_id: {required: true, number: true},
                                username: {required: true, minlength: 3, maxlength: 20},
                                nama: {required: true, minlength: 3, maxlength: 100},
                                password: {required: true, minlength: 5, maxlength: 20}
                            },
                            submitHandler: function(form) {
                                $.ajax({
                                    url: form.action,
                                    type: form.method,
                                    data: $(form).serialize(),
                                    success: function(response) {
                                        if (response.status) {
                                            Swal.fire({
                                                icon: 'success',
                                                title: 'Berhasil',
                                                text: response.message
                                            }).then(function() {
                                                window.location = response.redirect;
                                            });
                                        } else {
                                            $('.error-text').text('');
                                            $.each(response.msgField, function(prefix, val) {
                                                $('#error-' + prefix).text(val[0]);
                                            });
                                            Swal.fire({
                                                icon: 'error',
                                                title: 'Terjadi Kesalahan',
                                                text: response.message
                                            });
                                        }
                                    }
                                });
                                return false;
                            },
                            errorElement: 'span',
                            errorPlacement: function(error, element) {
                                error.addClass('invalid-feedback');
                                element.closest('.form-group').append(error);
                            },
                            highlight: function(element, errorClass, validClass) {
                                $(element).addClass('is-invalid');
                            },
                            unhighlight: function(element, errorClass, validClass) {
                                $(element).removeClass('is-invalid');
                            }
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</body>

</html>
