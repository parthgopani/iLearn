<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LandingPage.aspx.cs" Inherits="LandingPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
        }

        .container {
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        #division1 {
            flex: 1;
            border-radius: 15px;
            margin: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        #division2 {
            flex: 1;
            border-radius: 15px;
            margin: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            border-radius: 15px;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        #myVideo {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 15px;
        }

        .brand-logo img {
            width: 100%;
            max-width: 200px;
            height: auto;
            margin-bottom: 20px;
        }

        .card {
            max-width: 600px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px;
        }

            .card p {
                font-size: 16px;
                color: #555;
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
            transition: background 0.3s, color 0.3s;
        }

            #myBtn:hover {
                background: #fff;
                color: #4b49ac;
            }

        @media screen and (min-width: 600px) {
            .container {
                flex-direction: row;
            }
        }
    </style>
    <title>ILearn</title>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <div id="division1">
                <video autoplay muted loop id="myVideo">
                    <source src="images/video/Original.mp4" type="video/mp4">
                    Your browser does not support HTML5 video.
                </video>
            </div>

            <div id="division2">
                <div class="brand-logo">
                    <img src="/images/logo.png" alt="logo">
                </div>

                <div class="card">
                    <p>
                        Welcome to ILearn, where we make Python programming accessible and enjoyable for
                        learners of all levels. Our platform combines the power of video lessons, comprehensive
                        PDF materials, and interactive quizzes to provide a holistic learning experience.
                        Whether you're a beginner or an experienced coder, ILearn is your go-to destination
                        for mastering Python.
                    </p>
                </div>

                <asp:Button ID="myBtn" runat="server" Text="Login" OnClick="myBtn_Click" />
            </div>
        </div>
    </form>
</body>
</html>
