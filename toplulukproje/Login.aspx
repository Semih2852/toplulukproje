<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="toplulukproje._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(45deg, #1a1a1a, #2a2a2a);
            font-family: Arial, sans-serif;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .login-header h1 {
            color: #fff;
            margin: 0;
            font-size: 2em;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #fff;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            outline: none;
            background: rgba(255, 255, 255, 0.2);
        }

        .login-button {
            width: 100%;
            padding: 12px;
            background: #4CAF50;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-button:hover {
            background: #45a049;
        }

        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }

        .forgot-password a {
            color: #fff;
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .forgot-password a:hover {
            color: #4CAF50;
        }

        .validation-summary-errors {
            color: #ff4444;
            text-align: center;
            margin-top: 10px;
            padding: 10px;
            background: rgba(255, 0, 0, 0.1);
            border-radius: 5px;
        }

        .field-validation-error {
            color: #ff4444;
            font-size: 0.875em;
            margin-top: 5px;
            display: block;
        }
    </style>

    <div class="login-container">
        <div class="login-header">
            <h1>Hoşgeldiniz!</h1>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary-errors" />
        
        <div class="form-group">
            <asp:Label ID="LabelUsername" runat="server" Text="E-mail" AssociatedControlID="TextBoxUsername" />
            <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="E-mail girmelisiniz." CssClass="field-validation-error" />
        </div>
        
        <div class="form-group">
            <asp:Label ID="LabelPassword" runat="server" Text="Şifre:" AssociatedControlID="TextBoxPassword" />
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Şifre girmelisiniz." CssClass="field-validation-error" />
        </div>
        
        <asp:Button ID="LoginButton" runat="server" Text="Giriş Yap" CssClass="login-button" OnClick="LoginButton_Click" />
        
        <div class="forgot-password">
            <asp:HyperLink ID="ForgotPasswordLink" runat="server" NavigateUrl="MainPage.aspx">Şifremi Unuttum?</asp:HyperLink>
        </div>
    </div>
</asp:Content>
