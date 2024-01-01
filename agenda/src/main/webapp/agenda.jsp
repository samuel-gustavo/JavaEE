<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans" %>
<%@ page import="java.util.ArrayList" %>
<%
	@ SuppressWarnings("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/fone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="painelAgendaContatos">
		<img alt="imagemContato" src="imagens/doisAmigos.png">
		<h1>Agenda de Contatos</h1>
		<div class="controleBtnAgenda">
			<a href="novo.html" class="botaoAgendaNovo">Novo Contato<img id="imagemAgendaNovoContato" alt="iconeAdicionarContato" src="imagens/adicionarContatoPequeno.png"></a>
			<a href="report" class="botao2">Relatório <img id="imagemAgendaRelatorioContato" alt="iconeAdicionarContato" alt="iconegerarRelatorioContato" src="imagens/relatorioContato.png"></a>
		</div>
		<table id="tabela">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Fone</th>
					<th>E-mail</th>
					<th>Opções</th>
				</tr>
			</thead>
			<tbody>
				<%for(int i = 0; i < lista.size(); i++) { %>
					<tr>
						<td><%=lista.get(i).getIdcon()%></td>
						<td><%=lista.get(i).getNome()%></td>
						<td><%=lista.get(i).getFone()%></td>
						<td><%=lista.get(i).getEmail()%></td>
						<td id="opcoes">
							<a id="btnAgendaOpcoesEditar" class="botao1" href="select?idcon=<%=lista.get(i).getIdcon()%>">Editar <img id="imgBtnEditarContatoAgenda" alt="iconeEditarContato" src="imagens/editarContato.png"></a>
							<a class="botao2" href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)">Excluir<img id="imgBtnDeletarContatoAgenda" alt="iconeDeletarContato" src="imagens/deletarContato.png"></a>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="scripts/confirmador.js"></script>
</body>
</html>