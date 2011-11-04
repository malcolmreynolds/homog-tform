function pose_params = tform_to_6dof(tform)
	% Convert a 4x4 homogeneous transform representing some 3D pose into a 6 element vector.
	% Vector is concatenation translation (3D cartesians) , and rotation in axis/angle format
	
	t = tform(1:3,4);
	r = rodrigues(tform(1:3,1:3));
	pose_params = [t;r];