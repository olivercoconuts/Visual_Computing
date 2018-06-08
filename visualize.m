% load cleaned_mesh/grab_3_smooth.mat

tri = delaunay(X(1,:),X(2,:));

trithresh = 20;   %10mm

fprintf('triangulating from left view\n');
ntri = size(tri,1);
terr = zeros(ntri,1);
for i = 1:ntri
  d1 = sum((X(:,tri(i,1)) - X(:,tri(i,2))).^2);
  d2 = sum((X(:,tri(i,1)) - X(:,tri(i,3))).^2);
  d3 = sum((X(:,tri(i,2)) - X(:,tri(i,3))).^2);
  terr(i) = max([d1 d2 d3]).^0.5;
end
fprintf('\n');
subt = find(terr<trithresh);

fprintf('dropping %2.2f %% of triangles from scan\n',100*(1 - (length(subt)/size(tri,1))));

tri = tri(subt,:);



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