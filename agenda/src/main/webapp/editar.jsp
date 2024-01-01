<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Editar Contato</title>
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="painelEditarContatos">
		<img id="imagemEditarContato" alt="imagemEditarContato" src="imagens/editarContato.png">
		<h1 id="textoPageEditar">Editar Contato</h1>
		<form action="update" name="frmContato">
			<table>
				<tr>
					<td><input id="caixa3-PainelCadastroNovoEEditarContato" type="text" name="idcon" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>
				</tr>
				<tr>
					<td><input class="caixa1-PainelCadastroNovoEEditarContato" type="text" name="nome" autocomplete="off" value="<%out.print(request.getAttribute("nome"));%>"></td>
				</tr>
				<tr>
					<td><input class="caixa2-PainelCadastroNovoEEditarContato" type="tel" name="fone" autocomplete="off" value="<%out.print(request.getAttribute("fone"));%>"></td>
				</tr>
				<tr>
					<td><input class="caixa1-PainelCadastroNovoEEditarContato" type="email" name="email" autocomplete="off" value="<%out.print(request.getAttribute("email"));%>"></td>
				</tr>
			</table>
			<input class="botao2-CadastrarNovoEEditarContato" type="button" value="Salvar" onclick="validar()">
		</form>
	</div>
	<script type="text/javascript" src="scripts/validador.js"></script>
</body>
</html>