<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReorderListDemo.aspx.cs" Inherits="AjaxControlToolkitDemos.Pages.ReorderListDemo" %>
<%@ Import Namespace="Model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="CssReorderList">
        <!-- ClientMode="AutoID" is required for certain versions of AjaxControlToolkit  -->
        <ajaxToolkit:ReorderList ID="MyReorderList" runat="server"
                                 DataKeyField="MyId"
                                 SortOrderField="MyPosition"
                                 PostBackOnReorder="False"
                                 ClientIDMode="AutoID"
                                 DragHandleAlignment="Left" 
                                 ItemInsertLocation="Beginning"
                                 AllowReorder="true"
            >
            <ItemTemplate>
                <div style="background-color: yellow;" class="CssItemArea">
                    <asp:HiddenField runat="server" ID="hdfMyId" Value="<%# ((DummyViewModel)Container.DataItem).MyId %>" />
                    <asp:Label runat="server" ID="lblName" Text="<%# ((DummyViewModel)Container.DataItem).MyName %>"/>
                    <asp:Label runat="server" ID="lblPosition" Text="<%# ((DummyViewModel)Container.DataItem).MyPosition %>" />
                </div>
            </ItemTemplate>
            <DragHandleTemplate>
                <div class="CssDragHandle"><strong>DRAG ME</strong></div>
            </DragHandleTemplate>
        </ajaxToolkit:ReorderList>
    </div>
</asp:Content>
