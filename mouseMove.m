function mouseMove (object, eventdata)
C = get (gca, 'CurrentPoint');

global mousePosX;
global mousePosY;
mousePosX = C(1,1);
mousePosY = C(1,2);

assignin('base','mousePosX',C(1,1));
assignin('base','mousePosY',C(1,2));
end

