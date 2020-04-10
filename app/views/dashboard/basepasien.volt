<!DOCTYPE html>
<html>
<head>
    {% include 'dashboard/header.volt' %}
    <title>{% block title %}{% endblock %} - TrustDoctor</title>
</head>
<body>
{% include 'dashboard/navbar.volt' %}
{% include 'dashboard/sidebarpasien.volt' %}
<div class="dashboard-main">
    {% block content %}{% endblock %}
</div>
{% include'dashboard/footer.volt' %}
</body>
</html>