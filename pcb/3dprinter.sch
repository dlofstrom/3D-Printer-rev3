<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.0.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="61" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="3dprinter">
<packages>
<package name="OUTLINE">
<description>&lt;b&gt;Board outline&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
The pcb fits a Raspberry Pi model B</description>
<wire x1="3.5" y1="0" x2="61.5" y2="0" width="0.127" layer="20"/>
<wire x1="61.5" y1="0" x2="81.5" y2="0" width="0.127" layer="51"/>
<wire x1="85" y1="3.5" x2="85" y2="52.5" width="0.127" layer="51"/>
<wire x1="81.5" y1="56" x2="61.5" y2="56" width="0.127" layer="51"/>
<circle x="3.5" y="3.5" radius="1.4" width="0.127" layer="20"/>
<circle x="3.5" y="52.5" radius="1.4" width="0.127" layer="20"/>
<circle x="61.5" y="52.5" radius="1.4" width="0.127" layer="20"/>
<circle x="61.5" y="3.5" radius="1.4" width="0.127" layer="20"/>
<wire x1="61.5" y1="56" x2="3.5" y2="56" width="0.127" layer="20"/>
<wire x1="0" y1="52.5" x2="0" y2="3.5" width="0.127" layer="20"/>
<wire x1="0" y1="52.5" x2="3.5" y2="56" width="0.127" layer="20" curve="-90"/>
<wire x1="81.5" y1="56" x2="85" y2="52.5" width="0.127" layer="51" curve="-90"/>
<wire x1="85" y1="3.5" x2="81.5" y2="0" width="0.127" layer="51" curve="-90"/>
<wire x1="3.5" y1="0" x2="0" y2="3.5" width="0.127" layer="20" curve="-90"/>
<wire x1="65" y1="3.5" x2="65" y2="52.5" width="0.127" layer="20"/>
<wire x1="65" y1="3.5" x2="61.5" y2="0" width="0.127" layer="20" curve="-90"/>
<wire x1="61.5" y1="56" x2="65" y2="52.5" width="0.127" layer="20" curve="-90"/>
<wire x1="70" y1="53.5" x2="87.1" y2="53.5" width="0.127" layer="51"/>
<wire x1="87.1" y1="53.5" x2="87.1" y2="40.4" width="0.127" layer="51"/>
<wire x1="87.1" y1="40.4" x2="70" y2="40.4" width="0.127" layer="51"/>
<wire x1="70" y1="40.4" x2="70" y2="53.5" width="0.127" layer="51"/>
<wire x1="70" y1="35.5" x2="87.1" y2="35.5" width="0.127" layer="51"/>
<wire x1="87.1" y1="35.5" x2="87.1" y2="22.4" width="0.127" layer="51"/>
<wire x1="87.1" y1="22.4" x2="70" y2="22.4" width="0.127" layer="51"/>
<wire x1="70" y1="22.4" x2="70" y2="35.5" width="0.127" layer="51"/>
<wire x1="65" y1="18.2" x2="87.1" y2="18.2" width="0.127" layer="51"/>
<wire x1="87.1" y1="18.2" x2="87.1" y2="2.3" width="0.127" layer="51"/>
<wire x1="87.1" y1="2.3" x2="65" y2="2.3" width="0.127" layer="51"/>
<wire x1="65" y1="2.3" x2="65" y2="18.2" width="0.127" layer="51"/>
<wire x1="7" y1="55.04" x2="57.8" y2="55.04" width="0.127" layer="51"/>
<wire x1="57.8" y1="55.04" x2="57.8" y2="49.96" width="0.127" layer="51"/>
<wire x1="57.8" y1="49.96" x2="7" y2="49.96" width="0.127" layer="51"/>
<wire x1="7" y1="49.96" x2="7" y2="55.04" width="0.127" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="OUTLINE">
<description>&lt;b&gt;Board outline&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
The pcb fits a Raspberry Pi model B</description>
<text x="0" y="0" size="1.778" layer="94">Board outline</text>
</symbol>
<symbol name="DINA3_L">
<frame x1="0" y1="0" x2="388.62" y2="264.16" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="OUTLINE">
<description>&lt;b&gt;Board outline&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
The pcb fit a Raspberry Pi model B</description>
<gates>
<gate name="G$1" symbol="OUTLINE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="OUTLINE">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DINA3_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA3_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="287.02" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="3dprinter" deviceset="OUTLINE" device=""/>
<part name="FRAME1" library="3dprinter" deviceset="DINA3_L" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="289.56" y="38.1"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="287.02" y="0"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>