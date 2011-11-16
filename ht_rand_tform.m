function tform = ht_rand_tform(tscale, rscale)
	% Creates a random 4x4 transform
	if nargin < 1,
		tscale = 100; % 100 millimetres
	end
	
	if nargin < 2,
		rscale = 0.1;
	end
	
	tform = ht_rand_rot_tform(rscale);
	tform(1:3, 4) = tscale * randn(3,1);
end
	
	