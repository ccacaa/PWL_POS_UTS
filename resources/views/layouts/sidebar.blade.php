<div class="sidebar">
    <!-- SidebarSearch Form -->
    <div class="form-inline mt-2">
        <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" id="sidebarSearch" type="search" placeholder="Search" aria-label="Search" onkeyup="filterMenu()">
            <div class="input-group-append">
                <button class="btn btn-sidebar" type="button">
                    <i class="fas fa-search fa-fw"></i>
                </button>
            </div>
        </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false" id="sidebarMenu">
            <li class="nav-item">
                <a href="{{ url('/') }}" class="nav-link {{ $activeMenu == 'dashboard' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>Dashboard</p>
                </a>
            </li>

            @if (Auth::user()->level->level_nama == 'Administrator')
                <li class="nav-header">Data Pengguna</li>
                <li class="nav-item">
                    <a href="{{ url('/level') }}" class="nav-link {{ $activeMenu == 'level' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-layer-group"></i>
                        <p>Level User</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/user') }}" class="nav-link {{ $activeMenu == 'user' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>Data User</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/supplier') }}" class="nav-link {{ $activeMenu == 'supplier' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-user-tie"></i>
                        <p>Data Supplier</p>
                    </a>
                </li>
                <li class="nav-header">Data Barang</li>
                <li class="nav-item">
                    <a href="{{ url('/kategori') }}" class="nav-link {{ $activeMenu == 'kategori' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-boxes"></i>
                        <p>Kategori Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/barang') }}" class="nav-link {{ $activeMenu == 'barang' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-box"></i>
                        <p>Data Barang</p>
                    </a>
                </li>
                <li class="nav-header">Data Transaksi</li>
                <li class="nav-item">
                    <a href="{{ url('/stok') }}" class="nav-link {{ $activeMenu == 'stok' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cubes"></i>
                        <p>Stok Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/transaksi') }}" class="nav-link {{ $activeMenu == 'transaksi' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cash-register"></i>
                        <p>Transaksi Penjualan</p>
                    </a>
                </li>
            @elseif (Auth::user()->level->level_nama == 'Manager')
                <li class="nav-header">Data Pengguna</li>
                <li class="nav-item">
                    <a href="{{ url('/supplier') }}" class="nav-link {{ $activeMenu == 'supplier' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-user-tie"></i>
                        <p>Data Supplier</p>
                    </a>
                </li>
                <li class="nav-header">Data Barang</li>
                <li class="nav-item">
                    <a href="{{ url('/kategori') }}" class="nav-link {{ $activeMenu == 'kategori' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-boxes"></i>
                        <p>Kategori Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/barang') }}" class="nav-link {{ $activeMenu == 'barang' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-box"></i>
                        <p>Data Barang</p>
                    </a>
                </li>
                <li class="nav-header">Data Transaksi</li>
                <li class="nav-item">
                    <a href="{{ url('/stok') }}" class="nav-link {{ $activeMenu == 'stok' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cubes"></i>
                        <p>Stok Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/transaksi') }}" class="nav-link {{ $activeMenu == 'transaksi' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cash-register"></i>
                        <p>Transaksi Penjualan</p>
                    </a>
                </li>
            @elseif (Auth::user()->level->level_nama == 'Staff/Kasir')
                <li class="nav-header">Data Barang</li>
                <li class="nav-item">
                    <a href="{{ url('/kategori') }}" class="nav-link {{ $activeMenu == 'kategori' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-boxes"></i>
                        <p>Kategori Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/barang') }}" class="nav-link {{ $activeMenu == 'barang' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-box"></i>
                        <p>Data Barang</p>
                    </a>
                </li>
                <li class="nav-header">Data Transaksi</li>
                <li class="nav-item">
                    <a href="{{ url('/stok') }}" class="nav-link {{ $activeMenu == 'stok' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cubes"></i>
                        <p>Stok Barang</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('/transaksi') }}" class="nav-link {{ $activeMenu == 'transaksi' ? 'active' : '' }}">
                        <i class="nav-icon fas fa-cash-register"></i>
                        <p>Transaksi Penjualan</p>
                    </a>
                </li>
            @endif

            <li class="nav-header">LogOut</li>
            <li class="nav-item">
                <a href="{{ url('/logout') }}" class="nav-link {{ $activeMenu == 'logout' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                    <p>Logout</p>
                </a>
            </li>
        </ul>
    </nav>
</div>

<script>
    function filterMenu() {
        const input = document.getElementById('sidebarSearch');
        const filter = input.value.toLowerCase();
        const ul = document.getElementById("sidebarMenu");
        const li = ul.getElementsByTagName('li');

        for (let i = 0; i < li.length; i++) {
            const a = li[i].getElementsByTagName("a")[0];
            if (a) {
                const txtValue = a.textContent || a.innerText;
                if (txtValue.toLowerCase().indexOf(filter) > -1) {
                    li[i].style.display = "";
                } else {
                    li[i].style.display = "none";
                }
            }       
        }
    }
</script>
