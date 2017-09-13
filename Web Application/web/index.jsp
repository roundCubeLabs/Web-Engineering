<%-- 
    Document   : index
    Created on : Sep 13, 2017, 11:06:41 PM
    Author     : Usama Moin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <div id="background">
            <div id="form">
                <form role="form" action="login">
                    <div class="form-group " id="username">
                        <div class="arrow" style="background-color: rgb(77,175,124);"></div>

                        <input type="text" name="username" class="form-control input-lg inputs" id="email" height="40" placeholder="USERNAME">
                    </div>
                    <div class="form-group" id="password">
                        <div class="arrow" style="background-color: rgb(64,66,65);"></div>
                        <input type="password" name="pass" class="form-control input-lg inputs" id="pwd" placeholder="PASSWORD">
                    </div>
                    <div id="submit">
                        <input type="submit" class="btn btn-default btn-block btn-lg button"></input>
                </form>

            </div>

        </div>
                <%
                    if (session.getAttribute("error") == "true") {

                %>
                <p style='text-align:center'>Please Enter correct username/pass</p>
                <%
                    }
                %>

    </div>  

</body>

<style>
    #background{
        position: absolute;
        top:0px;
        left:0px;
        width:100%;
        height:100%;
        background-color: rgb(233,200,93);

    }
    #form{
        position: absolute;
        top:20%;
        left:37%;
        width:26%;
        height:300px;
    }
    #username{
        position: absolute;
        top:0px;
        height: 100px;
        left:0px;
        width:100%;
        background-color: rgb(77,175,124);
        padding: 27px;
    }

    .arrow{
        position: absolute;
        bottom:-5px;
        height: 10px;
        left:48.5%;
        width:10px;
        z-index: 5;
        -ms-transform: rotate(45deg); /* IE 9 */
        -webkit-transform: rotate(45deg); /* Chrome, Safari, Opera */
        transform: rotate(45deg);
    }



    #password{
        position: absolute;
        top:100px;
        left:0px;
        width:100%;
        height:100px;
        background-color: rgb(64,66,65);
        padding: 27px;
    }
    #submit{
        position: absolute;
        top:200px;
        left:0px;
        width:100%;
        height:80px;
        background-color: tan;
        padding: 19px;
    }

    .inputs{
        background-color: transparent;
        border-radius: 0px;
        border-color: white;
        text-align: center;
        color:white;
        placeholder-color:white;
    }

    .button{
        background-color: transparent;
        border-color: transparent;
        -webkit-transition:all 0.7s ease;
        -moz-transition:all 0.7s ease 0s;
    }

    .button:hover{
        background-color: transparent;
        border-color: transparent;
        color:white;
    }

    #email::-webkit-input-placeholder,#pwd::-webkit-input-placeholder{ color:white; }
    #email::-moz-placeholder,#pwd::-moz-placeholder { color:white; }





    @media only screen and (max-width:999px)
    {
        #form{
            width:35%;
            left:30%;
        }
    }

    @media only screen and (max-width:788px)
    {
        #form{
            width:40%;
            left:30%;
        }
    }

    @media only screen and (max-width:714px)
    {
        #form{
            width:45%;
            left:27.5%;
        }
    }

    @media only screen and (max-width:572px)
    {
        #form{
            width:50%;
            left:25%;
        }
    }

    @media only screen and (max-width:497px)
    {
        #form{
            width:60%;
            left:20%;
        }
    }

    @media only screen and (max-width:387px)
    {
        #form{
            width:70%;
            left:15%;
        }
    }

    @media only screen and (max-width:342px)
    {
        #form{
            width:80%;
            left:10%;
        }
    }


</style>



</html>
