# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

events = [
  {
    name: '第一回技術書同人誌博覧会',
    slug: 'gishohaku1',
    held_on: '2019/07/27'
  },
  {
    name: '第二回技術書同人誌博覧会',
    slug: 'gishohaku2',
    held_on: '2019/12/14'
  },
  {
    name: '第三回技術書同人誌博覧会',
    slug: 'gishohaku3',
    held_on: '2020/06/27'
  }
]
categories = ["IT-開発-IoT", "IT-開発-Web", "IT-プログラミング-言語", "IT-インフラ-サービス構築", "理工系全般-その他-その他", "IT-インフラ-ネットワーク", "IT-開発-OS/低レイヤ", "理工系全般-理論・技術-工学系", "IT-コンピュータサイエンス-情報学・情報科学", "理工系全般-その他-コミュニティ", "IT-プログラミング-アーキテクチャ", "IT-PC-全般", "IT-開発-ミドルウェア", "IT-デザイン-UI", "IT-開発-ゲーム", "理工系全般-組織-人材管理", "IT-ハードウェア-ハードウェア開発", "IT-インフラ-IaaS", "理工系全般-理論・技術-理学系", "理工系全般-ハードウェア-同人ハード", "IT-プログラミング-フレームワーク", "IT-開発-データーベース", "IT-コンピュータサイエンス-セキュリティ", "理工系全般-組織-プロジェクト管理", "IT-ハードウェア-アーキテクチャ", "理工系全般-組織-技術教育", "IT-インフラ-ミドルウェア", "理工系全般-ハードウェア-ハードウェア開発", "IT-インフラ-サーバ・ネットワーク機器", "理工系全般-その他-自己啓発", "IT-コンピュータサイエンス-人工知能・AI", "理工系全般-科学・技術史-全般", "IT-インフラ/サービス構築"]

events.map do |event|
  Event.create(event) unless Event.find_by(slug: event[:slug])
end
categories.map { |name| CircleCategory.find_or_create_by(name: name) }

category_name_to_id = CircleCategory.all.pluck(:name, :id).to_h

circles = [
  {
    name: 'つのぶえ出版',
    circle_category_id: category_name_to_id['IT-開発-Web'],
    event_id: 1,
    booth: 'え04',
  }
]

circles.map do |circle|
  Circle.create(circle) unless Circle.find_by(booth: circle[:booth])
end