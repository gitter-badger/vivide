maintenance
mergeDefinitionsFor: step
	"Replace definitions in given step with ones from this organization."
	
	| oldDef |
	oldDef := step definition.
	(self orderedDefinitions detect: [:def |
		def == oldDef or: [
			(def species = oldDef species
				and: [(def isMapDefinition & oldDef isMapDefinition) not
					or: [def mapType = oldDef mapType]])
				and: [(Decompiler new decompileBlock: def block) decompileString
					= (Decompiler new decompileBlock: oldDef block) decompileString]]] ifNone: [])
		ifNil: [
			oldDef register.
			Transcript cr; show: ('[ViQueryOrganizer] New definition registered: ''{1}'''
					format: {oldDef sourceCode})]
		ifNotNil: [:newDef |
			(((newDef ~~ oldDef
				and: [newDef category = oldDef category])
				and: [oldDef creationTimeStamp > newDef creationTimeStamp "older first"])
				and: [self flag: #fix. "mt: check for tuples in type" true]) ifTrue: [
				step definition: newDef.
				Transcript cr; show: ('[ViQueryOrganizer] Definition replaced:', String cr, ' ''{1}'' ==>', String cr, '''{2}'''
					format: {oldDef sourceCode. newDef sourceCode}).
	]].