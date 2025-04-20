<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .ad-rotator {
        max-width: 100%; 
        max-height: 60vh; 
    }
</style>
    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      
      
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
     <div class="carousel-item active">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="posts?postId=2">
        <img src="images/circket2.jpeg" class="d-block w-100" alt="..." >
        <div class="carousel-caption d-none d-md-block">
          <h5>Check out the new post !</h5>
          <p>click here !</p>
        </div>
         </asp:HyperLink>
      </div>
      <div class="carousel-item">
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="posts?postId=3">
        <img src="images/image_2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Watch out!</h5>
          <p>see what people around your area talking about</p>
        </div>
              </asp:HyperLink>
      </div>
      <div class="carousel-item">
           <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="posts?postId=1">
        <img src="images/football.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>It's Football</h5>
          <p>Here are last year's premeire league stats !</p>
        </div>
               </asp:HyperLink>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<div class="container mt-5">
        <div class="row">
            <div class="col-md-8">
    <asp:GridView runat="server" DataSourceID="ctl04" ID="ctl03" AutoGenerateColumns="False" DataKeyNames="PostId" GridLines="None" ShowHeader="False">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <div class="container mt-3 border rounded p-3">
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="row">
                                <div class="col-12">
                                    <asp:Label ID="Label5" runat="server" CssClass="text-primary" Font-Bold="True" Font-Size="X-Large"  Text='<%# Eval("Title") %>'></asp:Label>
                                    <br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <strong>Date:</strong>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("PostDate", "{0:MMMM dd, yyyy}") %>' CssClass="ml-2"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Content").ToString() %>' CssClass="mt-2"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <strong>Author:</strong>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("AuthorName") %>' CssClass="ml-2"></asp:Label>
                                    &nbsp;|&nbsp;
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Read more" Width="128px" Font-Bold="True"
   PostBackUrl='<%# string.Format("~/posts.aspx?postId={0}", Eval("PostId")) %>' />
                                </div>
                            </div>
                            <hr class="my-3" />
                            <div class="row">
                                <div class="col-12">
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid p-2 rounded" ImageUrl='<%# Eval("Image") %>' />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</div>

<asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [post]" ID="ctl04"></asp:SqlDataSource>            

        <div class="col-md-4">
                <!-- Category Section -->
                
            <div class="text-center mt-4">
           <asp:AdRotator runat="server" AdvertisementFile="adfile.xml" Target="_blank" CssClass="ad-rotator" />
            </div>
            </div>
            
             
               
</div>    
</div>


</asp:Content>
