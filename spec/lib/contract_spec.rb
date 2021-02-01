RSpec.describe Contract do
  it 'ひとつの製品が契約できること' do
    contract = Contract.new(product_name: '一太郎', signed_on: '2020-04-06')

    expect(contract.sign).to eq true
  end

  it '複数の製品が契約できないこと' do
    contract = Contract.new(product_name: ['一太郎', '三四郎'], signed_on: '2020-05-08')

    expect{ contract.sign }.to raise_error(UnpermittedContractError)
  end

  it '契約には契約日があること' do
    contract = Contract.new(product_name: ['MS Word'], signed_on: '2020-06-12')

    expect(contract.signed_on).to eq '2020-06-12'
  end

  context 'ワードプロセッサは契約日に直ちに売上を全額収益認識するとき' do
    it 'MS Word を契約すると全額収益認識すること' do
      Contract.new(product_name: 'MS Word', signed_on: '2020-07-18')

      expect(Contract.revenue_recognition).to eq 18800
    end

    xit '一太郎を契約すると全額集積認識すること' do
    end
  end
end
