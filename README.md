Gem para integração de pagamentos com bancos brasileiros.

[![Build Status](https://travis-ci.org/ronyvieira/boletos.svg?branch=master)][travis]
[![Code Climate](https://codeclimate.com/github/ronyvieira/boletos/badges/gpa.svg)](https://codeclimate.com/github/ronyvieira/boletos)
[![Coverage Status](https://coveralls.io/repos/github/ronyvieira/boletos/badge.svg?branch=master)](https://coveralls.io/github/ronyvieira/boletos?branch=master)

[travis]: http://travis-ci.org/ronyvieira/boletos
[gemnasium]: https://gemnasium.com/ronyvieira/boletos
[codeclimate]: https://codeclimate.com/github/ronyvieira/boletos
[coveralls]: https://coveralls.io/r/ronyvieira/boletos

### Exemplos

- https://brcobranca.herokuapp.com
- http://github.com/ronyvieira/boletos
- https://github.com/thiagoc7/brcobranca_app

### Bancos Disponíveis

| Bancos                 | Carteiras         | Documentações  |
|------------------------|-------------------|----------------|
| 001 - Banco do Brasil  | Todas as carteiras presentes na documentação | [pdf](http://www.bb.com.br/docs/pub/emp/empl/dwn/Doc5175Bloqueto.pdf) |
| 004 - Banco do Nordeste| Todas as carteiras presentes na documentação - [Marcelo J. Both](https://github.com/marceloboth)| |
| 021 - Banestes         | Todas as carteiras presentes na documentação  | |
| 033 - Santander        | Todas as carteiras presentes na documentação - [Ronaldo Araujo](https://github.com/ronaldoaraujo) | [pdf](http://177.69.143.161:81/Treinamento/SisMoura/Documentação%20Boleto%20Remessa/Documentacao_SANTANDER/Layout%20de%20Cobrança%20-%20Código%20de%20Barras%20Santander%20Setembro%202012%20v%202%203.pdf) |
| 041 - Banrisul         | Todas as carteiras presentes na documentação | |
| 104 - Caixa            | Todas as carteiras presentes na documentação - [Túlio Ornelas](https://github.com/tulios) | [pdf](http://downloads.caixa.gov.br/_arquivos/cobranca_caixa_sigcb/manuais/CODIGO_BARRAS_SIGCB.PDF) |
| 237 - Bradesco         | Todas as carteiras presentes na documentação | [pdf](http://www.bradesco.com.br/portal/PDF/pessoajuridica/solucoes-integradas/outros/layout-de-arquivo/cobranca/4008-524-0121-08-layout-cobranca-versao-portugues.pdf) |
| 341 - Itaú             | Todas as carteiras presentes na documentação | [CNAB240](http://download.itau.com.br/bankline/cobranca_cnab240.pdf), [CNAB400](http://download.itau.com.br/bankline/layout_cobranca_400bytes_cnab_itau_mensagem.pdf) |
| 399 - HSBC             | CNR, CSB - [Rafael DL](https://github.com/rafaeldl) |                |
| 748 - Sicredi          | C (03)            |                |
| 756 - Sicoob           | Todas as carteiras presentes na documentação |                |
| 756 - Unicred          | 03 - [Marcelo J. Both](https://github.com/marceloboth) |                |

### Retornos Disponíveis

* CBR643
* CNAB240
* CNAB400

Para CNABs do tipo 240 indico usar a gem [cnab240](https://github.com/eduardordm/cnab240) que é muito completa.

### Remessas Disponíveis

* Banco do Brasil (CNAB240) [Isabella](https://github.com/isabellaSantos) da [Zaez](http://www.zaez.net)
* Caixa Economica Federal (CNAB240) [Isabella](https://github.com/isabellaSantos) da [Zaez](http://www.zaez.net)
* Bradesco (CNAB400) [Isabella](https://github.com/isabellaSantos) da [Zaez](http://www.zaez.net)
* Itaú (CNAB400) [Isabella](https://github.com/isabellaSantos) da [Zaez](http://www.zaez.net)
* Citibank (CNAB400)
* Santander (CNAB400)

### Documentação

Caso queira verificar(ou adicionar) alguma documentação, acesse [nosso wiki](https://github.com/ronyvieira/boletos/wiki).

### Rubydoc

- [versão estável](http://rubydoc.info/gems/brcobranca)
- [versão de desenvolvimento](http://rubydoc.info/github/ronyvieira/boletos/master/frames)

### Apoio

[![RubyMine](http://www.jetbrains.com/ruby/features/ruby_banners/ruby1/ruby468x60_rubin.gif)](http://www.jetbrains.com/ruby/features?utm_source=RubyMineUser&utm_medium=Banner&utm_campaign=RubyMine)

[Boleto Simples](https://www.boletosimples.com.br)

### Licença

* BSD
