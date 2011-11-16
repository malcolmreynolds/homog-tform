function ab = ht_relative_tform_between(oa, ob)
	% Returns the relative transform A->B given two locations a and b (or more
	% accurately two transforms O->A and O->B from some arbitrary origin.)

	% It's simple, but I forget this stuff...
	ab = inv(oa) * ob;
end