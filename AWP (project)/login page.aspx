<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login page.aspx.cs" inherits="AWP__project_.login_page" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in to Admin</title>

<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>

<style>

.form-signin {
  max-width: 330px;
  padding: 1rem;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
    
</head>
 
<body  style="background-color: #2B3035;">
<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
    <div class="container">
        
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Homepage">Home</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/About">About</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/login page">Admin</a></li>
            </ul>
        </div>
    </div>
</nav> 
    
<div class="d-flex align-items-center py-4" >
<main class="form-signin w-100 m-auto mt-4">
  <form runat ="server">
    <img class="mb-4" src="images/SPORTS.png" alt="" width="72" height="57"/>
    <h1 class="h3 mb-3 fw-normal text-white">Please sign in</h1>

    <div class="form-floating">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:TextBox ID="user" CssClass="form-control mt-3" runat="server" ></asp:TextBox>
      <label for="floatingInput">Username</label>
    </div>
    <div class="form-floating">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="pass" Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:TextBox ID="pass" CssClass="form-control mt-3" runat="server" TextMode="Password"></asp:TextBox>
      <label for="floatingPassword">Password</label>
    </div>
      
      <asp:Button ID="login" CssClass="btn btn-primary btn-md mt-3 py-2" runat="server" Text="login" OnClick="login_Click" /><br />
      <asp:Label ID="Label1" CssClass="mt-3" runat="server" ForeColor="#FF3300" Text=" "></asp:Label>
    <p class="mt-5 mb-3  text-white">&copy; Vighensh & Shreyas Co.</p>
  </form>
    </main>
  </div>  


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
