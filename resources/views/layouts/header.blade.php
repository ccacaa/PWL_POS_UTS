<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
  </ul>

  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
    <!-- User Info Dropdown Menu -->
    <li class="nav-item dropdown">
        <a class="nav-link" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            @if(Auth::user()->avatar && file_exists(public_path('storage/photos/' . Auth::user()->avatar)))
                <img src="{{ asset('storage/photos/' . Auth::user()->avatar) }}" class="rounded-circle" style="width: 30px; height: 30px;" alt="User Avatar">
            @else
                <img src="{{ asset('images/default-profile.jpg') }}" class="rounded-circle" style="width: 30px; height: 30px;" alt="Default User Avatar">
            @endif
            <span class="user-name" style="margin-right: 5px;">{{ Auth::user()->username}}</span> | <span class="user-level" style="margin-left: 5px;">{{ Auth::user()->level->level_nama}}</span>
        </a>
    
        <!-- Dropdown Menu -->
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown" style="width: 280px; padding: 20px;">
            <div class="dropdown-item text-center">
                @if(Auth::user()->avatar && file_exists(public_path('storage/photos/' . Auth::user()->avatar)))
                    <img src="{{ asset('storage/photos/' . Auth::user()->avatar) }}" class="img-fluid rounded-circle" style="width: 80px; height: 80px;" alt="User Avatar">
                @else
                    <img src="{{ asset('images/default-profile.jpg') }}" class="img-fluid rounded-circle" style="width: 80px; height: 80px;" alt="Default User Avatar">
                @endif
                <p class="text-muted" style="margin-bottom: 5px;">Login sebagai {{ Auth::user()->role }}</p> <!-- Reduced margin-bottom -->
                <h5 class="mt-1">{{ Auth::user()->username }}</h5> <!-- Adjusted margin-top to mt-1 -->
            </div>
    
            <a class="dropdown-item text-center btn profile-btn my-2" href="{{ route('profile.index') }}" style="width: 100%;">Profile</a>


            <!-- Link untuk logout -->
            <a href="{{ url('logout') }}" class="dropdown-item">
                <i class="fas fa-sign-out-alt mr-2"></i> Logout
            </a>
        </div>
    </li>

      <!-- Fullscreen and Control Sidebar Options -->
      <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
              <i class="fas fa-expand-arrows-alt"></i>
          </a>
      </li>
  </ul>
</nav>


