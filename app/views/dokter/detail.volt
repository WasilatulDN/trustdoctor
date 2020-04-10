{% extends "dashboard/basepasien.volt" %} {% block title %}Daftar Konsultasi{% endblock %} {% block content %}
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
    tanggal konsultasi : <br> {{konsultasi.tanggal}} <br> <br> usia : <br> {{konsultasi.usia}} tahun <br> <br> jenis kelamin : <br> {{konsultasi.jkel}} <br> <br> keluhan : <br> {{konsultasi.keluhan}} <br> <br> detail : <br> {{konsultasi.detail}} <br>    {% if(konsultasi.dijawab == 0) %} {% else %} {{konsultasi.jawaban}} <br> {% endif %}

    <button><a href="reply-konsultasi" style="color: #FFFFFF">Jawab</a></button></div>

</div>

{% endblock %}