<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LandingPage.aspx.cs" Inherits="LandingPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            font-size: 17px;
            height: 100vh;
            display: grid;
            grid-template-columns: 1fr 1fr; /* Two columns, each taking up half of the available space */
        }

        #division1 {
            padding: 20px;
            box-sizing: border-box;
            background-color: #4b49ac;
            color: #fff;
            overflow: hidden;
        }

        #myVideo {
            height: 90vh;
            object-fit: contain;
            width: 100%;
        }

        #division2 {
            padding: 20px;
            box-sizing: border-box;
            background-color: #ddd;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        .brand-logo {
            margin-bottom: 20px;
        }

        #myBtn {
            width: 200px;
            font-size: 18px;
            padding: 10px;
            border: none;
            background: #4b49ac;
            color: #fff;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 20px;
        }

        #myBtn:hover {
            background: #fff;
            color: #4b49ac;
        }
    </style>
    <title>ILearn</title>
</head>
<body>
    <form id="form2" runat="server">
        <div id="division1">
            <video autoplay muted loop id="myVideo">
                <source src="images/video/Original.mp4" type="video/mp4">
                Your browser does not support HTML5 video.
            </video>
        </div>

        <div id="division2">
            <div class="brand-logo">
                <img src="/images/logo.png" alt="logo" style="height: 70px; width: 190px">
            </div>

            <div class="card">
                <p>
                    We're passionate about making Python programming accessible and enjoyable for learners of all levels. Our platform combines the power of video lessons, comprehensive PDF materials, and interactive quizzes to provide a holistic learning experience. Whether you're a beginner or an experienced coder, ILearn is your go-to destination for mastering Python.
                </p>
            </div>

            <asp:Button ID="myBtn" runat="server" Text="Login" OnClick="myBtn_Click" />
        </div>
    </form>
</body>
</html>
