# ECHONET Lite Device Description

神奈川工科大学　スマートハウス研究センター

変更履歴

| Date | Version  | Description |
|:-----------|:-----|:-----|
| 2018.04.10 | 1.0.13 | 電力量メータ、水流量メータ、ガスメータを追加<br>commonのEPC=0x98 現在年月日設定のdata typeをdate-timeに変更<br>低圧スマート電力メータのEPC=0xEAのdata typeを修正<br>data type "time"を追加<br>commonの0x91, 0x92, 0x95, 0x97のdata typeを"time"に変更<br>洗濯機の0xEDのdata typeを"time"に変更<br>温度の単位を℃からCelsiusに変更 |
| 2018.04.26 | 1.0.14 | Node Profile追加<br>data typeにbitmapを追加<br>data type enumからbitmapに関する項目を削除<br>共通項目のEPCの内容をoverrideする場合の表現の変更<br>CommonのEPC=0x82にnoteを追加<br>data type rawにproperty "isFixedSize"を追加<br>arrayにproperty "isFixedmaxItems", "maxItems"を追加 |
| 2018.05.10 | 1.0.15 | 電力量センサ、換気扇、電動ブラインド・日よけ、電動雨戸・シャッター、電気温水器、電気錠、瞬間式給湯器、浴室暖房乾燥機、住宅用太陽光発電、冷温水熱源機、床暖房、燃料電池、蓄電池、電気自動車充放電器、分電盤メータリング、高圧スマート電力量メータ、電気自動車充電器、冷凍冷蔵庫、オーブンレンジ、クッキングヒータ、洗濯乾燥機、コントローラの内容をupdate |
| 2018.06.04 | 1.1.0 | data typeにcompositeを追加。<br>data type numberおよび levelにおいてmemberのexceptions, alternativesを廃止<br>levelのbaseのdata typeをarrayからnumberに変更<br>enumの"edt"のdata sizeを1byteから任意のbyte sizeに変更 |
| 2018.07.20 | 1.1.1 | このDocumentで記述していない機器のリストを追加<br>device description objectにfirstReleaseを追加<br>Property objectにvalidReleaseを追加 |
| 2018.07.26 | 1.2.0 | Versionの修正。内容の変更はない。<br>data formatに関する修正は２桁目、dataの追加、修正は3桁目とする。 |
| 2018.07.27 | 1.2.1 | ノードプロファイルの共通項目に関する修正<br>accessRule.infの取りうる値のnotApplicableをoptionalに変更<br>noteの"ja"を"ja"に修正 |
| 2018.07.31 | 1.2.2 | data type compositeの名前をoneOfに修正<br>dataの一部修正 |
| 2018.08.26 | 2.0.0 | device description objectのdescriptionをclassNameに、propertiesをelPropertiesに変更<br>EL property objectのdescriptionをpropertyNameに変更<br>EDTの記述をJSON Schema記法を利用して記述<br>- enumをstateとnumeric valueに修正<br>- numberのisUnsignedとsizeをformatに修正<br>- numberにenum追加<br>- numberのmagnificationをmultipleOfに修正<br>- bitmapのdescriptionをdescriptionsに修正<br>- bitmapのindex, bitmap->positionに修正<br>- bitmapのvaluesをvalueに修正<br>- rawのisFixedSize, sizeをminSize, maxSizeに修正<br>- arrayのisFixedNumberOfItems, numberOfItemsをminItems, maxItemsに修正<br>- objectのelementsをpropertiesに修正<br>- oneOfの構造の修正<br>|
| 2018.09.07 | 2.1.0 | data type objectのpropertiesの値をobjectからarrayに修正（バイナリデータの順序を明確にするため） <br>data type arrayにkeyword itemSizeを追加<br>data type stateにkeyword sizeを追加<br>data type numericValueにkeyword sizeを追加 |
| 2018.09.14 | 2.1.1 | 低圧スマート電力量メータのEPC=0xE3から"atomic"を削除<br>低圧スマート電力量メータのEPC=0xE4に"atomic"を追加<br>高圧スマート電力量メータのEPC=0xC6に"atomic"を追加<br>高圧スマート電力量メータのEPC=0xCEに"atomic"を追加<br>高圧スマート電力量メータのEPC=0xE7に"atomic"を追加<br>クッキングヒータのEPC=0xB2修正<br>電気自動車充放電器・電気自動車充電器の0xC7に"atomic"を追加 |
| 2018.10.04 | 2.2.0 | numberのUnder Flow, Over Flowをformat毎に定義し、各propertyでの記述を削除する<br>家庭用エアコンのEPC=0xBAのaccessRule "get"を"notApplicable"から"optional"に修正 |
| 2018.10.25 | 2.2.1 | Node ProfileのEPC=0xD5のaccess Ruleを修正。"get":"required"->"get":"notApplicable" |
| 2018.12.26 | 2.2.2 | 高圧スマートメータのEPC=0xE1のaccess Ruleを修正。"set":"notApplicable"->"set":"required" |
| 2018.12.27 | 2.2.3 | 蓄電池のEPC=0xA8, A9, C8, C9のpropertyNameの不要な"\<br>"を削除 |
| 2019.01.31 | 2.2.4 | 分電盤のtypo修正。チャネル → チャンネル |
| 2019.03.01 | 3.0.0 | - node profileをdevicesから独立させ、super classのpropertyも記述する<br> - commonをsuper classに修正<br>- super classのpropertyをデバイスでoverrideする場合、propertyに必要なすべての情報を記述<br> - devicesとelPropertiesをarrayからobjectに変更<br> - devicesのfirstReleaseをvalidReleaseに変更<br> - accessRuleにrequired\_C（条件付き必須）を追加<br> - schemaに `definitions` と `$ref` を利用してtemplateを記述<br> - Releaseにより同じEOJで定義が異なる場合に"oneOf"でarrayとして列挙する<br>EOJ=0x027E, 0x0288<br>  - Releaseにより同じEPCで定義が異なる場合に"oneOf"でarrayとして列挙する<br>Super Class(EPC=0x81,0x83,0x8A,0x93), 0x0130:エアコン(EPC=0xA0,0xBB, 0xCE), 0x0260:ブラインド(EPC=0xE0, E1, E3), 0x0263:ブラインド(EPC=0xE0, E1), 0x026B:電気温水器(EPC=0xB0, B2, C0, E5, E6), 0x0272:瞬間式給湯器(EPC=0xE9), 0x0273:浴室暖房乾燥機(EPC=0xB2), 0x0279:住宅用太陽光(EPC=0xD0, E8), 0x027C:燃料電池(EPC=0x90, 91, B1, B2, B3, C2, CB, D0, D1, D3, E0, E3, E4, E5, E6, E8, EE), 0x027D:蓄電池(EPC=0xC8, C9, CF, DA, DB), 0x0290:一般照明(EPC=0xB1), 0x02A1:電気自動車充電器(EPC=0xC7)<br> - 家庭用エアコン(0x0130)のEPC=0xC9のschema修正
| 2019.07.02 | 3.1.0 | - nodeProfile, superClassをdevicesの下に入れる<br>- superClassにvalidRelease, className, elPropertiesを追加<br>- 4.1 numberでenumのformatとexampleの記述を追加<br>- 電動ブラインド(0x0260)のEPC=0x90のenumを修正<br>- 電動雨戸・シャッター(0x0263)のEPC=0x90のenumを修正<br>- 瞬間式給湯器(0x0272)のEPC=0x90のenumを修正<br>- 浴室暖房乾燥機(0x0273)のEPC=0x90, 0x94のenumを修正<br>- 冷温水熱源機(0x027A)のEPC=0x90, 0x94のenumを修正<br>- 冷温水熱源機(0x027A)のEPC=0xE1, 0xE2のaccessRuleを修正<br>- 床暖房(0x027B)のEPC=0x90, 0x94のenumを修正<br>- 床暖房(0x027B)のEPC=0xE0, 0xE1のaccessRuleを修正<br>- 床暖房(0x027B)のEPC=0xE3のrelease A-BとC-latestをoneOfで記述<br>- 燃料電池(0x027C)のEPC=0x90のenumを修正<br>- 電気自動車充放電器(0x027E)のEPC=0xE6のID値にminimum, maximumを追加<br>- 分電盤メータリング(0x0287)のEPC=0xB5,BA,BCのitemSizeを修正<br>- 一般照明(0x0290)のEPC=0xB2,B3,B8,BA,BC,BEの値にmaximumを追加<br>- 電気自動車充電器(0x02A1)のEPC=0xE6のID値にminimum, maximumを追加<br>- 洗濯乾燥機(0x03D3)のEPC=0x90のenumを修正 |
| 2019.07.04 | 3.1.1 | Release L 対応<br>- ハイブリッド給湯機(0x02A6)を新規追加<br>- 電力量センサ(0x0022)の積算電力量計測履歴情報(0xE4)に定義(0xFFFFFFFE:計測データなし)を追加<br>- 浴室暖房乾燥機(0x0273)にミストサウナ運転設定(0xB6)、水ミスト運転設定(0xB7)を追加<br>- 浴室暖房乾燥機(0x0273)の運転設定(0xB0)に定義(0x60:ミストサウナ運転, 0x61:水ミスト運転)を追加<br>- 浴室暖房乾燥機(0x0273)のONタイマ予約設定２(0xE1)に定義(0x60:ミストサウナ運転, 0x61:水ミスト運転)を追加 |
| 2019.07.11 | 3.1.2 | - 住宅用太陽光発電(0x0279)Release Kで0x83,0x97,0x98のアクセスルール変更。0xA0,0xA1,0xA2,0xB0,0xB1,0xB2,0xB3,0xB4,0xC0,0xC1,0xC2,0xC3,0xC4,0xD1追加。<br>- クッキングヒーター(0x03B9)の0xE7のpropertyの値の修正 |
| 2019.08.30 | 3.1.3 | - Super class Release Aで0x93（位置情報）の状態変時アナウンスをrequiredからoptionalに変更する |
| 2019.11.28 | 3.1.4 | - Typo修正<br>- Node profile(0x0EF0)のEPC=0xD7修正<br>- Superclass(0x0000)のEPC=0x83, 8C, 9Aを修正<br>- 蓄電池(0x27D)のEPC=0xAA,0xABにおいて"readOnly":trueを削除<br>- 蓄電池(0x27D)のEPC=0xE0,E1,E7,E8,E9,EAにnoteを追加<br>- 燃料電池(0x027C)のEPC=0xD1のrelease A-BのpropertyNameの英語を修正<br>- 電気自動車充放電システム(0x027E)のrelease B-Cの全てのEPCのpropertyNameの英語を修正<br>- ハイブリッド給湯器(0x02A6)のEPC=0xB2,B3,B6,B7,B8,B9のpropertyNameの英語を修正<br>- EOJ=0x0022の英語名を修正<br>- 高圧スマートメータにEPC=E4を追加<br>- Node ProfileのEPC=0xD5のaccess Ruleを修正。"get":"notApplicable"->"get":"optional"<br>- 空調換気扇:Air cleaner(0x0134)を追加<br>- 加湿器:Humidifier(0x0139)を追加
| 2019.12.27 | 3.1.5 |- 家庭用エアコン(0x0130)のユーザリモコン温度設定値(0xBC)を修正<br>詳細規定が定義されている機器を全て追加
| 2020.01.12 | 3.1.5r3 |- 浴室暖房乾燥機(0x0273)のONタイマ予約設定２(0xE1)のvalidReleaseを修正<br>拡張照明システム(0x02A4)の自動動作制御設定(0xC6)、フェード制御変化時間設定(0xC7)のvalidReleaseを修正<br>電気自動車充放電器クラス(027E)の放電量設定値(EA)のvalidReleaseを修正<br>業務用パッケージエアコン室内機(0x0156)、業務用パッケージエアコン室外機(0x0157)の名称修正<br>地震センサ(0005)のSI 値(C0), SI 値リセット設定(C1), 倒壊発生状態(C2), 倒壊発生状態リセット設定(C3)のvalidAccessを修正<br>業務用ショーケース(0x03CE)のショーケースタイプ情報(D0), ドアタイプ情報プロパティ(D1), ショーケース構成情報プロパティ(D2), ショーケース形状情報(D3), 庫内温度帯情報(D4), 庫内照明タイプ(EB), 庫外照明タイプ(EC), 庫内照明照度レベル設定(ED), 庫外照明照度レベル設定(EE), 庫内設定温度(EF)のvalidAccessを修正<br>業務用ショーケース(0x03CE)のグループ情報(CA)を修正<br>業務用ショーケース向け室外機(03D4)のグループ情報(CA)を修正<br>電気温水器(026B)の沸き上げ中状態(B2)を修正<br>Household small wind turbine power generation(02A2)のクラス名修正<br>電気蓄熱暖房器の風呂動作状態監視のvalidReleaseを修正<br>エンジンコージェネレーション(027F)の発電動作設定プロパティ(CA)を修正<br>電動ブラインド・日よけクラス(0x0260)を修正<br>電気温水器(026B)の昼間沸き増し許可設定(0xC0)のaccessRuleを修正<br>電気温水器(026B)の風呂湯量設定４(0xD4)、風呂湯量設定４設定可能最大レベル(0xD5)のvalidReleaseを修正<br>スマートガスメータの積算ガス消費量計測単位(E3)、検診データ異常検知状態(E6)、センター弁遮断状態(E8)を修正<br>スーパークラスの識別番号を修正
| 2020.02.03 | 3.1.5r4 |スーパークラスのEPC=0x99の値域を修正<br>ノードプロファイル(0x0EF0)のEPC=0x83のデータサイズ修正<br>ノードプロファイル(0x0EF0)のEPC=0x8Cのデータサイズ修正<br>ノードプロファイル(0x0EF0)のEPC=0x8Dのデータサイズ修正<br>ノードプロファイル(0x0EF0)のEPC=0xD4のデータサイズと値域修正<br>風速センサ(0x001F)のEPC=0xE0の単位修正<br>風速センサ(0x001F)のEPC=0xE1のデータサイズと必須修正<br>流量計センサ(0x0025)のEPC=0xE2のプロパティ名修正<br>活動量センサ(0x002A)のEPC=0xE1のデータサイズ修正<br>活動量センサ(0x002A)のEPC=0xE0削除<br>活動量センサ(0x002A)のEPC=0xE2の必須修正、note削除<br>人体位置センサ(0x002B)のEPC=0xE0削除<br>人体位置センサ(0x002B)のEPC=0xE1のデータサイズ修正、必須修正<br>人体位置センサ(0x002B)のEPC=0xE2の必須修正、note削除<br>空調換気扇(0x0134)のEPC=0xE0のアクセスルール修正<br>空調換気扇(0x0134)のEPC=0xC1の値域修正<br>空調換気扇(0x0134)のEPC=0xC2の値域修正<br>空気清浄機(0x0135)のEPC=0xC1のプロパティ名修正<br>業務用パッケージエアコン室外機(0x0157)のEPC=0xABの値域修正<br>瞬間式給湯器(0x0272)のEPC=0xDBの値域とデータサイズの修正<br>瞬間式給湯器(0x0272)のEPC=0xEDの値域とデータサイズの修正<br>浴室暖房乾燥機(0x0273)のEPC=0x90のプロパティ名修正<br>太陽光発電(0x0279)のEPC=0xD0の値域修正<br>床暖房(0x027B)のEPC=0xE9のデータ型修正<br>燃料電池(0x027C)のEPC=0xD1の値域修正<br>蓄電池(0x027D)のEPC=0xA2のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xA3のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xA4のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xA5のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xA6のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xA7のプロパティ名修正<br>蓄電池(0x027D)のEPC=0xCFの値域修正<br>蓄電池(0x027D)のEPC=0xDAの値域修正<br>電気自動車充放電器のEPC=0xE6の値域修正<br>LPガスメータ(0x0283)の0xE0の必須修正、note追加<br>LPガスメータ(0x0283)の0xE1の必須修正、note追加<br>スマートガスメータ(0x0289)のEPC=0xEBの値域修正<br>スマートガスメータ(0x0289)のEPC=0xEDのアクセスルール修正<br>スマートガスメータ(0x0289)のEPC=0xEEのアクセスルール修正<br>スマート灯油メータ(0x028C)のEPC=0xEDの値域修正<br>一般照明(0x0290)のEPC=B4とB5の値域修正<br>電気自動車充電器(0x02A1)のEPC=0xD3のプロパティ名修正<br>照明システム(0x02A3)の0xC0の値域修正<br>拡張照明システム(0x02A4)のEPC=0xC0の値域修正<br>クッキングヒータ(0x03B9)のEPC=0xE0と0x96のデータ型修正<br>炊飯器(0x03BB)のEPC=0xB1の値域修正<br>洗濯機(0x03C5)のEPC=0xE1の値域修正<br>業務用ショーケース(0x03CE)のEPC=0xD0と0xECの値域修正<br>洗濯乾燥機(0x03D3)のEPC=0xB0のプロパティ名修正<br>洗濯乾燥機(0x03D3)のEPC=0xE1とEDのデータ型修正<br>業務用ショーケース向け室外機(0x03D4)のEPC=0xBEの値域とデータ型修正<br>スイッチ(05FD)のクラス名修正<br>コントローラ(0x05FF)のEPC=0xCDと0xE0のプロパティ名修正<br>ディスプレイ(0x0601)のEPC=0xB4のデータ型修正<br>テレビ(0x0602)のEPC=0xB4のデータ型修正
| 2020.04.08 | 3.1.6r1 | definitionsにstate\_LightColor-40-44, state\_LightColor-41-44, state\_AUTO-FF, raw\_27, state\_Undefined-FFFFを追加<br>水位センサ（0x0014）の0xB0のアクセスルールを修正<br>風呂水位センサ（0x0015）の0xB0のアクセスルールを修正<br>並列処理併用型電力制御（0x05FA）の0xC0, 0xC1, 0xC2, 0xC3のアクセスルールを修正<br>Release M（日本語版）対応<br>・ レンジフード(0x015A)を新規追加<br>・ 食器洗い乾燥機(0x03D5)を新規追加<br>・ 床暖房に温度設定2 設定可能最大レベル(0xD1)を追加<br>・ 冷温水熱源機に冷水温設定2 設定可能最大レベル(0xD1)を追加<br>・ 冷温水熱源機に温水温設定2 設定可能最大レベル(0xD2)を追加<br>・ 空調換気扇(0x0134)に換気モード自動設定(0xB0)を追加<br>・ 空調換気扇(0x0134)に換気方式設定(0xB1)を追加<br>・ 空調換気扇(0x0134)に換気モード設定(0xB2)を追加<br>・ 空調換気扇(0x0134)に冷暖強弱設定(0xB3)を追加<br>・ 空調換気扇(0x0134)に外気温度計測値(0xBE)を追加<br>・ 空調換気扇(0x0134)に外気相対湿度計測値(0xCA)を追加<br>・ 空調換気扇(0x0134)に還気温度計測値(0xD0)を追加<br>・ 空調換気扇(0x0134)に還気相対湿度計測値(0xD1)を追加<br>・ 空調換気扇(0x0134)に給気温度計測値(0xD2)を追加<br>・ 空調換気扇(0x0134)に給気相対湿度計測値(0xD3)を追加<br>・ 空調換気扇(0x0134)に排気温度計測値(0xD4)を追加<br>・ 空調換気扇(0x0134)に排気相対湿度計測値(0xD5)を追加<br>・ 空調換気扇(0x0134)に消費電流計測値(0xB9)を追加<br>・ 蓄電池に充電方式(0xC1)を追加<br>・ 蓄電池に放電方式(0xC2)を追加
| 2020.04.27 | 3.1.6r2 | Release M revised版に合わせ、空調換気扇の外気相対湿度計測値のEPC値を0xCAに修正。
| 2020.06.10 | 3.1.6r3 | Release M 英語版対応<br>業務用パッケージエアコン室内機(0x0156)のEPC:0xDBのプロパティ名を修正
2020.08.17 | 3.1.6r4 | 湿度センサ(0x0012)のEPC:0xE0のプロパティ名を修正<br>照度センサ(0x000D)のEPC:0xE0, 0xE1の単位を修正
2020.09.02 | 3.1.6r5 | 家庭用エアコン(0x0130)のEPC:0xA1のProperty name(English)の修正
2020.11.02 | 3.1.7 | 各機器のJSONはリンクに修正<br>コンソでのレビュー内容の反映。修正箇所多数のため、「修正内容V317_20201102.xlsx」を参照。
2020.11.05 | 3.2.0 | ・ data type "time" に "maximumOfHour" (optional) を追加。<br>・ 家庭用エアコン(0x0130)EPC:0x92,0x96にmaximumOfHourを追加。<br>・ 洗濯乾燥機(0x03D3)EPC:0x92,0xDB,0xDC,0xDF,0xEDにmaximumOfHourを追加。<br>・ 食器洗い乾燥機(0x03D5)EPC:0x92,0xE7~0xEDにmaximumOfHourを追加。<br>・ 食器洗い乾燥機(0x03D5)EPC:0xEEをobjectで記述。<br>・ definitions object_PDB_01 "name":"energy" の oneOf の２番目の要素の size を4に修正。<br>・ Human body location sensor(0x002B)のobject名を修正<br>・ ハイブリッド給湯機(0x02A6)のオブジェクト名を修正。
2021.02.10 | 3.2.1 |・ definitions の number_0-100% を number_0-100percentage に修正
2021.02.10 | 3.2.1 |・ 電流値センサ/Current value sensor(0x0023)のクラス名を電流センサ/Current sensorに修正 <br>・ 洗濯乾燥機(0x03D3)の洗濯乾燥コース設定1(0xD0)の値追記：0x40–0x4F：洗濯乾燥コース／メーカオリジナルコース　Washing and drying course/maker original course<br>0x80～0x8F：洗濯コース／メーカオリジナルコース　Washing course/maker original course<br>0xC0～0xCF：乾燥コース／メーカオリジナルコース　Drying course/maker original course<br>・ 電気便座(0x026E)の英語クラス名をelectric toilet seatに修正。<br>・ 家庭用エアコン(0x0130)	の運転モード設定(0xB0)のEDT 0x45の説明（英語）をAir circulatorからAir circulation に修正<br>・ 家庭用エアコン(0x0130)	の運転モード設定(0xB8)の４番目の項目名（英語）をblastからairCirculation に修正<br>・ レンジフード(0x015A)の光源色設定プロパティ(0xD1)に「設定値不明(0xFD)」を追記。<br>・ 一般照明(0x0290)の光色設定プロパティ(0xB1)に「設定値不明(0xFD)」を追記。<br>
2021.02.10 | 3.2.1 |Release N対応（以下の項目）。<br>・ スマート電力量サブメータ(0x028D)を新規追加。<br>・ 電気自動車充放電器(0x027E)に次のプロパティを追加：充電方式(0xDC), 放電方式(0xDD), 買電電力設定値(0xDE), 再連系許可設定(0xDF)。<br>・ 電気自動車充放電器(0x027E)のプロパティ運転モード設定(0xDA)のプロパティ値に充放電(0x46)を追加。<br>

## 1. Abstract

This document describes "ECHONET Specification Appendix Detailed Requirements for ECHONET Device objects" as JSON format.

## 2. Version number

Version number of this document and JSON file is defined as below.  

> xxx.yyy.zzz  
> xxx: major structure change  
> yyy: minor structure change  
> zzz: no structure change. addition or modification of data

## 3. Structure of ECHONET Lite Device Description

### 3.1 Whole structure

Whole structure of the JSON file is shown below.  

Format

```json
{
    "metaData":{
        "date":<date>,
        "release":<Release information>
        "version":<Version information>
    },
    "definitions":{
        <template name>:<definition object>,
        <template name>:<definition object>,
        ...
    },
    "devices":{
        "0x0000":<device description object of Super Class>,
        "0x0EF0":<device description object of node profile including Super Class>,
        <EOJ>:<device description object>,
        <EOJ>:<device description object>,
        ...
    }
}

note:
<EOJ> upper two byte value of EOJ by string such as "0x0130", "0x0288"  
```

Example

```json
{
    "metaData":{
        "date":"2019-05-10",
        "release":"J",
        "version":"3.1.0"
    },
    "definitions":{
        "number_01":<definition object of number type #01>,
        "number_02":<definition object of number type #02>,
        ...
    },
    "devices":{
        "0x0000":<device description object of Super Class>,
        "0x0EF0":<device description object of node profile including Super Class>,
        "0x0130":<device description object of air conditioner>,
        "0x0288":<device description object of smart meter>,
        ...
    }
}
```

- metaData (required)  
"metaData" describes meta data of this JSON file  
.date is Date of creation of the JSON file  
.release is Supported Release of Appendix  
.version is Version of this JSON file

- definitions (required)  
"definitions" describes templates to be referenced by the schema. Details are described later.

- nodeProfile (required)  
"nodeProfile" describes device description of node profile with its superclass. Please note that superclass for node profile is different from that for device object

- superclass (required)  
"superclass" describes property descriptions of superclass of device description object

- devices (required)  
"devices" describes device descriptions of each device object without superclass

### 3.2 device description object

Format

```json
<EOJ>:{
    "validRelease":{
        "from":<Release version>,
        "to":<Release version>
    },
    "className":{
        "ja":<class name in Japanese>,
        "en":<class name in English>
    },
    "elProperties":{
        <EPC>:<property description object>,
        <EPC>:<property description object>,
        ...
    }
}

note:
<EOJ> upper two byte value of EOJ by string such as "0x0130", "0x0288"  
<EPC> value of EPC by string such as "0x80", "0xA1"  
```

Example

```json
"0x0130":{
    "validRelease":{"from":"A","to":"latest"},
    "className":{"ja":"家庭用エアコン", "en":"Home Air Conditioner"},
    "elProperties":{
        "0xA0":<property description object>,
        "0xA1":<property description object>,
        "0xA2":<property description object>,
        ...
    }
}
```

- validRelease (required)  
"validRelease" describes range of valid release of Appendix  
  "from" is beginning of the range such as "A" or "D".  
  "to" is end of the range. A keyword "latest" is equivalent to metaData.release  

- className (required)  
"className" describes class name defined in Appendix

- elProperties (required)  
"elProperties" describes each EL property by property description object  

#### Multiple definitions to the same EOJ

In case device descriptions for the same EOJ value are different between releases, enumerate them with a keyword "oneOf"  

Format

```json
<EOJ>:{
    "oneOf":[
        <device description object>,
        <device description object>,
        ...
    ]
}
```

Example

```json
"0x0288":{
    "oneOf":[
        {
            "validRelease":{"from":"A","to":"E"},
            "className":{"ja":"スマート電力量メータ", ...},
            ...
        },
        {
            "validRelease":{"from":"F","to":"latest"},
            "className":{"ja":"低圧スマート電力量メータ", ...},
            ...
        }
    ]
}
```

### 3.3 property description object

Format

```json
<EPC>:{
    "validRelease":{
        "from":<Release version>,
        "to":<Release version>
    },
    "propertyName":{
        "ja":<property name in Japanese>,
        "en":<property name in English>
    },
    "accessRule":{
        "get":<GET access rule>,
        "set":<SET access rule>,
        "inf":<INF access rule>
    },
    "atomic":<EPC of atomic operation>,
    "data":<EDT info in JSON schema>,
    "note":{
        "ja":<note in Japanese>,
        "en":<note in English>
    }
}
```

Example

```json
"0x80":{
    "validRelease":{"from":"A", "to":"latest"},
    "propertyName":{"ja":"動作状態", "en":"Operation status"},
    "accessRule":{"get":"required", "set":"required", "inf":"required"},
    "data":{
        "type":"state",
        "size":1,
        "enum":[
            {"edt":"0x30", "state":{"ja":"ON", "en":"ON"}},
            {"edt":"0x31", "state":{"ja":"OFF", "en":"OFF"}}
        ]
    }
}
```

- validRelease (required)  
"validRelease" describes range of valid release of Appendix  

- propertyName (required)  
"propertyName" describes property name defined in Appendix

- accessRule (required)  
"accessRule" describes information about access rule and announcement when when a property value is changed.  
A following table describes a relationship between Appendix(left and center columns) and device description(right column) about implementation of Get and Set.

|Access Rule|Required| accessRule                     |
|:----------|:-------|:--------------------------------------|
|Get        |(blank) |"get":"optional", "set":"notApplicable"|
|Get        | ○      |"get":"required", "set":"notApplicable"|
|Set        |(blank) |"get":"notApplicable", "set":"optional"|
|Set        | ○      |"get":"notApplicable", "set":"required"|
|Set/Get    |(blank) |"get":"optional", "set":"optional"     |
|Set/Get    | ○      |"get":"required", "set":"required"     |

A following table describes a relationship between Appendix(left column) and device description(right column) about implementation of Inf when a property value is changed.

|Anno   | accessRule |
|:------|:------------------|
| ○     |"inf":"required"   |
|(blank)|"inf":"optional"   |

In some cases, there are conditions for "required". In order to distinguish these cases, use "required_c" when there is a condition.  

- atomic  
"atomic" describes EPC in HEX that requires atomic operation(SET) befor GET

- data (required)  
"data" describes data format of property value utilizing JSON schema. Because data itself is not JSON but binary data, several modifications are implemented. Details are described later.

- note  
"note" describes additional info in string  

#### Multiple definitions to the same EPC

In case property descriptions for the same EPC value are different between releases, enumerate them with a keyword "oneOf"  

Format

```json
<EPC>:{
    "oneOf":[
        { <property description object> },
        { <property description object> },
        ...
    ]
}
```

Example

```json
"0xE1":{
    "oneOf":[
        {
            "validRelease":{"from":"A", "to":"C"},
            "propertyName":{"ja":"開度レベル設定", ...},
            "accessRule":{...},
            "data":{
                "type":"level",
                "base":"0x31",
                "maximum":8
            }
        },
        {
            "validRelease":{"from":"D", "to":"latest"},
            "propertyName":{"ja":"開度レベル設定", ...},
            "accessRule":{...},
            "data":{
                "type":"number",
                "format":"uint8",
                "unit":"%",
                "minimum":0,
                "maximum":100
            }
        }
    ]
}
```

## 4. Data format of property value

The meaning of each value depends on each property. Here are some examples of EDT(value of a property) and possible meanings.

Example EDT=0x30

- Number: 48
- State: ON
- Level: 1

Example EDT=0xFFFF  

- Number: 65535(2byte unsigned)
- Number: -1(2byte signed)
- Number: 255 and 255(two 1byte data)
- Number: -1 and -1(two 1byte data)
- State:  Over Flow

EDT data is described utilizing JSON Schema notation. It is not fully compliant because the data itself is binary data, not JSON data.

Data type Object describes each element in an array because the order of each binary data matters, though JSON Schema defines element in an object.

| Data Type       | Description
|:-------------------|:-----------------------------------------
| number           | number
| state               | describes a state or status              |
| numericValue | coded number                             |
| level               | value for a level                        |
| bitmap           | describes a state or number in bitmap    |
| date-time      | date and time                            |
| time              | time                                     |
| raw               | raw data. please refer the specification |
| array            | array                                    |
| object          | object                                   |

### 4.1 number

Number with fraction can be described with a keyword "multipleOf".

> 12.5 = 125(EDT value) X 0.1(multipleOf)

In case other EPC value(s) is(are) utilized as (a) coefficient(s), utilize a keyword "coefficient".  
The value of "minimum" and "maximum" are based on raw EDT value.  

Specific values are assigned to "Under Flow" or "Over Flow" depending on "format" by the ECHONET specifications.  

|format|Under Flow|Over Flow |
|:-----|:---------|:---------|
|int8  |0x80      |0x7F      |
|int16 |0x8000    |0x7FFF    |
|int32 |0x80000000|0x7FFFFFFF|
|uint8 |0xFE      |0xFF      |
|uint16|0xFFFE    |0xFFFF    |
|uint32|0xFFFFFFFE|0xFFFFFFFF|

Format

```json
{
    "type":"number",
    "format":<format of number>,
    "unit":<unit>,
    "minimum":<minimum number>,
    "maximum":<maximum number>,
    "enum":<array of possible values>,
    "multipleOf":<minimum digit>,
    "coefficient":[<EPC of coefficient>]
}
```

| Keyword     | Type   |Required| Description                                  |
|:------------|:-------|:-------|:---------------------------------------------|
| format      | string | yes    | int8, int16, int32, uint8, uint16, uint32    |
| unit        | string | no     | unit                                         |
| minimum     | number | no     | minimum number                               |
| maximum     | number | no     | maximum number                               |
| enum        | array  | no     | enumerate possible values                     |
| multipleOf  | number | no     | Multiple value                               |
| coefficient | array  | no     | Array of EPCs for coefficient  in Hex(string) |

Example

```json
{
    "type":"number",
    "format":"int16",
    "unit":"A",
    "minimum":-9999,
    "maximum":9999,
    "enum":[1,2,3,4],
    "multipleOf":0.1,
    "coefficient":["0xA0", "0xA1"]
}
```

### 4.2 state

A state is mapped to a number.
  
Format  

```json
{
    "type":"state",
    "size":<data size>,
    "enum":[
        {
            "edt":<EDT value>,
            "state":{
                "ja":<state in Japanese>,
                "en":<state in English>
            }
            "readOnly":<true or false>
        },
        ...
    ]
}
```

| Keyword      | Type    |Required| Description                   |
|:-------------|:--------|:-------|:------------------------------|
| size         | number  | yes    | data size. 0 in case of bitmap|
| enum         | array   | yes    | array of value object         |
| edt          | string  | yes    | EDT value in Hex              |
| state        | object  | yes    | state                         |
| readOnly     | boolean | no     | read only flag                |

Example

```json
{
    "type":"state",
    "size":1,
    "enum":[
        {"edt":"0x42", "state":{"ja":"通常灯", "en":"Normal Lighting"}},
        {"edt":"0x43", "state":{"ja":"常夜灯", "en":"Night Lighting"}},
        {"edt":"0x45", "state":{"ja":"カラー灯", "en":"Color Lighting"}}
    ]
}
```

### 4.3 numeric value
A number is mapped to another number.
  
Format  

```json
{
    "type":"numericValue",
    "size":<data size>,
    "enum":[
        {
            "edt":<EDT value>,
            "numericValue":<numeric value>
        },
        ...
    ]
}
```

| Keyword      | Type   |Required| Description                   |
|:-------------|:-------|:-------|:------------------------------|
| size         | number | yes    | data size. 0 in case of bitmap|
| enum         | array  | yes    | array of value object         |
| edt          | string | yes    | EDT value in Hex              |
| numericValue | number | yes    | numeric value                 |

Example

```json
{
    "type":"numericValue",
    "size":1,
    "enum":[
        {"edt":"0x00", "numericValue":1},
        {"edt":"0x01", "numericValue":0.1},
        {"edt":"0x02", "numericValue":0.01},
        {"edt":"0x03", "numericValue":0.001},
        {"edt":"0x04", "numericValue":0.0001}
    ]
}
```

### 4.4 level
A level is mapped to a number.  
For example, in case that 8 level (LEVEL\_1...LEVEL\_8) is mapped to 0x31...0x38,
it is described that "base" is 0x31 and "maximum" is 8.

Format

```json
{
    "type":"level",
    "base":<base value in Hex string>,
    "maximum":<maximum number>
}
```

| Keyword     | Type   |Required| Description                                    |
|:------------|:-------|:-------|:-----------------------------------------------|
| base        | string | yes    | EDT value in Hex that is associated to LEVEL_1 |
| maximum     | number | yes    | maximum level                                  |

Example

```json
{
    "type":"level",
    "base":"0x31",
    "maximum":8
}
```

### 4.5 bitmap

A state or a number is described with bitmap.  

Example
4 byte data of bitmaps. Utilizing the MSB of the first byte-data, and lower 4 bits of the second byte.  

```
    |<----------- 4 bytes ----------->|
    index:0  index:1  index:2  index:3
    XXXXXXXX XXXXXXXX XXXXXXXX XXXXXXXX
    MSB  LSB MSB  LSB MSB  LSB MSB  LSB

    X******* ****XXXX
    ^            ^^^^
    |            ||||
    |            ++++--- index = 1, bitmask = 0b00001111, data = 0...15
    +--- index = 0, bitmask = 0b10000000, data = 0 or 1
```

Format  

```json
{
    "type":"bitmap",
    "size":<size of total bitmaps data in bytes>,
    "bitmaps":[
        {
            "name":<bitmap name>,
            "descriptions":{
                "ja":<description of bitmap in Japanese>,
                "en":<description of bitmap in English>
            },
            "position":{
                "index":<index of the byte of a bitmap>,
                "bitMask":<bitmask to specify effective bits>
            },
            "value":<data type object>
        },
        ...
    ]
}
```

| Keyword             | Type   |Required| Description                                              |
|:--------------------|:-------|:-------|:---------------------------------------------------------|
| size                | number | yes    | size of total bitmaps data in bytes                      |
| bitmaps             | array  | yes    | array of bitmap object                                       |
| name                | string | yes    | bitmap name                                              |
| descriptions        | object | yes    | description of bitmap in Japanese and English            |
| position            | object | yes    | position of bitmap                                       |
| position.index      | number | yes    | index of the byte of a bitmap                            |
| position.bitMask    | string | yes    | bitmask to specify effective bits                        |
| value               | object | yes    | data type object of the bitmap value                     |

Example  
Water heater(EOJ=026B) Alarm status(EPC=0xC2), 4bytes data, First byte bit0:Out of hot water, bit1:Water leaking, bit2: Freezing  

```json
{
    "type":"bitmap",
    "size":4,
    "bitmaps":[
        {
            "name":"noHotWater",
            "descriptions":{"ja":"湯切れ警報", "en":"Out of hot water"},
            "position":{
                "index":0,
                "bitMask":"0b0000001"
            },
            "value":{
                "type":"state",
                "size":0,
                "enum":[
                    {"edt":"0x01", "state":{"ja":"発生", "en":"Alarm"}},
                    {"edt":"0x00", "state":{"ja":"正常", "en":"No Alarm"}}
                ]
            }
        },
        {
            "name":"waterLeaking",
            "descriptions":{"ja":"漏水警報", "en":"Water leaking"},
            "position":{
                "index":0,
                "bitMask":"0b0000010"
            },
            "value":{
                "type":"state",
                "size":0,
                "enum":[
                    {"edt":"0x01", "state":{"ja":"発生", "en":"Alarm"}},
                    {"edt":"0x00", "state":{"ja":"正常", "en":"No Alarm"}}
                ]
            }
        },
        {
            "name":"waterFreezing",
            "descriptions":{"ja":"凍結警報", "en":"Water frozen"},
            "position":{
                "index":0,
                "bitMask":"0b0000100"
            },
            "value":{
                "type":"state",
                "size":0,
                "enum":[
                    {"edt":"0x01", "state":{"ja":"発生", "en":"Alarm"}},
                    {"edt":"0x00", "state":{"ja":"正常", "en":"No Alarm"}}
                ]
            }
        }
    ]
}
```

### 4.6 date-time

Data Format  

| item   | data size| minimum | maximum |
|:-------|---------:|--------:|--------:|
| Year   | 2        | 1       |9999     |
| Month  | 1        | 1       |12       |
| Day    | 1        | 1       |31       |
| Hour   | 1        | 0       |23       |
| Minute | 1        | 0       |59       |
| Second | 1        | 0       |59       |

In case data is partial, data size is specified by the keyword "size".  
Example  
"size":4 => Year, Month and Day

Format

```json
{
    "type":"date-time",
    "size":<data size>
}
```

| Keyword| Type   |Required |Description                        |
|:-------|:-------|:--------|:----------------------------------|
| size   | number | no      | Data size in case of partial data |

### 4.7 time

Data Format  

 item   | data size| minimum | maximum
:-------|---------:|--------:|--------:
 Hour   | 1        | 0       |23 (or 255)
 Minute | 1        | 0       |59
 Second | 1        | 0       |59

In case data is partial, data size is specified by the keyword "size".  
Example  
"size":2 => Hour and Minute  

Default maximum value of hour is 23, although you may specify the number over 23 with an optional keyword "maximumOfHour".

Format

```json
{
    "type":"time",
    "size":<data size>,
    "maximumOfHour":< maximum value of Hour >
}
```

Keyword       | Type   |Required |Description
:-------------|:-------|:--------|:----------------------------------
size          | number | no      | Data size in case of partial data
maximumOfHour | number | no      | Specifies maximum value of hour

### 4.8 raw

Format

```json
{
    "type":"raw",
    "minSize":< minimum data size >,
    "maxSize":< maximum data size >
}
```

| Keyword  | Type   |Required|Description        |
|:---------|:-------|:-------|:------------------|
| minSize  | number | no     | maximum data size |
| maxSize  | number | yes    | maximum data size |

### 4.9 array

Format

```json
{
    "type":"array",
    "itemSize":< data size of each item>,
    "minItems":< minimum number of items>,
    "maxItems":< maximum number of items>,
    "items":<data type object>
}
```

| Keyword  | Type   |Required |Description              |
|:---------|:-------|:--------|:------------------------|
| itemSize | number |yes      | data size of each item  |
| minItems | number |no       | minimum number of items |
| maxItems | number |yes      | maximum number of items |
| items    | object |yes      | data type object        |

Example of Schema

```json
{
    "type":"array",
    "itemSize":2,
    "maxItems":24,
    "items":{
        "type":"number",
        "format":"int16",
        "unit":"A",
        "minimum":-9999,
        "maximum":9999,
    }
}
```

### 4.10 object

Format

```json
{
    "type":"object",
    "properties":[
        {
            "name":<property name>,
            "type":<data type object>
        },
        ...
    ]
}
```

| Keyword    | Type   |Required |Description                   |
|:-----------|:-------|:--------|:-----------------------------|
| name       | string |yes      | property name                |
| element    | object |yes      | data type object             |

Example of Schema (General Lighting, RGB setting)  

```json
{
    "type":"object",
    "properties":[
        {
            "name":"red",
            "element":{
                "type":"number",
                "format":"uint8",
                "minimum":0,
                "maximum":255
            }
        },
        {
            "name":"green",
            "element":{
                "type":"number",
                "format":"uint8",
                "minimum":0,
                "maximum":255
            }
        },
        {
            "name":"blue",
            "element":{
                "type":"number",
                "format":"uint8",
                "minimum":0,
                "maximum":255
            }
        }
    ]
}
```

Example of Schema (LV smart meter, 積算電力量計測値履歴1（正方向計測値）)  

```json
{
    "type":"object",
    "properties":[
        {
            "name":"day",
            "element":{
                    "type":"number",
                    "format":"uint8",
                    "unit":"day",
                    "minimum":0,
                    "maximum":99
            }
        },
        {
            "name":"energy",
            "element":{
                "type":"array",
                "itemSize":4,
                "minItems":48,
                "maxItems":48,
                "items":{
                    "type":"number",
                    "format":"uint32",
                    "unit":"kWh"
                }
            }
        }
    ]
}
```

### 4.11 Mixed type: oneOf

Choose one out of multiple data type objects.  

Format

```json
{
    "oneOf":[
        <data type object>,
        <data type object>,
        ...
    ]
}
```

Example  

```json
{
    "oneOf":[
        {
            "type":"number",
            "format":"uint8",
            "unit":"Celsius",
            "minimum":0,
            "maximum":40
        },
        {
            "type":"level",
            "base":"0x31",
            "maximum":8
        },
        {
            "type":"state",
            "size":1,              "enum":[
                {"edt":"0x41", "state":{"ja":"自動", "en":"Automatic"}}
            ]
        }
    ]
}
```

## 5. definitions

The same schema are utilized multiple times through the device description. For example, here is a schema to represent numeric data of 0~100%.

```json
"data":{
    "type":"number",
    "format":"uint8",
    "unit":"%",
    "minimum":0,
    "maximum":100
}
```

This schema is used for humidity of an air conditioner(EOJ=0x0130, EPC=0xBA) or for blind angle of electric blind(EOJ=0x260, EPC=0xE1).
It is natural to define it once and refer it multiple times. `"definitions"` is the place where templates are described, and key word `"$ref"` is utilized to refer a template.

Format

```json
{
    "metaData":{...},
    "definitions":{
        <template name>:{ < template > },
        <template name>:{ < template > },
        ...
        }
    }
    "nodeProfile":{...},
    "superclass":{...},
    "devices":{
        <EOJ>:{
            "validRelease":{...},
            "className":{...},
            "elProperties":{
                <EPC>:{
                    "validRelease":{...},
                    "propertyName":{...},
                    "accessRule":{...},
                    "data":{
                        "$ref":"#/definitions/<template name>"
                    }
                },
                <EPC>:{...},
                ...
            }
        },
        <EOJ>:{...},
        ...
    }
}
```

Example

```json
{
    "metaData":{...},
    "definitions":{
        "number_01":{
            "type":"number",
            "format":"uint8",
            "unit":"%",
            "minimum":0,
            "maximum":100
        },
        ...
    },
    "nodeProfile":{...},
    "superclass":{...},
    "devices":{
        "0x0130":{
            "validRelease":{"from":"A","to":"latest"},
            "className":{"ja":"家庭用エアコン", ...},
            "elProperties":{
                ...
                "0xBA":{
                    "validRelease":{"from":"A", "to":"latest"},
                    "propertyName":{"ja":"湿度計測値", ...},
                    "accessRule":{...},
                    "data":{
                        "$ref": "#/definitions/number_01"
                    }
                },
                ...
            }
        },
        ...
        "0x0260":{
            "validRelease":{"from":"A","to":"latest"},
            "className":{"ja":"電動ブラインド", ...},
            "elProperties":{
                ...
                "0xBA":{
                    "validRelease":{"from":"A", "to":"latest"},
                    "propertyName":{"ja":"開度レベル設定", ...},
                    "accessRule":{...},
                    "data":{
                        "$ref": "#/definitions/number_01"
                    }
                },
                ...
            }
        },
        ...
    }
}
```

Data

[definitions.json](./JSON_files/definitions.json)

## 6. ノードプロファイル: Node profile: 0x0EF0

JSON data of node profile includes both properties of super class  for the node profile and those of node profile object.

[0x0EF0](./JSON_files/devices_special/0x0EF0.json)

## 7. Super class

JSON data of super class includes properties of super class for device objects. "0x0000" is utilized as a temporal key for the super class.

[0x0000](./JSON_files/devices_special/0x0000.json)

## 8. devices
### Device List
Here is a list of devices with device description in this document.

EOJ|機器名|Device name|
:-----------------------|:--------------------------------------|:-------|
[0x0001](./JSON_files/devices/0x0001.json)|ガス漏れセンサ|Gas leak sensor
[0x0002](./JSON_files/devices/0x0002.json)|防犯センサ| Crime prevention  sensor
[0x0003](./JSON_files/devices/0x0003.json)|非常ボタン| Emergency button
[0x0004](./JSON_files/devices/0x0004.json)|救急用センサ| First-aid  sensor
[0x0005](./JSON_files/devices/0x0005.json)|地震センサ| Earthquake sensor
[0x0006](./JSON_files/devices/0x0006.json)|漏電センサ| Electric leak sensor
[0x0007](./JSON_files/devices/0x0007.json)|人体検知センサ| Human detection sensor
[0x0008](./JSON_files/devices/0x0008.json)|来客センサ| Visitor sensor
[0x0009](./JSON_files/devices/0x0009.json)|呼び出しセンサ| Call sensor
[0x000A](./JSON_files/devices/0x000A.json)|結露センサ| Condensation sensor
[0x000B](./JSON_files/devices/0x000B.json)|空気汚染センサ| Air pollution
[0x000C](./JSON_files/devices/0x000C.json)|酸素センサ| Oxygen sensor
[0x000D](./JSON_files/devices/0x000D.json)|照度センサ|Illuminance sensor
[0x000E](./JSON_files/devices/0x000E.json)|音センサ| Sound sensor
[0x000F](./JSON_files/devices/0x000F.json)|投函センサ| Mailing sensor
[0x0010](./JSON_files/devices/0x0010.json)|重荷センサ| Weight sensor
[0x0011](./JSON_files/devices/0x0011.json)|温度センサ|Temperature sensor
[0x0012](./JSON_files/devices/0x0012.json)|湿度センサ|Humidity sensor
[0x0013](./JSON_files/devices/0x0013.json)|雨センサ| Rain sensor
[0x0014](./JSON_files/devices/0x0014.json)|水位センサ| Water level sensor
[0x0015](./JSON_files/devices/0x0015.json)|風呂水位センサ| Bath water level sensor
[0x0016](./JSON_files/devices/0x0016.json)|風呂沸き上がりセンサ| Bath heating status sensor
[0x0017](./JSON_files/devices/0x0017.json)|水漏れセンサ| Water leak sensor
[0x0018](./JSON_files/devices/0x0018.json)|水あふれセンサ| Water overflow sensor
[0x0019](./JSON_files/devices/0x0019.json)|火災センサ| Fire sensor
[0x001A](./JSON_files/devices/0x001A.json)|タバコ煙センサ| Cigarette smoke sensor
[0x001B](./JSON_files/devices/0x001B.json)|CO2センサ| CO2 sensor
[0x001C](./JSON_files/devices/0x001C.json)|ガスセンサ| Gas sensor
[0x001D](./JSON_files/devices/0x001D.json)|VOCセンサ| VOC sensor
[0x001E](./JSON_files/devices/0x001E.json)|差圧センサ| Differential pressure sensor
[0x001F](./JSON_files/devices/0x001F.json)|風速センサ| Air speed sensor
[0x0020](./JSON_files/devices/0x0020.json)|臭いセンサ| Odor sensor
[0x0021](./JSON_files/devices/0x0021.json)|炎センサ| Flame sensor
[0x0022](./JSON_files/devices/0x0022.json)|電力量センサ|Electric energy sensor
[0x0023](./JSON_files/devices/0x0023.json)|電流センサ| Current sensor
[0x0025](./JSON_files/devices/0x0025.json)|水流量センサ| Water flow rate
[0x0026](./JSON_files/devices/0x0026.json)|微動センサ| Micromotion sensor
[0x0027](./JSON_files/devices/0x0027.json)|通過センサ| Passage sensor
[0x0028](./JSON_files/devices/0x0028.json)|在床センサ| Bed presence sensor
[0x0029](./JSON_files/devices/0x0029.json)|開閉センサ| Open/close sensor
[0x002A](./JSON_files/devices/0x002A.json)|活動量センサ| Activity amount sensor
[0x002B](./JSON_files/devices/0x002B.json)|人体位置センサ| Human body location sensor
[0x002C](./JSON_files/devices/0x002C.json)|雪センサ| Snow sensor
[0x002D](./JSON_files/devices/0x002D.json)|気圧センサ|Air pressure sensor
[0x0130](./JSON_files/devices/0x0130.json)|家庭用エアコン|Home air conditioner|
[0x0133](./JSON_files/devices/0x0133.json)|換気扇|Ventilation fan|
[0x0134](./JSON_files/devices/0x0134.json)|空調換気扇|Air conditioner ventilation fan
[0x0135](./JSON_files/devices/0x0135.json)|空気清浄器|Air cleaner
[0x0139](./JSON_files/devices/0x0139.json)|加湿器|Humidifier|
[0x0142](./JSON_files/devices/0x0142.json)|電気暖房器| Electric heater
[0x0143](./JSON_files/devices/0x0143.json)|ファンヒータ| Fan heater
[0x0155](./JSON_files/devices/0x0155.json)|電気蓄熱暖房器| Electric storage heater
[0x0156](./JSON_files/devices/0x0156.json)|業務用パッケージエアコン室内機（設備用を除く）| Package-type commercial air conditioner (indoor unit)(except those for facilities)
[0x0157](./JSON_files/devices/0x0157.json)|業務用パッケージエアコン室外機（設備用を除く）|Package-type commercial air conditioner (outdoor unit)(except those for facilities)
[0x0158](./JSON_files/devices/0x0158.json)|業務用ガスヒートポンプエアコン室内機|Gas heat pump-type commercial air conditioner (indoor unit)
[0x0159](./JSON_files/devices/0x0159.json)|業務用ガスヒートポンプエアコン室外機|Gas heat pump-type commercial air conditioner (outdoor unit)
[0x015A](./JSON_files/devices/0x015A.json)|レンジフード|Range hood
[0x0260](./JSON_files/devices/0x0260.json)|電動ブラインド・日よけ | Electrically operated blind/shade
[0x0261](./JSON_files/devices/0x0261.json)|電動シャッター| Electrically operated shutter
[0x0263](./JSON_files/devices/0x0263.json)|電動雨戸・シャッター|Electrically operated rain sliding door/shutter
[0x0264](./JSON_files/devices/0x0264.json)|電動ゲート| Electrically operated gate
[0x0265](./JSON_files/devices/0x0265.json)|電動窓| Electrically operated window
[0x0266](./JSON_files/devices/0x0266.json)|電動玄関ドア・引戸|Automatically operated entrance door/sliding door
[0x0267](./JSON_files/devices/0x0267.json)|散水器（庭用）|Garden sprinkler
[0x026B](./JSON_files/devices/0x026B.json)|電気温水器|Electric water heater|
[0x026E](./JSON_files/devices/0x026E.json)|電気便座| Electric toilet seat
[0x026F](./JSON_files/devices/0x026F.json)|電気錠|Electric key|
[0x0272](./JSON_files/devices/0x0272.json)|瞬間式給湯器|Instantaneous water heater|
[0x0273](./JSON_files/devices/0x0273.json)|浴室暖房乾燥機|Bathroom heater & dryer|
[0x0279](./JSON_files/devices/0x0279.json)|住宅用太陽光発電|Household solar power generation|
[0x027A](./JSON_files/devices/0x027A.json)|冷温水熱源機|Hot water heat source equipment
[0x027B](./JSON_files/devices/0x027B.json)|床暖房|Floor heater|
[0x027C](./JSON_files/devices/0x027C.json)|燃料電池|Fuel cell|
[0x027D](./JSON_files/devices/0x027D.json)|蓄電池|Storage battery|
[0x027E](./JSON_files/devices/0x027E.json)|電気自動車充放電器|Electric vehicle charger/discharger
[0x027F](./JSON_files/devices/0x027F.json)|エンジンコージェネレーション| Engine cogeneration
[0x0280](./JSON_files/devices/0x0280.json)|電力量メータ|Watt-hour meter
[0x0281](./JSON_files/devices/0x0281.json)|水流量メータ|Waterflow meter|
[0x0282](./JSON_files/devices/0x0282.json)|ガスメータ|Gas meter|
[0x0283](./JSON_files/devices/0x0283.json)|LPガスメータ| LP gas meter
[0x0287](./JSON_files/devices/0x0287.json)|分電盤メータリング|Power distribution board|
[0x0288](./JSON_files/devices/0x0288.json)|低圧スマート電力量メータ|Low-voltage smart electric energy meter|
[0x0289](./JSON_files/devices/0x0289.json)|スマートガスメータ| Smart gas meter
[0x028A](./JSON_files/devices/0x028A.json)|高圧スマート電力量メータ|High-voltage smart electric energy meter|
[0x028B](./JSON_files/devices/0x028B.json)|灯油メータ| Kerosense meter
[0x028C](./JSON_files/devices/0x028C.json)|スマート灯油メータ| Smart kerosense meter
[0x028D](./JSON_files/devices/0x028D.json)|スマート電力量サブメータ|Smart electric energy meter for sub-metering
[0x0290](./JSON_files/devices/0x0290.json)|一般照明|General lighting|
[0x0291](./JSON_files/devices/0x0291.json)|単機能照明|Mono functional lighting|
[0x0292](./JSON_files/devices/0x0292.json)|固体発光光源用照明|Lighting for solid light-emitting source
[0x02A0](./JSON_files/devices/0x02A0.json)|ブザー|Buzzar
[0x02A1](./JSON_files/devices/0x02A1.json)|電気自動車充電器|Electric vehicle charger
[0x02A2](./JSON_files/devices/0x02A2.json)|Household small windturbine power generation|Household small windturbine power generation
[0x02A3](./JSON_files/devices/0x02A3.json)|照明システム|Lighting system
[0x02A4](./JSON_files/devices/0x02A4.json)|拡張照明システム|Extended lighting system
[0x02A5](./JSON_files/devices/0x02A5.json)|マルチ入力PCS| Multiple input PCS
[0x02A6](./JSON_files/devices/0x02A6.json)|ハイブリッド給湯器|Hybrid water heater|
[0x03B2](./JSON_files/devices/0x03B2.json)|電気ポット|Electric hot water pot
[0x03B7](./JSON_files/devices/0x03B7.json)|冷凍冷蔵庫|Refrigerator
[0x03B8](./JSON_files/devices/0x03B8.json)|オーブンレンジ|Combination microwave oven|
[0x03B9](./JSON_files/devices/0x03B9.json)|クッキングヒータ|Cooking heater
[0x03BB](./JSON_files/devices/0x03BB.json)|炊飯器|Rice cooker
[0x03C5](./JSON_files/devices/0x03C5.json)|洗濯機| Washing machine
[0x03C6](./JSON_files/devices/0x03C6.json)|衣類乾燥機| Cloth dryer
[0x03CE](./JSON_files/devices/0x03CE.json)|業務用ショーケース| Commercial show case
[0x03D3](./JSON_files/devices/0x03D3.json)|洗濯乾燥機|Washer & dryer|
[0x03D4](./JSON_files/devices/0x03D4.json)|業務用ショーケース向け室外機| Commercial show case outdoor unit
[0x03D5](./JSON_files/devices/0x03D5.json)|食器洗い乾燥機| Dishwasher and dryer
[0x0401](./JSON_files/devices/0x0401.json)|体重計| Weighing machine
[0x05FA](./JSON_files/devices/0x05FA.json)|並列処理併用型電力制御|Parallel processing combination-type power control
[0x05FB](./JSON_files/devices/0x05FB.json)|DRイベントコントローラ| DR event controller
[0x05FD](./JSON_files/devices/0x05FD.json)|スイッチ|Switch
[0x05FF](./JSON_files/devices/0x05FF.json)|コントローラ|Controller
[0x0601](./JSON_files/devices/0x0601.json)|ディスプレイ|Display
[0x0602](./JSON_files/devices/0x0602.json)|テレビ|Television
[0x0603](./JSON_files/devices/0x0603.json)|オーディオ|Audio
[0x0604](./JSON_files/devices/0x0604.json)|ネットワークカメラ|Network camera

Here is a list of devices without device description.

|EOJ|機器名|Device name|
|:------|:------------|:----|
0x0024|昼光センサ| Daylight sensor
0x0131|冷風機| Cold blaster
0x0132|扇風機| Electric fan
0x0136|冷風扇| Cold blast fan
0x0137|サーキュレータ| Circulator
0x0138|除湿器| Dehumidifier
0x013A|天井扇| Ceiling fan
0x013B|電気こたつ| Electric Kotasu
0x013C|電気あんか| Electric heating pad
0x013D|電気毛布| Electric blanket
0x013E|ストーブ| Space heater
0x013F|パネルヒータ| Panel heater
0x0140|電気カーペット| Electric carpet
0x0141|フロアヒータ| Floor heater
0x0144|充電器| Battery charger
0x0147|業務用パッケージエアコン蓄熱ユニット| Package-type commercial air conditioner thermal storage unit
0x0148|業務用ファンコイルユニット| Commercial fan cil unit
0x0149|業務用空調冷熱源（チラー）| Commercial air conditioning cold source(chiller)
0x0150|業務用空調温熱源（ボイラー）| Commercial air conditioning hot source(boiler) 
0x0151|業務用空調VAV| Air-conditioning VAV for commercial applications
0x0152|業務用空調エアハンドリングユニット| Air handling unit (air-conditioning) for commercial applications
0x0153|ユニットクーラー| Unit-cooler
0x0154|業務用コンデンシングユニット| Condensing unit for commercial applications
0x0262|電動カーテン| Electrically operated curtain
0x0268|散水器（火災用）|
0x0269|噴水|
0x026A|瞬間給湯器|
0x026C|太陽熱温水器|
0x026D|循環ポンプ|
0x0270|ガス元弁|
0x0271|ホームサウナ|
0x0274|ホームヘレベータ|
0x0275|電動間仕切り|
0x0276|水平トランスファ|
0x0277|電動物干し|
0x0278|浄化槽|
0x0284|時計|
0x0285|自動ドア|
0x0286|業務用エレベータ|
0x0299|非常照明|
0x029D|設備照明|
0x03B0|コーヒーメーカ|
0x03B1|コーヒーミル|
0x03B3|電気こんろ|
0x03B4|トースタ|
0x03B5|ジューサ・ミキサ|
0x03B6|フードプロセッサ|
0x03BA|オーブン|
0x03BC|電子ジャー|
0x03BD|食器洗い機|
0x03BE|食器乾燥機|
0x03BF|電気もちつき機|
0x03C0|保温器|
0x03C1|精米機|
0x03C2|自動製パン機|
0x03C3|スロークッカ|
0x03C4|電気漬物器|
0x03C7|電気アイロン|
0x03C8|ズボンプレッサ|
0x03C9|ふとん乾燥機|
0x03CA|小物・くつ乾燥機|
0x03CB|電気掃除機|
0x03CC|ディスポーザ|
0x03CD|電気蚊取り機|
0x03CF|業務用冷蔵庫|
0x03D0|業務用ホットケース|
0x03D1|業務用フライヤー|
0x03D2|業務用電子レンジ|
0x0402|体温計|
0x0403|血圧計|
0x0404|血糖値計|
0x0405|体脂肪計|
0x05FC|セキュア通信用共有鍵設定ノード|Secure communication shared key setup node
0x05FE|携帯端末|　