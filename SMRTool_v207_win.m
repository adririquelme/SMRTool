function varargout = SMRTool_v207_win(varargin)
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
%    SMRTool_v207_win, Copyright (C) 2015 Adrián Riquelme Guill
%    SMRTool_v207_win comes with ABSOLUTELY NO WARRANTY.
%    This is free software, and you are welcome to redistribute it
%    under certain conditions.
% SMRTOOL_V207_WIN MATLAB code for SMRTool_v207_win.fig
%      SMRTOOL_V207_WIN, by itself, creates a new SMRTOOL_V207_WIN or raises the existing
%      singleton*.
%
%      H = SMRTOOL_V207_WIN returns the handle to a new SMRTOOL_V207_WIN or the handle to
%      the existing singleton*.
%
%      SMRTOOL_V207_WIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMRTOOL_V207_WIN.M with the given input arguments.
%
%      SMRTOOL_V207_WIN('Property','Value',...) creates a new SMRTOOL_V207_WIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SMRTool_v207_win_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SMRTool_v207_win_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SMRTool_v207_win

% Last Modified by GUIDE v2.5 20-Mar-2019 10:14:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SMRTool_v207_win_OpeningFcn, ...
                   'gui_OutputFcn',  @SMRTool_v207_win_OutputFcn, ...
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


% --- Executes just before SMRTool_v207_win is made visible.
function SMRTool_v207_win_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SMRTool_v207_win (see VARARGIN)

% Choose default command line output for SMRTool_v207_win
handles.output = hObject;

% cargo las imágenes
A = imread('img/insert','bmp');
set(handles.pushbutton_addplane,'cdata',A);
A = imread('img/delete','bmp');
set(handles.pushbutton_removeplane,'cdata',A);
A = imread('img/moveup','bmp');
set(handles.pushbutton_moveup,'cdata',A);
A = imread('img/movedown','bmp');
set(handles.pushbutton_movedown,'cdata',A);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SMRTool_v207_win wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SMRTool_v207_win_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function box_rmrb_Callback(hObject, eventdata, handles)
% hObject    handle to box_rmrb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton_SMR_Callback(hObject, eventdata, handles);
set(handles.slider_rmrb,'Value',str2double(get(hObject,'String'))/100);
% Hints: get(hObject,'String') returns contents of box_rmrb as text
%        str2double(get(hObject,'String')) returns contents of box_rmrb as a double


% --- Executes during object creation, after setting all properties.
function box_rmrb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_rmrb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_rmrb_Callback(hObject, eventdata, handles)
% hObject    handle to slider_rmrb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rmrb = floor(get(hObject,'Value')*(get(hObject,'Max')-get(hObject,'Min'))*100);
set(handles.box_rmrb,'String',rmrb);
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_rmrb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_rmrb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function box_alphas_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton_SMR_Callback(hObject, eventdata, handles);
set(handles.slider_alphas,'Value',str2double(get(hObject,'String'))/359);
% Hints: get(hObject,'String') returns contents of box_alphas as text
%        str2double(get(hObject,'String')) returns contents of box_alphas as a double


% --- Executes during object creation, after setting all properties.
function box_alphas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_alphas_Callback(hObject, eventdata, handles)
% hObject    handle to slider_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alphas = floor(get(hObject,'Value')*(get(hObject,'Max')-get(hObject,'Min'))*359);
set(handles.box_alphas,'String',alphas);
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_alphas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function box_betas_Callback(hObject, eventdata, handles)
% hObject    handle to box_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton_SMR_Callback(hObject, eventdata, handles);
set(handles.slider_betas,'Value',str2double(get(hObject,'String'))/90);
% Hints: get(hObject,'String') returns contents of box_betas as text
%        str2double(get(hObject,'String')) returns contents of box_betas as a double


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


% --- Executes on slider movement.
function slider_betas_Callback(hObject, eventdata, handles)
% hObject    handle to slider_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
betas = floor(get(hObject,'Value')*(get(hObject,'Max')-get(hObject,'Min'))*90);
set(handles.box_betas,'String',betas);
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_betas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function box_betaj_Callback(hObject, eventdata, handles)
% hObject    handle to box_betaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton_SMR_Callback(hObject, eventdata, handles);
set(handles.slider_betaj,'Value',str2double(get(hObject,'String'))/90);
% Hints: get(hObject,'String') returns contents of box_betaj as text
%        str2double(get(hObject,'String')) returns contents of box_betaj as a double


% --- Executes during object creation, after setting all properties.
function box_betaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_betaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_betaj_Callback(hObject, eventdata, handles)
% hObject    handle to slider_betaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
betaj = floor(get(hObject,'Value')*(get(hObject,'Max')-get(hObject,'Min'))*90);
set(handles.box_betaj,'String',betaj);
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_betaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_betaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function box_alphaj_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pushbutton_SMR_Callback(hObject, eventdata, handles);
set(handles.slider_alphaj,'Value',str2double(get(hObject,'String'))/359);
% Hints: get(hObject,'String') returns contents of box_alphaj as text
%        str2double(get(hObject,'String')) returns contents of box_alphaj as a double


% --- Executes during object creation, after setting all properties.
function box_alphaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_alphaj_Callback(hObject, eventdata, handles)
% hObject    handle to slider_alphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
alphaj = floor(get(hObject,'Value')*(get(hObject,'Max')-get(hObject,'Min'))*359);
set(handles.box_alphaj,'String',alphaj);
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_alphaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_alphaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to box_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_betas as text
%        str2double(get(hObject,'String')) returns contents of box_betas as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_betas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_alphas as text
%        str2double(get(hObject,'String')) returns contents of box_alphas as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_alphas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton_SMR.
function pushbutton_SMR_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_SMR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Primero tomo los datos
RMRb = str2double(get(handles.box_rmrb,'String'));
alphas = str2double(get(handles.box_alphas,'String'));
betas =str2double(get(handles.box_betas,'String'));
alphaj=str2double(get(handles.box_alphaj,'String'));
betaj = str2double(get(handles.box_betaj,'String'));
% calculo los ángulos auxiliares
[ Acoeff1 ] = f_Acoeff1( alphas, alphaj );
[ Ccoeff3 ] = f_Ccoeff3( alphas, alphaj, betas,betaj );
% los pongo en las casillas que toquen
set(handles.text_A,'String',num2str(Acoeff1));
set(handles.text_B,'String',num2str(betaj));
set(handles.text_C,'String',num2str(Ccoeff3));
% calculo los coeficientes
[ coeff1 ] = f_coeff1( alphas, alphaj );
[ coeff1tomas ] = f_coeff1tomas( alphas, alphaj);
[ coeff2 ] = f_coeff2( alphas, alphaj, betaj );
[ coeff2tomas ] = f_coeff2tomas( alphas, alphaj, betaj );
[ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj );
[ coeff3tomas ] = f_coeff3tomas( alphas, alphaj, betas, betaj );
[ tiporotura ] = f_tiporotura( alphas, alphaj );
F1F2F3Romana = coeff1*coeff2*coeff3;
F1F2F3Tomas = coeff1tomas*coeff2tomas*coeff3tomas;
% los pongo en las casillas correspondientes
set(handles.box_F1,'String',num2str(coeff1));
set(handles.box_F1tomas,'String',num2str(coeff1tomas));
set(handles.box_F2,'String',num2str(coeff2));
set(handles.box_F2tomas,'String',num2str(coeff2tomas));
set(handles.box_F3,'String',num2str(coeff3));
set(handles.box_F3tomas,'String',num2str(coeff3tomas));
set(handles.box_FM,'String',tiporotura);
set(handles.box_F1F2F3Romana,'String',num2str(F1F2F3Romana));
set(handles.box_F1F2F3Tomas,'String',num2str(F1F2F3Tomas));
% calculo el SMR y lo pongo
% redondeo a la parte entera
coeff4 = str2double(get(handles.box_F4,'String'));
SMRRomana = max(0,floor(RMRb + coeff1 * coeff2 * coeff3 + coeff4));
SMRRomana = min(SMRRomana,100);
SMRTomas = max(0,floor(RMRb + coeff1tomas * coeff2tomas * coeff3tomas + coeff4));
SMRTomas = min(SMRTomas, 100);
set(handles.box_SMRRomana,'String',num2str(SMRRomana));
set(handles.box_SMRTomas,'String',num2str(SMRTomas));
% calculo la clasificación para cada uno
[ classsmr, description, stability, failures, support ] = f_classsmr( SMRRomana);
set(handles.box_classromana,'String',classsmr);
set(handles.box_descriptionromana,'String',description);
set(handles.box_stabilityromana,'String',stability);
set(handles.box_failuresromana,'String',failures);
set(handles.box_supportromana,'String',support);
[ classsmr, description, stability, failures, support ] = f_classsmr( SMRTomas);
set(handles.box_classtomas,'String',classsmr);
set(handles.box_descriptiontomas,'String',description);
set(handles.box_stabilitytomas,'String',stability);
set(handles.box_failurestomas,'String',failures);
set(handles.box_supporttomas,'String',support);
% dibujo los gráficos
dibujadipdirections_Callback(hObject, eventdata, handles);
dibujacroquis_Callback(hObject, eventdata, handles);



% --- Executes on selection change in popupmenu_excavation.
function popupmenu_excavation_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_excavation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
excavation = get(hObject,'Value');
switch excavation
    case 1
        F4 = 15;
    case 2
        F4 = 10;
    case 3
        F4 = 8;
    case 4
        F4 = 0;
    case 5
        F4 = -8;
end
set(handles.box_F4,'String',num2str(F4));
set(handles.box_F4tomas,'String',num2str(F4));
pushbutton_SMR_Callback(hObject, eventdata, handles);
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_excavation contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_excavation


% --- Executes during object creation, after setting all properties.
function popupmenu_excavation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_excavation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dibujadipdirections_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_SMR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Primero tomo los datos
alphas = str2double(get(handles.box_alphas,'String'));
alphaj = str2double(get(handles.box_alphaj,'String'));
% dibujo el círculo
theta = 0:0.01:2*pi;
rho = zeros(size(theta));
rho(:) = 1; % Hago el círculo de radio unidad
% dibujamos la figura
cla(handles.axes1,'reset'); %limpio primero la casa
polar(handles.axes1,theta,rho,'--r');
delete(findall(handles.axes1,'type','text'));
% le pongo sus labels
alpha0 = 0:pi/6:(2*pi-pi/12);
alpha = pi/2 - alpha0;
etiqueta = 0:360/12:(330);
x = 1.1*cos(alpha);
y = 1.1*sin(alpha);
[~,n]=size(alpha);
for i=1:n
    if etiqueta(i)==0 || etiqueta(i)==pi
        text(x(i),y(i),num2str(etiqueta(i)),'HorizontalAlignment','Center');
    else
       if etiqueta(i)>0 && etiqueta(i)<180
           text(x(i),y(i),num2str(etiqueta(i)),'HorizontalAlignment','Left');
       else
           text(x(i),y(i),num2str(etiqueta(i)),'HorizontalAlignment','Right');
       end
    end
end
title(handles.axes1,'Dip directions');
hold on;
% dibujo el talud
% Xs=[0 cos(pi/2-alphas/180*pi) -cos(alphas/180*pi) cos(alphas/180*pi)];
% Ys=[0 sin(pi/2-alphas/180*pi) -sin(alphas/180*pi) sin(alphas/180*pi)];
Xs=[0 cos(pi/2-alphas/180*pi)];
Ys=[0 sin(pi/2-alphas/180*pi)];
% dibujo la discontinuidad
Xj=[0 cos(pi/2-alphaj/180*pi)];
Yj=[0 sin(pi/2-alphaj/180*pi)];
g=plot(handles.axes1,Xs,Ys,Xj,Yj);
set(g(1),'LineWidth',1.5);
set(g(2),'LineWidth',1.5);
hleg1 = legend(g,'Slope','Discontinuity');
set(hleg1,'Location','BestOutside','FontSize',10);

function dibujacroquis_Callback(hObject, eventdata, handles)
% Primero tomo los datos
alphas = str2double(get(handles.box_alphas,'String'));
alphaj=str2double(get(handles.box_alphaj,'String'));
betas = str2double(get(handles.box_betas,'String'));
betaj=str2double(get(handles.box_betaj,'String'));
% determino el talud
H = 10; % altura de representación
xinterseccion = H/tan(betas*pi/180);
Xs=[-H/2 0 xinterseccion (xinterseccion+H/2)];
Ys=[0 0 H H];
xincdisc = H/(2*tan(betaj/180*pi));
alpha=atan(H/(xinterseccion+H))*180/pi;
if abs(alphas-alphaj)<90
    if betaj>betas
        Xj = [xinterseccion/2 (xinterseccion/2-xincdisc)];
        Yj = [H/2 0];
    else
        if betaj<alpha
            Xj=[xinterseccion/2 (xinterseccion+H/2)];
            Yj=[H/2 (H/2+(xinterseccion/2+H/2)*tan(betaj/180*pi))];
        else
            Xj = [xinterseccion/2 (xinterseccion/2+xincdisc)];
            Yj = [H/2 H];
        end
    end
else
    if betaj < alpha
        Xj=[xinterseccion/2 (xinterseccion+H/2)];
        Yj=[H/2 (H/2-(xinterseccion/2+H/2)*tan(betaj/180*pi))];
    else
        Xj = [xinterseccion/2 (xinterseccion/2+xincdisc)];
        Yj = [H/2 0];
    end
end

% dibujamos la figura
cla(handles.axes2,'reset'); %limpio primero la casa
g=plot(handles.axes2,Xs,Ys,Xj,Yj);
set(g(1),'LineWidth',1.5);
set(g(2),'LineWidth',1.5);
axis(handles.axes2,'square','equal');


% --- Executes on button press in pushbutton_logoua.
function pushbutton_logoua_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_logoua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% abro la web de la UA
web('http://www.ua.es/','-browser');


% --- Executes on button press in pushbutton_cc.
function pushbutton_cc_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_cc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_wedges.
function pushbutton_wedges_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_wedges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rmrb=str2double(get(handles.box_rmrb,'String'));
alphas=str2double(get(handles.box_alphas,'String'));
betas=str2double(get(handles.box_betas,'String'));
alphaj=str2double(get(handles.box_alphaj,'String'));
betaj=str2double(get(handles.box_betaj,'String'));
setappdata(0,'global_rmrb',rmrb);
setappdata(0,'global_alphas',alphas);
setappdata(0,'global_betas',betas);
setappdata(0,'global_alphaj',alphaj);
setappdata(0,'global_betaj',betaj);
h = gui_wedgescalculator;
waitfor(h);
walphaj=getappdata(0,'global_walphaj');
wbetaj=getappdata(0,'global_wbetaj');
if isempty(walphaj) || isempty(wbetaj)
    % no ha devuelto valor y no hago nada
else    
    % devuelve valor y lo guardo
    set(handles.box_alphaj,'String',num2str(walphaj));
    set(handles.box_betaj,'String',num2str(wbetaj));
end


% --- Executes on button press in pushbutton_addplane.
function pushbutton_addplane_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_addplane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
planes=get(handles.uitable_planes,'Data');
v=[0 0 0 0];
planes=[planes;  v];
set(handles.uitable_planes,'Data',planes);



% --- Executes on button press in pushbutton_removeplane.
function pushbutton_removeplane_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_removeplane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% plano seleccionado
try
    planoseleccionado = handles.planoseleccionado;
    planos = get(handles.uitable_planes,'Data');
    planos (planoseleccionado,:)=[];
    set(handles.uitable_planes,'Data',planos);
catch error
    % si falla hago esto
end

% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui_about;


% --- Executes during object creation, after setting all properties.
function uitable_slope_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable_slope (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
v=[134 70];
set(hObject,'Data',v);


% --- Executes during object creation, after setting all properties.
function uitable_planes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable_planes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
v=[322 89 44; 135 26 45; 80 70 47; 124 57 49; 247 77 42];
set(hObject,'Data',v);


% --- Executes during object creation, after setting all properties.
function uitable_wedges_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable_wedges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when entered data in editable cell(s) in uitable_planes.
function uitable_planes_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable_planes (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
try
    idplano = eventdata.Indices(1);
    slope = get(handles.uitable_slope,'Data');
    planes = get(handles.uitable_planes,'Data');
    RMRb = planes(idplano,3);
    alphas = slope(1,1);
    betas = slope(1,2);
    alphaj= planes(idplano,1);
    betaj = planes(idplano,2);
    % calculo los ángulos auxiliares
    % [ Acoeff1 ] = f_Acoeff1( alphas, alphaj );
    % [ Ccoeff3 ] = f_Ccoeff3( alphas, alphaj, betas,betaj );
    % calculo los coeficientes
    [ coeff1 ] = f_coeff1( alphas, alphaj );
    [ coeff2 ] = f_coeff2( alphas, alphaj, betaj );
    [ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj );
    % [ tiporotura ] = f_tiporotura( alphas, alphaj );
    % F1F2F3Romana = coeff1*coeff2*coeff3;
    % calculo el SMR y lo pongo
    % redondeo a la parte entera
    coeff4 = str2double(get(handles.box_F4,'String'));
    SMRRomana = max(0,floor(RMRb + coeff1 * coeff2 * coeff3 + coeff4));
    planes(idplano,4)=SMRRomana;
    set(handles.uitable_planes,'Data',planes);
catch error
    errordlg(['Error: ' error.identifier]);
    set(handles.text_status,'String','Waiting orders ...');
end



% --- Executes when selected cell(s) is changed in uitable_planes.
function uitable_planes_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable_planes (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
% guardo la selección
try
pos=eventdata.Indices(1);
handles.planoseleccionado = pos;
catch error
end
% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in pushbutton_moveup.
function pushbutton_moveup_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_moveup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
planes = get(handles.uitable_planes,'Data');
planoorigen = handles.planoseleccionado;
[n,~]=size(planes);
% preparo los índices de los polos que quiero mover
if planoorigen~=1 && n~=1
    planodestino=planoorigen-1;
    [planes]=swap(planes,1,planoorigen,planodestino);
    % pongo el resultado en la tabla
    set(handles.uitable_planes,'Data',planes);
    handles.planoseleccionado = planodestino;
end
% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in pushbutton_movedown.
function pushbutton_movedown_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_movedown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
planes = get(handles.uitable_planes,'Data');
planoorigen = handles.planoseleccionado;
[n,~]=size(planes);
% preparo los índices de los polos que quiero mover
if planoorigen~=n && n~=1
    planodestino=planoorigen+1;
    [planes]=swap(planes,1,planoorigen,planodestino);
    % pongo el resultado en la tabla
    set(handles.uitable_planes,'Data',planes);
    handles.planoseleccionado = planodestino;
end
% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in pushbutton_calculatewedges.
function pushbutton_calculatewedges_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_calculatewedges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    % calculo todos los smr por si acaso
    
    slope = get(handles.uitable_slope,'Data');
    planes = get(handles.uitable_planes,'Data');
    [nplanos,~]=size(planes);
    for i=1:nplanos
        RMRb = planes(i,3);
        alphas = slope(1,1);
        betas = slope(1,2);
        alphaj= planes(i,1);
        betaj = planes(i,2);
        % calculo los coeficientes
        [ coeff1 ] = f_coeff1( alphas, alphaj );
        [ coeff2 ] = f_coeff2( alphas, alphaj, betaj );
        [ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj );
        % calculo el SMR y lo pongo
        % redondeo a la parte entera
        coeff4 = str2double(get(handles.box_F4,'String'));
        SMRRomana = max(0,floor(RMRb + coeff1 * coeff2 * coeff3 + coeff4));
        planes(i,4)=SMRRomana;
    end
    % guardo el resultado en la tabla
    set(handles.uitable_planes,'Data',planes);
    
    % calculo ahora las cuñas y sus SMR
    slope = get(handles.uitable_slope,'Data');
    alphas=slope(1,1);
    betas=slope(1,2);
    planes = get(handles.uitable_planes,'Data');
    [nplanos,~]=size(planes);
    % determino el número total de cuñas
    tamanyo = 0;
    for i=1:(nplanos-1)
        tamanyo = tamanyo +i;
    end
    wedges = zeros(1,8);
    contador = 1;
    for i=1:(nplanos-1)
        alphaj1=planes(i,1);
        betaj1=planes(i,2);
        rmrb1=planes(i,3);
        for j=i+1:nplanos
            alphaj2=planes(j,1);
            betaj2=planes(j,2);
            rmrb2=planes(j,3);
            % calculo la cuña
            [ w,b, angle, possible ] = f_calculatewedge( alphas, betas, alphaj1, betaj1, alphaj2, betaj2 );
            % calculo el SMR de la cuña
            [ coeff1 ] = f_coeff1( alphas, w );
            [ coeff2 ] = f_coeff2( alphas, w, b );
            [ coeff3 ] = f_coeff3( alphas, w, betas, b );
            [ tiporotura ] = f_tiporotura( alphas, w );
            % F1F2F3Romana = coeff1*coeff2*coeff3;
            % calculo el SMR y lo pongo
            % redondeo a la parte entera
            coeff4 = str2double(get(handles.box_F4,'String'));
            RMRb = min(rmrb1, rmrb2);
            if strcmp(tiporotura,'Toppling')
                SMRRomana = 100;
            else
                SMRRomana = max(0,floor(RMRb + coeff1 * coeff2 * coeff3 + coeff4));
            end
            % pongo la salida donde toca
            wedges(contador,1)=i;
            wedges(contador,2)=j;
            wedges(contador,3)=w;
            wedges(contador,4)=b;
            wedges(contador,5)=min(rmrb1,rmrb2);
            wedges(contador,6)=angle;
            wedges(contador,7)=possible;
            wedges(contador,8)=SMRRomana;
            contador = contador +1;
            
        end
    end
    set(handles.uitable_wedges,'Data',wedges);
catch
end


% --- Executes on slider movement.
function slider_elementid_Callback(hObject, eventdata, handles)
% hObject    handle to slider_elementid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
id=round(get(hObject,'Value'));
set(handles.box_elementid,'String',num2str(id));
% ejecuto el callback de ese box para que guarde los números
box_elementid_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_elementid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_elementid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in radiobutton_plane.
function radiobutton_plane_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_plane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
boton = get(hObject,'Value');
if boton == 1
    set(handles.radiobutton_wedge,'Value',0);
    planes=get(handles.uitable_planes,'Data');
    [n,~]=size(planes);
    set(handles.slider_elementid,'Min',1,'Max',n,'Value',1,'SliderStep',[1 1]/(n-1));
    set(handles.box_elementid,'String','1');
    box_elementid_Callback(hObject, eventdata, handles)
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton_plane


% --- Executes on button press in radiobutton_wedge.
function radiobutton_wedge_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton_wedge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
boton = get(hObject,'Value');
if boton == 1
    set(handles.radiobutton_plane,'Value',0);
    wedges=get(handles.uitable_wedges,'Data');
    [n,~]=size(wedges);
    set(handles.slider_elementid,'Min',1,'Max',n,'Value',1,'SliderStep',[1 1]/(n-1));
    set(handles.box_elementid,'String','1');
    box_elementid_Callback(hObject, eventdata, handles);
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton_wedge



function box_elementid_Callback(hObject, eventdata, handles)
% hObject    handle to box_elementid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
id=str2double(get(handles.box_elementid,'String'));
if get(handles.radiobutton_plane,'Value')==0 && get(handles.radiobutton_wedge,'Value')==0
    % no hago nada
else
    if get(handles.radiobutton_plane,'Value')==1
        % es un plano
        planos=get(handles.uitable_planes,'Data');
        alphaj=planos(id,1);
        betaj=planos(id,2);
        rmrb=planos(id,3);
    else
        if get(handles.radiobutton_wedge,'Value')==1
            % es una cuña
            wedges=get(handles.uitable_wedges,'Data');
            alphaj=wedges(id,3);
            betaj=wedges(id,4);
            rmrb=wedges(id,5);
        end
    end
    slope=get(handles.uitable_slope,'Data');
    alphas=slope(1,1);
    betas=slope(1,2);
    % guardo los valores en los boxes
    set(handles.box_rmrb,'String',num2str(rmrb));
    set(handles.box_alphas,'String',num2str(alphas));
    set(handles.box_betas,'String',num2str(betas));
    set(handles.box_alphaj,'String',num2str(alphaj));
    set(handles.box_betaj,'String',num2str(betaj));
    % calculo toda la gui
    pushbutton_SMR_Callback(hObject, eventdata, handles);
    % Hints: get(hObject,'String') returns contents of box_elementid as text
    %        str2double(get(hObject,'String')) returns contents of box_elementid as a double
    % Update handles structure
    guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function box_elementid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_elementid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_report_Callback(hObject, eventdata, handles)
% hObject    handle to menu_report (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% preparo el archivo de salida
tabla_latex='Report.tex';
fileID=fopen(tabla_latex,'w');
% preparo el talud
slope=get(handles.uitable_slope,'Data');
alphas=slope(1,1);
betas=slope(1,2);
fprintf(fileID,'\\documentclass[preprint,review,12pt,times]{elsarticle} \n');
fprintf(fileID,'\\usepackage{multirow} \n');
fprintf(fileID,'\\usepackage[utf8]{inputenc} \n');
fprintf(fileID,'\\usepackage{amsmath,amsthm} \n');
fprintf(fileID,'\\usepackage{amsfonts} \n');
fprintf(fileID,'\\usepackage{amssymb} \n');
fprintf(fileID,'\\usepackage{latexsym} \n');
fprintf(fileID,'\\usepackage{gensymb} %para poner el símbolo de grados \n');
fprintf(fileID,'\\setlength{\\oddsidemargin}{-2mm} \n');
fprintf(fileID,'\\begin{document} \n');
fprintf(fileID,'\\begin{table} \\begin{scriptsize} \n');	
fprintf(fileID,'\\begin{center}  \n');	
fprintf(fileID,'\\centering \n');	
fprintf(fileID,['\\caption{ SMRTool report. Slope:(',num2str(alphas),'/',num2str(betas),')} \n']);
fprintf(fileID,'\\begin{tabular}{*{14}{c}}  \n');	
% preparo los planos
fprintf(fileID,'plane/wedge id & dip dir [\\degree] & dip [\\degree] & RMRb & A [\\degree] & B [\\degree] & C [\\degree] & failure & $F_1$ & $F_2$ & $F_3$ & $F_4$ & SMR & Class  \\\\ \\hline \n');	
planos=get(handles.uitable_planes,'Data');
[n,~]=size(planos);
for i=1:n
	alphaj=planos(i,1);
	betaj=planos(i,2);
	rmrb=planos(i,3);
	[ Acoeff1 ] = f_Acoeff1( alphas, alphaj );
	[ Ccoeff3 ] = f_Ccoeff3( alphas, alphaj, betas,betaj );
	[ coeff1 ] = f_coeff1( alphas, alphaj );
	[ coeff2 ] = f_coeff2( alphas, alphaj, betaj );
	[ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj );
	[ tiporotura ] = f_tiporotura( alphas, alphaj );
	F1F2F3Romana = coeff1*coeff2*coeff3;
	coeff4 = str2double(get(handles.box_F4,'String'));
	SMRRomana = max(0,floor(rmrb + coeff1 * coeff2 * coeff3 + coeff4));
	SMRRomana = min(SMRRomana,100);
	[ classsmr, description, stability, failures, support ] = f_classsmr( SMRRomana);
	% guardo los datos
    if strcmp(tiporotura,'Toppling')
        % no hago nada
    else
        % guardo los datos
        tiporotura = 'Planar';
    end
	fprintf(fileID,['$J_', num2str(i), '$ & ', num2str(round(alphaj)), ' & ', num2str(round(betaj)),' & ',num2str(round(rmrb)),' & ',num2str(Acoeff1),' & ',num2str(betaj),' & ',num2str(Ccoeff3),' & ',tiporotura,' & ',num2str(coeff1),' & ', num2str(coeff2),' & ',num2str(coeff3),' & ',num2str(coeff4),' & ',num2str(SMRRomana),' & ',classsmr,' \\\\ \n']);	
end
% preparo las cuñas
wedges=get(handles.uitable_wedges,'Data');
[n,~]=size(wedges);
for i=1:n
	id1 = wedges(i,1);
	id2 = wedges(i,2);
	alphaj=wedges(i,3);
	betaj=wedges(i,4);
	rmrb=wedges(i,5);	
	[ Acoeff1 ] = f_Acoeff1( alphas, alphaj );
	[ Ccoeff3 ] = f_Ccoeff3( alphas, alphaj, betas,betaj );
	[ coeff1 ] = f_coeff1( alphas, alphaj );
	[ coeff2 ] = f_coeff2( alphas, alphaj, betaj );
	[ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj );
	[ tiporotura ] = f_tiporotura( alphas, alphaj );
	F1F2F3Romana = coeff1*coeff2*coeff3;
	coeff4 = str2double(get(handles.box_F4,'String'));
	SMRRomana = max(0,floor(rmrb + coeff1 * coeff2 * coeff3 + coeff4));
	SMRRomana = min(SMRRomana,100);
	[ classsmr, description, stability, failures, support ] = f_classsmr( SMRRomana);
	if strcmp(tiporotura,'Toppling')
        % no hago nada porque la cuña no se puede producir
    else
        % guardo los datos
        tiporotura = 'Wedge';
        fprintf(fileID,['$W_{',num2str(id1),num2str(id2), '}$ & ', num2str(round(alphaj)), ' & ', num2str(round(betaj)),' & ',num2str(round(rmrb)),' & ',num2str(Acoeff1),' & ',num2str(betaj),' & ',num2str(Ccoeff3),' & ',tiporotura,' & ',num2str(coeff1),' & ', num2str(coeff2),' & ',num2str(coeff3),' & ',num2str(coeff4),' & ',num2str(SMRRomana),' & ',classsmr,' \\\\ \n']);	
    end
end
% termino de guardar la tabla de LaTeX
fprintf(fileID,'\\hline'); 
fprintf(fileID,'\\end{tabular}  \n'); 
fprintf(fileID,'\\end{center}  \n');
fprintf(fileID,'\\end{scriptsize} \\end{table}  \n');
fprintf(fileID,'\\end{document}  \n');
% cierro el archivo
fclose(fileID);
