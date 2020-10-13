---
layout: pofeaa
title: パターンカタログ
---

原文: <https://www.martinfowler.com/eaaCatalog/index.html>

Last Significant Update: January 2003

*以下は、『[Patterns of Enterprise Application Architecture (P of EAA)](https://www.martinfowler.com/books.html#eaa)』で扱ったパターンの簡単なサマリである。*

各パターンの概要をページ毎に載せているが、パターンは単独で用いられることを想定していない。これは、パターンに馴染みのある人向けの、単なる覚書のようなものである。これで気軽にオンラインでパターンを参照することが出来ましょうぞ。
将来的にここにコメントを追加するかもしれないが、とりあえずこれがうまく行くことを見守ろう。

David Heinemeier Hanssonが私のために素晴らしいダイアグラムを書いてくれたんだが……このVisioが吐いたGIFのきたなさったら。

# Domain Logic Patterns:
[TransactionScript](../TransactionScript) (110), [DomainModel](../DomainModel) (116), [TableModule](../TableModule) (125), [ServiceLayer](../ServiceLayer) (133).

# Data Source Architectural Patterns:
[TableDataGateway](../TableDataGateway) (144), [RowDataGateway](../RowDataGateway) (152), [ActiveRecord](../ActiveRecord) (160), [DataMapper](../DataMapper) (165).

# Object-Relational Behavioral Patterns:
[UnitofWork](../UnitofWork) (184), [IdentityMap](../IdentityMap) (195), [LazyLoad](../LazyLoad) (200)

# Object-Relational Structural Patterns:
[IdentityField](../IdentityField) (216), [ForeignKeyMapping](../ForeignKeyMapping) (236), [AssociationTableMapping](../AssociationTableMapping) (248), [DependentMapping](../DependentMapping) (262), [EmbeddedValue](../EmbeddedValue) (268), [SerializedLOB](../SerializedLOB) (272), [SingleTableInheritance](../SingleTableInheritance) (278), [ClassTableInheritance](../ClassTableInheritance) (285), [ConcreteTableInheritance](../ConcreteTableInheritance) (293), [InheritanceMappers](../InheritanceMappers) (302).

# Object-Relational Metadata Mapping Patterns:
[MetadataMapping](../MetadataMapping) (306), [QueryObject](../QueryObject) (316), [Repository](../Repository) (322).

# Web Presentation Patterns:
[ModelViewController](../ModelViewController) (330), [PageController](../PageController) (333), [FrontController](../FrontController) (344), [TemplateView](../TemplateView) (350), [TransformView](../TransformView) (361), [TwoStepView](../TwoStepView) (365), [ApplicationController](../ApplicationController) (379).

# Distribution Patterns:
[RemoteFacade](../RemoteFacade) (388), [DataTransferObject](../DataTransferObject) (401)

# Offline Concurrency Patterns:
[OptimisticOfflineLock](../OptimisticOfflineLock) (416), [PessimisticOfflineLock](../PessimisticOfflineLock) (426), [CoarseGrainedLock](../CoarseGrainedLock) (438), [ImplicitLock](../ImplicitLock) (449).

# Session State Patterns:
[ClientSessionState](../ClientSessionState) (456), [ServerSessionState](../ServerSessionState) (458), [DatabaseSessionState](../DatabaseSessionState) (462).

# Base Patterns:
[Gateway](../Gateway) (466), [Mapper](../Mapper) (473), [LayerSupertype](../LayerSupertype) (475), [SeparatedInterface](../SeparatedInterface) (476), [Registry](../Registry) (480), [ValueObject](../ValueObject) (486), [Money](../Money) (488), [SpecialCase](../SpecialCase) (496), [Plugin](../Plugin) (499), [ServiceStub](../ServiceStub) (504), [RecordSet](../RecordSet) (508)

# Revision History

Here's a list of the major updates to this paper

- *January 2003:*
