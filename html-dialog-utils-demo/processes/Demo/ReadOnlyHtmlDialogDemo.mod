[Ivy]
17B78A810F03E36C 9.2.0 #module
>Proto >Proto Collection #zClass
Ro0 ReadOnlyHtmlDialogDemo Big #zClass
Ro0 B #cInfo
Ro0 #process
Ro0 @AnnotationInP-0n ai ai #zField
Ro0 @TextInP .type .type #zField
Ro0 @TextInP .processKind .processKind #zField
Ro0 @TextInP .xml .xml #zField
Ro0 @TextInP .responsibility .responsibility #zField
Ro0 @StartRequest f0 '' #zField
Ro0 @EndTask f1 '' #zField
Ro0 @UserDialog f3 '' #zField
Ro0 @PushWFArc f4 '' #zField
Ro0 @UserDialog f5 '' #zField
Ro0 @PushWFArc f6 '' #zField
Ro0 @PushWFArc f2 '' #zField
>Proto Ro0 Ro0 ReadOnlyHtmlDialogDemo #zField
Ro0 f0 outLink start.ivp #txt
Ro0 f0 inParamDecl '<> param;' #txt
Ro0 f0 requestEnabled true #txt
Ro0 f0 triggerEnabled false #txt
Ro0 f0 callSignature start() #txt
Ro0 f0 caseData businessCase.attach=true #txt
Ro0 f0 @CG|tags demo #txt 
Ro0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ro0 f0 @C|.responsibility Everybody #txt
Ro0 f0 81 49 30 30 -21 17 #rect
Ro0 f1 497 49 30 30 0 15 #rect
Ro0 f3 dialogId com.axonivy.htmldialog.util.demo.HtmlDialog #txt
Ro0 f3 startMethod start(com.axonivy.htmldialog.util.demo.Data) #txt
Ro0 f3 requestActionDecl '<com.axonivy.htmldialog.util.demo.Data demoData> param;' #txt
Ro0 f3 requestMappingAction 'param.demoData=in.demoData;
' #txt
Ro0 f3 responseMappingAction 'out=in;
out.demoData=result.demoData;
' #txt
Ro0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show  &#13;
editable UI</name>
    </language>
</elementInfo>
' #txt
Ro0 f3 168 42 112 44 -28 -16 #rect
Ro0 f4 111 64 168 64 #arcP
Ro0 f5 dialogId com.axonivy.htmldialog.util.demo.HtmlDialog #txt
Ro0 f5 startMethod startReadOnly(com.axonivy.htmldialog.util.demo.Data) #txt
Ro0 f5 requestActionDecl '<com.axonivy.htmldialog.util.demo.Data demoData> param;' #txt
Ro0 f5 requestMappingAction 'param.demoData=in.demoData;
' #txt
Ro0 f5 responseMappingAction 'out=in;
out.demoData=result.demoData;
' #txt
Ro0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show &#13;
read-only UI</name>
    </language>
</elementInfo>
' #txt
Ro0 f5 328 42 112 44 -32 -16 #rect
Ro0 f6 280 64 328 64 #arcP
Ro0 f2 440 64 497 64 #arcP
>Proto Ro0 .type com.axonivy.htmldialog.util.demo.ReadOnlyHtmlDialogDemoData #txt
>Proto Ro0 .processKind NORMAL #txt
>Proto Ro0 0 0 32 24 18 0 #rect
>Proto Ro0 @|BIcon #fIcon
Ro0 f0 mainOut f4 tail #connect
Ro0 f4 head f3 mainIn #connect
Ro0 f3 mainOut f6 tail #connect
Ro0 f6 head f5 mainIn #connect
Ro0 f5 mainOut f2 tail #connect
Ro0 f2 head f1 mainIn #connect
