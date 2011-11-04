function tform = ht_tform_delta(frame_tform, cam)
	% Assume the frame umdergoes some transform (which we get from SfM)
	% What is the relative change in coordinates ('delta') for this camera?
	% NB the camera we are talking about is not necessarily at (0,0,0) in the frame
	% so this isn't quite as simple as you may think...
	
	% Transform from frame to cam
	tform_f_cam = cam.tform;
	
	% Transform from cam to frame
	tform_cam_f = inv(tform_f_cam);
	
	% Put these together with the frame transform in the middle and we are good to go.
	% Basically this transforms back from the camera position to the frame origin, then
	% does the frame transformation, then re-transforms back out to the camera position. Bam.
	tform = tform_f_cam * frame_transform * tform_cam_f
end
	