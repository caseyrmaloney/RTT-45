<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DOD example</title>



    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
    />
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300&display=swap"
            rel="stylesheet"
    />

    <link href="/pub/css/global.css" rel="stylesheet"/>
</head>
<body>

<nav
        class="navbar navbar-expand-lg navbar-light bg-light"
        style="box-shadow: 0 4px 2px -2px gray"
>
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a
                            class="nav-link active"
                            aria-current="page"
                            href="/index.html"
                    >Home</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/signup">Signup</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/bootstrap">BootStrap</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/fileUpload">File Upload</a>
                </li>

                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdownMenuLink"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Employee
                    </a>
                    <ul
                            class="dropdown-menu"
                            aria-labelledby="navbarDropdownMenuLink"
                    >
                        <li><a class="dropdown-item" href="/employee/search">Search</a></li>
                        <li>
                            <a class="dropdown-item" href="/employee/create">Create Employee</a>
                        </li>
                    </ul>
                </li>

                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="/login/logout">Logout</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=""><sec:authentication property="principal.username" /></a>
                    </li>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link" href="/login/login">Login</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasAnyAuthority('ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="">ADMIN ROLE</a>
                    </li>
                </sec:authorize>

            </ul>
        </div>
    </div>
</nav>