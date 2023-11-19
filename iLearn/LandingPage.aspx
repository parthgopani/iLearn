<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LandingPage.aspx.cs" Inherits="LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images/logo-mini.png" />
    <style>
        .btn-outline-ilearn {
            color: #4b49ac;
            background-color: #ffffff;
            border-color: #4b49ac;
            font-weight: bold;
            letter-spacing: 0.05em;
        }

            .btn-outline-ilearn:hover,
            .btn-outline-ilearn:active,
            .btn-outline-ilearn:focus,
            .btn-outline-ilearn.active {
                background: #4b49ac;
                color: #ffffff;
                border-color: #4b49ac;
            }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial;
            font-size: 17px;
        }

        #myVideo {
            width: 100%;
            height: 100%;
        }

        .content {
            position: fixed;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            color: #f1f1f1;
            width: 100%;
        }

        #myBtn {
            width: 200px;
            font-size: 18px;
            padding: 10px;
            border: none;
            background: #000;
            color: #fff;
            cursor: pointer;
        }

            #myBtn:hover {
                background: #ddd;
                color: black;
            }

        p {
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
    <title>Ilearn</title>
</head>
<body>
    <form id="form1" runat="server">
        <video autoplay muted loop id="myVideo">
            <source src="images/video/herovideo2.mp4" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>

        <div class="content">
            <div class="brand-logo text-center" align="center">
                <img src="/images/logo.png" alt="logo" style="height: 74px; width: 195px">
            </div>
            <h1 align="center">Welcome To Ilearn! </h1>
            <p align="center">
                We're passionate about making Python programming accessible and enjoyable for 
    learners of all levels. Our platform combines the power of video lessons, comprehensive 
    PDF materials, and interactive quizzes to provide a holistic learning experience. 
    Whether you're a beginner or an experienced coder, ILearn is your go-to destination for 
    mastering Python.
            </p>
            <div align="center">
                <asp:Button ID="myBtn" runat="server" Text="Login" OnClick="myBtn_Click" />
            </div>
        </div>
    </form>

</body>

</html>
