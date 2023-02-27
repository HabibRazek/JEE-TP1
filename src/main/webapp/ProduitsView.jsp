<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<style>
    body {
        background-color: #f6f6f6;
        margin-top: 20px;
    }

    .card {
        background-color: #fff;
        border-radius: 10px;
        border: none;
        position: relative;
        margin-bottom: 30px;
        box-shadow: 0 0.46875rem 2.1875rem rgba(90, 97, 105, 0.1),
        0 0.9375rem 1.40625rem rgba(90, 97, 105, 0.1),
        0 0.25rem 0.53125rem rgba(90, 97, 105, 0.12),
        0 0.125rem 0.1875rem rgba(90, 97, 105, 0.1);
    }

    .card .card-header {
        border-bottom-color: #f9f9f9;
        line-height: 30px;
        -ms-grid-row-align: center;
        align-self: center;
        width: 100%;
        padding: 10px 25px;
        display: flex;
        align-items: center;
    }

    .card .card-header,
    .card .card-body,
    .card .card-footer {
        background-color: transparent;
        padding: 20px 25px;
    }

    .card-header:first-child {
        border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0;
    }

    .card-header {
        padding: 0.75rem 1.25rem;
        margin-bottom: 0;
        background-color: rgba(0, 0, 0, 0.03);
        border-bottom: 1px solid rgba(0, 0, 0, 0.125);
    }

    .table:not(.table-sm) thead th {
        border-bottom: none;
        background-color: #e9e9eb;
        color: #666;
        padding-top: 15px;
        padding-bottom: 15px;
    }

    .table .table-img img {
        width: 35px;
        height: 35px;
        border-radius: 50%;
        border: 2px solid #bbbbbb;
        -webkit-box-shadow: 5px 6px 15px 0px rgba(49, 47, 49, 0.5);
        -moz-box-shadow: 5px 6px 15px 0px rgba(49, 47, 49, 0.5);
        -ms-box-shadow: 5px 6px 15px 0px rgba(49, 47, 49, 0.5);
        box-shadow: 5px 6px 15px 0px rgba(49, 47, 49, 0.5);
        text-shadow: 0 0 black;
    }

    .table .team-member-sm {
        width: 32px;
        -webkit-transition: all 0.25s ease;
        -o-transition: all 0.25s ease;
        -moz-transition: all 0.25s ease;
        transition: all 0.25s ease;
    }

    .table .team-member {
        position: relative;
        width: 30px;
        white-space: nowrap;
        border-radius: 1000px;
        vertical-align: bottom;
        display: inline-block;
    }

    .table .order-list li img {
        border: 2px solid #ffffff;
        box-shadow: 4px 3px 6px 0 rgba(0, 0, 0, 0.2);
    }

    .table .team-member img {
        width: 100%;
        max-width: 100%;
        height: auto;
        border: 0;
        border-radius: 1000px;
    }

    .rounded-circle {
        border-radius: 50% !important;
    }

    .table .order-list li+li {
        margin-left: -14px;
        background: transparent;
    }

    .avatar.avatar-sm {
        font-size: 12px;
        height: 30px;
        width: 30px;
    }

    .avatar {
        background: #6777ef;
        border-radius: 50%;
        color: #e3eaef;
        display: inline-block;
        font-size: 16px;
        font-weight: 300;
        margin: 0;
        position: relative;
        vertical-align: middle;
        line-height: 1.28;
        height: 45px;
        width: 45px;
    }

    .table .order-list li .badge {
        background: rgba(228, 222, 222, 0.8);
        color: #6b6f82;
        margin-bottom: 6px;
    }

    .badge {
        vertical-align: middle;
        padding: 7px 12px;
        font-weight: 600;
        letter-spacing: 0.3px;
        border-radius: 30px;
        font-size: 12px;
    }

    .progress-bar {
        display: -ms-flexbox;
        display: -webkit-box;
        display: flex;
        -ms-flex-direction: column;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
        flex-direction: column;
        -ms-flex-pack: center;
        -webkit-box-pack: center;
        justify-content: center;
        overflow: hidden;
        color: #fff;
        text-align: center;
        white-space: nowrap;
        background-color: #007bff;
        -webkit-transition: width 0.6s ease;
        transition: width 0.6s ease;
    }

    .bg-success {
        background-color: #54ca68 !important;
    }

    .bg-purple {
        background-color: #9c27b0 !important;
        color: #fff;
    }

    .bg-cyan {
        background-color: #10cfbd !important;
        color: #fff;
    }

    .bg-red {
        background-color: #f44336 !important;
        color: #fff;
    }

    .progress {
        -webkit-box-shadow: 0 0.4rem 0.6rem rgba(0, 0, 0, 0.15);
        box-shadow: 0 0.4rem 0.6rem rgba(0, 0, 0, 0.15);
    }
</style>

<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"
      integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />

<div class="container">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Produit List</h4>
                </div>
                <form action="controleur" class="d-flex" method="post">
                    <input type="text" class="form-control w-50 mx-5"  name="motCle" value="${modele.motCle}">
                    <input type="submit" class="btn btn-primary"  value="OK">
                </form>
                <!-- <form  action="ajoutProduit.jsp" method="post">
                    <input type="submit" value="Ajouter" name="Ajouter" />
                </form> -->
                <div class="card-body">
                    <div class="table-responsive" id="proTeamScroll" tabindex="2"
                         style="height: 400px; overflow: hidden; outline: none">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>ID</th> <th>Nom</th> <th>Prix</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${modele.produits}" var="p">
                                <tr>
                                    <td>${p.idProduit}</td>
                                    <td>${p.nomProduit}</td>
                                    <td>${p.prix}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>