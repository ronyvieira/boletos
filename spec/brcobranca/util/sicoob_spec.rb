# -*- encoding: utf-8 -*-
#

require 'spec_helper'

RSpec.describe Brcobranca::Util::Sicoob do
  it 'deve calcular o digito verificador do nosso numero' do
    util_sicoob = Brcobranca::Util::Sicoob
    agencia = '4327'
    convenio = '229385'

    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '1')).to eq(7)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '2')).to eq(4)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '3')).to eq(1)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '4')).to eq(9)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '5')).to eq(6)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '6')).to eq(3)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '7')).to eq(0)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '8')).to eq(8)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio, '9')).to eq(5)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio,'10')).to eq(3)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio,'11')).to eq(0)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio,'12')).to eq(8)
    expect(util_sicoob.calcule_dv_nosso_numero(agencia, convenio,'13')).to eq(5)
  end
end
