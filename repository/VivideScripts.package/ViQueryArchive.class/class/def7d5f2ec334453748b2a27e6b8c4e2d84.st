definitions
def7d5f2ec334453748b2a27e6b8c4e2d84
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]]).
(#class -> ViQueryMapDefinition).
(#id -> #'7d5f2ec3-3445-3748-b2a2-7e6b8c4e2d84').
(#inputKind -> Behavior).
(#mapType -> #all).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:33:53 am')})).
(#sourceCode -> '[:classes | "See TestRunner >> updateClasses, sortClass:before:"
	classes sort: [:a :b |
		| first second |
		first := a withAllSuperclasses reversed.
		second := b withAllSuperclasses reversed.
		[
			1 to: (first size min: second size) do: [ :index | 
				(first at: index) == (second at: index)
					ifFalse: [ Notification signal: index ]].
				second includes: a]
		on: Notification
		do: [:n | 	(first at: n messageText) name <= (second at: n messageText) name].
	]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})