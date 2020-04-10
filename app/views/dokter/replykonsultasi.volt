{% extends "dashboard/basedokter.volt" %}

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
        <form class="data-form" action="{{ url("dokter/store-replykonsultasi") }}" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="jawaban">Jawaban</label><br>
                <input type="text" name="jawaban" id="jawaban">
            </div>
            <div class="form-group">
                <input type="hidden" name="idKonsultasi" id="idKonsultasi">
            </div>

            <input class="log-btn" type="submit" value="Buat">
        </form>
    </div>
{% endblock %}