<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReorderListDemo.aspx.cs" Inherits="AjaxControlToolkitDemos.Pages.ReorderListDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="CssReorderList">
        <!-- ClientMode="AutoID" is required for certain versions of AjaxControlToolkit  -->
        <ajaxToolkit:ReorderList ID="MyReorderList" runat="server"
                                 OnItemDataBound="MyReorderList_OnItemDataBound"
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
                    <asp:HiddenField runat="server" ID="hdfMyId"/>
                    <asp:Label runat="server" ID="lblName"/>
                    <asp:Label runat="server" ID="lblPosition"/>
                </div>
            </ItemTemplate>
            <DragHandleTemplate>
                <div class="CssDragHandle"><strong>DRAG ME</strong></div>
            </DragHandleTemplate>
        </ajaxToolkit:ReorderList>
    </div>
</asp:Content>
