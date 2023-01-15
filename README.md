# README

Aplicação criada para avaliação em processo seletivo.

## REQUISITOS

API que consome a API da SpaceX e apresenta as seguintes informações:

* Próximo lançamento;
* Último lançamento;
* Próximos lançamentos;
* Lançamentos passados;

## PRINCIPAIS TECNOLOGIAS UTILIZADAS

* ruby 3.1.2p20
* Rails 7.0.4
* spacex_api 1.0.0 (Ruby API wrapper para consultar a API SpaceX.)
* RSpec 6.0.1

## URL BASE (hosted)

[https://floating-taiga-08332.herokuapp.com/](https://floating-taiga-08332.herokuapp.com/)

## REQUISIÇÕES

Próximo lançamento

Obter o próximo lançamento:
* GET [/next](https://floating-taiga-08332.herokuapp.com/next)

Obter o último lançamento:
* GET [/latest](https://floating-taiga-08332.herokuapp.com/latest)

Obter os próximos lançamentos:
* GET [/upcoming](https://floating-taiga-08332.herokuapp.com/upcoming)

Obter os lançamentos passados:
* GET [/past](https://floating-taiga-08332.herokuapp.com/past)
