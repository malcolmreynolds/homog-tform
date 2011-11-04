function tform = make_transform(r, t)
	% From a standard 3x3 rotation and 3x1 translation, make a homogeneous 
	% transformation matrix
	tform = [r, t; 0 0 0 1];
end