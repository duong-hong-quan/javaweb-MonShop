<%-- 
    Document   : orderdetailsadmin
    Created on : Mar 10, 2023, 10:03:30 AM
    Author     : PC_HONGQUAN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Manage order detail of users</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/responsive.css"/>

    <!-- Bootstrap CSS -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
            integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
    />
</head>
<body>
<c:url var="logout" value="logoutAction">
</c:url>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="sidebar.jsp"></jsp:include>
        <div class="col-md-10 right">
            <div class="shoptitle">
                <h3 class="shoptitleh3">Order Details</h3>
                <div class="shoptitle-btn">
                    <p style="text-align: center; margin: auto 0; font-size: 1.6rem">
                        ${day}
                    </p>
                    <a class="shoptitle-item__logout" href="${logout}">
                        <i class="fa fa-door-open add-icon"></i>

                        Logout
                    </a>
                </div>
            </div>
            <form action="updatestatusorderAction" method="POST">
                <div class="order-container">
                    <div class="order">
                        <div class="order-component">
                            <h3 class="order_id">#Order ID: ${orderid}</h3>
                            <input type="hidden" name="orderId" value="${orderid}"/>
                            <select class="status_order" name="statusOrder">
                                <c:forEach var="iStatus" items="${statuses}">
                                    <option value="${iStatus.id}"
                                            <c:if test="${iStatus.id == statusId}">
                                                selected ="selected"
                                            </c:if>
                                    >${iStatus.status}</option>
                                </c:forEach>

                            </select>
                        </div>

                        <div class="detail">
                            <div class="table-responsive-md table-responsive-sm">
                                <table class="table" style="width: 100%">
                                    <thead class="table-thead">
                                    <tr>
                                        <th scope="col" class="text-center">No</th>
                                        <th scope="col" class="text-center">Name</th>
                                        <th scope="col" class="text-center">Image</th>
                                        <th scope="col" class="text-center">Price</th>
                                        <th scope="col" class="text-center">Quantity</th>
                                        <th scope="col" class="text-center">Sub-Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="dto" items="${oitems}" varStatus="counter">
                                        <tr>
                                            <td class="text-center">${counter.count}</td>
                                            <td class="">${dto.product.name}</td>
                                            <td class="text-center">
                                                <img
                                                        alt="..."
                                                        src="${dto.product.img}"
                                                        class="rounded-circle img-tabler"
                                                        style="width: 40px; height: 40px;"
                                                />
                                            </td>
                                            <td class="text-center">$${dto.product.price}</td>
                                            <td class="text-center">
                                                <p>${dto.quantity}</p>
                                            </td>
                                            <td class="text-center">
                                                <p class="">$${dto.subtotal}</p>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                    <tr>
                                        <td class="text-center" style="font-weight: bold;">Total</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>

                                        <td class="text-center" style="font-weight: bold;"> ${total}</td>
                                    </tr>


                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <input
                                type="submit"
                                class="submitorder-btn"
                                value="Update Status Order"
                                name="btAction"
                        />
                    </div>

                </div>

            </form>

        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script
        src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"
></script>
<script src="js/shop.js"></script>
</body>
</html>
