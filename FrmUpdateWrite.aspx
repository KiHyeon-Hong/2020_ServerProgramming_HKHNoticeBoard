﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmUpdateWrite.aspx.cs" Inherits="HKHNoticeBoard.FrmUpdateWrite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <header style="float:left;width:100%">
            <br />
            &nbsp;<asp:ImageButton ID="myLogo" runat="server" ImageUrl="~/PageImages/logo.png" PostBackUrl="FrmMainPAge.aspx"  Height="50px" Width="150px" />
            <span style="top: 4%; right: 40%; position: absolute">
                <a href="FrmMainPage.aspx?category=0">전체</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="FrmMainPage.aspx?category=1">공지사항</a>&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="FrmMainPage.aspx?category=2">Q&A</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="FrmMainPage.aspx?category=3">FAQ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/userProfiles/default.jpg"  style="top: 4%; right: 12%; position: absolute" Height="25px" Width="25px" />
            <a href="#" style="top: 4%; right: 7%; position: absolute">
                <asp:Label ID="myPage" runat="server" Text="Label">마이페이지</asp:Label>
            </a>
            <a href="FrmSignInPage.aspx" style="top: 4%; right: 3%; position: absolute">
                <asp:Label ID="signInState" runat="server" Text="Label">로그인</asp:Label>
            </a>
            <hr />
        </header>
        <main>

            <table style="width: 50%; margin-left: auto; margin-right: auto; margin-top: auto; margin-bottom:auto;">
                <tr>
                    <td>
                        <asp:Label ID="myUserName" runat="server" Text="작성자 : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="userName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="myCategory" runat="server" Text="카테고리 : "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="category" runat="server">
                            <asp:ListItem Value="1">공지사항</asp:ListItem>
                            <asp:ListItem Value="2">Q&A</asp:ListItem>
                            <asp:ListItem Value="3">FAQ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="myTitle" runat="server" Text="제목 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="title" runat="server" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="myBody" runat="server" Text="내용 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="body" runat="server" TextMode="MultiLine" Height="300px" Width="650px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="myEmailAtt" runat="server" Text="첨부파일 : "></asp:Label>
                    </td>
                    <td class="auto-style1">
                       <asp:FileUpload ID="emailAtt" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td style="text-align: right" class="auto-style1">
                        <asp:Button ID="updateWrite" runat="server" Text="수정" CssClass="btn" OnClick="updateWrite_Click" />
                        <asp:Button ID="boardList" runat="server" Text="취소" CssClass="btn" OnClick="boardList_Click" />
                    </td>
                </tr>
            </table>


        </main>
        <footer style="background-color: #CCCCCC; float:left; width:100%; bottom: 0%; position: absolute">
            <p style="text-align: center">안녕하세요</p>
            <p style="text-align: center">이곳은 Footer 입니다</p>
            <p style="text-align: center"></p>
            <p style="text-align: center"><b>Tel. </b>+8210-6605-5379</p>
            <p style="text-align: center"><b>E-mail. </b>ghdrlgus96@naver.com</p>

            <br />
            &nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/PageImages/logo.png" Height="50px" Width="150px" />
            <a href="https://github.com/KiHyeon-Hong" style="bottom: 10%; right: 3%; position: absolute">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/PageImages/git.jpg" Height="25px" Width="25px" />
            </a>
            <a href="https://www.youtube.com/" style="bottom: 10%; right: 7%; position: absolute">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/PageImages/youtube.jpg" Height="25px" Width="25px" />
            </a>
        </footer>
    </form>
</body>
</html>