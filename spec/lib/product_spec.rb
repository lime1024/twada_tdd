RSpec.describe Product do
  it 'ソフトウェア製品には 2 つの種類があること' do
    expect(Product.categories.size).to eq 2
  end

  it 'ソフトウェア製品にはワードプロセッサとスプレッドシートがあること' do
    expect(Product.categories).to match_array(['ワードプロセッサ', 'スプレッドシート'])
  end

  it 'ソフトウェア製品にはワードプロセッサとスプレッドシートの 2 種類しかないこと' do
    expect(Product.categories.include?('パワーポイント')).to eq false
  end

  context 'ソフトウェア製品には名前と価格があるとき' do
    it 'ワードプロセッサには「MS Word」18,800 円があること' do
      product = Product.new(category: 'ワードプロセッサ', name: 'MS Word', price: 18800)

      expect(product.category).to eq 'ワードプロセッサ'
      expect(product.name).to eq 'MS Word'
      expect(product.price).to eq 18800
    end

    it 'ワードプロセッサには「一太郎」20,000 円があること' do
      product = Product.new(category: 'ワードプロセッサ', name: '一太郎', price: 20000)

      expect(product.category).to eq 'ワードプロセッサ'
      expect(product.name).to eq '一太郎'
      expect(product.price).to eq 20000
    end

    it 'スプレッドシートには「MS Excel」27,800 円があること' do
      product = Product.new(category: 'スプレッドシート', name: 'MS Excel', price: 27800)

      expect(product.category).to eq 'スプレッドシート'
      expect(product.name).to eq 'MS Excel'
      expect(product.price).to eq 27800
    end

    it 'スプレッドシートには「三四郎」5,000 円があること' do
      product = Product.new(category: 'スプレッドシート', name: '三四郎', price: 5000)

      expect(product.category).to eq 'スプレッドシート'
      expect(product.name).to eq '三四郎'
      expect(product.price).to eq 5000
    end
  end
end
