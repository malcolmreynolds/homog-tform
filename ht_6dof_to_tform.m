function tform = ht_6dof_to_tform(six_dof_vec)
	% Converts a 6d vector, the first three of which are translation and the final
	% three are rotation in axis angle format, into a full 4x4 transform
	tform = [rodrigues(six_dof_vec(4:6)), six_dof_vec(1:3)'; 0 0 0 1];
end