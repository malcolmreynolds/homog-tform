function diff = transform_diff(tform_1, tform_2)
	% Given two transforms tform_1 and tform_2, we want to see how different they are
	[r1 t1] = decompose(tform_1);
	[r2 t2] = decompose(tform_2);

	diff.angular = norm(r1-r2);
	diff.translation = norm(t1-t2);
end

function [r t] = decompose(tform)
	% Decompose a 4x4 transform into parameters which can be compared
	r = rodrigues(tform(1:3, 1:3)); % Axis angle rotation format
	t = tform(1:3, 4); %standard cartesian 3D translation
end
	