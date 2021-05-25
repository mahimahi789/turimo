class Marker < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'シマノ' },
    { id: 3, name: 'ダイワ' },
    { id: 4, name: 'がまかつ' },
    { id: 5, name: 'ササメ' },
    { id: 6, name: 'ハヤブサ' },
    { id: 7, name: 'メイホー' },
    { id: 8, name: 'リングスター' },
    { id: 9, name: 'キザクラ' },
    { id: 10, name: 'シャウト' },
    { id: 11, name: 'デプス' },
    { id: 12, name: 'レインズ' },
    { id: 13, name: '邪道' },
    { id: 14, name: 'ガンクラフト' },
    { id: 15, name: 'メジャークラフト' },
    { id: 16, name: 'ハンクルHMKL' },
    { id: 17, name: 'CB ONE' },
    { id: 18, name: 'ノリーズ' },
    { id: 19, name: 'メガバス' },
    { id: 20, name: 'デュエル' },
    { id: 21, name: 'デュオ' },
    { id: 22, name: 'アムズデザイン' },
    { id: 23, name: 'クレイジーオーシャン' },
    { id: 24, name: 'UFMウエダ' },
    { id: 25, name: '道楽' },
    { id: 26, name: 'ヒヨコブランド' },
    { id: 27, name: 'シグナル' },
    { id: 28, name: 'ジャッカル' },
    { id: 29, name: 'ブルーピークス' },
    { id: 30, name: 'ビバ' },
    { id: 31, name: 'アピア' },
    { id: 32, name: 'レイドジャパン' },
    { id: 33, name: 'スミス' },
    { id: 34, name: '天狗ウキ' },
    { id: 35, name: 'サムルアーズ' },
    { id: 36, name: '山北ルアー' },
    { id: 37, name: 'BRISKY LURES (ブリスキールアーズ)' },
    { id: 38, name: 'KTW LURES' },
    { id: 39, name: '西根ルアーズ' },
    { id: 40, name: 'ドリームラッシュ' },
    { id: 41, name: 'ギャレット' },
    { id: 42, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
end







