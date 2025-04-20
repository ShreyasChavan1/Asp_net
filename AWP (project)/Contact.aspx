<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="AWP__project_.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <section id="contact" class="py-5 mt-3 " style="background-color:#fcf4d9;">
            <div class="container-fluid">
                <div class="row align-items-center">
                    
                    <div class="col-lg-6 ">
                        <img src="images/windows_10_with_rainmeter_and_rocket_dock_by_kalca_de78c6k.jpg" alt="Contact Image" class="img-fluid mb-4" style="width: 100%; height: auto;">
                    </div>

                   
                    <div class="col-lg-6  ">
                        <div class="container-fluid text-center">
                            <h2 class="section-heading text-uppercase">Contact Us</h2>
                            <p class="text-muted">Feel free to reach out if you have any questions!</p>
                        </div>
                        
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Your Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="Name" CssClass="form-control text-center" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Your Email<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="email" CssClass="form-control text-center" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="message">Your Message</label>
                                        
                                        <asp:TextBox runat="server" ID="message" class="form-control text-center" TextMode="MultiLine" Rows="6" Columns="50" placeholder="Your Message" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center">
                            <asp:Button ID="submit" runat="server" CssClass="btn-primary " Text="Submit" OnClick="submit_Click" />
                              </div>
                            <br />
                      
                        <asp:Label ID="Label1" runat="server">this</asp:Label>
                    </div>
                </div>

                <div class="row align-items-center mt-4">
                    <div class="col-lg-8 mx-auto text-center">
                        <p class="mb-4">
                            <strong>Email:</strong> your.email@example.com<br>
                            <strong>Phone:</strong> 123-456-7890
                        </p>
                    </div>
                </div>
            </div>
        </section>
        </main>
</asp:Content>
