<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.XtraReports.v15.1.Web, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Print the Report...">
            <ClientSideEvents Click="function(s, e) {
	viewer.Print();
}" />
        </dxe:ASPxButton>
        <br />
        &nbsp;</div>
        <dxxr:ReportViewer ID="ReportViewer1" runat="server" ClientInstanceName="viewer"
            Report="<%# new WebApplication5.XtraReport1() %>" ReportName="WebApplication5.XtraReport1">
        </dxxr:ReportViewer>
    </form>
</body>
</html>
