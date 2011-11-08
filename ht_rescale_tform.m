function tform = ht_rescale_tform(tform, scale)
	% Simply adust the scale of the translation of some 4x4 transform. Useful sometimes.
	tform(1:3,4) = scale * tform(1:3,4);
end