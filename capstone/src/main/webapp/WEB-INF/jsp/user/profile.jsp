<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../includes/header.jsp"/>


<style>

    .section3 {
        display: flex;
        justify-content: center;

        margin: 3em 3em;
    }

    .title-wrapper {
        border-top: black solid 1px;
    }

    .card-link {
        text-decoration: none;
        color: black

    }

    .card-link:hover {
        background: #FEBE27;
        background: radial-gradient(circle farthest-corner at center center, #FEBE27 10%, #FE682F 28%, #F52D3A 44%, #D12468 60%, #6F0964 78%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        padding: .5em;

    }

    .card-img-div {
        background: rgb(254, 190, 39);
        background: linear-gradient(0deg, rgba(254, 190, 39, 1) 8%, rgba(254, 104, 47, 1) 33%, rgba(245, 45, 58, 1) 51%, rgba(209, 36, 104, 1) 72%, rgba(111, 9, 100, 1) 89%);
        padding: 2em 2em;
    }

    .card-title {
        font-size: 22px;
        padding-top: 10px;

    }

    .card-wrapper {
        margin: 2em 1em;
        text-align: center;
        width: 600px;
        border: black solid 1px;

    }

    .card-content-div{
        margin: 1em 0em;
    }


</style>

<section class="section3">

    <div class="sec3-content-wrapper">


        <div style="text-align: center" class="title-wrapper">

            <h1 style="margin-top: 1em; "> My Books</h1>

        </div>


        <div style="display: flex; justify-content: flex-start; width: 1000px " class="overflow-auto">

            <c:forEach items="${bookList}" var="book">
                <div class="card-wrapper">

                    <div class="card-img-div">
                        <img style="width: 200px" src="${book.book_cover_url}"/>
                    </div>

                    <div class="card-content-div">
                        <h1 style="padding-top: 10px" class="card-title">
                            <a class="card-link" href="/books/details/${book.id}"> ${book.title}</a>
                        </h1>
                    </div>

                </div>
            </c:forEach>

        </div>

        <%--        for each book in booksList based on the bookshelf
                    if bookshelf is something display the book information--%>

        <div style="text-align: center; margin-top: 3em" class="title-wrapper">

            <h1 style="margin-top: 1em; "> Currently Reading </h1>

        </div>


        <div style="display: flex; justify-content: flex-start; width: 1000px " class="overflow-auto">



            <c:forEach items="${bookList}" var="book">

                <c:if test="${book.bookshelf eq 'Currently Reading'}">

                    <div class="card-wrapper">

                        <div class="card-img-div">
                            <img style="width: 200px" src="${book.book_cover_url}"/>
                        </div>

                        <div class="card-content-div">
                            <h1 style="padding-top: 10px" class="card-title">
                                <a class="card-link" href="/books/details/${book.id}"> ${book.title}</a>
                            </h1>
                        </div>

                    </div>

                </c:if>


            </c:forEach>

        </div>

        <div style="text-align: center; margin-top: 3em" class="title-wrapper">

            <h1 style="margin-top: 1em; "> Want to Read</h1>

        </div>


        <div style="display: flex; justify-content: flex-start; width: 1000px " class="overflow-auto">



            <c:forEach items="${bookList}" var="book">

                <c:if test="${book.bookshelf eq 'Want to Read'}">

                    <div class="card-wrapper">

                        <div class="card-img-div">
                            <img style="width: 200px" src="${book.book_cover_url}"/>
                        </div>

                        <div class="card-content-div">
                            <h1 style="padding-top: 10px" class="card-title">
                                <a class="card-link" href="/books/details/${book.id}"> ${book.title}</a>
                            </h1>
                        </div>

                    </div>

                </c:if>


            </c:forEach>

        </div>

        <div style="text-align: center; margin-top: 3em" class="title-wrapper">

            <h1 style="margin-top: 1em; "> Finished Reading</h1>

        </div>


        <div style="display: flex; justify-content: flex-start; width: 1000px " class="overflow-auto">



            <c:forEach items="${bookList}" var="book">

                <c:if test="${book.bookshelf eq 'Finished Reading'}">

                    <div class="card-wrapper">

                        <div class="card-img-div">
                            <img style="width: 200px" src="${book.book_cover_url}"/>
                        </div>

                        <div  class="card-content-div">
                            <h1 style="padding-top: 10px" class="card-title">
                                <a class="card-link" href="/books/details/${book.id}"> ${book.title}</a>
                            </h1>
                        </div>

                    </div>

                </c:if>


            </c:forEach>

        </div>






    </div>


</section>