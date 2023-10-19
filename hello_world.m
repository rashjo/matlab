function varargout = hello_world(varargin)
% HELLO_WORLD MATLAB code for hello_world.fig
%      HELLO_WORLD, by itself, creates a new HELLO_WORLD or raises the existing
%      singleton*.
%
%      H = HELLO_WORLD returns the handle to a new HELLO_WORLD or the handle to
%      the existing singleton*.
%
%      HELLO_WORLD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELLO_WORLD.M with the given input arguments.
%
%      HELLO_WORLD('Property','Value',...) creates a new HELLO_WORLD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hello_world_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hello_world_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hello_world

% Last Modified by GUIDE v2.5 24-Nov-2020 09:49:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hello_world_OpeningFcn, ...
                   'gui_OutputFcn',  @hello_world_OutputFcn, ...
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


% --- Executes just before hello_world is made visible.
function hello_world_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hello_world (see VARARGIN)

% Choose default command line output for hello_world
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hello_world wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hello_world_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.output_line,'String','Hello World!!')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.output_line,'String','')

