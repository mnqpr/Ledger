Class {
	#name : #MnReceipt,
	#superclass : #Object,
	#instVars : [
		'company',
		'date',
		'lines'
	],
	#category : #MnqprLedger
}

{ #category : #testing }
MnReceipt class >> isVoyageRoot [

	^ true
]

{ #category : #testing }
MnReceipt class >> voyageCollectionName [

	^ 'Receipt'
]

{ #category : #adding }
MnReceipt >> addLineItem: aLineItem [

	lines add: aLineItem
]

{ #category : #initialization }
MnReceipt >> initialize [

	super initialize.
	lines := OrderedCollection new
]

{ #category : #removing }
MnReceipt >> removeLineItem: aLineItem [

	lines remove: aLineItem ifAbsent: [  ]
]
