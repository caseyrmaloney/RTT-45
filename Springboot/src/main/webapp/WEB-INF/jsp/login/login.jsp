<jsp:include page="../include/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section class="pt-5 pb-5" style="background-color: rgb(163, 215, 255)">
    <div class="container text-center">
        <h2>Login</h2>
    </div>
</section>

<c:if test="${param['error'] != null}">
    <section class="pt-5 bg-light-grey">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-7 col-xl-5">
                    <div class="alert alert-danger" role="alert">
                        Invalid Username or Password
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>

<section class="pt-4 pb-5">
    <div class="container" style="width: 50%">
        <div class="row justify-content-center">
            <!-- call form submit -->
            <form method="POST" action="/login/login">
                <div class="mb-3">
                    <label  class="form-label">Email address</label>
                    <input
                            type="text"
                            name="username"
                            placeholder="Email Address"
                            class="form-control"
                            aria-describedby="Email Address"
                    />
                </div>
                <div class="mb-3">
                    <label  class="form-label">Password</label>
                    <input
                            type="text"
                            name="password"
                            placeholder="Password"
                            class="form-control"
                            aria-describedby="Password"
                    />
                </div>

                <button
                        type="submit"
                        class="btn btn-primary mt-3 me-3"

                >
                    Login
                </button>
            </form>
        </div>
    </div>
</section>