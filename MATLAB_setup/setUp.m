%% Enter IP address shown on robot
clear all; clc;
IP = '172.19.232.104';

%Initialise robot
%pb = PiBot(IP);

if ~exist('pb')

    pb = PiBot(IP);

end 


%% Get image 
img = pb.getImageFromCamera(); %save image in img
imshow(img); %show image


%% Move Robot + Encoders
%Forward 1.5 seconds
pb.setMotorSpeeds(40,40)
pause(5)
pb.getMotorTicks()
% 
% %Move Right 1 seconds
% pb.setMotorSpeeds(0,55)
% pause(1.1)
% pb.getMotorTicks()
% 
% % Move Forwards 1.5 seconds
% pb.setMotorSpeeds(40,40)
% pause(1.5)
% pb.getMotorTicks()
%  
% % Turn right 1 second
% pb.setMotorSpeeds(0,54)
% pause(1)
% pb.getMotorTicks()
% 
% % Forwards 1.5 seconds
% pb.setMotorSpeeds(40,40)
% pause(1.5)
% pb.getMotorTicks()
% 
%  % Right 1 second
% pb.setMotorSpeeds(0,55)
% pause(1.1)
% pb.getMotorTicks()
% % Forwards 1.5 seconds
% % Forwards 1.5 seconds
% pb.setMotorSpeeds(40,40)
% pause(2)
% pb.getMotorTicks()
% 
% %Back
% % pb.setMotorSpeeds(-1,-1);
% % pause(2)
% % 
%Stop
pb.stop()