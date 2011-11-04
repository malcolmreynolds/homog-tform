function tform = rand_rotation_tform(scale)
	% Make a random 4x4 transform with a small amount of rotation
	if nargin < 1,
		scale = 0.1;
	end

	tform = make_transform(rodrigues(scale * randn(1,3)), zeros(3,1));
end
