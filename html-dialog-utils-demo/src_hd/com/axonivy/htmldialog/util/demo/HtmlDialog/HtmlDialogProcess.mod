[Ivy]
17B78A9AA4FC67DE 9.2.0 #module
>Proto >Proto Collection #zClass
Hs0 HtmlDialogProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @UdInit f0 '' #zField
Hs0 @UdProcessEnd f1 '' #zField
Hs0 @UdEvent f3 '' #zField
Hs0 @UdExitEnd f4 '' #zField
Hs0 @PushWFArc f5 '' #zField
Hs0 @GridStep f6 '' #zField
Hs0 @PushWFArc f7 '' #zField
Hs0 @PushWFArc f2 '' #zField
Hs0 @UdInit f8 '' #zField
Hs0 @PushWFArc f9 '' #zField
Hs0 @UdEvent f10 '' #zField
Hs0 @UdProcessEnd f11 '' #zField
Hs0 @PushWFArc f12 '' #zField
>Proto Hs0 Hs0 HtmlDialogProcess #zField
Hs0 f0 guid 17B78A9AA545D86F #txt
Hs0 f0 method start(com.axonivy.htmldialog.util.demo.Data) #txt
Hs0 f0 inParameterDecl '<com.axonivy.htmldialog.util.demo.Data demoData> param;' #txt
Hs0 f0 inParameterMapAction 'out.demoData=param.demoData;
' #txt
Hs0 f0 outParameterDecl '<com.axonivy.htmldialog.util.demo.Data demoData> result;' #txt
Hs0 f0 outParameterMapAction 'result.demoData=in.demoData;
' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 83 51 26 26 -16 15 #rect
Hs0 f1 339 51 26 26 0 12 #rect
Hs0 f3 guid 17B78A9AA602CE04 #txt
Hs0 f3 actionTable 'out=in;
' #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Hs0 f3 83 275 26 26 -14 15 #rect
Hs0 f4 211 275 26 26 0 12 #rect
Hs0 f5 109 288 211 288 #arcP
Hs0 f6 actionTable 'out=in;
' #txt
Hs0 f6 actionCode 'import com.axonivy.htmldialog.util.ReadOnlyModeListener;


in.readOnlyListener = new ReadOnlyModeListener("form", in.isReadOnly);
' #txt
Hs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init</name>
    </language>
</elementInfo>
' #txt
Hs0 f6 168 42 112 44 -8 -8 #rect
Hs0 f7 109 64 168 64 #arcP
Hs0 f2 280 64 339 64 #arcP
Hs0 f8 guid 17B7BD16365FFDAA #txt
Hs0 f8 method startReadOnly(com.axonivy.htmldialog.util.demo.Data) #txt
Hs0 f8 inParameterDecl '<com.axonivy.htmldialog.util.demo.Data demoData> param;' #txt
Hs0 f8 inParameterMapAction 'out.demoData=param.demoData;
out.isReadOnly=true;
' #txt
Hs0 f8 outParameterDecl '<com.axonivy.htmldialog.util.demo.Data demoData> result;' #txt
Hs0 f8 outParameterMapAction 'result.demoData=in.demoData;
' #txt
Hs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startReadOnly(Data)</name>
    </language>
</elementInfo>
' #txt
Hs0 f8 83 115 26 26 -19 15 #rect
Hs0 f9 109 128 224 86 #arcP
Hs0 f9 1 224 128 #addKink
Hs0 f9 0 0.7644679360999226 0 0 #arcLabel
Hs0 f10 guid 17B7BF6422730B28 #txt
Hs0 f10 actionTable 'out=in;
' #txt
Hs0 f10 actionCode 'import com.axonivy.htmldialog.util.demo.Entry;

out.demoData.listEntries.add(new Entry());
' #txt
Hs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onAddNew</name>
    </language>
</elementInfo>
' #txt
Hs0 f10 83 211 26 26 -15 15 #rect
Hs0 f11 339 211 26 26 0 12 #rect
Hs0 f12 109 224 339 224 #arcP
>Proto Hs0 .type com.axonivy.htmldialog.util.demo.HtmlDialog.HtmlDialogData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
Hs0 f3 mainOut f5 tail #connect
Hs0 f5 head f4 mainIn #connect
Hs0 f0 mainOut f7 tail #connect
Hs0 f7 head f6 mainIn #connect
Hs0 f6 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
Hs0 f8 mainOut f9 tail #connect
Hs0 f9 head f6 mainIn #connect
Hs0 f10 mainOut f12 tail #connect
Hs0 f12 head f11 mainIn #connect
