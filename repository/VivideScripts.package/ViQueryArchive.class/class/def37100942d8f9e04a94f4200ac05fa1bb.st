definitions
def37100942d8f9e04a94f4200ac05fa1bb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'37100942-d8f9-e04a-94f4-200ac05fa1bb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:41:29 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pane | {pane currentQuery. pane view}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})