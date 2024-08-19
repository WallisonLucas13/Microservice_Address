Feature: Teste de consulta de CEP

  Testando end point de consulta de CEP
  Integrado com a ViaCep

  Scenario: Verifica se o retorno da consulta por um cep válido está correta
    Given que faço uma consulta GET a url: "http://localhost:8080/api/v1/cep/"
    When realizo a busca de endereço pelo cep: "38425-471"
    Then o end point deve retornar status OK e uma UF válida

  Scenario: Verifica se o retorno da consulta por um cep com formato inválido é um BAD_REQUEST
    Given que faço uma consulta GET a url: "http://localhost:8080/api/v1/cep/"
    When realizo a busca de endereço pelo cep: "99999-47199"
    Then o end point deve retornar status BAD_REQUEST ao passar cep com formato inválido

  Scenario: Verifica se o retorno da consulta por um cep com formato válido mas inexistente é um NOT_FOUND
    Given que faço uma consulta GET a url: "http://localhost:8080/api/v1/cep/"
    When realizo a busca de endereço pelo cep: "99999-471"
    Then o end point deve retornar status NOT_FOUND ao passar cep que não existe
