drag/drop
doGrow: evt with: growHandle
	"Called while the mouse is down in the grow handle"

	positionOffset ifNil: [^ self].

	evt hand obtainHalo: self.
	self target extentInOwner: ((evt cursorPoint - self target boundsInWorld topLeft - positionOffset) max: 25@25).

	growHandle position: evt cursorPoint - (growHandle extent // 2) .
	self extent: target worldBoundsForHalo extent.