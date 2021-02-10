# Readme: ECHONET Lite Device Description

2020.02.10

## Abstract

ECHONET Lite の[仕様書](https://echonet.jp/spec_g/)には、protocol そのものを記述した「ECHONET Lite 規格書」と、その protocol の中で利用される機器毎の仕様を記述した「APPENDIX ECHONET 機器オブジェクト詳細規定」がある。
例えばコントローラが家庭用エアコンの動作状態をONにする操作を行う場合、家庭用エアコンに対応するオブジェクトコードは0x0130、動作状態に対応するプロパティコードは0x80、ONに対応するデータは0x30である
ということをAPPENDIXから読み取り、プログラム開発をすることになる。
APPENDIXはPDF fileであり、プログラムで直接利用することはできない。効率的に、またエラーが少ないプログラムを開発するには、APPENDIXの内容がプログラムで容易に利用できるデータが必須である。

そこで神奈川工科大学スマートハウス研究センターは、APPENDIXの内容を元に、JSONフォーマットのデータファイルを作成した。これを ECHONET Lite Device Description (ELDD) と呼ぶ。

今回公開するものは、以下の２件である。

- JSON データの定義
- JSON データファイル

ECHONET Lite で定義されたプロパティの値は全てバイナリーデータであり、その値をどのように解釈するかはプロパティごとに定義されている。ELDD では、JavaScript を参考にしてデータタイプを定義し、データの仕様を JSON Schema を利用して記述した。

JSONデータファイルは、機器オブジェクトのスーパークラス、ノードプロファイル、機器オブジェクトの３種類がある。機器オブジェクトは、devices folder内に、それぞれの機器オブジェクトコード（例：家庭用エアコン(0x0130)、一般照明(0x0290)) をファイル名として格納されている。機器オブジェクトのスーパークラスの情報は含まない。ノードプロファイルのファイル名はそのオブジェクトコードである 0x0EF0.json である。ノードプロファイルのスーパークラスは、機器オブジェクトのスーパークラスとは異なるため、0x0EF0.json はノードプロファイルのスーパークラスの情報を含んでいる。機器オブジェクトのスーパークラスはオブジェクトコードを持たないため、ファイル名は 0x0000.json とした。0x0000.json と 0x0EF0.json は devices_special folder に格納されている。

また、これらの個別のJSON fileをひとつにまとめたJSON file (EL_DeviceDescription.json) も提供している。

JSONデータの内容を確認するために、データーのビューアー [AppendixViewer](https://github.com/KAIT-HEMS/appendixViewer) も開発した。HTML5で開発しており、index.htmlをブラウザーで開くと、PDFのAPPENDIXと同様の表示を行う。PDFを見るよりも便利なので、このビューアーも活用していただきたい。

## 現状と今後

現在公開しているデータは、Release A から Release N までの全ての機器を対象に、日本語と英語両方の情報を含んでいる。

一方、エコーネットコンソーシアムでは、ECHONET Lite Device Description を元にして公式のデータファイル (Machine Readable Appendix : MRA ) を作成中であり、近日中に公開予定である。MRA は ELDD を元にしているが、若干データフォーマットが異なっている。また現時点では全ての機器を網羅しているわけではなく、Release N 以降のデータが作成されている。

したがって、用途によっては MRA が公開後も ELDD が有用な場合もあるので、当面はデータの更新を続ける予定である。
