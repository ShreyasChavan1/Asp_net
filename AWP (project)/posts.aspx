<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="posts.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .author-avatar-square {
            border-radius: 8px; 
            width: 40px; 
            height: 40px; 
            object-fit: cover; 
        }
        .img-fluid{
            max-width:100%;
            max-height:80vh;
        }
        .first-color { 
	background: #feffdf; 
}
    </style>

    <section class="first-color py-5">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                         <div class="col-lg-8 mx-auto">
                            <div class="blog-post mb-4">
                                <h2 class="post-title"><%# Eval("Title") %></h2>
                                <p class="post-meta">Posted on <%# Eval("PostDate", "{0:MMMM dd, yyyy}") %></p>
                                <img src='<%# Eval("image") %>' alt='<%# Eval("Title") %>' class="img-fluid rounded mb-4" />
                                <p class="post-content"><%# Eval("Content") %></p>
                            </div>
                             
                             <div class="author-info">
                                    <img src='<%# Eval("AuthorImage")%>' alt="Author" class="rounded author-avatar-square" data-toggle="modal" data-target='<%# "#imageModal_" + Container.ItemIndex %>' />
                                    <span class="author-name">By <%# Eval("AuthorName") %></span>
                                </div>
                      </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post] WHERE ([PostId] = @PostId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="PostId" QueryStringField="PostId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>
