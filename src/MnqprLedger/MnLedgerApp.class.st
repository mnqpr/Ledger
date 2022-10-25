Class {
	#name : #MnLedgerApp,
	#superclass : #SpApplication,
	#instVars : [
		'repository'
	],
	#category : #MnqprLedger
}

{ #category : #initialization }
MnLedgerApp >> initializeRepository [

	repository := VOMongoRepository host: '172.16.1.80' database: 'mnqpr'
]

{ #category : #running }
MnLedgerApp >> start [
	
	self initializeRepository.
	(ReceiptListPresenter newApplication: self) open
]
