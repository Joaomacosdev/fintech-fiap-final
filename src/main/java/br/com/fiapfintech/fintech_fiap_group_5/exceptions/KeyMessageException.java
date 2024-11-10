package br.com.fiapfintech.fintech_fiap_group_5.exceptions;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum KeyMessageException {

    PAGE_NOT_FOUND("page.not.found"),
    REGISTRO_NAO_ENCONTRADO("registro.nao.encontrado"),
    EMAIL_OU_SENHA_INVALIDO("email.ou.senha.invalida");


    private String message;
}
