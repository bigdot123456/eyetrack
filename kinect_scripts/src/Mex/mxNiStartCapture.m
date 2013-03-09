% This function mxNiStartCapture, can be used to capture the Kinect streams, 
% such as image, IR and depth. 
%
%  CaptureHandle = mxNiStartCapture(KinectHandles,Filename);
%
% inputs,
%   KinectHandles : Array with pointers to kinect node objects generated by
%          mxNiCreateContext, such as main, image, IR, Depth and User node.
%   Filename : The filename to which you want to capture the stream.
%
% outputs,
%   CaptureHandle : A handle to a OpenNI recorder
%
% See also mxNiCreateContext, mxNiUpdateContext, mxNiDepth, mxNiPhoto,
%		mxNiInfrared, mxNiSkeleton, compile_cpp_files
%
% Mex-Wrapper is written by D.Kroon University of Twente (March 2011)  