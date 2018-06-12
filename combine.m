M = grab_0;
D = grab_3;
n = size(D,2);


figure(1); clf;
plot3(M(1,:),M(2,:),M(3,:),'bo',D(1,:),D(2,:),D(3,:),'r.');
axis equal;
xlabel('x'); ylabel('y'); zlabel('z');