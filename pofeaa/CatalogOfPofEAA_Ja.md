---
layout: pofeaa
title: "パターンカタログ（日本語）"
---

[PofEAAのパターンカタログ](CatalogOfPofEAA)の邦訳名/原著名の対応です。以下の一覧にあるパターン名の後ろのカッコ内の数字は邦訳のページ番号です。原文のページ番号は[PofEAAのパターンカタログ](CatalogOfPofEAA)を参照してください。

邦訳版のパターン名に関する議論などは、[JapanesePatternNames](JapanesePatternNames)のページを参照。

# 「ドメインロジックパターン」(Domain Logic Patterns):

[トランザクションスクリプト(TransactionScript)](../TransactionScript) (115), [ドメインモデル(DomainModel)](../DomainModel) (123), [テーブルモジュール(TableModule)](../TableModule) (133), [サービスレイヤ(ServiceLayer)](../ServiceLayer) (142).

# 「データソースのアーキテクチャに関するパターン」(Data Source Architectural Patterns):

[テーブルデータゲートウェイ(TableDataGateway)](../TableDataGateway) (153), [行データゲートウェイ(RowDataGateway)](../RowDataGateway) (162), [アクティブレコード(ActiveRecord)](../ActiveRecord) (170), [データマッパー(DataMapper)](../DataMapper) (175).

# 「オブジェクトリレーショナル振る舞いパターン」(Object-Relational Behavioral Patterns):

[ユニットオブワーク(UnitofWork)](../UnitofWork) (197), [一意マッピング(IdentityMap)](../IdentityMap) (209), [レイジーロード(LazyLoad)](../LazyLoad) (213)

# 「オブジェクトリレーショナル構造パターン」(Object-Relational Structural Patterns):

[一意フィールド(IdentityField)](../IdentityField) (231), [外部キーマッピング(ForeignKeyMapping)](../ForeignKeyMapping) (254), [関連テーブルマッピング(AssociationTableMapping)](../AssociationTableMapping) (266), [依存マッピング(DependentMapping)](../DependentMapping) (282), [組込バリュー(EmbeddedValue)](../EmbeddedValue) (288), [シリアライズBLOB(SerializedLOB)](../SerializedLOB) (292), [シングルテーブル継承(SingleTableInheritance)](../SingleTableInheritance) (298), [クラステーブル継承(ClassTableInheritance)](../ClassTableInheritance) (306), [具象テーブル継承(ConcreteTableInheritance)](../ConcreteTableInheritance) (314), [継承マッパー(InheritanceMappers)](../InheritanceMappers) (324).

# 「オブジェクトリレーショナルメタデータマッピングパターン」(Object-Relational Metadata Mapping Patterns): 

[メタデータマッピング(MetadataMapping)](../MetadataMapping) (327), [クエリーオブジェクト(QueryObject)](../QueryObject) (338), [リポジトリ(Repository)](../Repository) (345).

# 「Webプレゼンテーションパターン」(Web Presentation Patterns):
[モデルビューコントローラ(ModelViewController)](../ModelViewController) (351), [ページコントローラ(PageController)](../PageController) (354), [フロントコントローラ(FrontController)](../FrontController) (366), [テンプレートビュー(TemplateView)](../TemplateView) (373), [トランスフォームビュー(TransformView)](../TransformView) (384), [ツーステップビュー(TwoStepView)](../TwoStepView) (388), [アプリケーションコントローラ(ApplicationController)](../ApplicationController) (403).

# 「分散パターン」(Distribution Patterns):
[リモートファサード(RemoteFacade)](../RemoteFacade) (411), [データ変換オブジェクト(DataTransferObject)](../DataTransferObject) (425){{fn 'DataTransferObjectの"邦訳"名は、データ変換オブジェクトが"正しい"です。データ"転送"オブジェクトではありません。'}}


# 「オフライン並行性パターン」(Offline Concurrency Patterns):
[軽オフラインロック(OptimisticOfflineLock)](../OptimisticOfflineLock) (439), [重オフラインロック(PessimisticOfflineLock)](../PessimisticOfflineLock) (450), [緩ロック(CoarseGrainedLock)](../CoarseGrainedLock) (462), [暗黙ロック(ImplicitLock)](../ImplicitLock) (474).

# 「セッションステートパターン」(Session State Patterns):
[クライアントセッションステート(ClientSessionState)](../ClientSessionState) (479), [サーバセッションステート(ServerSessionState)](../ServerSessionState) (481), [データベースセッションステート(DatabaseSessionState)](../DatabaseSessionState) (485).

# 「ベースパターン」(Base Patterns):
[ゲートウェイ(Gateway)](../Gateway) (489), [マッパー(Mapper)](../Mapper) (496), [レイヤースーパータイプ(LayerSupertype)](../LayerSupertype) (497), [セパレートインタフェース(SeparatedInterface)](../SeparatedInterface) (499), [レジストリ(Registry)](../Registry) (502), [バリューオブジェクト(ValueObject)](../ValueObject) (508), [マネー(Money)](../Money) (510), [スペシャルケース(SpecialCase)](../SpecialCase) (518), [プラグイン(Plugin)](../Plugin) (521), [サービススタブ(ServiceStub)](../ServiceStub) (526), [レコードセット(RecordSet)](../RecordSet) (530)
