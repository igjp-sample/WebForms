<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<%@ Register Assembly="Infragistics45.Web.v19.2, Version=19.2.20192.8, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <ig:WebDataGrid ID="WebDataGrid1" runat="server" Height="350px" Width="400px" AutoGenerateColumns="False" DataKeyFields="ID">
                <Columns>
                    <ig:BoundDataField Key="ID" DataFieldName="ID">
                        <Header Text="ID"/>
                    </ig:BoundDataField>
                    <ig:BoundDataField Key="ProductName" DataFieldName="ProductName">
                        <Header Text="ProductName"/>
                    </ig:BoundDataField>
                    <ig:BoundDataField Key="Supplier" DataFieldName="Supplier">
                        <Header Text="Supplier"/>
                    </ig:BoundDataField>
                    <ig:BoundDataField Key="UnitPrice" DataFieldName="UnitPrice">
                        <Header Text="UnitPrice"/>
                    </ig:BoundDataField>
                    <ig:BoundDataField Key="UnitsInStock" DataFieldName="UnitsInStock">
                        <Header Text="UnitsInStock"/>
                    </ig:BoundDataField>
                </Columns>
                <Behaviors>
                    <ig:EditingCore>
                        <Behaviors>
                            <ig:CellEditing>
                            </ig:CellEditing>
                        </Behaviors>
                    </ig:EditingCore>
                </Behaviors>
            </ig:WebDataGrid>
        </div>
    </form>
</body>
</html>
