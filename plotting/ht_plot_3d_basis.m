function ht_plot_3d_basis(tform, s, label)
	% Draws a 3D basis spike in whatever 3D graph is currently plotted.
	if nargin < 3,
		label = '';
	end
	if nargin < 2,
	    s = 0.5;
	end
	if nargin < 1,
		rot = eye(3);
	end
	
	axes_pts = [0 s 0 0;
	            0 0 s 0; ...
	            0 0 0 s];

	axes_pts = ht_apply_tform(tform, axes_pts);

	plot3(axes_pts(1, [1 2]), axes_pts(2, [1 2]), axes_pts(3, [1 2]), 'r');
	plot3(axes_pts(1, [1 3]), axes_pts(2, [1 3]), axes_pts(3, [1 3]), 'g');
	plot3(axes_pts(1, [1 4]), axes_pts(2, [1 4]), axes_pts(3, [1 4]), 'b');
	text(axes_pts(1,4), axes_pts(2,4), axes_pts(3,4), label);
end
