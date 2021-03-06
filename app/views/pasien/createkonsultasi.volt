{% extends "dashboard/basepasien.volt" %}

{% block title %}Daftar Konsultasi{% endblock %}

{% block content %}
    <div class="dashboard-header" align="right">


        <div class="dropdown-btn" style="float: right;">
            <button><i class="fas fa-user-md"> </i> Profil</button>
            <div class="dropdown-ctn">
                <ul>
                    <li>
                        <a href="{{ url('') }}">
                            Akun
                        </a>
                    </li>
                    <li>
                        <a href="{{ url('user/logout') }}">
                            Logout
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="home-content">
        <label>Form Buat Konsultasi</label>
        <form class="data-form" action="{{ url("pasien/store-konsultasi") }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="tanggal">Tanggal</label><br>
                <input type="date" name="tanggal" id="tanggal">
            </div>
            <div class="form-group">
                <label for="jkel">Jenis Kelamin</label><br>
                <input type="radio" name="jkel" value="Laki-laki" checked> Laki-laki
                <input type="radio" name="jkel" value="Perempuan"> Perempuan
            </div>
            <div class="form-group">
                <label for="usia">Usia</label><br>
                <input class="form-control" type="text" name="usia" id="usia" required>
            </div>
            <div class="form-group">
                <label for="keluhan">Keluhan singkat</label><br>
                <input class="form-control" type="text" name="keluhan" id="keluhan" required>
            </div>
            <div class="form-group">
                <label for="detail">Detail Keluhan</label><br>
                <input class="form-control" type="text" name="detail" id="detail" required>
            </div>

            <input class="log-btn" type="submit" value="Buat">
        </form>
    </div>
{% endblock %}