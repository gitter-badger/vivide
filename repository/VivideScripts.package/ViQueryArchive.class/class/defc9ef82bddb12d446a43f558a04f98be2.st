definitions
defc9ef82bddb12d446a43f558a04f98be2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'c9ef82bd-db12-d446-a43f-558a04f98be2').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'1c6c47fd-f9bb-084a-9266-60bc0c3608bf').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples] value: in)]')})