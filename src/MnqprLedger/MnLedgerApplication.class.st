Class {
	#name : #MnLedgerApplication,
	#superclass : #SpApplication,
	#instVars : [
		'repository'
	],
	#category : #MnqprLedger
}

{ #category : #initialization }
MnLedgerApplication >> initializeRepository [

	repository := VOMongoRepository host: '172.16.1.80' database: 'MnLedger'
]

{ #category : #running }
MnLedgerApplication >> run [
	
	self initializeRepository
]
