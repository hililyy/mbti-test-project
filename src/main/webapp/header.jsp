<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <jsp:useBean id="login" class="com.webPro03.UserBean" />
    <jsp:setProperty name="login" property="userId" />
    <jsp:setProperty name="login" property="password" />
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="utf-8">
        <title>MBTI test</title>
        <style>
            * {
                font-family: 'Gamja Flower', cursive;
            }

            .background {
                background: whitesmoke;
                padding-top: 30px;
                text-align: center;

            }
            .login-list {
            	margin-left:30px;
            }
			.login-list input {
				border: none;
                padding: 30px 10px 10px 10px;
                background: rgba(0, 0, 0, 0);
                border-bottom: 2px solid rgba(0, 0, 0, 0);
                transition: .5s border-bottom;
                color:black;
                font-size: 18px;
			}
            .list input[type=submit] {
                border: none;
                padding: 30px 10px 10px 10px;
                background: rgba(0, 0, 0, 0);
                border-bottom: 2px solid rgba(0, 0, 0, 0);
                transition: .5s border-bottom;
                color:black;
                font-size: 18px;
            }

            .list input[type=submit]:hover {
                border-bottom: solid pink;
                color:pink;
            }

            .header-container {
                padding: 0 30px;
            }

            .header-container::before {
                display: block;
                content: " ";
                clear: both;
            }

            .header-container__logo {
                float: left;
            }

            .header-container__menu-container {
                float: right;
            }

            .logout {
                margin: 0px 20px 0px 20px;
                border-radius: 50rem;
                border: 2px solid transparent;
                border-color: pink;
                padding: 0.5rem 1.5rem 0.5rem 1.5rem;
                background-color: whitesmoke;
                color: pink;
                font-weight: bold;
				font-size: 15px;
            }

            .header-logo {
                float: left;
                margin-left: 20px;
                border-radius: 50rem;
                border-color: white;
                border: 1px solid transparent;
                padding: 0.5rem 2rem 0.5rem 2rem;
                background-color: white;
                color: pink;
                font-size: 35px;
            }
            
        </style>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
        <link href="compatibility.css" rel="stylesheet">
    </head>

    <body class="background">
        <div style="margin-bottom:120px;">
            <header class="header-container">
                <h1 class="header-logo">Sim Kong</h1>

                <% if(login.signUp().getId()==null) {%>
                    <form method="post" name="home" class="header-container__menu-container">
                    <nav>
                        <div class="login-list">
                            <input type="button" name="Submit" value="로그인" onclick="location.href='login.jsp'">
                            <input type="button" name="Submit" value="회원가입" onclick="location.href='signUp.jsp'">
                        </div>
                        </nav>
                    </form>
                    <% } else { %>
                        <form method="post" name="home" class="header-container__menu-container">
                            <nav>
                                <div>
                                    <input id="id" name="userId" type="hidden" value="<%= request.getParameter("userId") %>" >
                                </div>
                                <div>
                                    <input id="password" name="password" type="hidden" value="<%= request.getParameter("password") %>" >
                                </div>
                                <div class="signUp list">
                                    <input class="menu-test" type="submit" name="Submit" value="테스트하기"
                                        formaction="home.jsp">
                                    <input class="menu-compatibility" type="submit" name="Submit" value="궁합보기"
                                        formaction="compatibility.jsp">
                                    <input class="menu-type" type="submit" name="Submit" value="유형보기"
                                        formaction="type.jsp">
                                    <input class="menu-board" type="submit" name="Submit" value="게시판"
                                        formaction="type.jsp">
                                    <input id="id" name="userId" type="hidden" value="<%= request.getParameter("userId") %>">
                                    <input class="logout" type="button" name="Submit" value="로그아웃"
                                        onclick="location.href='home.jsp'">
                                </div>

                            </nav>
                        </form>
                        <% } %>
            </header>

        </div>
    </body>

    </html>