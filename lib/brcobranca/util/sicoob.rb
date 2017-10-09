# -*- encoding: utf-8 -*-
#
# @author Rony Vieira

module Brcobranca
  # Métodos auxiliares
  module Util
    class Sicoob
      # 3.13. Nosso número: Código de controle que permite ao Sicoob e à empresa identificar os dados da cobrança que deu origem ao boleto.
      #
      # Para o cálculo do dígito verificador do nosso número, deverá ser utilizada a fórmula abaixo:
      # Número da Cooperativa    9(4) – vide planilha "Capa" deste arquivo
      # Código do Cliente   9(10) – vide planilha "Capa" deste arquivo
      # Nosso Número   9(7) – Iniciado em 1
      #
      # Constante para cálculo  = 3197
      #
      # a) Concatenar na seqüência completando com zero à esquerda.
      #     Ex.:Número da Cooperativa  = 0001
      #           Número do Cliente  = 1-9
      #           Nosso Número  = 21
      #           000100000000190000021
      #
      # b) Alinhar a constante com a seqüência repetindo de traz para frente.
      #     Ex.: 000100000000190000021
      #          319731973197319731973
      #
      # c) Multiplicar cada componente da seqüência com o seu correspondente da constante e somar os resultados.
      #     Ex.: 1*7 + 1*3 + 9*1 + 2*7 + 1*3 = 36
      #
      # d) Calcular o Resto através do Módulo 11.
      #     Ex.: 36/11 = 3, resto = 3
      #
      # e) O resto da divisão deverá ser subtraído de 11 achando assim o DV (Se o Resto for igual a 0 ou 1 então o DV é igual a 0).
      #     Ex.: 11 – 3 = 8, então Nosso Número + DV = 21-8
      #
      def self.calcule_dv_nosso_numero(agencia, cod_beneficiario, nosso_numero)
        "#{agencia.to_s.rjust(4, '0')}#{cod_beneficiario.to_s.rjust(10, '0')}#{nosso_numero.to_s.rjust(7, '0')}".modulo11(
          reverse: false,
          multiplicador: [3, 1, 9, 7],
          mapeamento: { 10 => 0, 11 => 0 }
        ) { |t| 11 - (t % 11) }
      end
    end
  end
end
