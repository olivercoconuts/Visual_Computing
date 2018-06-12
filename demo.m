''' Decode and reconstruct 3D points ''';
% reconstruct takes the scanning directory and returns an object
grab_0 = reconstruct('manny/grab_0/');
grab_1 = reconstruct('manny/grab_1/');
grab_2 = reconstruct('manny/grab_2/');
grab_3 = reconstruct('manny/grab_3/');
grab_4 = reconstruct('manny/grab_4/');


''' Clean meshes generated ''';
% mesh taks a mesh, a bounding box object, and a triangle threshold
% 
grab_0 = mesh(grab_0,[80 200 -300 100 480 650],35);
grab_1 = mesh(grab_1,[0 200 -300 70 400 750],40);
grab_2 = mesh(grab_2,[50 200 -300 70 500 750],25);
grab_3 = mesh(grab_3,[110 220 -300 70 580 700],11);
grab_4 = mesh(grab_4,[140 260 -300 70 500 660],20);

''' Aligned meshes manually ''';
% grab_1 = buildrotation(0,-50,0)*grab_1;
% added to buildrotation: thx = deg2rad(thx);
%                         thy = deg2rad(thy);
%                         thz = deg2rad(thz);
% grab_1 = grab_1 + [30;5;50]

% But found not precise, used meshlab later

''' Align meshes using meshlab ''';

''' Further clean aligned meshes using meshlab ''';

''' Executed Poisson Reconstruction ''';
% run on command line:
% PoissonRecon.x64.exe --in with_arm.ply --out result.ply 
% --depth 10 --pointWeight 2

''' Finished '''
ptCloud = pcread('ply/result.ply');
pcshow(ptCloud);