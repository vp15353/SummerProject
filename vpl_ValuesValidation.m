function J=vpl_ValuesValidation(handles)
a=1;
b=1;
c=1;
d=1;
e=1;
f=1;
g=1;
h=1;
handles.AccTime=str2num(get(handles.ed_AccTime,'String'));
if handles.AccTime<=0
    warndlg('Acceleration time must be higher than 0');
    a=0;
end

handles.MeanRPM=str2num(get(handles.ed_MeanRPM,'String'));
if handles.MeanRPM<=0 || handles.MeanRPM>=16
    warndlg('Mean RPM must be between 0 and 16');
    b=0;
end

handles.ContRunTime=str2num(get(handles.ed_ContRunTime,'String'));
if handles.ContRunTime<=0
    warndlg('Continuous run time must be higher than 0');
    c=0;
end

handles.LibrationAmplitude=str2num(get(handles.ed_LibrationAmplitude,'String'));
if handles.LibrationAmplitude<0 || handles.LibrationAmplitude>=handles.MeanRPM
    warndlg('Libration must be higher than 0 lower than Mean RPM');
    d=0;
end


handles.LibrationPeriod=str2num(get(handles.ed_LibrationPeriod,'String'));
if handles.LibrationPeriod<=0
    warndlg('Libration period must be higher than 0');
    e=0;
end

handles.LibrationRunTime=str2num(get(handles.ed_LibrationRunTime,'String'));
if handles.LibrationRunTime<=0
    warndlg('Libration run time must be higher than 0');
    f=0;
end


handles.Direction=(get(handles.ed_dirsel,'Value'));
if handles.Direction==1
    warndlg('You must choose a direction of rotation');
    h=0;
elseif handles.Direction==2
    handles.Direction=1;
elseif handles.Direction==3
    handles.Direction=-1;
end

handles.UpdateRate=str2num(get(handles.ed_UpdateRate,'String'));
if handles.UpdateRate<1 || handles.UpdateRate>16
    warndlg('Update Rate must be between 1 and 16');
    g=0;
end

handles.ValuesOK=a*b*c*d*e*f*g*h;

J=handles;

    
