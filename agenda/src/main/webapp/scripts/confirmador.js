/**
 *  Confirmação de exclusao de um Contato
 *  @author Samuel Gustavo
 *  @param idcon
 */

function confirmar(idcon) {
	let resposta = confirm("Confirma a exclusão deste contato?");
	if(resposta === true) {
		window.location.href = "delete?idcon=" + idcon;
	}
}