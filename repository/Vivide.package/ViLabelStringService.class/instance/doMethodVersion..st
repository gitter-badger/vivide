operations
doMethodVersion: aMethodVersion

	aMethodVersion theClass ifNil: [^ super doMethodVersion: aMethodVersion].

	(((aMethodVersion theClass >> aMethodVersion selector) timeStamp = aMethodVersion stamp
		and: [aMethodVersion sourceString = (aMethodVersion theClass >> aMethodVersion selector) getSource asString])
			ifTrue: ['<b>{1}</b>']
			ifFalse:['{1}']) in: [:template |
				^ template format: {
					[ViToolSet printRelativeTimeStamp: aMethodVersion timeStamp]
						on: Error do: ['-']}]