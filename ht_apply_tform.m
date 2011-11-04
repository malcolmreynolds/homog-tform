function points = ht_apply_tform(tform, points)
	% Applies a homogeneous transform to 3D cartesian points, returning the result in cartesian as well.
	points_hom = tform*[points; ones(1, size(points,2))];
	points = points_hom(1:3,:) ./ (repmat(points_hom(4,:), 3, 1));
end