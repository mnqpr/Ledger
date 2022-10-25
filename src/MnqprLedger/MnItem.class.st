Class {
	#name : #MnItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'lastPrice',
		'lastPriceDate',
		'unitOfMeasure',
		'uomQuantity',
		'barcode',
		'receiptName'
	],
	#category : #MnqprLedger
}

{ #category : #testing }
MnItem class >> isVoyageRoot [

	^ true
]

{ #category : #testing }
MnItem class >> voyageCollectionName [

	^ 'Items'
]
