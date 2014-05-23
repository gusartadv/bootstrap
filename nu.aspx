<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="Presentacion.NuevoUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    <div>
    <table border="1"  >
        <tr>
            <td>Tipo de&nbsp; Identificacion: </td>
            <td>
                <div class="col-xs-8">
                <asp:DropDownList ID="DropDownTI" runat="server" CssClass="form-control input-sm">
                    <asp:ListItem Value="">Seleccione</asp:ListItem>
                    <asp:ListItem Value="Ciudadania">Cedula De Ciudadania</asp:ListItem>
                    <asp:ListItem Value="Extranjeria">Cedula de Extranjeria</asp:ListItem>
                </asp:DropDownList>
                    </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownTI" ErrorMessage="*" ForeColor="Red" InitialValue=""></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Documento de Identidad:</td>
            <td>
                <asp:TextBox ID="TbDocIde" runat="server" MaxLength="10" CssClass="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbDocIde" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TbDocIde" ErrorMessage="No valido" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Nombres:</td>
            <td>
                <asp:TextBox ID="TbNom" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TbNom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Apellidos:</td>
            <td>
                <asp:TextBox ID="TbApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TbApellidos" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>E-Mail:</td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirmar E- Mail:</td>
            <td>
                <asp:TextBox ID="TbConEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TbConEmail"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TbEmail" ControlToValidate="TbConEmail" ErrorMessage="No coinciden" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Clave:</td>
            <td>
                <div class="col-xs-8">
                <asp:TextBox ID="TbClave" runat="server" CssClass="form-control input-sm" placeholder="Clave" ></asp:TextBox>
                </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbClave" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirmar Clave:</td>
            <td>
                <div class="col-xs-8">
                <asp:TextBox ID="TbconfClave" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TbconfClave"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbClave" ControlToValidate="TbconfClave" ErrorMessage="No coinciden" ForeColor="Red"></asp:CompareValidator>
            </td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="RegUsu" Cssclass="btn btn-success" />
            </td>
            
        </tr>
    </table>
    </div>
    </form>
    <p>
&nbsp;</p>
        </div>
</body>
</html>
