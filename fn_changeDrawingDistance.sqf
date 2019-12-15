private _handled = false;

_viewTable = [ [200,200], [400,400], [600,600], [1200,1200], [2500,2500], [4500, 3500] ];

_distIdx = player getVariable "distIdx";
if (isNil "_distIdx") then
{
	_distIdx = 0;
};

_distIdx = _distIdx + 1;

if (_distIdx > ((count _viewTable) -1) ) then
{
	_distIdx = 0;
};

player setVariable ["distIdx", _distIdx];

_view = _viewTable select _distIdx;
setViewDistance (_view select 0);
setObjectViewDistance (_view select 1);

_viewDistance =  str viewDistance;		
hintSilent format ["My viewdistance is %2: %1 ", _viewDistance, _distIdx];

_handled = true;
	
_handled