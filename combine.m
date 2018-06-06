% X = [grab_0 R*grab_3+ repmat(t,1,size(grab_3,2))];
X = grab_0;
X2 = grab_4;


figure(1); clf;
subplot(2,2,1);
plot3(X(1,:),X(2,:),X(3,:),'bo',X2(1,:),X2(2,:),X2(3,:),'r.');
axis equal;
xlabel('x'); ylabel('y'); zlabel('z');