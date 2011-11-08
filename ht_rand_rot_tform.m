function tform = ht_rand_rot_tform(scale)
	% Make a random 4x4 transform with a small amount of rotation
	if nargin < 1,
		scale = 0.1;
	end

	tform = [rodrigues(scale * randn(1,3)), zeros(3,1); 0 0 0 1];
end
