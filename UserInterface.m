function varargout = UserInterface(varargin)
% USERINTERFACE MATLAB code for UserInterface.fig
%      USERINTERFACE, by itself, creates a new USERINTERFACE or raises the existing
%      singleton*.
%
%      H = USERINTERFACE returns the handle to a new USERINTERFACE or the handle to
%      the existing singleton*.
%
%      USERINTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERINTERFACE.M with the given input arguments.
%
%      USERINTERFACE('Property','Value',...) creates a new USERINTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UserInterface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UserInterface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UserInterface

% Last Modified by GUIDE v2.5 23-May-2016 02:31:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UserInterface_OpeningFcn, ...
                   'gui_OutputFcn',  @UserInterface_OutputFcn, ...
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


% --- Executes just before UserInterface is made visible.
function UserInterface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UserInterface (see VARARGIN)

% Choose default command line output for UserInterface
handles.output = hObject;
 set(handles.bt_Stop,'Enable','off') 
 set(handles.bt_Start,'Enable','off') 

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UserInterface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UserInterface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in ed_dirsel.
function ed_dirsel_Callback(hObject, eventdata, handles)
% hObject    handle to ed_dirsel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ed_dirsel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ed_dirsel
 set(handles.bt_Start,'Enable','off') 


% --- Executes during object creation, after setting all properties.
function ed_dirsel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_dirsel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_MeanRPM_Callback(hObject, eventdata, handles)
% hObject    handle to ed_MeanRPM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_MeanRPM as text
%        str2double(get(hObject,'String')) returns contents of ed_MeanRPM as a double

 set(handles.bt_Start,'Enable','off') 

% --- Executes during object creation, after setting all properties.
function ed_MeanRPM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_MeanRPM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_AccTime_Callback(hObject, eventdata, handles)
% hObject    handle to ed_AccTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_AccTime as text
%        str2double(get(hObject,'String')) returns contents of ed_AccTime as a double
 set(handles.bt_Start,'Enable','off') 


% --- Executes during object creation, after setting all properties.
function ed_AccTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_AccTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_ContRunTime_Callback(hObject, eventdata, handles)
% hObject    handle to ed_ContRunTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_ContRunTime as text
%        str2double(get(hObject,'String')) returns contents of ed_ContRunTime as a double
 set(handles.bt_Start,'Enable','off') 


% --- Executes during object creation, after setting all properties.
function ed_ContRunTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_ContRunTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_LibrationAmplitude_Callback(hObject, eventdata, handles)
% hObject    handle to ed_LibrationAmplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_LibrationAmplitude as text
%        str2double(get(hObject,'String')) returns contents of ed_LibrationAmplitude as a double
 set(handles.bt_Start,'Enable','off') 


% --- Executes during object creation, after setting all properties.
function ed_LibrationAmplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_LibrationAmplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_LibrationPeriod_Callback(hObject, eventdata, handles)
% hObject    handle to ed_LibrationPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_LibrationPeriod as text
%        str2double(get(hObject,'String')) returns contents of ed_LibrationPeriod as a double


% --- Executes during object creation, after setting all properties.
function ed_LibrationPeriod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_LibrationPeriod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ed_LibrationRunTime_Callback(hObject, eventdata, handles)
% hObject    handle to ed_LibrationRunTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_LibrationRunTime as text
%        str2double(get(hObject,'String')) returns contents of ed_LibrationRunTime as a double


% --- Executes during object creation, after setting all properties.
function ed_LibrationRunTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_LibrationRunTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_Plot.
function bt_Plot_Callback(hObject, eventdata, handles)
% hObject    handle to bt_Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.ValuesOK=0;
handles=vpl_ValuesValidation(handles);
guidata(hObject,handles)

if handles.ValuesOK == 1
set(handles.bt_Start,'Enable','on') 

end

% --- Executes on button press in bt_Start.
function bt_Start_Callback(hObject, eventdata, handles)
% hObject    handle to bt_Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bt_Stop,'Enable','on')
set(handles.bt_Plot,'Enable','off')
set(handles.bt_Start,'Enable','off')
set(handles.ed_MeanRPM, 'Enable', 'off')
set(handles.ed_AccTime, 'Enable', 'off')
set(handles.ed_ContRunTime, 'Enable', 'off')
set(handles.ed_LibrationAmplitude, 'Enable', 'off')
set(handles.ed_LibrationPeriod, 'Enable', 'off')
set(handles.ed_LibrationRunTime, 'Enable', 'off')
set(handles.ed_UpdateRate, 'Enable', 'off')
set(handles.ed_dirsel, 'Enable', 'off')

disp('start')








% --- Executes on button press in bt_Stop.
function bt_Stop_Callback(hObject, eventdata, handles)
% hObject    handle to bt_Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 set(handles.bt_Stop,'Enable','off')
 set(handles.bt_Plot,'Enable','on') 
 set(handles.bt_Start,'Enable','off')
 
 set(handles.ed_MeanRPM, 'Enable', 'on')
set(handles.ed_AccTime, 'Enable', 'on')
set(handles.ed_ContRunTime, 'Enable', 'on')
set(handles.ed_LibrationAmplitude, 'Enable', 'on')
set(handles.ed_LibrationPeriod, 'Enable', 'on')
set(handles.ed_LibrationRunTime, 'Enable', 'on')
set(handles.ed_UpdateRate, 'Enable', 'on')
set(handles.ed_dirsel, 'Enable', 'on')

get(handles.ed_dirsel,'Value')
function ed_UpdateRate_Callback(hObject, eventdata, handles)
% hObject    handle to ed_UpdateRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_UpdateRate as text
%        str2double(get(hObject,'String')) returns contents of ed_UpdateRate as a double


% --- Executes during object creation, after setting all properties.
function ed_UpdateRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_UpdateRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
