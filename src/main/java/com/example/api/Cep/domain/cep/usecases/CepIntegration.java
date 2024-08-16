package com.example.api.Cep.domain.cep.usecases;

import com.example.api.Cep.domain.cep.models.CepModel;

import java.net.URISyntaxException;

/**
 * Contrato para a busca de um endereço pelo cep
 */
public interface CepIntegration {

    /**
     *
     * @param cep
     * @return
     */
    CepModel findEnderecoByCep(String cep) throws URISyntaxException;

    /**
     * Verifica se o cep está no formato válido
     * @param cep
     * @return
     */
    String validateCepFormat(String cep);
}
