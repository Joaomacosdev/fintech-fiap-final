package br.com.fiapfintech.fintech_fiap_group_5.exceptions;

public class BadRequestException extends RuntimeException{
    public BadRequestException(String message) {
        super(message);
    }
}
