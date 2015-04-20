function varargout = gui_wedgescalculator(varargin)
%    Copyright (C) {2015}  {Adrián Riquelme Guill, adririquelme@gmail.com}
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
%    SMRTool, Copyright (C) 2015 Adrián Riquelme Guill
%    SMRTool comes with ABSOLUTELY NO WARRANTY.
%    This is free software, and you are welcome to redistribute it
%    under certain conditions.
% GUI_WEDGESCALCULATOR MATLAB code for gui_wedgescalculator.fig
%      GUI_WEDGESCALCULATOR, by itself, creates a new GUI_WEDGESCALCULATOR or raises the existing
%      singleton*.
%
%      H = GUI_WEDGESCALCULATOR returns the handle to a new GUI_WEDGESCALCULATOR or the handle to
%      the existing singleton*.
%
%      GUI_WEDGESCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_WEDGESCALCULATOR.M with the given input arguments.
%
%      GUI_WEDGESCALCULATOR('Property','Value',...) creates a new GUI_WEDGESCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_wedgescalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_wedgescalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_wedgescalculator

% Last Modified by GUIDE v2.5 20-Mar-2015 10:01:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_wedgescalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_wedgescalculator_OutputFcn, ...
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


% --- Executes just before gui_wedgescalculator is made visible.
function gui_wedgescalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_wedgescalculator (see VARARGIN)

% Choose default command line output for gui_wedgescalculator
handles.output = hObject;

rmrb1=getappdata(0,'global_rmrb');
set(handles.box_rmrb1,'String',num2str(rmrb1));
alphas=getappdata(0,'global_alphas');
set(handles.box_alphas,'String',num2str(alphas));
betas=getappdata(0,'global_betas');
set(handles.box_betas,'String',num2str(betas));
alphaj1=getappdata(0,'global_alphaj');
set(handles.box_alphaj1,'String',num2str(alphaj1));
betaj1=getappdata(0,'global_betaj');
set(handles.box_betaj1,'String',num2str(betaj1));

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_wedgescalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_wedgescalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function box_alphaj1_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphaj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_alphaj1 as text
%        str2double(get(hObject,'String')) returns contents of box_alphaj1 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_alphaj1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphaj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_betaj1_Callback(hObject, eventdata, handles)
% hObject    handle to box_betaj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_betaj1 as text
%        str2double(get(hObject,'String')) returns contents of box_betaj1 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_betaj1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_betaj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_rmrb1_Callback(hObject, eventdata, handles)
% hObject    handle to box_rmrb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_rmrb1 as text
%        str2double(get(hObject,'String')) returns contents of box_rmrb1 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_rmrb1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_rmrb1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_alphaj2_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphaj2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_alphaj2 as text
%        str2double(get(hObject,'String')) returns contents of box_alphaj2 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_alphaj2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphaj2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_betaj2_Callback(hObject, eventdata, handles)
% hObject    handle to box_betaj2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_betaj2 as text
%        str2double(get(hObject,'String')) returns contents of box_betaj2 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_betaj2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_betaj2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_rmrb2_Callback(hObject, eventdata, handles)
% hObject    handle to box_rmrb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_rmrb2 as text
%        str2double(get(hObject,'String')) returns contents of box_rmrb2 as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_rmrb2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_rmrb2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_alphas_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_alphas as text
%        str2double(get(hObject,'String')) returns contents of box_alphas as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_alphas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_betas_Callback(hObject, eventdata, handles)
% hObject    handle to box_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_betas as text
%        str2double(get(hObject,'String')) returns contents of box_betas as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_betas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_walphaj_Callback(hObject, eventdata, handles)
% hObject    handle to box_walphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_walphaj as text
%        str2double(get(hObject,'String')) returns contents of box_walphaj as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_walphaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_walphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_wbetaj_Callback(hObject, eventdata, handles)
% hObject    handle to box_wbetaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_wbetaj as text
%        str2double(get(hObject,'String')) returns contents of box_wbetaj as a double
pushbutton_calculatewedge_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function box_wbetaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_wbetaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_calculatewedge.
function pushbutton_calculatewedge_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_calculatewedge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alphas=str2double(get(handles.box_alphas,'String'));
betas=str2double(get(handles.box_betas,'String'));
alphaj1=str2double(get(handles.box_alphaj1,'String'));
betaj1=str2double(get(handles.box_betaj1,'String'));
alphaj2=str2double(get(handles.box_alphaj2,'String'));
betaj2=str2double(get(handles.box_betaj2,'String'));
[ w,b, angle, posible ] = f_calculatewedge( alphas, betas, alphaj1, betaj1, alphaj2, betaj2 );
set(handles.box_walphaj,'String',num2str(w));
set(handles.box_wbetaj,'String',num2str(b));
set(handles.box_angle,'String',num2str(angle));
if posible ==0
    posibility = 'Failure is impossible';
else
    posibility = 'Failure possible';
end
set(handles.text_posibility,'String',posibility);



function box_angle_Callback(hObject, eventdata, handles)
% hObject    handle to box_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_angle as text
%        str2double(get(hObject,'String')) returns contents of box_angle as a double


% --- Executes during object creation, after setting all properties.
function box_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
