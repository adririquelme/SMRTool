function varargout = gui_about_mac(varargin)
%    Copyright (C) {2015}  {Adrin Riquelme Guill, adririquelme@gmail.com}
%
%    This program is free software; you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation; either version 2 of the License, or
%    any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License along
%   with this program; if not, write to the Free Software Foundation, Inc.,
%   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%    SMRTool, Copyright (C) 2015 Adrin Riquelme Guill
%    SMRTool comes with ABSOLUTELY NO WARRANTY.
%    This is free software, and you are welcome to redistribute it
%    under certain conditions.
% GUI_ABOUT_MAC MATLAB code for gui_about_mac.fig
%      GUI_ABOUT_MAC, by itself, creates a new GUI_ABOUT_MAC or raises the existing
%      singleton*.
%
%      H = GUI_ABOUT_MAC returns the handle to a new GUI_ABOUT_MAC or the handle to
%      the existing singleton*.
%
%      GUI_ABOUT_MAC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_ABOUT_MAC.M with the given input arguments.
%
%      GUI_ABOUT_MAC('Property','Value',...) creates a new GUI_ABOUT_MAC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_about_mac_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_about_mac_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_about_mac

% Last Modified by GUIDE v2.5 18-Mar-2019 15:05:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_about_mac_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_about_mac_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_about_mac is made visible.
function gui_about_mac_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_about_mac (see VARARGIN)

% Choose default command line output for gui_about_mac
handles.output = hObject;
A = imread('img/logouapequenyo','bmp');
set(handles.pushbutton_logoua,'cdata',A);
A = imread('img/cc','bmp');
set(handles.pushbutton_cc,'cdata',A);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_about_mac wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_about_mac_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_logoua.
function pushbutton_logoua_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_logoua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_cc.
function pushbutton_cc_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
