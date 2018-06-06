% load cleaned_mesh/grab_3_smooth.mat

figure(1); clf;
xColor = 0.7*ones(size(X,2),3);
% set(gcf,'renderer','opengl')
% h = trimesh(tri,X(1,:),X(2,:),X(3,:),'edgecolor','k','facecolor','w');
h = trimesh(tri,X(1,:),X(2,:),X(3,:),'facevertexcdata',xColor,'edgecolor','interp','facecolor','interp');
axis image; axis vis3d;
set(gca,'projection','perspective')
set(gca,'CameraPosition',10*camL.t);
set(gca,'CameraUpVector',[0 -1 0]);
set(gca,'CameraViewAngle',8);
lighting phong;
shading interp;
camlight headlight;  


figure(1); clf;
h = trisurf(tri,X(1,:),X(2,:),X(3,:));
set(h,'edgecolor','none')
set(gca,'projection','perspective')
axis image; axis vis3d;
camorbit(45,0);
camorbit(0,-120);
camroll(-8);

lighting flat;
shading interp;
material dull;
camlight headlight;