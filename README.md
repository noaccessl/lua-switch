# C-style `switch` statement for Lua **written in pure Lua**
Example
```lua
local var = true

switch( var )
{

	case (true) ( function()
		print( 1 )
	end );

	case (false) ( function()
		print( 2 )
	end );

	default ( function()
		print( 0 )
	end )

}
```
Example with `return`
```lua
local var = true

return switch( var ) {

	case (true) ( function()
		return 'true'
	end );

	case (false) ( function()
		return 'false'
	end );

	default ( function()
		return 0
	end )

}
```