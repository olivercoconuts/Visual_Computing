figure(1); clf;
plot3(grab_0(1,:),grab_0(2,:),grab_0(3,:),'bo',grab_1(1,:),grab_1(2,:),grab_1(3,:),'r.',grab_2(1,:),grab_2(2,:),grab_2(3,:),'g',grab_3(1,:),grab_3(2,:),grab_3(3,:),'y',grab_4(1,:),grab_4(2,:),grab_4(3,:),'p');
axis equal;
xlabel('x'); ylabel('y'); zlabel('z');