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
        <div>{{flashSession.output()}}</div>
        <div class="dok-hello">
            <h1 style="padding: 0px 5px">
                Hallo, {{ session.get('pasien')['username'] }}!
                
            </h1>
        </div>
        <h2 class="dashboard-title">Daftar Konsultasi</h2>
        <div id="daftar-konsultasi"></div>
        </div>
        </div>
        <script>
            var table = new Tabulator("#daftar-konsultasi", {
                height: "311px",
                layout: "fitColumns",
                placeholder: "Tidak Ada Resep",
                columns: [
                    {title: "No", field: "no", formatter: "rownum", width: 10},
                    {title: "Tanggal", field: "tanggal"},
                    {title: "Keluhan", field: "keluhan"},
                    {title: "Dijawab", field: "dijawab"},
                     {
                    title: "Lihat Detail", field: "link", formatter: "link", formatterParams: {
                        labelField: "name",
                        label: "Detail",
                        urlPrefix: "{{ url('pasien/update-resep/') }}",

                    }
                },
                ],
            });
            table.setData("{{ url('pasien/list-konsultasi') }}");
        </script>
{% endblock %}