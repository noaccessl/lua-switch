local unpack = unpack or table.unpack
assert( unpack ~= nil, 'where is `unpack`?' )

function switch( any )

	local none = true
	local ret = {}

	function case( condition )

		return function( func )

			if any == condition then

				ret = { func() }

				none, case = false, function()
					return function() end
				end

			end

		end

	end

	function default( func )
		if none then
			ret = { func() }
		end
	end

	return function()
		return unpack( ret )
	end

end