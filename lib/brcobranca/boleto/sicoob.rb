# -*- encoding: utf-8 -*-
#
module Brcobranca
  module Boleto
    class Sicoob < Base # Sicoob (Bancoob)
      validates_length_of :agencia, maximum: 4, message: 'deve ser menor ou igual a 4 dígitos.'
      validates_length_of :conta_corrente, maximum: 8, message: 'deve ser menor ou igual a 8 dígitos.'
      validates_length_of :numero_documento, maximum: 7, message: 'deve ser menor ou igual a 7 dígitos.'
      validates_length_of :convenio, maximum: 7, message: 'deve ser menor ou igual a 7 dígitos.'
      validates_length_of :variacao, maximum: 2, message: 'deve ser menor ou igual a 2 dígitos.'
      validates_length_of :quantidade, maximum: 3, message: 'deve ser menor ou igual a 3 dígitos.'

      def initialize(campos = {})
        campos = { carteira: '1', variacao: '01', quantidade: '001' }.merge!(campos)
        super(campos)
      end

      # Codigo do banco emissor (3 dígitos sempre)
      #
      # @return [String] 3 caracteres numéricos.
      def banco
        '756'
      end

      # Dígito verificador do banco
      #
      # @return [String] 1 caractere.
      def banco_dv
        '0'
      end

      # Agência
      #
      # @return [String] 4 caracteres numéricos.
      def agencia=(valor)
        @agencia = valor.to_s.rjust(4, '0') if valor
      end

      # Convênio
      #
      # @return [String] 7 caracteres numéricos.
      def convenio=(valor)
        @convenio = valor.to_s.rjust(7, '0') if valor
      end

      # Número documento
      #
      # @return [String] 7 caracteres numéricos.
      def numero_documento=(valor)
        @numero_documento = valor.to_s.rjust(7, '0') if valor
      end

      # Quantidade
      #
      # @return [String] 3 caracteres numéricos.
      def quantidade=(valor)
        @quantidade = valor.to_s.rjust(3, '0') if valor
      end

      # Nosso número para exibição no boleto.
      #
      # @return [String] 8 caracteres numéricos.
      def nosso_numero_boleto
        dv_nosso_numero = Brcobranca::Util::Sicoob.calcule_dv_nosso_numero agencia, convenio, numero_documento

        "#{numero_documento}#{dv_nosso_numero}"
      end

      def agencia_conta_boleto
        "#{agencia} / #{convenio}"
      end

      # Posição     Tamanho     Conteúdo
      #    20 a 20      01                 Código da carteira de cobrança - vide planilha "Capa" deste arquivo
      #    21 a 24      04                 Código da agência/cooperativa - verificar na planilha "Capa" deste arquivo
      #    25 a 26      02                 Código da modalidade - verificar na planilha "Capa" deste arquivo
      #    27 a 33      07                 Código do cedente/cliente - verificar na planilha "Capa" deste arquivo
      #    34 a 41      08                 Nosso número do boleto
      #    41 a 44      03                 Número da parcela a que o boleto se refere - "001" se parcela única
      def codigo_barras_segunda_parte
        "#{carteira}#{agencia}#{variacao}#{convenio}#{nosso_numero_boleto}#{quantidade}"
      end
    end
  end
end
