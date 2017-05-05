<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.1.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
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
<wire x1="66" y1="56" x2="3.5" y2="56" width="0.127" layer="20"/>
<wire x1="0" y1="52.5" x2="0" y2="3.5" width="0.127" layer="20"/>
<wire x1="0" y1="52.5" x2="3.5" y2="56" width="0.127" layer="20" curve="-90"/>
<wire x1="81.5" y1="56" x2="85" y2="52.5" width="0.127" layer="51" curve="-90"/>
<wire x1="85" y1="3.5" x2="81.5" y2="0" width="0.127" layer="51" curve="-90"/>
<wire x1="3.5" y1="0" x2="0" y2="3.5" width="0.127" layer="20" curve="-90"/>
<wire x1="65" y1="3.5" x2="61.5" y2="0" width="0.127" layer="20" curve="-90"/>
<wire x1="66" y1="56" x2="69.5" y2="52.5" width="0.127" layer="20" curve="-90"/>
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
<circle x="61.5" y="3.5" radius="3.1" width="0.127" layer="39"/>
<circle x="3.5" y="3.5" radius="3.1" width="0.127" layer="39"/>
<circle x="3.5" y="52.5" radius="3.1" width="0.127" layer="39"/>
<circle x="61.5" y="52.5" radius="3.1" width="0.127" layer="39"/>
<wire x1="69.5" y1="52.5" x2="69.5" y2="25.5" width="0.127" layer="20"/>
<wire x1="65" y1="19" x2="65" y2="3.5" width="0.127" layer="20"/>
<wire x1="65" y1="19" x2="66" y2="21" width="0.127" layer="20" curve="-53.130102"/>
<wire x1="69.5" y1="25.5" x2="68.5" y2="23.5" width="0.127" layer="20" curve="-57.994617"/>
<wire x1="68.5" y1="23.5" x2="66" y2="21" width="0.127" layer="20"/>
</package>
<package name="MA20-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="-24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="-11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-24.13" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="-11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="21" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="23" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="25" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="22" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="24" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="26" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="27" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="28" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="29" x="11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="31" x="13.97" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="33" x="16.51" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="35" x="19.05" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="37" x="21.59" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="39" x="24.13" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="30" x="11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="32" x="13.97" y="1.27" drill="1.016" shape="octagon"/>
<pad name="34" x="16.51" y="1.27" drill="1.016" shape="octagon"/>
<pad name="36" x="19.05" y="1.27" drill="1.016" shape="octagon"/>
<pad name="38" x="21.59" y="1.27" drill="1.016" shape="octagon"/>
<pad name="40" x="24.13" y="1.27" drill="1.016" shape="octagon"/>
<text x="-25.4" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.7" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
</package>
<package name="QFN36">
<description>&lt;b&gt;QFN36&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
Package for TMC2100 stepper motor driver&lt;br&gt;
&lt;a href="https://www.trinamic.com/fileadmin/assets/Products/ICs_Documents/TMC2100_datasheet.pdf"&gt;Datasheet&lt;/a&gt;</description>
<wire x1="-2.5" y1="3" x2="2.5" y2="3" width="0.127" layer="51"/>
<wire x1="2.5" y1="3" x2="2.5" y2="-3" width="0.127" layer="51"/>
<wire x1="2.5" y1="-3" x2="-2.5" y2="-3" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-3" x2="-2.5" y2="3" width="0.127" layer="51"/>
<text x="-1.5" y="1" size="0.6096" layer="25" font="vector">&gt;NAME</text>
<text x="-1.5" y="-2" size="0.6096" layer="27" font="vector">&gt;VALUE</text>
<smd name="1" x="-2.5" y="2.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="2" x="-2.5" y="1.75" dx="0.8" dy="0.25" layer="1"/>
<smd name="3" x="-2.5" y="1.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="4" x="-2.5" y="0.75" dx="0.8" dy="0.25" layer="1"/>
<smd name="5" x="-2.5" y="0.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="6" x="-2.5" y="-0.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="7" x="-2.5" y="-0.75" dx="0.8" dy="0.25" layer="1"/>
<smd name="8" x="-2.5" y="-1.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="9" x="-2.5" y="-1.75" dx="0.8" dy="0.25" layer="1"/>
<smd name="10" x="-2.5" y="-2.25" dx="0.8" dy="0.25" layer="1"/>
<smd name="11" x="-1.75" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="12" x="-1.25" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="13" x="-0.75" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="14" x="-0.25" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="15" x="0.25" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="16" x="0.75" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="17" x="1.25" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="18" x="1.75" y="-3" dx="0.8" dy="0.25" layer="1" rot="R90"/>
<smd name="20" x="2.5" y="-1.75" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="19" x="2.5" y="-2.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="21" x="2.5" y="-1.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="22" x="2.5" y="-0.75" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="23" x="2.5" y="-0.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="24" x="2.5" y="0.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="25" x="2.5" y="0.75" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="26" x="2.5" y="1.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="27" x="2.5" y="1.75" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="28" x="2.5" y="2.25" dx="0.8" dy="0.25" layer="1" rot="R180"/>
<smd name="29" x="1.75" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="30" x="1.25" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="31" x="0.75" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="32" x="0.25" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="33" x="-0.25" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="34" x="-0.75" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="35" x="-1.25" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="36" x="-1.75" y="3" dx="0.8" dy="0.25" layer="1" rot="R270"/>
<smd name="PAD" x="0" y="0" dx="3.6" dy="4.1" layer="1" thermals="no"/>
<circle x="-2.5" y="3" radius="0.21213125" width="0.127" layer="21"/>
<pad name="TVIA1" x="-1.3" y="1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA4" x="1.3" y="1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA20" x="1.3" y="-1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA17" x="-1.3" y="-1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA9" x="-1.3" y="0" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA5" x="-1.3" y="0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA8" x="1.3" y="0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA12" x="1.3" y="0" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA16" x="1.3" y="-0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA13" x="-1.3" y="-0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA3" x="0.425" y="1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA19" x="0.425" y="-1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA7" x="0.425" y="0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA11" x="0.425" y="0" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA15" x="0.425" y="-0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA2" x="-0.425" y="1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA18" x="-0.425" y="-1.55" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA6" x="-0.425" y="0.775" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA10" x="-0.425" y="0" drill="0.4" shape="square" thermals="no"/>
<pad name="TVIA14" x="-0.425" y="-0.775" drill="0.4" shape="square" thermals="no"/>
<text x="-1.3" y="-0.3" size="0.6096" layer="48" font="vector">&gt;NAME</text>
<wire x1="-2.5" y1="3" x2="2.5" y2="3" width="0.127" layer="48"/>
<wire x1="2.5" y1="3" x2="2.5" y2="-3" width="0.127" layer="48"/>
<wire x1="2.5" y1="-3" x2="-2.5" y2="-3" width="0.127" layer="48"/>
<wire x1="-2.5" y1="-3" x2="-2.5" y2="3" width="0.127" layer="48"/>
<circle x="-2.5" y="3" radius="0.21213125" width="0.127" layer="48"/>
</package>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0603">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.583" x2="1.473" y2="0.583" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.583" x2="1.473" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.583" x2="-1.473" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.583" x2="-1.473" y2="0.583" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<text x="-1.335" y="-0.465" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-1.4" y1="0.5" x2="1.4" y2="0.5" width="0.127" layer="48"/>
<wire x1="1.4" y1="0.5" x2="1.4" y2="-0.5" width="0.127" layer="48"/>
<wire x1="1.4" y1="-0.5" x2="-1.4" y2="-0.5" width="0.127" layer="48"/>
<wire x1="-1.4" y1="-0.5" x2="-1.4" y2="0.5" width="0.127" layer="48"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
<text x="-1.47" y="-0.53" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.127" layer="48"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.127" layer="48"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.127" layer="48"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.127" layer="48"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.683" x2="1.473" y2="0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.683" x2="1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.683" x2="-1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.683" x2="-1.473" y2="0.683" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<text x="-1.235" y="-0.465" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-1.4" y1="0.6" x2="1.4" y2="0.6" width="0.127" layer="48"/>
<wire x1="1.4" y1="0.6" x2="1.4" y2="-0.6" width="0.127" layer="48"/>
<wire x1="1.4" y1="-0.6" x2="-1.4" y2="-0.6" width="0.127" layer="48"/>
<wire x1="-1.4" y1="-0.6" x2="-1.4" y2="0.6" width="0.127" layer="48"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.673" y1="0.883" x2="1.673" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.673" y1="0.883" x2="1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.673" y1="-0.883" x2="-1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.673" y1="-0.883" x2="-1.673" y2="0.883" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
<text x="-1.535" y="-0.63" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.127" layer="48"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.127" layer="48"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.127" layer="48"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.127" layer="48"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="MA04-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="square" rot="R90" thermals="no"/>
<pad name="2" x="-1.27" y="0" drill="1.016" rot="R90" thermals="no"/>
<pad name="3" x="1.27" y="0" drill="1.016" rot="R90" thermals="no"/>
<pad name="4" x="3.81" y="0" drill="1.016" rot="R90" thermals="no"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<wire x1="-5.08" y1="3.1" x2="5.08" y2="3.1" width="0.127" layer="51"/>
<wire x1="5.08" y1="3.1" x2="5.08" y2="-3.1" width="0.127" layer="51"/>
<wire x1="5.08" y1="-3.1" x2="-5.08" y2="-3.1" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-3.1" x2="-5.08" y2="3.1" width="0.127" layer="51"/>
</package>
<package name="QFN48">
<description>&lt;b&gt;QFN48&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
For the Nordic NRF51822&lt;br&gt;
&lt;br&gt;
&lt;a href="http://infocenter.nordicsemi.com/pdf/nRF51822_PS_v3.1.pdf"&gt;Datasheet&lt;/a&gt;</description>
<wire x1="-3" y1="3" x2="3" y2="3" width="0.127" layer="51"/>
<wire x1="3" y1="3" x2="3" y2="-3" width="0.127" layer="51"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.127" layer="51"/>
<wire x1="-3" y1="-3" x2="-3" y2="3" width="0.127" layer="51"/>
<smd name="1" x="-3" y="2.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="2" x="-3" y="1.8" dx="0.8" dy="0.24" layer="1"/>
<smd name="3" x="-3" y="1.4" dx="0.8" dy="0.24" layer="1"/>
<smd name="4" x="-3" y="1" dx="0.8" dy="0.24" layer="1"/>
<smd name="5" x="-3" y="0.6" dx="0.8" dy="0.24" layer="1"/>
<smd name="6" x="-3" y="0.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="7" x="-3" y="-0.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="8" x="-3" y="-0.6" dx="0.8" dy="0.24" layer="1"/>
<smd name="9" x="-3" y="-1" dx="0.8" dy="0.24" layer="1"/>
<smd name="10" x="-3" y="-1.4" dx="0.8" dy="0.24" layer="1"/>
<smd name="11" x="-3" y="-1.8" dx="0.8" dy="0.24" layer="1"/>
<smd name="12" x="-3" y="-2.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="13" x="-2.2" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="14" x="-1.8" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="15" x="-1.4" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="16" x="-1" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="17" x="-0.6" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="18" x="-0.2" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="19" x="0.2" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="20" x="0.6" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="21" x="1" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="22" x="1.4" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="23" x="1.8" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="24" x="2.2" y="-3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="25" x="3" y="-2.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="26" x="3" y="-1.8" dx="0.8" dy="0.24" layer="1"/>
<smd name="27" x="3" y="-1.4" dx="0.8" dy="0.24" layer="1"/>
<smd name="28" x="3" y="-1" dx="0.8" dy="0.24" layer="1"/>
<smd name="29" x="3" y="-0.6" dx="0.8" dy="0.24" layer="1"/>
<smd name="30" x="3" y="-0.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="31" x="3" y="0.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="32" x="3" y="0.6" dx="0.8" dy="0.24" layer="1"/>
<smd name="33" x="3" y="1" dx="0.8" dy="0.24" layer="1"/>
<smd name="34" x="3" y="1.4" dx="0.8" dy="0.24" layer="1"/>
<smd name="35" x="3" y="1.8" dx="0.8" dy="0.24" layer="1"/>
<smd name="36" x="3" y="2.2" dx="0.8" dy="0.24" layer="1"/>
<smd name="37" x="2.2" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="38" x="1.8" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="39" x="1.4" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="40" x="1" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="41" x="0.6" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="42" x="0.2" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="43" x="-0.2" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="44" x="-0.6" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="45" x="-1" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="46" x="-1.4" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="47" x="-1.8" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<smd name="48" x="-2.2" y="3" dx="0.8" dy="0.24" layer="1" rot="R90"/>
<circle x="-3" y="3" radius="0.22360625" width="0.127" layer="21"/>
<text x="-2" y="1" size="0.6096" layer="25" font="vector">&gt;NAME</text>
<text x="-2" y="-2" size="0.6096" layer="27" font="vector">&gt;VALUE</text>
<smd name="PAD" x="0" y="0" dx="4.6" dy="4.6" layer="1"/>
<wire x1="-3" y1="3" x2="3" y2="3" width="0.127" layer="48"/>
<wire x1="3" y1="3" x2="3" y2="-3" width="0.127" layer="48"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.127" layer="48"/>
<wire x1="-3" y1="-3" x2="-3" y2="3" width="0.127" layer="48"/>
<circle x="-3" y="3" radius="0.22360625" width="0.127" layer="48"/>
<text x="-1.5" y="-0.3" size="0.6096" layer="48" font="vector">&gt;NAME</text>
</package>
<package name="TRIMPOT">
<smd name="1" x="1.15" y="2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="3" x="-1.15" y="2.75" dx="1.3" dy="1.3" layer="1"/>
<smd name="2" x="0" y="-2.75" dx="2" dy="1.3" layer="1"/>
<circle x="0" y="0" radius="1.6" width="0.127" layer="20"/>
<wire x1="-2.5" y1="2.25" x2="2.5" y2="2.25" width="0.127" layer="51"/>
<wire x1="2.5" y1="2.25" x2="2.5" y2="-2.25" width="0.127" layer="51"/>
<wire x1="2.5" y1="-2.25" x2="-2.5" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-2.25" x2="-2.5" y2="2.25" width="0.127" layer="51"/>
<text x="-3.2" y="-3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="2.6" size="1.27" layer="27">&gt;VALUE</text>
<circle x="0" y="0" radius="2" width="0.127" layer="39"/>
<circle x="0" y="0" radius="2" width="0.127" layer="40"/>
<text x="-1.7" y="-0.4" size="1.27" layer="48">&gt;NAME</text>
<wire x1="2.5" y1="-2.25" x2="-2.5" y2="-2.25" width="0.127" layer="48"/>
<wire x1="2.5" y1="2.25" x2="2.5" y2="-2.25" width="0.127" layer="48"/>
<wire x1="-2.5" y1="2.25" x2="2.5" y2="2.25" width="0.127" layer="48"/>
<wire x1="-2.5" y1="-2.25" x2="-2.5" y2="2.25" width="0.127" layer="48"/>
<wire x1="-1.7" y1="2.3" x2="-1.7" y2="3.2" width="0.127" layer="48"/>
<wire x1="-1.7" y1="3.2" x2="-0.6" y2="3.2" width="0.127" layer="48"/>
<wire x1="-0.6" y1="3.2" x2="-0.6" y2="2.3" width="0.127" layer="48"/>
<wire x1="0.6" y1="2.3" x2="0.6" y2="3.2" width="0.127" layer="48"/>
<wire x1="0.6" y1="3.2" x2="1.7" y2="3.2" width="0.127" layer="48"/>
<wire x1="1.7" y1="3.2" x2="1.7" y2="2.3" width="0.127" layer="48"/>
<wire x1="0.5" y1="-2.3" x2="0.5" y2="-3.2" width="0.127" layer="48"/>
<wire x1="0.5" y1="-3.2" x2="-0.6" y2="-3.2" width="0.127" layer="48"/>
<wire x1="-0.6" y1="-3.2" x2="-0.6" y2="-2.3" width="0.127" layer="48"/>
</package>
<package name="CRYSTAL">
<smd name="4" x="-0.85" y="0.65" dx="1.2" dy="1" layer="1"/>
<smd name="1" x="-0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="2" x="0.85" y="-0.65" dx="1.2" dy="1" layer="1"/>
<smd name="3" x="0.85" y="0.65" dx="1.2" dy="1" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-1.25" y1="1" x2="1.25" y2="1" width="0.127" layer="51"/>
<wire x1="1.25" y1="1" x2="1.25" y2="-1" width="0.127" layer="51"/>
<wire x1="1.25" y1="-1" x2="-1.25" y2="-1" width="0.127" layer="51"/>
<wire x1="-1.25" y1="-1" x2="-1.25" y2="1" width="0.127" layer="51"/>
<text x="-1.07" y="-0.53" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-1.25" y1="1" x2="1.25" y2="1" width="0.127" layer="48"/>
<wire x1="1.25" y1="1" x2="1.25" y2="-1" width="0.127" layer="48"/>
<wire x1="1.25" y1="-1" x2="-1.25" y2="-1" width="0.127" layer="48"/>
<wire x1="-1.25" y1="-1" x2="-1.25" y2="1" width="0.127" layer="48"/>
</package>
<package name="BALUN">
<smd name="3" x="-0.5" y="0.4" dx="0.2" dy="0.3" layer="1"/>
<smd name="2" x="0" y="0.4" dx="0.2" dy="0.3" layer="1"/>
<smd name="1" x="0.5" y="0.4" dx="0.2" dy="0.3" layer="1"/>
<smd name="4" x="-0.5" y="-0.4" dx="0.2" dy="0.3" layer="1"/>
<smd name="5" x="0" y="-0.4" dx="0.2" dy="0.3" layer="1"/>
<smd name="6" x="0.5" y="-0.4" dx="0.2" dy="0.3" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.127" layer="51"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.127" layer="51"/>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.127" layer="51"/>
<wire x1="0.6" y1="0.1" x2="0.8" y2="0.1" width="0.127" layer="21"/>
<wire x1="0.8" y1="0.1" x2="0.8" y2="-0.05" width="0.127" layer="21"/>
<wire x1="0.8" y1="-0.05" x2="0.6" y2="-0.05" width="0.127" layer="21"/>
<wire x1="0.6" y1="-0.05" x2="0.6" y2="0.1" width="0.127" layer="21"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.127" layer="51"/>
<text x="-0.7" y="-0.3" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-0.8" y1="-0.4" x2="-0.8" y2="0.4" width="0.127" layer="48"/>
<wire x1="-0.8" y1="0.4" x2="0.8" y2="0.4" width="0.127" layer="48"/>
<wire x1="0.8" y1="0.4" x2="0.8" y2="-0.4" width="0.127" layer="48"/>
<wire x1="0.8" y1="-0.4" x2="-0.8" y2="-0.4" width="0.127" layer="48"/>
<wire x1="0.6" y1="0.1" x2="0.8" y2="0.1" width="0.127" layer="48"/>
<wire x1="0.8" y1="-0.05" x2="0.6" y2="-0.05" width="0.127" layer="48"/>
<wire x1="0.6" y1="-0.05" x2="0.6" y2="0.1" width="0.127" layer="48"/>
</package>
<package name="ANTENNA">
<smd name="2" x="-3.5" y="0" dx="1" dy="2" layer="1"/>
<smd name="1" x="3.5" y="0" dx="1" dy="2" layer="1"/>
<smd name="3" x="0" y="0.815" dx="2.8" dy="0.8" layer="1"/>
<smd name="4" x="0" y="-0.815" dx="2.8" dy="0.8" layer="1"/>
<text x="-4" y="1.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-4" y="-3" size="1.27" layer="21">&gt;VALUE</text>
<wire x1="-3.5" y1="1" x2="3.5" y2="1" width="0.127" layer="51"/>
<wire x1="3.5" y1="1" x2="3.5" y2="-1" width="0.127" layer="51"/>
<wire x1="3.5" y1="-1" x2="-3.5" y2="-1" width="0.127" layer="51"/>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="1" width="0.127" layer="51"/>
<wire x1="2" y1="0.25" x2="2.75" y2="0.25" width="0.127" layer="21"/>
<wire x1="2.75" y1="0.25" x2="2.75" y2="-0.25" width="0.127" layer="21"/>
<wire x1="2.75" y1="-0.25" x2="2" y2="-0.25" width="0.127" layer="21"/>
<wire x1="2" y1="-0.25" x2="2" y2="0.25" width="0.127" layer="21"/>
<text x="-3.3" y="-0.8" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-3.5" y1="1" x2="3.5" y2="1" width="0.127" layer="48"/>
<wire x1="3.5" y1="1" x2="3.5" y2="-1" width="0.127" layer="48"/>
<wire x1="3.5" y1="-1" x2="-3.5" y2="-1" width="0.127" layer="48"/>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="1" width="0.127" layer="48"/>
<wire x1="2" y1="0.25" x2="2.75" y2="0.25" width="0.127" layer="48"/>
<wire x1="2.75" y1="0.25" x2="2.75" y2="-0.25" width="0.127" layer="48"/>
<wire x1="2.75" y1="-0.25" x2="2" y2="-0.25" width="0.127" layer="48"/>
<wire x1="2" y1="-0.25" x2="2" y2="0.25" width="0.127" layer="48"/>
</package>
<package name="MOSFET">
<smd name="TAB" x="-3.23" y="0" dx="4.53" dy="4.56" layer="1" thermals="no"/>
<wire x1="-4.89" y1="2.265" x2="-0.27" y2="2.265" width="0.127" layer="51"/>
<wire x1="-0.27" y1="2.265" x2="-0.27" y2="-2.265" width="0.127" layer="51"/>
<wire x1="-0.27" y1="-2.265" x2="-4.89" y2="-2.265" width="0.127" layer="51"/>
<wire x1="-4.89" y1="-2.265" x2="-4.89" y2="2.265" width="0.127" layer="51"/>
<text x="-6.46" y="2.73" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.19" y="-3.73" size="1.27" layer="27">&gt;VALUE</text>
<smd name="3" x="0.5" y="0.635" dx="1" dy="0.75" layer="1" thermals="no"/>
<smd name="4" x="0.5" y="1.905" dx="1" dy="0.75" layer="1" thermals="no"/>
<smd name="2" x="0.5" y="-0.635" dx="1" dy="0.75" layer="1" thermals="no"/>
<smd name="1" x="0.5" y="-1.905" dx="1" dy="0.75" layer="1" thermals="no"/>
<text x="-4.66" y="-0.47" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-0.27" y1="2.265" x2="-0.27" y2="-2.265" width="0.127" layer="48"/>
<wire x1="-4.89" y1="2.265" x2="-0.27" y2="2.265" width="0.127" layer="48"/>
<wire x1="-4.89" y1="-2.265" x2="-4.89" y2="2.265" width="0.127" layer="48"/>
<wire x1="-0.27" y1="-2.265" x2="-4.89" y2="-2.265" width="0.127" layer="48"/>
<wire x1="-0.2" y1="2.2" x2="1.1" y2="2.2" width="0.127" layer="48"/>
<wire x1="1.1" y1="2.2" x2="1.1" y2="1.6" width="0.127" layer="48"/>
<wire x1="1.1" y1="1.6" x2="-0.2" y2="1.6" width="0.127" layer="48"/>
<wire x1="-0.2" y1="0.9" x2="1.1" y2="0.9" width="0.127" layer="48"/>
<wire x1="1.1" y1="0.9" x2="1.1" y2="0.3" width="0.127" layer="48"/>
<wire x1="1.1" y1="0.3" x2="-0.2" y2="0.3" width="0.127" layer="48"/>
<wire x1="-0.2" y1="-0.3" x2="1.1" y2="-0.3" width="0.127" layer="48"/>
<wire x1="1.1" y1="-0.3" x2="1.1" y2="-0.9" width="0.127" layer="48"/>
<wire x1="1.1" y1="-0.9" x2="-0.2" y2="-0.9" width="0.127" layer="48"/>
<wire x1="-0.2" y1="-1.6" x2="1.1" y2="-1.6" width="0.127" layer="48"/>
<wire x1="1.1" y1="-1.6" x2="1.1" y2="-2.2" width="0.127" layer="48"/>
<wire x1="1.1" y1="-2.2" x2="-0.2" y2="-2.2" width="0.127" layer="48"/>
</package>
<package name="SOT23_FAN">
<smd name="3" x="-1" y="0" dx="0.9" dy="0.8" layer="1"/>
<smd name="2" x="1" y="1" dx="0.9" dy="0.8" layer="1"/>
<smd name="1" x="1" y="-1" dx="0.9" dy="0.8" layer="1"/>
<wire x1="-0.65" y1="1.45" x2="0.65" y2="1.45" width="0.127" layer="51"/>
<wire x1="0.65" y1="1.45" x2="0.65" y2="-1.45" width="0.127" layer="51"/>
<wire x1="0.65" y1="-1.45" x2="-0.65" y2="-1.45" width="0.127" layer="51"/>
<wire x1="-0.65" y1="-1.45" x2="-0.65" y2="1.45" width="0.127" layer="51"/>
<text x="-3" y="-3" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="2" size="1.27" layer="27">&gt;VALUE</text>
<text x="0.5" y="-1.3" size="1.27" layer="48" rot="R90">&gt;NAME</text>
<wire x1="0.65" y1="-1.45" x2="-0.65" y2="-1.45" width="0.127" layer="48"/>
<wire x1="0.65" y1="1.45" x2="0.65" y2="-1.45" width="0.127" layer="48"/>
<wire x1="-0.65" y1="1.45" x2="0.65" y2="1.45" width="0.127" layer="48"/>
<wire x1="-0.65" y1="-1.45" x2="-0.65" y2="1.45" width="0.127" layer="48"/>
<wire x1="0.7" y1="1.4" x2="1.5" y2="1.4" width="0.127" layer="48"/>
<wire x1="1.5" y1="1.4" x2="1.5" y2="0.6" width="0.127" layer="48"/>
<wire x1="1.5" y1="0.6" x2="0.7" y2="0.6" width="0.127" layer="48"/>
<wire x1="0.7" y1="-0.6" x2="1.5" y2="-0.6" width="0.127" layer="48"/>
<wire x1="1.5" y1="-0.6" x2="1.5" y2="-1.4" width="0.127" layer="48"/>
<wire x1="1.5" y1="-1.4" x2="0.7" y2="-1.4" width="0.127" layer="48"/>
<wire x1="-0.7" y1="-0.4" x2="-1.5" y2="-0.4" width="0.127" layer="48"/>
<wire x1="-1.5" y1="-0.4" x2="-1.5" y2="0.4" width="0.127" layer="48"/>
<wire x1="-1.5" y1="0.4" x2="-0.7" y2="0.4" width="0.127" layer="48"/>
</package>
<package name="MA02-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="square" rot="R90" thermals="no"/>
<pad name="2" x="0" y="0" drill="1.016" rot="R90" thermals="no"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<wire x1="-3.81" y1="3.1" x2="1.27" y2="3.1" width="0.127" layer="51"/>
<wire x1="1.27" y1="3.1" x2="1.27" y2="-3.1" width="0.127" layer="51"/>
<wire x1="1.27" y1="-3.1" x2="-3.81" y2="-3.1" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-3.1" x2="-3.81" y2="3.1" width="0.127" layer="51"/>
</package>
<package name="REGULATOR">
<smd name="1" x="0" y="-3.4" dx="2.16" dy="1.07" layer="1" thermals="no"/>
<smd name="2" x="0" y="-1.7" dx="2.16" dy="1.07" layer="1"/>
<smd name="3" x="0" y="0" dx="2.16" dy="1.07" layer="1" thermals="no"/>
<smd name="4" x="0" y="1.7" dx="2.16" dy="1.07" layer="1"/>
<smd name="5" x="0" y="3.4" dx="2.16" dy="1.07" layer="1"/>
<smd name="TAB" x="-10.675" y="0" dx="6.99" dy="10.8" layer="1" thermals="no"/>
<wire x1="-13" y1="5.08" x2="-4.36" y2="5.08" width="0.127" layer="51"/>
<wire x1="-4.36" y1="5.08" x2="-4.36" y2="-5.08" width="0.127" layer="51"/>
<wire x1="-4.36" y1="-5.08" x2="-13" y2="-5.08" width="0.127" layer="51"/>
<wire x1="-13" y1="-5.08" x2="-13" y2="5.08" width="0.127" layer="51"/>
<text x="-9" y="-9" size="1.27" layer="25">&gt;NAME</text>
<text x="-9" y="7" size="1.27" layer="27">&gt;VALUE</text>
<text x="-11.5" y="-1" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-13" y1="5.08" x2="-4.36" y2="5.08" width="0.127" layer="48"/>
<wire x1="-4.36" y1="5.08" x2="-4.36" y2="-5.08" width="0.127" layer="48"/>
<wire x1="-4.36" y1="-5.08" x2="-13" y2="-5.08" width="0.127" layer="48"/>
<wire x1="-13" y1="-5.08" x2="-13" y2="5.08" width="0.127" layer="48"/>
<wire x1="-4.3" y1="4" x2="1.1" y2="4" width="0.127" layer="48"/>
<wire x1="1.1" y1="4" x2="1.1" y2="2.9" width="0.127" layer="48"/>
<wire x1="1.1" y1="2.9" x2="-4.3" y2="2.9" width="0.127" layer="48"/>
<wire x1="-4.3" y1="2.3" x2="1.1" y2="2.3" width="0.127" layer="48"/>
<wire x1="1.1" y1="2.3" x2="1.1" y2="1.2" width="0.127" layer="48"/>
<wire x1="1.1" y1="1.2" x2="-4.3" y2="1.2" width="0.127" layer="48"/>
<wire x1="-4.3" y1="0.5" x2="1.1" y2="0.5" width="0.127" layer="48"/>
<wire x1="1.1" y1="0.5" x2="1.1" y2="-0.6" width="0.127" layer="48"/>
<wire x1="1.1" y1="-0.6" x2="-4.3" y2="-0.6" width="0.127" layer="48"/>
<wire x1="-4.3" y1="-2.8" x2="1.1" y2="-2.8" width="0.127" layer="48"/>
<wire x1="1.1" y1="-2.8" x2="1.1" y2="-3.9" width="0.127" layer="48"/>
<wire x1="1.1" y1="-3.9" x2="-4.3" y2="-3.9" width="0.127" layer="48"/>
<wire x1="-4.3" y1="-1.1" x2="1.1" y2="-1.1" width="0.127" layer="48"/>
<wire x1="1.1" y1="-1.1" x2="1.1" y2="-2.2" width="0.127" layer="48"/>
<wire x1="1.1" y1="-2.2" x2="-4.3" y2="-2.2" width="0.127" layer="48"/>
</package>
<package name="SCHOTTKY">
<smd name="A" x="-2.1" y="0" dx="2" dy="2" layer="1"/>
<smd name="C" x="2.1" y="0" dx="2" dy="2" layer="1"/>
<wire x1="-2.25" y1="1.3" x2="2.25" y2="1.3" width="0.127" layer="51"/>
<wire x1="2.25" y1="1.3" x2="2.25" y2="-1.3" width="0.127" layer="51"/>
<wire x1="2.25" y1="-1.3" x2="-2.25" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-1.3" x2="-2.25" y2="1.3" width="0.127" layer="51"/>
<wire x1="0.7" y1="0.796" x2="0.7" y2="-0.796" width="0.4064" layer="21"/>
<text x="-2" y="2" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<text x="-2" y="-0.5" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-2.25" y1="-1.3" x2="-2.25" y2="1.3" width="0.127" layer="48"/>
<wire x1="-2.25" y1="1.3" x2="2.25" y2="1.3" width="0.127" layer="48"/>
<wire x1="2.25" y1="1.3" x2="2.25" y2="-1.3" width="0.127" layer="48"/>
<wire x1="2.25" y1="-1.3" x2="-2.25" y2="-1.3" width="0.127" layer="48"/>
<wire x1="0.7" y1="0.796" x2="0.7" y2="-0.796" width="0.4064" layer="48"/>
</package>
<package name="TANTULUM">
<smd name="+" x="0" y="3.875" dx="3" dy="5" layer="1" thermals="no"/>
<smd name="-" x="0" y="-3.875" dx="3" dy="5" layer="1" thermals="no"/>
<wire x1="-5.15" y1="5.5" x2="5.15" y2="5.5" width="0.127" layer="51"/>
<wire x1="5.15" y1="5.5" x2="5.15" y2="-5.5" width="0.127" layer="51"/>
<wire x1="5.15" y1="-5.5" x2="-5.15" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-5.15" y1="-5.5" x2="-5.15" y2="5.5" width="0.127" layer="51"/>
<text x="-5" y="7" size="1.27" layer="25">&gt;NAME</text>
<text x="-5" y="-8" size="1.27" layer="27">&gt;VALUE</text>
<text x="-3.175" y="3.81" size="1.27" layer="21" font="vector">+</text>
</package>
<package name="INDUCTOR">
<smd name="2" x="5.45" y="0" dx="3.5" dy="5.4" layer="1"/>
<smd name="1" x="-5.45" y="0" dx="3.5" dy="5.4" layer="1"/>
<wire x1="-6.25" y1="6.25" x2="6.25" y2="6.25" width="0.127" layer="51"/>
<wire x1="6.25" y1="6.25" x2="6.25" y2="-6.25" width="0.127" layer="51"/>
<wire x1="6.25" y1="-6.25" x2="-6.25" y2="-6.25" width="0.127" layer="51"/>
<wire x1="-6.25" y1="-6.25" x2="-6.25" y2="6.25" width="0.127" layer="51"/>
<text x="-6.35" y="-8.255" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.35" y="6.985" size="1.27" layer="27">&gt;VALUE</text>
<text x="-2.95" y="-0.655" size="1.27" layer="48">&gt;NAME</text>
<wire x1="-6.25" y1="6.25" x2="6.25" y2="6.25" width="0.127" layer="48"/>
<wire x1="6.25" y1="6.25" x2="6.25" y2="-6.25" width="0.127" layer="48"/>
<wire x1="6.25" y1="-6.25" x2="-6.25" y2="-6.25" width="0.127" layer="48"/>
<wire x1="-6.25" y1="-6.25" x2="-6.25" y2="6.25" width="0.127" layer="48"/>
</package>
<package name="SOT23">
<description>SOT23</description>
<smd name="1" x="-0.95" y="-1.35" dx="0.55" dy="1" layer="1"/>
<smd name="2" x="0" y="-1.35" dx="0.55" dy="1" layer="1"/>
<smd name="3" x="0.95" y="-1.35" dx="0.55" dy="1" layer="1"/>
<smd name="4" x="0.95" y="1.35" dx="0.55" dy="1" layer="1"/>
<smd name="5" x="-0.95" y="1.35" dx="0.55" dy="1" layer="1"/>
<wire x1="-1.5" y1="0.635" x2="1.5" y2="0.635" width="0.127" layer="51"/>
<wire x1="1.5" y1="0.635" x2="1.5" y2="-0.635" width="0.127" layer="51"/>
<wire x1="1.5" y1="-0.635" x2="-1.5" y2="-0.635" width="0.127" layer="51"/>
<wire x1="-1.5" y1="-0.635" x2="-1.5" y2="0.635" width="0.127" layer="51"/>
<text x="1.905" y="0" size="0.3048" layer="25">&gt;NAME</text>
<text x="1.905" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.195" y="-0.2" size="0.3048" layer="48">&gt;NAME</text>
<wire x1="-1.5" y1="-0.635" x2="-1.5" y2="0.635" width="0.127" layer="48"/>
<wire x1="-1.5" y1="0.635" x2="1.5" y2="0.635" width="0.127" layer="48"/>
<wire x1="1.5" y1="0.635" x2="1.5" y2="-0.635" width="0.127" layer="48"/>
<wire x1="1.5" y1="-0.635" x2="-1.5" y2="-0.635" width="0.127" layer="48"/>
<wire x1="-1.2" y1="0.6" x2="-1.2" y2="1.8" width="0.127" layer="48"/>
<wire x1="-1.2" y1="1.8" x2="-0.7" y2="1.8" width="0.127" layer="48"/>
<wire x1="-0.7" y1="1.8" x2="-0.7" y2="0.6" width="0.127" layer="48"/>
<wire x1="0.7" y1="0.6" x2="0.7" y2="1.8" width="0.127" layer="48"/>
<wire x1="0.7" y1="1.8" x2="1.2" y2="1.8" width="0.127" layer="48"/>
<wire x1="1.2" y1="1.8" x2="1.2" y2="0.6" width="0.127" layer="48"/>
<wire x1="1.2" y1="-0.6" x2="1.2" y2="-1.8" width="0.127" layer="48"/>
<wire x1="1.2" y1="-1.8" x2="0.7" y2="-1.8" width="0.127" layer="48"/>
<wire x1="0.7" y1="-1.8" x2="0.7" y2="-0.6" width="0.127" layer="48"/>
<wire x1="0.2" y1="-0.6" x2="0.2" y2="-1.8" width="0.127" layer="48"/>
<wire x1="0.2" y1="-1.8" x2="-0.3" y2="-1.8" width="0.127" layer="48"/>
<wire x1="-0.3" y1="-1.8" x2="-0.3" y2="-0.6" width="0.127" layer="48"/>
<wire x1="-0.7" y1="-0.6" x2="-0.7" y2="-1.8" width="0.127" layer="48"/>
<wire x1="-0.7" y1="-1.8" x2="-1.2" y2="-1.8" width="0.127" layer="48"/>
<wire x1="-1.2" y1="-1.8" x2="-1.2" y2="-0.6" width="0.127" layer="48"/>
</package>
<package name="MA04-1_5MM">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="1" x="-7.62" y="0" drill="1.6" shape="square" thermals="no"/>
<pad name="2" x="-2.54" y="0" drill="1.6" thermals="no"/>
<pad name="3" x="2.54" y="0" drill="1.6" thermals="no"/>
<pad name="4" x="7.62" y="0" drill="1.6" thermals="no"/>
<wire x1="-10.16" y1="4.7" x2="10.16" y2="4.7" width="0.127" layer="51"/>
<wire x1="10.16" y1="4.7" x2="10.16" y2="-4.7" width="0.127" layer="51"/>
<wire x1="10.16" y1="-4.7" x2="-10.16" y2="-4.7" width="0.127" layer="51"/>
<wire x1="-10.16" y1="-4.7" x2="-10.16" y2="4.7" width="0.127" layer="51"/>
</package>
<package name="SJ_2">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="2.159" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="0.762" x2="-2.159" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="-0.762" x2="-2.159" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.016" x2="2.413" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-0.762" x2="-2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.016" x2="2.159" y2="1.016" width="0.1524" layer="21"/>
<smd name="1" x="-1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="2" x="0" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="3" x="1.524" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<text x="-2.413" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<wire x1="2.159" y1="-1.016" x2="-2.159" y2="-1.016" width="0.1524" layer="21"/>
</package>
<package name="BUTTON">
<smd name="1" x="-3.975" y="2.25" dx="1.55" dy="1.3" layer="1"/>
<smd name="3" x="-3.975" y="-2.25" dx="1.55" dy="1.3" layer="1"/>
<smd name="2" x="3.975" y="2.25" dx="1.55" dy="1.3" layer="1"/>
<smd name="4" x="3.975" y="-2.25" dx="1.55" dy="1.3" layer="1"/>
<wire x1="-3" y1="3" x2="3" y2="3" width="0.127" layer="51"/>
<wire x1="3" y1="3" x2="3" y2="-3" width="0.127" layer="51"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.127" layer="51"/>
<wire x1="-3" y1="-3" x2="-3" y2="3" width="0.127" layer="51"/>
<circle x="0" y="0" radius="2.236065625" width="0.127" layer="51"/>
<text x="-4" y="4" size="1.27" layer="25">&gt;NAME</text>
<text x="-4" y="-5" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="RGBLED">
<smd name="C" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<wire x1="0.4" y1="0.8" x2="0.4" y2="-0.8" width="0.127" layer="51"/>
<wire x1="0.4" y1="-0.8" x2="-0.4" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-0.4" y1="-0.8" x2="-0.4" y2="0.8" width="0.127" layer="51"/>
<wire x1="-0.4" y1="0.8" x2="0.4" y2="0.8" width="0.127" layer="51"/>
<text x="-2" y="-3" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="2" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-0.335" y1="-0.25" x2="0.35" y2="-0.25" width="0.127" layer="21"/>
</package>
<package name="B1,27">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.0024" layer="37"/>
<smd name="TP" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100" cream="no"/>
<text x="-0.635" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.635" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
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
<symbol name="MA20-2">
<wire x1="3.81" y1="-27.94" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-25.4" x2="2.54" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-22.86" x2="-1.27" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="-1.27" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-27.94" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="22.86" x2="-1.27" y2="22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<text x="-3.81" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="26.162" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="17" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="20" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="21" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="23" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="25" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="24" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="26" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="27" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="29" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="30" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="31" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="33" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="34" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="36" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="38" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="40" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="35" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="37" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="39" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="TMC2100">
<description>&lt;b&gt;TMC2100&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
Stepper motor driver&lt;br&gt;
&lt;a href="https://www.trinamic.com/fileadmin/assets/Products/ICs_Documents/TMC2100_datasheet.pdf"&gt;Datasheet&lt;/a&gt;</description>
<wire x1="-12.7" y1="33.02" x2="12.7" y2="33.02" width="0.254" layer="94"/>
<wire x1="12.7" y1="33.02" x2="12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="-30.48" x2="-12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-30.48" x2="-12.7" y2="33.02" width="0.254" layer="94"/>
<pin name="CLK" x="17.78" y="-20.32" length="middle" rot="R180"/>
<pin name="CFG3" x="-17.78" y="-10.16" length="middle"/>
<pin name="CFG1" x="-17.78" y="10.16" length="middle"/>
<pin name="CFG2" x="-17.78" y="12.7" length="middle"/>
<pin name="CFG0" x="17.78" y="-25.4" length="middle" rot="R180"/>
<pin name="DIR" x="-17.78" y="2.54" length="middle"/>
<pin name="VCC_IO" x="-17.78" y="25.4" length="middle"/>
<pin name="GNDD" x="-17.78" y="-22.86" length="middle"/>
<pin name="OB1" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="BRB" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="OB2" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="VS" x="17.78" y="30.48" length="middle" rot="R180"/>
<pin name="CFG4" x="-17.78" y="-7.62" length="middle"/>
<pin name="CFG5" x="-17.78" y="-5.08" length="middle"/>
<pin name="ERROR" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="INDEX" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="CFG6_!ENABLE" x="-17.78" y="7.62" length="middle"/>
<pin name="AIN_IREF" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="5VOUT" x="-17.78" y="17.78" length="middle"/>
<pin name="VCC" x="-17.78" y="22.86" length="middle"/>
<pin name="CPO" x="17.78" y="20.32" length="middle" rot="R180"/>
<pin name="CPI" x="17.78" y="22.86" length="middle" rot="R180"/>
<pin name="VCP" x="17.78" y="27.94" length="middle" rot="R180"/>
<pin name="OA2" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="BRA" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="OA1" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="TST_MODE" x="17.78" y="-27.94" length="middle" rot="R180"/>
<text x="-12.446" y="34.036" size="1.27" layer="94">&gt;NAME</text>
<text x="-12.7" y="-33.02" size="1.27" layer="94">&gt;VALUE</text>
<pin name="STEP" x="-17.78" y="5.08" length="middle"/>
<pin name="VSA" x="-17.78" y="30.48" length="middle"/>
<pin name="GNDP" x="-17.78" y="-25.4" length="middle"/>
<pin name="GNDA" x="-17.78" y="-20.32" length="middle"/>
<pin name="N.C" x="17.78" y="-22.86" length="middle" rot="R180"/>
<pin name="DNC" x="-17.78" y="-2.54" length="middle"/>
<pin name="PAD" x="-17.78" y="-27.94" length="middle"/>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="R-US">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MA04-1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="NRF51822">
<description>&lt;b&gt;NRF51822&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
Nordic NRF51822&lt;br&gt;
&lt;br&gt;
&lt;a href="http://infocenter.nordicsemi.com/pdf/nRF51822_PS_v3.1.pdf"&gt;Datasheet&lt;/a&gt;</description>
<wire x1="-15.24" y1="30.48" x2="15.24" y2="30.48" width="0.254" layer="94"/>
<wire x1="15.24" y1="30.48" x2="15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="15.24" y1="-33.02" x2="-15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="-15.24" y2="30.48" width="0.254" layer="94"/>
<pin name="VDD" x="-20.32" y="17.78" length="middle"/>
<pin name="DCC" x="-20.32" y="20.32" length="middle"/>
<pin name="AVDD" x="-20.32" y="15.24" length="middle"/>
<pin name="VDD_PA" x="-20.32" y="22.86" length="middle"/>
<pin name="P0.00" x="-20.32" y="10.16" length="middle"/>
<pin name="P0.01" x="-20.32" y="7.62" length="middle"/>
<pin name="P0.02" x="-20.32" y="5.08" length="middle"/>
<pin name="P0.03" x="-20.32" y="2.54" length="middle"/>
<pin name="P0.04" x="-20.32" y="0" length="middle"/>
<pin name="P0.05" x="-20.32" y="-2.54" length="middle"/>
<pin name="P0.06" x="-20.32" y="-5.08" length="middle"/>
<pin name="P0.07" x="-20.32" y="-7.62" length="middle"/>
<pin name="P0.08" x="-20.32" y="-10.16" length="middle"/>
<pin name="P0.09" x="-20.32" y="-12.7" length="middle"/>
<pin name="P0.10" x="-20.32" y="-15.24" length="middle"/>
<pin name="P0.11" x="-20.32" y="-17.78" length="middle"/>
<pin name="P0.12" x="-20.32" y="-20.32" length="middle"/>
<pin name="P0.13" x="-20.32" y="-22.86" length="middle"/>
<pin name="P0.14" x="-20.32" y="-25.4" length="middle"/>
<pin name="P0.15" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="VSS" x="-20.32" y="-30.48" length="middle"/>
<pin name="P0.17" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="P0.18" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="P0.19" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="P0.20" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="P0.21" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="P0.22" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="P0.23" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="P0.24" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="P0.25" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="P0.26" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="P0.27" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="P0.28" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="P0.29" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="P0.30" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="P0.16" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="SWDCLK" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="SWDIO/NRESET" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="XC2" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="XC1" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="DEC2" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="DEC1" x="20.32" y="27.94" length="middle" rot="R180"/>
<text x="-15.24" y="31.496" size="1.27" layer="94">&gt;NAME</text>
<text x="-15.24" y="-35.56" size="1.27" layer="94">&gt;VALUE</text>
<pin name="ANT1" x="-20.32" y="25.4" length="middle"/>
<pin name="ANT2" x="-20.32" y="27.94" length="middle"/>
</symbol>
<symbol name="TRIMPOT">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="7.366" y1="-1.016" x2="7.62" y2="0" width="0.2032" layer="94"/>
<text x="3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="3" x="10.16" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.921" y2="1.016" width="0.2032" layer="94"/>
<wire x1="2.921" y1="1.016" x2="3.556" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="3.556" y1="-1.016" x2="4.191" y2="1.016" width="0.2032" layer="94"/>
<wire x1="4.191" y1="1.016" x2="4.826" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="4.826" y1="-1.016" x2="5.461" y2="1.016" width="0.2032" layer="94"/>
<wire x1="5.461" y1="1.016" x2="6.096" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="6.096" y1="-1.016" x2="6.731" y2="1.016" width="0.2032" layer="94"/>
<wire x1="6.731" y1="1.016" x2="7.366" y2="-1.016" width="0.2032" layer="94"/>
<pin name="2" x="2.54" y="-6.35" visible="pad" length="middle" rot="R90"/>
<wire x1="2.54" y1="-1.27" x2="2.032" y2="-1.778" width="0.254" layer="94"/>
<wire x1="2.032" y1="-1.778" x2="3.048" y2="-1.778" width="0.254" layer="94"/>
<wire x1="3.048" y1="-1.778" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="CRYSTAL">
<pin name="1" x="-8.89" y="0" visible="pad" length="middle"/>
<pin name="3" x="6.35" y="0" visible="pad" length="middle" rot="R180"/>
<pin name="2" x="-1.27" y="-7.62" visible="pad" length="middle" rot="R90"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<text x="-4.064" y="3.302" size="1.27" layer="94">&gt;NAME</text>
<text x="-0.508" y="-5.08" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="BALUN">
<pin name="BAL1" x="-12.7" y="2.54" length="middle"/>
<pin name="UBAL" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="GND" x="-12.7" y="-5.08" length="middle"/>
<pin name="DC" x="-12.7" y="-2.54" length="middle"/>
<pin name="BAL2" x="-12.7" y="0" length="middle"/>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="5.842" size="1.27" layer="94">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="ANTENNA">
<wire x1="0" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="2.54" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" length="middle"/>
<text x="0" y="2.54" size="1.27" layer="94">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="N-MOSFET">
<wire x1="0.762" y1="0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="3.175" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="2.54" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-1.905" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="4.572" y1="0.762" x2="4.318" y2="0.508" width="0.1524" layer="94"/>
<wire x1="4.318" y1="0.508" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.508" x2="3.048" y2="0.254" width="0.1524" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0" layer="94"/>
<text x="-11.43" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-11.43" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="S" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="G" x="-2.54" y="-2.54" visible="off" length="short" direction="pas"/>
<pin name="D" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="3.81" y="0.508"/>
<vertex x="3.302" y="-0.254"/>
<vertex x="4.318" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="1.016" y="0"/>
<vertex x="2.032" y="0.762"/>
<vertex x="2.032" y="-0.762"/>
</polygon>
</symbol>
<symbol name="MA02-1">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="REGULATOR">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="8.382" size="1.27" layer="94">&gt;NAME</text>
<text x="-10.16" y="-10.16" size="1.27" layer="94">&gt;VALUE</text>
<pin name="VIN" x="-15.24" y="2.54" length="middle"/>
<pin name="!ON!/OFF" x="-15.24" y="-2.54" length="middle"/>
<pin name="GND" x="-15.24" y="-5.08" length="middle"/>
<pin name="OUTPUT" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="FEEDBACK" x="15.24" y="5.08" length="middle" rot="R180"/>
</symbol>
<symbol name="SCHOTTKY">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.016" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.286" y="1.905" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="CPOL">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="1.143" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.5842" y="0.4064" size="1.27" layer="94" rot="R90">+</text>
<text x="1.143" y="-4.5974" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.54" x2="1.651" y2="-1.651" layer="94"/>
<pin name="-" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="INDUCTOR">
<wire x1="0" y1="5.08" x2="1.27" y2="3.81" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="2.54" x2="1.27" y2="3.81" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90" cap="flat"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-3.81" width="0.254" layer="94" curve="90" cap="flat"/>
<text x="2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-6.35" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="LP2985-3V3">
<pin name="VIN" x="-15.24" y="5.08" length="middle"/>
<pin name="ON/!OFF" x="-15.24" y="-5.08" length="middle"/>
<pin name="GND" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="BYPASS" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="VOUT" x="15.24" y="5.08" length="middle" rot="R180"/>
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-12.446" y="8.382" size="1.27" layer="94">&gt;NAME</text>
<text x="4.318" y="-9.652" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="SJ_2">
<wire x1="-0.635" y1="-1.397" x2="0.635" y2="-1.397" width="1.27" layer="94" curve="180" cap="flat"/>
<wire x1="-0.635" y1="1.397" x2="0.635" y2="1.397" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="2.54" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="-0.635" x2="1.27" y2="0.635" layer="94"/>
<pin name="3" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="S">
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.905" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.905" x2="0" y2="3.175" width="0.254" layer="94"/>
<text x="2.54" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
<symbol name="TP">
<wire x1="-0.762" y1="-0.762" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="-0.762" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-0.762" y2="-0.762" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-1.27" size="1.778" layer="97">&gt;TP_SIGNAL_NAME</text>
<pin name="TP" x="0" y="-2.54" visible="off" length="short" direction="in" rot="R90"/>
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
<deviceset name="MA20-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA20-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA20-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TMC2100" prefix="IC">
<description>&lt;b&gt;TMC2100&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
Stepper motor driver&lt;br&gt;
&lt;a href="https://www.trinamic.com/fileadmin/assets/Products/ICs_Documents/TMC2100_datasheet.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TMC2100" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN36">
<connects>
<connect gate="G$1" pin="5VOUT" pad="25"/>
<connect gate="G$1" pin="AIN_IREF" pad="23"/>
<connect gate="G$1" pin="BRA" pad="33"/>
<connect gate="G$1" pin="BRB" pad="14"/>
<connect gate="G$1" pin="CFG0" pad="5"/>
<connect gate="G$1" pin="CFG1" pad="4"/>
<connect gate="G$1" pin="CFG2" pad="3"/>
<connect gate="G$1" pin="CFG3" pad="2"/>
<connect gate="G$1" pin="CFG4" pad="18"/>
<connect gate="G$1" pin="CFG5" pad="19"/>
<connect gate="G$1" pin="CFG6_!ENABLE" pad="22"/>
<connect gate="G$1" pin="CLK" pad="1"/>
<connect gate="G$1" pin="CPI" pad="28"/>
<connect gate="G$1" pin="CPO" pad="27"/>
<connect gate="G$1" pin="DIR" pad="7"/>
<connect gate="G$1" pin="DNC" pad="9 17"/>
<connect gate="G$1" pin="ERROR" pad="20"/>
<connect gate="G$1" pin="GNDA" pad="24"/>
<connect gate="G$1" pin="GNDD" pad="10"/>
<connect gate="G$1" pin="GNDP" pad="12 35"/>
<connect gate="G$1" pin="INDEX" pad="21"/>
<connect gate="G$1" pin="N.C" pad="11"/>
<connect gate="G$1" pin="OA1" pad="34"/>
<connect gate="G$1" pin="OA2" pad="32"/>
<connect gate="G$1" pin="OB1" pad="13"/>
<connect gate="G$1" pin="OB2" pad="15"/>
<connect gate="G$1" pin="PAD" pad="PAD TVIA1 TVIA2 TVIA3 TVIA4 TVIA5 TVIA6 TVIA7 TVIA8 TVIA9 TVIA10 TVIA11 TVIA12 TVIA13 TVIA14 TVIA15 TVIA16 TVIA17 TVIA18 TVIA19 TVIA20"/>
<connect gate="G$1" pin="STEP" pad="6"/>
<connect gate="G$1" pin="TST_MODE" pad="36"/>
<connect gate="G$1" pin="VCC" pad="26"/>
<connect gate="G$1" pin="VCC_IO" pad="8"/>
<connect gate="G$1" pin="VCP" pad="29"/>
<connect gate="G$1" pin="VS" pad="16 31"/>
<connect gate="G$1" pin="VSA" pad="30"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="1460-1128-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R-US_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA04-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="2.54" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="5.08" package="MA04-1_5MM">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="ED2699-ND / ED2910-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NRF51822">
<description>&lt;b&gt;NRF51822&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
Nordic NRF51822&lt;br&gt;
&lt;br&gt;
&lt;a href="http://infocenter.nordicsemi.com/pdf/nRF51822_PS_v3.1.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="NRF51822" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN48">
<connects>
<connect gate="G$1" pin="ANT1" pad="31"/>
<connect gate="G$1" pin="ANT2" pad="32"/>
<connect gate="G$1" pin="AVDD" pad="35 36"/>
<connect gate="G$1" pin="DCC" pad="2"/>
<connect gate="G$1" pin="DEC1" pad="39"/>
<connect gate="G$1" pin="DEC2" pad="29"/>
<connect gate="G$1" pin="P0.00" pad="4"/>
<connect gate="G$1" pin="P0.01" pad="5"/>
<connect gate="G$1" pin="P0.02" pad="6"/>
<connect gate="G$1" pin="P0.03" pad="7"/>
<connect gate="G$1" pin="P0.04" pad="8"/>
<connect gate="G$1" pin="P0.05" pad="9"/>
<connect gate="G$1" pin="P0.06" pad="10"/>
<connect gate="G$1" pin="P0.07" pad="11"/>
<connect gate="G$1" pin="P0.08" pad="14"/>
<connect gate="G$1" pin="P0.09" pad="15"/>
<connect gate="G$1" pin="P0.10" pad="16"/>
<connect gate="G$1" pin="P0.11" pad="17"/>
<connect gate="G$1" pin="P0.12" pad="18"/>
<connect gate="G$1" pin="P0.13" pad="19"/>
<connect gate="G$1" pin="P0.14" pad="20"/>
<connect gate="G$1" pin="P0.15" pad="21"/>
<connect gate="G$1" pin="P0.16" pad="22"/>
<connect gate="G$1" pin="P0.17" pad="25"/>
<connect gate="G$1" pin="P0.18" pad="26"/>
<connect gate="G$1" pin="P0.19" pad="27"/>
<connect gate="G$1" pin="P0.20" pad="28"/>
<connect gate="G$1" pin="P0.21" pad="40"/>
<connect gate="G$1" pin="P0.22" pad="41"/>
<connect gate="G$1" pin="P0.23" pad="42"/>
<connect gate="G$1" pin="P0.24" pad="43"/>
<connect gate="G$1" pin="P0.25" pad="44"/>
<connect gate="G$1" pin="P0.26" pad="45"/>
<connect gate="G$1" pin="P0.27" pad="46"/>
<connect gate="G$1" pin="P0.28" pad="47"/>
<connect gate="G$1" pin="P0.29" pad="48"/>
<connect gate="G$1" pin="P0.30" pad="3"/>
<connect gate="G$1" pin="SWDCLK" pad="24"/>
<connect gate="G$1" pin="SWDIO/NRESET" pad="23"/>
<connect gate="G$1" pin="VDD" pad="1 12"/>
<connect gate="G$1" pin="VDD_PA" pad="30"/>
<connect gate="G$1" pin="VSS" pad="13 33 34 PAD"/>
<connect gate="G$1" pin="XC1" pad="37"/>
<connect gate="G$1" pin="XC2" pad="38"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="1490-1025-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TRIMPOT">
<description>&lt;b&gt;Trimpot&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
 Bourns Inc. 3314R-1-103E&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.bourns.com/docs/Product-Datasheets/3314.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TRIMPOT" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="TRIMPOT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="3314R-1-103ECT-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRYSTAL">
<description>&lt;b&gt;AVX Corp/Kyocera Corp CX2520DB16000D0GPSC1&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
16MHz&lt;br&gt;
&lt;br&gt;
&lt;a href="https://media.digikey.com/pdf/Data%20Sheets/AVX%20PDFs/CX2520DB_USY1M-H1-16428-00_Spec.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CRYSTAL" x="1.27" y="0"/>
</gates>
<devices>
<device name="" package="CRYSTAL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2 4"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="1253-1718-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BALUN">
<description>&lt;b&gt;Balun&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="https://www.johansontechnology.com/datasheets/baluns/2450BM14E0003.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="BALUN" x="0" y="0"/>
</gates>
<devices>
<device name="BALUN" package="BALUN">
<connects>
<connect gate="G$1" pin="BAL1" pad="3"/>
<connect gate="G$1" pin="BAL2" pad="4"/>
<connect gate="G$1" pin="DC" pad="5"/>
<connect gate="G$1" pin="GND" pad="2 6"/>
<connect gate="G$1" pin="UBAL" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="712-1581-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ANTENNA">
<description>&lt;b&gt;Antenna&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="https://www.johansontechnology.com/datasheets/antennas/2450AT43B100.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ANTENNA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ANTENNA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="712-1010-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOSFET">
<description>&lt;b&gt;MOSFET&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.onsemi.com/pub/Collateral/NTMFS5C604NL-D.PDF"&gt;Datasheet POWER&lt;/a&gt;
&lt;a href="http://www.infineon.com/dgdl/BSS316N_Rev2.3.pdf?folderId=db3a3043156fd573011622e10b5c1f67&amp;fileId=db3a304330f686060130ff7ee4b07f16"&gt;Datasheet SOT23&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="N-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOSFET">
<connects>
<connect gate="G$1" pin="D" pad="TAB"/>
<connect gate="G$1" pin="G" pad="4"/>
<connect gate="G$1" pin="S" pad="1 2 3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="NTMFS5C604NLT1GOSCT-ND" constant="no"/>
</technology>
</technologies>
</device>
<device name="SOT23" package="SOT23_FAN">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="BSS316N H6327CT-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA02-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA02-1" x="0" y="0"/>
</gates>
<devices>
<device name="2.54" package="MA02-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="REGULATOR">
<description>&lt;b&gt;5V Regulator&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.ti.com/lit/ds/symlink/lm2596.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="REGULATOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="REGULATOR">
<connects>
<connect gate="G$1" pin="!ON!/OFF" pad="5"/>
<connect gate="G$1" pin="FEEDBACK" pad="4"/>
<connect gate="G$1" pin="GND" pad="3 TAB"/>
<connect gate="G$1" pin="OUTPUT" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="LM2596SX-5.0/NOPBCT-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCHOTTKY">
<description>&lt;b&gt;Schottky Diode&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://rohmfs.rohm.com/en/products/databook/datasheet/discrete/diode/schottky_barrier/rsx501l-20.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="SCHOTTKY" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCHOTTKY">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="RSX501L-20TE25CT-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TANTULUM" uservalue="yes">
<description>&lt;b&gt;Tantulum Capacitor&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.chemi-con.co.jp/cgi-bin/CAT_DB/SEARCH/cat_db_al.cgi?e=e&amp;j=p&amp;pdfname=pxg"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TANTULUM">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="565-4300-1-ND / 565-4301-1-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="INDUCTOR" uservalue="yes">
<description>&lt;b&gt;Inductor&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.bourns.com/docs/Product-Datasheets/PM124SH_SERIES.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="INDUCTOR">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="PM124SH-330M-RCCT-ND " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LP2985-3V3">
<description>&lt;b&gt;LP2985 3.3V regulator&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.electrokit.com/productFile/download/940"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LP2985-3V3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="G$1" pin="BYPASS" pad="4"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="ON/!OFF" pad="3"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="296-18476-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SJ2W" prefix="SJ" uservalue="yes">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="SJ_2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SJ_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BUTTON">
<description>&lt;b&gt;Tactile button&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://www.ckswitches.com/media/1471/pts645.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="S" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BUTTON">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="4" route="any"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="CKN9085CT-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RGBLED">
<description>&lt;b&gt;RGB LED&lt;/b&gt;&lt;br&gt;
&lt;br&gt;
&lt;a href="http://optoelectronics.liteon.com/upload/download/DS22-2000-228/S_110_LTST-C191KGKT.pdf"&gt;Datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RGBLED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="DIGIKEY" value="160-1446-1-ND" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TP" prefix="TP">
<description>&lt;b&gt;Test pad&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="TP" x="0" y="0"/>
</gates>
<devices>
<device name="B1,27" package="B1,27">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+12V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+12V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3V3">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+12V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
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
<part name="OUTLINE" library="3dprinter" deviceset="OUTLINE" device=""/>
<part name="FRAME1" library="3dprinter" deviceset="DINA3_L" device=""/>
<part name="PI_HEADER" library="3dprinter" deviceset="MA20-2" device=""/>
<part name="IC_M1" library="3dprinter" deviceset="TMC2100" device=""/>
<part name="FRAME2" library="3dprinter" deviceset="DINA3_L" device=""/>
<part name="P+1" library="supply" deviceset="+12V" device=""/>
<part name="P+2" library="supply" deviceset="+12V" device=""/>
<part name="C1_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND1" library="supply" deviceset="GND" device=""/>
<part name="COPå" library="supply" deviceset="GND" device=""/>
<part name="C2_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C3_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="1u"/>
<part name="GND3" library="supply" deviceset="GND" device=""/>
<part name="C4_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C5_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå1" library="supply" deviceset="GND" device=""/>
<part name="COPå2" library="supply" deviceset="GND" device=""/>
<part name="COPå3" library="supply" deviceset="GND" device=""/>
<part name="R2_M1" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R3_M1" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R1_M1" library="3dprinter" deviceset="R-US_" device="R0603" value="20k"/>
<part name="COPå4" library="supply" deviceset="GND" device=""/>
<part name="COPå5" library="supply" deviceset="GND" device=""/>
<part name="C6_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå6" library="supply" deviceset="GND" device=""/>
<part name="COPå7" library="supply" deviceset="GND" device=""/>
<part name="C7_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="470n"/>
<part name="R4_M1" library="3dprinter" deviceset="R-US_" device="R0603" value="2R2 / 3R3"/>
<part name="C8_M1" library="3dprinter" deviceset="C-EU" device="C0603" value="4.7u"/>
<part name="COPå8" library="supply" deviceset="GND" device=""/>
<part name="X" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="IC1" library="3dprinter" deviceset="NRF51822" device=""/>
<part name="GND2" library="supply" deviceset="GND" device=""/>
<part name="GND4" library="supply" deviceset="GND" device=""/>
<part name="P+4" library="supply" deviceset="+5V" device=""/>
<part name="C11" library="3dprinter" deviceset="C-EU" device="C0603" value="12p"/>
<part name="C9" library="3dprinter" deviceset="C-EU" device="C0603" value="12p"/>
<part name="GND5" library="supply" deviceset="GND" device=""/>
<part name="C10" library="3dprinter" deviceset="C-EU" device="C0603" value="47n"/>
<part name="C12" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND6" library="supply" deviceset="GND" device=""/>
<part name="GND7" library="supply" deviceset="GND" device=""/>
<part name="GND8" library="supply" deviceset="GND" device=""/>
<part name="GND9" library="supply" deviceset="GND" device=""/>
<part name="C13" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C14" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C15" library="3dprinter" deviceset="C-EU" device="C0603" value="1n"/>
<part name="GND10" library="supply" deviceset="GND" device=""/>
<part name="POT_M1" library="3dprinter" deviceset="TRIMPOT" device=""/>
<part name="IC_M2" library="3dprinter" deviceset="TMC2100" device=""/>
<part name="P+5" library="supply" deviceset="+12V" device=""/>
<part name="P+6" library="supply" deviceset="+12V" device=""/>
<part name="C1_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND11" library="supply" deviceset="GND" device=""/>
<part name="COPå9" library="supply" deviceset="GND" device=""/>
<part name="C2_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C3_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="1u"/>
<part name="GND12" library="supply" deviceset="GND" device=""/>
<part name="C4_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C5_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå10" library="supply" deviceset="GND" device=""/>
<part name="COPå11" library="supply" deviceset="GND" device=""/>
<part name="COPå12" library="supply" deviceset="GND" device=""/>
<part name="R2_M2" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R3_M2" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R1_M2" library="3dprinter" deviceset="R-US_" device="R0603" value="20k"/>
<part name="COPå13" library="supply" deviceset="GND" device=""/>
<part name="COPå14" library="supply" deviceset="GND" device=""/>
<part name="C6_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå15" library="supply" deviceset="GND" device=""/>
<part name="COPå16" library="supply" deviceset="GND" device=""/>
<part name="C7_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="470n"/>
<part name="R4_M2" library="3dprinter" deviceset="R-US_" device="R0603" value="2R2 / 3R3"/>
<part name="C8_M2" library="3dprinter" deviceset="C-EU" device="C0603" value="4.7u"/>
<part name="COPå17" library="supply" deviceset="GND" device=""/>
<part name="Y" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="POT_M2" library="3dprinter" deviceset="TRIMPOT" device=""/>
<part name="IC_M3" library="3dprinter" deviceset="TMC2100" device=""/>
<part name="P+8" library="supply" deviceset="+12V" device=""/>
<part name="P+9" library="supply" deviceset="+12V" device=""/>
<part name="C1_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND13" library="supply" deviceset="GND" device=""/>
<part name="COPå18" library="supply" deviceset="GND" device=""/>
<part name="C2_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C3_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="1u"/>
<part name="GND14" library="supply" deviceset="GND" device=""/>
<part name="C4_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C5_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå19" library="supply" deviceset="GND" device=""/>
<part name="COPå20" library="supply" deviceset="GND" device=""/>
<part name="COPå21" library="supply" deviceset="GND" device=""/>
<part name="R2_M3" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R3_M3" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R1_M3" library="3dprinter" deviceset="R-US_" device="R0603" value="20k"/>
<part name="COPå22" library="supply" deviceset="GND" device=""/>
<part name="COPå23" library="supply" deviceset="GND" device=""/>
<part name="C6_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå24" library="supply" deviceset="GND" device=""/>
<part name="COPå25" library="supply" deviceset="GND" device=""/>
<part name="C7_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="470n"/>
<part name="R4_M3" library="3dprinter" deviceset="R-US_" device="R0603" value="2R2 / 3R3"/>
<part name="C8_M3" library="3dprinter" deviceset="C-EU" device="C0603" value="4.7u"/>
<part name="COPå26" library="supply" deviceset="GND" device=""/>
<part name="Z" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="POT_M3" library="3dprinter" deviceset="TRIMPOT" device=""/>
<part name="IC_M4" library="3dprinter" deviceset="TMC2100" device=""/>
<part name="P+11" library="supply" deviceset="+12V" device=""/>
<part name="P+12" library="supply" deviceset="+12V" device=""/>
<part name="C1_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="GND15" library="supply" deviceset="GND" device=""/>
<part name="COPå27" library="supply" deviceset="GND" device=""/>
<part name="C2_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C3_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="1u"/>
<part name="GND16" library="supply" deviceset="GND" device=""/>
<part name="C4_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="C5_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå28" library="supply" deviceset="GND" device=""/>
<part name="COPå29" library="supply" deviceset="GND" device=""/>
<part name="COPå30" library="supply" deviceset="GND" device=""/>
<part name="R2_M4" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R3_M4" library="3dprinter" deviceset="R-US_" device="R0805" value="TBD"/>
<part name="R1_M4" library="3dprinter" deviceset="R-US_" device="R0603" value="20k"/>
<part name="COPå31" library="supply" deviceset="GND" device=""/>
<part name="COPå32" library="supply" deviceset="GND" device=""/>
<part name="C6_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="100n"/>
<part name="COPå33" library="supply" deviceset="GND" device=""/>
<part name="COPå34" library="supply" deviceset="GND" device=""/>
<part name="C7_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="470n"/>
<part name="R4_M4" library="3dprinter" deviceset="R-US_" device="R0603" value="2R2 / 3R3"/>
<part name="C8_M4" library="3dprinter" deviceset="C-EU" device="C0603" value="4.7u"/>
<part name="COPå35" library="supply" deviceset="GND" device=""/>
<part name="E" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="POT_M4" library="3dprinter" deviceset="TRIMPOT" device=""/>
<part name="Y1" library="3dprinter" deviceset="CRYSTAL" device=""/>
<part name="BAL" library="3dprinter" deviceset="BALUN" device="BALUN"/>
<part name="ANT" library="3dprinter" deviceset="ANTENNA" device=""/>
<part name="GND17" library="supply" deviceset="GND" device=""/>
<part name="C1" library="3dprinter" deviceset="C-EU" device="C0603" value="2.2n"/>
<part name="GND18" library="supply" deviceset="GND" device=""/>
<part name="SWD" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="GND19" library="supply" deviceset="GND" device=""/>
<part name="+3V2" library="supply" deviceset="+3V3" device=""/>
<part name="Q1_BED" library="3dprinter" deviceset="MOSFET" device=""/>
<part name="Q1_NOZ" library="3dprinter" deviceset="MOSFET" device=""/>
<part name="Q1_FAN1" library="3dprinter" deviceset="MOSFET" device="SOT23"/>
<part name="Q1_FAN2" library="3dprinter" deviceset="MOSFET" device="SOT23"/>
<part name="FAN1" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="FAN2" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="GND20" library="supply" deviceset="GND" device=""/>
<part name="GND21" library="supply" deviceset="GND" device=""/>
<part name="P+14" library="supply" deviceset="+12V" device=""/>
<part name="P+15" library="supply" deviceset="+12V" device=""/>
<part name="END_X" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="END_Y" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="END_Z" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="R1_SWX" library="3dprinter" deviceset="R-US_" device="R0603" value="10k"/>
<part name="R1_SWY" library="3dprinter" deviceset="R-US_" device="R0603" value="10k"/>
<part name="R1_SWZ" library="3dprinter" deviceset="R-US_" device="R0603" value="10k"/>
<part name="GND22" library="supply" deviceset="GND" device=""/>
<part name="GND23" library="supply" deviceset="GND" device=""/>
<part name="GND24" library="supply" deviceset="GND" device=""/>
<part name="+3V1" library="supply" deviceset="+3V3" device=""/>
<part name="+3V3" library="supply" deviceset="+3V3" device=""/>
<part name="+3V4" library="supply" deviceset="+3V3" device=""/>
<part name="R2_FAN1" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="R1_FAN1" library="3dprinter" deviceset="R-US_" device="R0603" value="100R"/>
<part name="R2_FAN2" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="R1_FAN2" library="3dprinter" deviceset="R-US_" device="R0603" value="100R"/>
<part name="R2_NOZ" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="R1_NOZ" library="3dprinter" deviceset="R-US_" device="R0603" value="100R"/>
<part name="R2_BED" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="R1_BED" library="3dprinter" deviceset="R-US_" device="R0603" value="100R"/>
<part name="GND25" library="supply" deviceset="GND" device=""/>
<part name="GND26" library="supply" deviceset="GND" device=""/>
<part name="P+16" library="supply" deviceset="+12V" device=""/>
<part name="P+17" library="supply" deviceset="+12V" device=""/>
<part name="IC1_REG" library="3dprinter" deviceset="REGULATOR" device=""/>
<part name="D1_REG" library="3dprinter" deviceset="SCHOTTKY" device=""/>
<part name="C1_REG" library="3dprinter" deviceset="TANTULUM" device="" value="560u"/>
<part name="C2_REG" library="3dprinter" deviceset="TANTULUM" device="" value="390u"/>
<part name="L1_REG" library="3dprinter" deviceset="INDUCTOR" device="" value="33u"/>
<part name="P+18" library="supply" deviceset="+12V" device=""/>
<part name="GND27" library="supply" deviceset="GND" device=""/>
<part name="GND28" library="supply" deviceset="GND" device=""/>
<part name="GND29" library="supply" deviceset="GND" device=""/>
<part name="GND30" library="supply" deviceset="GND" device=""/>
<part name="P+19" library="supply" deviceset="+5V" device=""/>
<part name="IC2_REG" library="3dprinter" deviceset="LP2985-3V3" device=""/>
<part name="C4_REG" library="3dprinter" deviceset="C-EU" device="C0603" value="10n"/>
<part name="C5_REG" library="3dprinter" deviceset="C-EU" device="C0805" value="2.2u"/>
<part name="C3_REG" library="3dprinter" deviceset="C-EU" device="C0805" value="1u"/>
<part name="GND31" library="supply" deviceset="GND" device=""/>
<part name="GND32" library="supply" deviceset="GND" device=""/>
<part name="GND33" library="supply" deviceset="GND" device=""/>
<part name="GND35" library="supply" deviceset="GND" device=""/>
<part name="P+20" library="supply" deviceset="+12V" device=""/>
<part name="+3V5" library="supply" deviceset="+3V3" device=""/>
<part name="+12V" library="3dprinter" deviceset="MA04-1" device="5.08"/>
<part name="GND34" library="supply" deviceset="GND" device=""/>
<part name="BED" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="NOZZLE" library="3dprinter" deviceset="MA04-1" device="2.54"/>
<part name="TEMP_NOZZLE" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="TEMP_BED" library="3dprinter" deviceset="MA02-1" device="2.54"/>
<part name="GND36" library="supply" deviceset="GND" device=""/>
<part name="GND37" library="supply" deviceset="GND" device=""/>
<part name="R3_NOZ" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="R3_BED" library="3dprinter" deviceset="R-US_" device="R0603" value="100k"/>
<part name="+3V6" library="supply" deviceset="+3V3" device=""/>
<part name="+3V7" library="supply" deviceset="+3V3" device=""/>
<part name="+3V8" library="supply" deviceset="+3V3" device=""/>
<part name="+3V9" library="supply" deviceset="+3V3" device=""/>
<part name="+3V10" library="supply" deviceset="+3V3" device=""/>
<part name="+3V11" library="supply" deviceset="+3V3" device=""/>
<part name="CHG1_X" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="CHG2_X" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="+3V12" library="supply" deviceset="+3V3" device=""/>
<part name="+3V13" library="supply" deviceset="+3V3" device=""/>
<part name="COPå36" library="supply" deviceset="GND" device=""/>
<part name="COPå37" library="supply" deviceset="GND" device=""/>
<part name="CHG1_Y" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="CHG2_Y" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="+3V14" library="supply" deviceset="+3V3" device=""/>
<part name="+3V15" library="supply" deviceset="+3V3" device=""/>
<part name="COPå38" library="supply" deviceset="GND" device=""/>
<part name="COPå39" library="supply" deviceset="GND" device=""/>
<part name="CHG1_Z" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="CHG2_Z" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="+3V16" library="supply" deviceset="+3V3" device=""/>
<part name="+3V17" library="supply" deviceset="+3V3" device=""/>
<part name="COPå40" library="supply" deviceset="GND" device=""/>
<part name="COPå41" library="supply" deviceset="GND" device=""/>
<part name="CFG1_E" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="CFG2_E" library="3dprinter" deviceset="SJ2W" device=""/>
<part name="+3V18" library="supply" deviceset="+3V3" device=""/>
<part name="+3V19" library="supply" deviceset="+3V3" device=""/>
<part name="COPå42" library="supply" deviceset="GND" device=""/>
<part name="COPå43" library="supply" deviceset="GND" device=""/>
<part name="SWA" library="3dprinter" deviceset="BUTTON" device=""/>
<part name="R1_SWA" library="3dprinter" deviceset="R-US_" device="R0603" value="10k"/>
<part name="GND38" library="supply" deviceset="GND" device=""/>
<part name="+3V20" library="supply" deviceset="+3V3" device=""/>
<part name="LED" library="3dprinter" deviceset="RGBLED" device=""/>
<part name="R1_LED" library="3dprinter" deviceset="R-US_" device="R0603" value="100R"/>
<part name="GND39" library="supply" deviceset="GND" device=""/>
<part name="P0.17" library="3dprinter" deviceset="TP" device="B1,27"/>
<part name="P0.21" library="3dprinter" deviceset="TP" device="B1,27"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="327.66" y="238.76" size="1.778" layer="91">Raspberry Pi Header</text>
<text x="308.102" y="232.41" size="1.778" layer="91">                   3V3
(Not connected to board 3V3)</text>
<text x="60.96" y="78.74" size="1.778" layer="91">Close to +12V supply</text>
<text x="162.56" y="73.66" size="1.778" layer="91">PWM can be connected to any pin
P0.00 AREF0
P0.26 AIN0 XL2
P0.27 AIN1 XL1
P0.01 AIN2
P0.02 AIN3
P0.03 AIN4
P0.04 AIN5
P0.05 AIN6
P0.06 AIN7 AREF1</text>
</plain>
<instances>
<instance part="OUTLINE" gate="G$1" x="289.56" y="38.1"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="287.02" y="0"/>
<instance part="PI_HEADER" gate="G$1" x="337.82" y="200.66" rot="R180"/>
<instance part="IC1" gate="G$1" x="180.34" y="137.16"/>
<instance part="GND2" gate="1" x="327.66" y="170.18"/>
<instance part="GND4" gate="1" x="347.98" y="170.18"/>
<instance part="P+4" gate="1" x="347.98" y="233.68"/>
<instance part="C11" gate="G$1" x="264.16" y="139.7"/>
<instance part="C9" gate="G$1" x="243.84" y="139.7"/>
<instance part="GND5" gate="1" x="243.84" y="127"/>
<instance part="C10" gate="G$1" x="274.32" y="154.94"/>
<instance part="C12" gate="G$1" x="284.48" y="154.94"/>
<instance part="GND6" gate="1" x="274.32" y="144.78"/>
<instance part="GND7" gate="1" x="284.48" y="144.78"/>
<instance part="GND8" gate="1" x="157.48" y="101.6"/>
<instance part="GND9" gate="1" x="106.68" y="134.62"/>
<instance part="C13" gate="G$1" x="111.76" y="147.32"/>
<instance part="C14" gate="G$1" x="101.6" y="147.32"/>
<instance part="C15" gate="G$1" x="121.92" y="147.32"/>
<instance part="GND10" gate="1" x="121.92" y="134.62"/>
<instance part="Y1" gate="G$1" x="255.27" y="144.78"/>
<instance part="BAL" gate="G$1" x="182.88" y="190.5"/>
<instance part="ANT" gate="G$1" x="205.74" y="193.04"/>
<instance part="GND17" gate="1" x="167.64" y="180.34"/>
<instance part="C1" gate="G$1" x="157.48" y="182.88"/>
<instance part="GND18" gate="1" x="157.48" y="172.72"/>
<instance part="SWD" gate="1" x="342.9" y="149.86" rot="MR0"/>
<instance part="GND19" gate="1" x="327.66" y="139.7"/>
<instance part="+3V2" gate="G$1" x="101.6" y="160.02"/>
<instance part="Q1_BED" gate="G$1" x="68.58" y="53.34"/>
<instance part="Q1_NOZ" gate="G$1" x="129.54" y="53.34"/>
<instance part="Q1_FAN1" gate="G$1" x="193.04" y="50.8"/>
<instance part="Q1_FAN2" gate="G$1" x="231.14" y="50.8"/>
<instance part="FAN1" gate="G$1" x="205.74" y="63.5" rot="MR0"/>
<instance part="FAN2" gate="G$1" x="243.84" y="63.5" rot="MR0"/>
<instance part="GND20" gate="1" x="233.68" y="27.94"/>
<instance part="GND21" gate="1" x="195.58" y="27.94"/>
<instance part="P+14" gate="1" x="195.58" y="73.66"/>
<instance part="P+15" gate="1" x="233.68" y="73.66"/>
<instance part="END_X" gate="G$1" x="337.82" y="116.84" rot="MR0"/>
<instance part="END_Y" gate="G$1" x="337.82" y="93.98" rot="MR0"/>
<instance part="END_Z" gate="G$1" x="337.82" y="71.12" rot="MR0"/>
<instance part="R1_SWX" gate="G$1" x="322.58" y="124.46" rot="R90"/>
<instance part="R1_SWY" gate="G$1" x="322.58" y="101.6" rot="R90"/>
<instance part="R1_SWZ" gate="G$1" x="322.58" y="78.74" rot="R90"/>
<instance part="GND22" gate="1" x="327.66" y="109.22"/>
<instance part="GND23" gate="1" x="327.66" y="86.36"/>
<instance part="GND24" gate="1" x="327.66" y="63.5"/>
<instance part="+3V1" gate="G$1" x="322.58" y="134.62"/>
<instance part="+3V3" gate="G$1" x="322.58" y="111.76"/>
<instance part="+3V4" gate="G$1" x="322.58" y="88.9"/>
<instance part="R2_FAN1" gate="G$1" x="187.96" y="40.64" rot="R90"/>
<instance part="R1_FAN1" gate="G$1" x="177.8" y="48.26"/>
<instance part="R2_FAN2" gate="G$1" x="226.06" y="40.64" rot="R90"/>
<instance part="R1_FAN2" gate="G$1" x="215.9" y="48.26"/>
<instance part="R2_NOZ" gate="G$1" x="124.46" y="43.18" rot="R90"/>
<instance part="R1_NOZ" gate="G$1" x="114.3" y="50.8"/>
<instance part="R2_BED" gate="G$1" x="63.5" y="43.18" rot="R90"/>
<instance part="R1_BED" gate="G$1" x="53.34" y="50.8"/>
<instance part="GND25" gate="1" x="132.08" y="30.48"/>
<instance part="GND26" gate="1" x="71.12" y="30.48"/>
<instance part="P+16" gate="1" x="132.08" y="76.2"/>
<instance part="P+17" gate="1" x="71.12" y="76.2"/>
<instance part="IC1_REG" gate="G$1" x="78.74" y="238.76"/>
<instance part="D1_REG" gate="G$1" x="101.6" y="228.6" rot="R90"/>
<instance part="C1_REG" gate="G$1" x="45.72" y="236.22"/>
<instance part="C2_REG" gate="G$1" x="129.54" y="233.68"/>
<instance part="L1_REG" gate="G$1" x="116.84" y="238.76" rot="R90"/>
<instance part="P+18" gate="1" x="40.64" y="248.92"/>
<instance part="GND27" gate="1" x="60.96" y="220.98"/>
<instance part="GND28" gate="1" x="45.72" y="220.98"/>
<instance part="GND29" gate="1" x="101.6" y="220.98"/>
<instance part="GND30" gate="1" x="129.54" y="220.98"/>
<instance part="P+19" gate="1" x="137.16" y="251.46"/>
<instance part="IC2_REG" gate="G$1" x="78.74" y="195.58"/>
<instance part="C4_REG" gate="G$1" x="104.14" y="190.5"/>
<instance part="C5_REG" gate="G$1" x="111.76" y="190.5"/>
<instance part="C3_REG" gate="G$1" x="53.34" y="195.58"/>
<instance part="GND31" gate="1" x="111.76" y="180.34"/>
<instance part="GND32" gate="1" x="104.14" y="180.34"/>
<instance part="GND33" gate="1" x="53.34" y="182.88"/>
<instance part="GND35" gate="1" x="96.52" y="180.34"/>
<instance part="P+20" gate="1" x="53.34" y="208.28"/>
<instance part="+3V5" gate="G$1" x="111.76" y="208.28"/>
<instance part="+12V" gate="1" x="17.78" y="241.3"/>
<instance part="GND34" gate="1" x="27.94" y="228.6"/>
<instance part="BED" gate="1" x="81.28" y="66.04" rot="MR0"/>
<instance part="NOZZLE" gate="1" x="142.24" y="66.04" rot="MR0"/>
<instance part="TEMP_NOZZLE" gate="G$1" x="114.3" y="73.66" rot="MR0"/>
<instance part="TEMP_BED" gate="G$1" x="53.34" y="73.66" rot="MR0"/>
<instance part="GND36" gate="1" x="104.14" y="66.04"/>
<instance part="GND37" gate="1" x="43.18" y="66.04"/>
<instance part="R3_NOZ" gate="G$1" x="104.14" y="81.28" rot="R90"/>
<instance part="R3_BED" gate="G$1" x="43.18" y="81.28" rot="R90"/>
<instance part="+3V6" gate="G$1" x="104.14" y="91.44"/>
<instance part="+3V7" gate="G$1" x="43.18" y="91.44"/>
<instance part="SWA" gate="G$1" x="226.06" y="228.6"/>
<instance part="R1_SWA" gate="G$1" x="226.06" y="243.84" rot="R90"/>
<instance part="GND38" gate="1" x="226.06" y="218.44"/>
<instance part="+3V20" gate="G$1" x="226.06" y="254"/>
<instance part="LED" gate="G$1" x="205.74" y="228.6"/>
<instance part="R1_LED" gate="G$1" x="205.74" y="238.76" rot="R270"/>
<instance part="GND39" gate="1" x="205.74" y="218.44"/>
<instance part="P0.17" gate="G$1" x="248.92" y="111.76"/>
<instance part="P0.21" gate="G$1" x="254" y="111.76"/>
</instances>
<busses>
</busses>
<nets>
<net name="PI_10_MOSI" class="0">
<segment>
<wire x1="330.2" y1="203.2" x2="309.88" y2="203.2" width="0.1524" layer="91"/>
<label x="309.88" y="203.2" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="19"/>
</segment>
</net>
<net name="PI_21" class="0">
<segment>
<wire x1="358.14" y1="177.8" x2="345.44" y2="177.8" width="0.1524" layer="91"/>
<label x="353.06" y="177.8" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="40"/>
</segment>
</net>
<net name="PI_02_SDA1" class="0">
<segment>
<wire x1="330.2" y1="223.52" x2="309.88" y2="223.52" width="0.1524" layer="91"/>
<label x="309.88" y="223.52" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="3"/>
</segment>
</net>
<net name="PI_03_SCL1" class="0">
<segment>
<wire x1="330.2" y1="220.98" x2="309.88" y2="220.98" width="0.1524" layer="91"/>
<label x="309.88" y="220.98" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="5"/>
</segment>
</net>
<net name="PI_04" class="0">
<segment>
<wire x1="330.2" y1="218.44" x2="309.88" y2="218.44" width="0.1524" layer="91"/>
<label x="309.88" y="218.44" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="7"/>
</segment>
</net>
<net name="PI_17" class="0">
<segment>
<wire x1="330.2" y1="213.36" x2="309.88" y2="213.36" width="0.1524" layer="91"/>
<label x="309.88" y="213.36" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="11"/>
</segment>
</net>
<net name="PI_27" class="0">
<segment>
<wire x1="330.2" y1="210.82" x2="309.88" y2="210.82" width="0.1524" layer="91"/>
<label x="309.88" y="210.82" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="13"/>
</segment>
</net>
<net name="PI_22" class="0">
<segment>
<wire x1="330.2" y1="208.28" x2="309.88" y2="208.28" width="0.1524" layer="91"/>
<label x="309.88" y="208.28" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="15"/>
</segment>
</net>
<net name="PI_09_MISO" class="0">
<segment>
<wire x1="330.2" y1="200.66" x2="309.88" y2="200.66" width="0.1524" layer="91"/>
<label x="309.88" y="200.66" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="21"/>
</segment>
</net>
<net name="PI_11_SCK" class="0">
<segment>
<wire x1="330.2" y1="198.12" x2="309.88" y2="198.12" width="0.1524" layer="91"/>
<label x="309.88" y="198.12" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="23"/>
</segment>
</net>
<net name="PI_ID_SD" class="0">
<segment>
<wire x1="330.2" y1="193.04" x2="309.88" y2="193.04" width="0.1524" layer="91"/>
<label x="309.88" y="193.04" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="27"/>
</segment>
</net>
<net name="PI_05" class="0">
<segment>
<wire x1="330.2" y1="190.5" x2="309.88" y2="190.5" width="0.1524" layer="91"/>
<label x="309.88" y="190.5" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="29"/>
</segment>
</net>
<net name="PI_06" class="0">
<segment>
<wire x1="330.2" y1="187.96" x2="309.88" y2="187.96" width="0.1524" layer="91"/>
<label x="309.88" y="187.96" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="31"/>
</segment>
</net>
<net name="PI_13" class="0">
<segment>
<wire x1="330.2" y1="185.42" x2="309.88" y2="185.42" width="0.1524" layer="91"/>
<label x="309.88" y="185.42" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="33"/>
</segment>
</net>
<net name="PI_19" class="0">
<segment>
<wire x1="330.2" y1="182.88" x2="309.88" y2="182.88" width="0.1524" layer="91"/>
<label x="309.88" y="182.88" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="35"/>
</segment>
</net>
<net name="PI_26" class="0">
<segment>
<wire x1="330.2" y1="180.34" x2="309.88" y2="180.34" width="0.1524" layer="91"/>
<label x="309.88" y="180.34" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="37"/>
</segment>
</net>
<net name="PI_14_TXD0" class="0">
<segment>
<wire x1="358.14" y1="218.44" x2="345.44" y2="218.44" width="0.1524" layer="91"/>
<label x="353.06" y="218.44" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="8"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.06"/>
<wire x1="160.02" y1="132.08" x2="147.32" y2="132.08" width="0.1524" layer="91"/>
<label x="147.32" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="PI_15_RXD0" class="0">
<segment>
<wire x1="358.14" y1="215.9" x2="345.44" y2="215.9" width="0.1524" layer="91"/>
<label x="353.06" y="215.9" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="10"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.07"/>
<wire x1="160.02" y1="129.54" x2="147.32" y2="129.54" width="0.1524" layer="91"/>
<label x="147.32" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="PI_18" class="0">
<segment>
<wire x1="358.14" y1="213.36" x2="345.44" y2="213.36" width="0.1524" layer="91"/>
<label x="353.06" y="213.36" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="12"/>
</segment>
</net>
<net name="PI_23" class="0">
<segment>
<wire x1="358.14" y1="208.28" x2="345.44" y2="208.28" width="0.1524" layer="91"/>
<label x="353.06" y="208.28" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="16"/>
</segment>
</net>
<net name="PI_24" class="0">
<segment>
<wire x1="358.14" y1="205.74" x2="345.44" y2="205.74" width="0.1524" layer="91"/>
<label x="353.06" y="205.74" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="18"/>
</segment>
</net>
<net name="PI_25" class="0">
<segment>
<wire x1="358.14" y1="200.66" x2="345.44" y2="200.66" width="0.1524" layer="91"/>
<label x="353.06" y="200.66" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="22"/>
</segment>
</net>
<net name="PI_08_CE0" class="0">
<segment>
<wire x1="358.14" y1="198.12" x2="345.44" y2="198.12" width="0.1524" layer="91"/>
<label x="353.06" y="198.12" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="24"/>
</segment>
</net>
<net name="PI_07_CE1" class="0">
<segment>
<wire x1="358.14" y1="195.58" x2="345.44" y2="195.58" width="0.1524" layer="91"/>
<label x="353.06" y="195.58" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="26"/>
</segment>
</net>
<net name="PI_ID_SC" class="0">
<segment>
<wire x1="358.14" y1="193.04" x2="345.44" y2="193.04" width="0.1524" layer="91"/>
<label x="353.06" y="193.04" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="28"/>
</segment>
</net>
<net name="PI_12" class="0">
<segment>
<wire x1="358.14" y1="187.96" x2="345.44" y2="187.96" width="0.1524" layer="91"/>
<label x="353.06" y="187.96" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="32"/>
</segment>
</net>
<net name="PI_16" class="0">
<segment>
<wire x1="358.14" y1="182.88" x2="345.44" y2="182.88" width="0.1524" layer="91"/>
<label x="353.06" y="182.88" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="36"/>
</segment>
</net>
<net name="PI_20" class="0">
<segment>
<wire x1="358.14" y1="180.34" x2="345.44" y2="180.34" width="0.1524" layer="91"/>
<label x="353.06" y="180.34" size="1.778" layer="95"/>
<pinref part="PI_HEADER" gate="G$1" pin="38"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="PI_HEADER" gate="G$1" pin="4"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="345.44" y1="223.52" x2="347.98" y2="223.52" width="0.1524" layer="91"/>
<wire x1="347.98" y1="223.52" x2="347.98" y2="226.06" width="0.1524" layer="91"/>
<wire x1="347.98" y1="226.06" x2="347.98" y2="231.14" width="0.1524" layer="91"/>
<pinref part="PI_HEADER" gate="G$1" pin="2"/>
<wire x1="345.44" y1="226.06" x2="347.98" y2="226.06" width="0.1524" layer="91"/>
<junction x="347.98" y="226.06"/>
</segment>
<segment>
<pinref part="L1_REG" gate="G$1" pin="2"/>
<pinref part="C2_REG" gate="G$1" pin="+"/>
<wire x1="124.46" y1="238.76" x2="127" y2="238.76" width="0.1524" layer="91"/>
<wire x1="127" y1="238.76" x2="129.54" y2="238.76" width="0.1524" layer="91"/>
<wire x1="129.54" y1="238.76" x2="129.54" y2="236.22" width="0.1524" layer="91"/>
<wire x1="129.54" y1="238.76" x2="137.16" y2="238.76" width="0.1524" layer="91"/>
<junction x="129.54" y="238.76"/>
<pinref part="IC1_REG" gate="G$1" pin="FEEDBACK"/>
<wire x1="127" y1="238.76" x2="127" y2="243.84" width="0.1524" layer="91"/>
<wire x1="127" y1="243.84" x2="93.98" y2="243.84" width="0.1524" layer="91"/>
<junction x="127" y="238.76"/>
<pinref part="P+19" gate="1" pin="+5V"/>
<wire x1="137.16" y1="238.76" x2="137.16" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="PI_HEADER" gate="G$1" pin="34"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="345.44" y1="185.42" x2="347.98" y2="185.42" width="0.1524" layer="91"/>
<wire x1="347.98" y1="185.42" x2="347.98" y2="172.72" width="0.1524" layer="91"/>
<pinref part="PI_HEADER" gate="G$1" pin="30"/>
<wire x1="345.44" y1="190.5" x2="347.98" y2="190.5" width="0.1524" layer="91"/>
<wire x1="347.98" y1="190.5" x2="347.98" y2="185.42" width="0.1524" layer="91"/>
<junction x="347.98" y="185.42"/>
<pinref part="PI_HEADER" gate="G$1" pin="20"/>
<wire x1="345.44" y1="203.2" x2="347.98" y2="203.2" width="0.1524" layer="91"/>
<wire x1="347.98" y1="203.2" x2="347.98" y2="190.5" width="0.1524" layer="91"/>
<junction x="347.98" y="190.5"/>
<pinref part="PI_HEADER" gate="G$1" pin="14"/>
<wire x1="345.44" y1="210.82" x2="347.98" y2="210.82" width="0.1524" layer="91"/>
<wire x1="347.98" y1="210.82" x2="347.98" y2="203.2" width="0.1524" layer="91"/>
<junction x="347.98" y="203.2"/>
<pinref part="PI_HEADER" gate="G$1" pin="6"/>
<wire x1="345.44" y1="220.98" x2="347.98" y2="220.98" width="0.1524" layer="91"/>
<wire x1="347.98" y1="220.98" x2="347.98" y2="210.82" width="0.1524" layer="91"/>
<junction x="347.98" y="210.82"/>
</segment>
<segment>
<wire x1="330.2" y1="177.8" x2="327.66" y2="177.8" width="0.1524" layer="91"/>
<pinref part="PI_HEADER" gate="G$1" pin="39"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="327.66" y1="177.8" x2="327.66" y2="172.72" width="0.1524" layer="91"/>
<wire x1="330.2" y1="195.58" x2="327.66" y2="195.58" width="0.1524" layer="91"/>
<pinref part="PI_HEADER" gate="G$1" pin="25"/>
<wire x1="327.66" y1="195.58" x2="327.66" y2="177.8" width="0.1524" layer="91"/>
<junction x="327.66" y="177.8"/>
<wire x1="330.2" y1="215.9" x2="327.66" y2="215.9" width="0.1524" layer="91"/>
<pinref part="PI_HEADER" gate="G$1" pin="9"/>
<wire x1="327.66" y1="215.9" x2="327.66" y2="195.58" width="0.1524" layer="91"/>
<junction x="327.66" y="195.58"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="284.48" y1="147.32" x2="284.48" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="274.32" y1="147.32" x2="274.32" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="243.84" y1="134.62" x2="243.84" y2="132.08" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="243.84" y1="132.08" x2="243.84" y2="129.54" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="264.16" y1="132.08" x2="264.16" y2="134.62" width="0.1524" layer="91"/>
<wire x1="264.16" y1="132.08" x2="254" y2="132.08" width="0.1524" layer="91"/>
<junction x="243.84" y="132.08"/>
<pinref part="Y1" gate="G$1" pin="2"/>
<wire x1="254" y1="132.08" x2="243.84" y2="132.08" width="0.1524" layer="91"/>
<wire x1="254" y1="137.16" x2="254" y2="132.08" width="0.1524" layer="91"/>
<junction x="254" y="132.08"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VSS"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="160.02" y1="106.68" x2="157.48" y2="106.68" width="0.1524" layer="91"/>
<wire x1="157.48" y1="106.68" x2="157.48" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="106.68" y1="137.16" x2="106.68" y2="139.7" width="0.1524" layer="91"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="106.68" y1="139.7" x2="101.6" y2="139.7" width="0.1524" layer="91"/>
<wire x1="101.6" y1="139.7" x2="101.6" y2="142.24" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="106.68" y1="139.7" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<wire x1="111.76" y1="139.7" x2="111.76" y2="142.24" width="0.1524" layer="91"/>
<junction x="106.68" y="139.7"/>
</segment>
<segment>
<pinref part="C15" gate="G$1" pin="2"/>
<wire x1="121.92" y1="142.24" x2="121.92" y2="137.16" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND17" gate="1" pin="GND"/>
<pinref part="BAL" gate="G$1" pin="GND"/>
<wire x1="167.64" y1="182.88" x2="167.64" y2="185.42" width="0.1524" layer="91"/>
<wire x1="167.64" y1="185.42" x2="170.18" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND18" gate="1" pin="GND"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="157.48" y1="175.26" x2="157.48" y2="177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SWD" gate="1" pin="1"/>
<wire x1="335.28" y1="144.78" x2="327.66" y2="144.78" width="0.1524" layer="91"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="327.66" y1="142.24" x2="327.66" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1_FAN2" gate="G$1" pin="S"/>
<wire x1="233.68" y1="45.72" x2="233.68" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND20" gate="1" pin="GND"/>
<pinref part="R2_FAN2" gate="G$1" pin="1"/>
<wire x1="233.68" y1="33.02" x2="233.68" y2="30.48" width="0.1524" layer="91"/>
<wire x1="226.06" y1="35.56" x2="226.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="226.06" y1="33.02" x2="233.68" y2="33.02" width="0.1524" layer="91"/>
<junction x="233.68" y="33.02"/>
</segment>
<segment>
<pinref part="Q1_FAN1" gate="G$1" pin="S"/>
<wire x1="195.58" y1="45.72" x2="195.58" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND21" gate="1" pin="GND"/>
<pinref part="R2_FAN1" gate="G$1" pin="1"/>
<wire x1="195.58" y1="33.02" x2="195.58" y2="30.48" width="0.1524" layer="91"/>
<wire x1="187.96" y1="35.56" x2="187.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="187.96" y1="33.02" x2="195.58" y2="33.02" width="0.1524" layer="91"/>
<junction x="195.58" y="33.02"/>
</segment>
<segment>
<pinref part="END_X" gate="G$1" pin="1"/>
<wire x1="330.2" y1="114.3" x2="327.66" y2="114.3" width="0.1524" layer="91"/>
<wire x1="327.66" y1="114.3" x2="327.66" y2="111.76" width="0.1524" layer="91"/>
<pinref part="GND22" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="END_Y" gate="G$1" pin="1"/>
<wire x1="330.2" y1="91.44" x2="327.66" y2="91.44" width="0.1524" layer="91"/>
<wire x1="327.66" y1="91.44" x2="327.66" y2="88.9" width="0.1524" layer="91"/>
<pinref part="GND23" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="END_Z" gate="G$1" pin="1"/>
<wire x1="330.2" y1="68.58" x2="327.66" y2="68.58" width="0.1524" layer="91"/>
<wire x1="327.66" y1="68.58" x2="327.66" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND24" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="R2_BED" gate="G$1" pin="1"/>
<wire x1="63.5" y1="38.1" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<wire x1="63.5" y1="35.56" x2="71.12" y2="35.56" width="0.1524" layer="91"/>
<pinref part="GND26" gate="1" pin="GND"/>
<wire x1="71.12" y1="33.02" x2="71.12" y2="35.56" width="0.1524" layer="91"/>
<pinref part="Q1_BED" gate="G$1" pin="S"/>
<wire x1="71.12" y1="35.56" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<junction x="71.12" y="35.56"/>
</segment>
<segment>
<pinref part="R2_NOZ" gate="G$1" pin="1"/>
<wire x1="124.46" y1="38.1" x2="124.46" y2="35.56" width="0.1524" layer="91"/>
<wire x1="124.46" y1="35.56" x2="132.08" y2="35.56" width="0.1524" layer="91"/>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="132.08" y1="33.02" x2="132.08" y2="35.56" width="0.1524" layer="91"/>
<pinref part="Q1_NOZ" gate="G$1" pin="S"/>
<wire x1="132.08" y1="35.56" x2="132.08" y2="48.26" width="0.1524" layer="91"/>
<junction x="132.08" y="35.56"/>
</segment>
<segment>
<pinref part="C1_REG" gate="G$1" pin="-"/>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="45.72" y1="231.14" x2="45.72" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND27" gate="1" pin="GND"/>
<pinref part="IC1_REG" gate="G$1" pin="GND"/>
<wire x1="60.96" y1="223.52" x2="60.96" y2="233.68" width="0.1524" layer="91"/>
<wire x1="60.96" y1="233.68" x2="63.5" y2="233.68" width="0.1524" layer="91"/>
<pinref part="IC1_REG" gate="G$1" pin="!ON!/OFF"/>
<wire x1="60.96" y1="233.68" x2="60.96" y2="236.22" width="0.1524" layer="91"/>
<wire x1="60.96" y1="236.22" x2="63.5" y2="236.22" width="0.1524" layer="91"/>
<junction x="60.96" y="233.68"/>
</segment>
<segment>
<pinref part="D1_REG" gate="G$1" pin="A"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="101.6" y1="226.06" x2="101.6" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2_REG" gate="G$1" pin="-"/>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="129.54" y1="228.6" x2="129.54" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4_REG" gate="G$1" pin="2"/>
<pinref part="GND32" gate="1" pin="GND"/>
<wire x1="104.14" y1="182.88" x2="104.14" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND31" gate="1" pin="GND"/>
<pinref part="C5_REG" gate="G$1" pin="2"/>
<wire x1="111.76" y1="182.88" x2="111.76" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND33" gate="1" pin="GND"/>
<pinref part="C3_REG" gate="G$1" pin="2"/>
<wire x1="53.34" y1="185.42" x2="53.34" y2="190.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND35" gate="1" pin="GND"/>
<pinref part="IC2_REG" gate="G$1" pin="GND"/>
<wire x1="96.52" y1="182.88" x2="96.52" y2="190.5" width="0.1524" layer="91"/>
<wire x1="96.52" y1="190.5" x2="93.98" y2="190.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+12V" gate="1" pin="2"/>
<wire x1="25.4" y1="238.76" x2="27.94" y2="238.76" width="0.1524" layer="91"/>
<wire x1="27.94" y1="238.76" x2="27.94" y2="236.22" width="0.1524" layer="91"/>
<pinref part="+12V" gate="1" pin="1"/>
<wire x1="27.94" y1="236.22" x2="27.94" y2="231.14" width="0.1524" layer="91"/>
<wire x1="25.4" y1="236.22" x2="27.94" y2="236.22" width="0.1524" layer="91"/>
<junction x="27.94" y="236.22"/>
<pinref part="GND34" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="TEMP_BED" gate="G$1" pin="1"/>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="45.72" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="71.12" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TEMP_NOZZLE" gate="G$1" pin="1"/>
<pinref part="GND36" gate="1" pin="GND"/>
<wire x1="106.68" y1="71.12" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<wire x1="104.14" y1="71.12" x2="104.14" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND38" gate="1" pin="GND"/>
<pinref part="SWA" gate="G$1" pin="1"/>
<wire x1="226.06" y1="220.98" x2="226.06" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND39" gate="1" pin="GND"/>
<pinref part="LED" gate="G$1" pin="C"/>
<wire x1="205.74" y1="223.52" x2="205.74" y2="220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="101.6" y1="149.86" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
<wire x1="101.6" y1="154.94" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="111.76" y1="149.86" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<wire x1="160.02" y1="154.94" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<junction x="111.76" y="154.94"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="101.6" y1="157.48" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
<junction x="101.6" y="154.94"/>
</segment>
<segment>
<pinref part="R1_SWX" gate="G$1" pin="2"/>
<wire x1="322.58" y1="129.54" x2="322.58" y2="132.08" width="0.1524" layer="91"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="R1_SWY" gate="G$1" pin="2"/>
<wire x1="322.58" y1="106.68" x2="322.58" y2="109.22" width="0.1524" layer="91"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="R1_SWZ" gate="G$1" pin="2"/>
<wire x1="322.58" y1="83.82" x2="322.58" y2="86.36" width="0.1524" layer="91"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="C5_REG" gate="G$1" pin="1"/>
<pinref part="IC2_REG" gate="G$1" pin="VOUT"/>
<wire x1="111.76" y1="193.04" x2="111.76" y2="200.66" width="0.1524" layer="91"/>
<wire x1="111.76" y1="200.66" x2="93.98" y2="200.66" width="0.1524" layer="91"/>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
<wire x1="111.76" y1="205.74" x2="111.76" y2="200.66" width="0.1524" layer="91"/>
<junction x="111.76" y="200.66"/>
</segment>
<segment>
<pinref part="R3_BED" gate="G$1" pin="2"/>
<pinref part="+3V7" gate="G$1" pin="+3V3"/>
<wire x1="43.18" y1="86.36" x2="43.18" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3_NOZ" gate="G$1" pin="2"/>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
<wire x1="104.14" y1="86.36" x2="104.14" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R1_SWA" gate="G$1" pin="2"/>
<wire x1="226.06" y1="248.92" x2="226.06" y2="251.46" width="0.1524" layer="91"/>
<pinref part="+3V20" gate="G$1" pin="+3V3"/>
</segment>
</net>
<net name="IC1_XC2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="XC2"/>
<wire x1="200.66" y1="157.48" x2="243.84" y2="157.48" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="243.84" y1="157.48" x2="243.84" y2="144.78" width="0.1524" layer="91"/>
<wire x1="243.84" y1="144.78" x2="243.84" y2="142.24" width="0.1524" layer="91"/>
<wire x1="243.84" y1="144.78" x2="246.38" y2="144.78" width="0.1524" layer="91"/>
<junction x="243.84" y="144.78"/>
<pinref part="Y1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="IC1_XC1" class="0">
<segment>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="264.16" y1="144.78" x2="264.16" y2="142.24" width="0.1524" layer="91"/>
<wire x1="264.16" y1="144.78" x2="261.62" y2="144.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="XC1"/>
<wire x1="200.66" y1="160.02" x2="264.16" y2="160.02" width="0.1524" layer="91"/>
<wire x1="264.16" y1="160.02" x2="264.16" y2="144.78" width="0.1524" layer="91"/>
<junction x="264.16" y="144.78"/>
<pinref part="Y1" gate="G$1" pin="3"/>
</segment>
</net>
<net name="IC1_DEC1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DEC1"/>
<wire x1="200.66" y1="165.1" x2="284.48" y2="165.1" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<wire x1="284.48" y1="165.1" x2="284.48" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IC1_DEC2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="DEC2"/>
<wire x1="200.66" y1="162.56" x2="274.32" y2="162.56" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="274.32" y1="162.56" x2="274.32" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IC1_AVDD" class="0">
<segment>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="121.92" y1="152.4" x2="121.92" y2="149.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="AVDD"/>
<wire x1="160.02" y1="152.4" x2="121.92" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SWDIO/NRESET"/>
<wire x1="200.66" y1="154.94" x2="213.36" y2="154.94" width="0.1524" layer="91"/>
<label x="203.2" y="154.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SWD" gate="1" pin="3"/>
<wire x1="335.28" y1="149.86" x2="330.2" y2="149.86" width="0.1524" layer="91"/>
<label x="325.12" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWDCLK" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SWDCLK"/>
<wire x1="200.66" y1="152.4" x2="213.36" y2="152.4" width="0.1524" layer="91"/>
<label x="203.2" y="152.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SWD" gate="1" pin="2"/>
<wire x1="335.28" y1="147.32" x2="330.2" y2="147.32" width="0.1524" layer="91"/>
<label x="325.12" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="ANT" class="0">
<segment>
<pinref part="ANT" gate="G$1" pin="1"/>
<pinref part="BAL" gate="G$1" pin="UBAL"/>
<wire x1="200.66" y1="193.04" x2="195.58" y2="193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IC1_VDD_PA" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="BAL" gate="G$1" pin="DC"/>
<wire x1="157.48" y1="185.42" x2="157.48" y2="187.96" width="0.1524" layer="91"/>
<wire x1="157.48" y1="187.96" x2="170.18" y2="187.96" width="0.1524" layer="91"/>
<wire x1="157.48" y1="187.96" x2="147.32" y2="187.96" width="0.1524" layer="91"/>
<junction x="157.48" y="187.96"/>
<pinref part="IC1" gate="G$1" pin="VDD_PA"/>
<wire x1="147.32" y1="187.96" x2="147.32" y2="160.02" width="0.1524" layer="91"/>
<wire x1="147.32" y1="160.02" x2="160.02" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IC1_ANT1" class="0">
<segment>
<pinref part="BAL" gate="G$1" pin="BAL1"/>
<wire x1="149.86" y1="165.1" x2="149.86" y2="193.04" width="0.1524" layer="91"/>
<wire x1="149.86" y1="193.04" x2="170.18" y2="193.04" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="ANT2"/>
<wire x1="160.02" y1="165.1" x2="149.86" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IC1_ANT2" class="0">
<segment>
<pinref part="BAL" gate="G$1" pin="BAL2"/>
<wire x1="152.4" y1="162.56" x2="152.4" y2="190.5" width="0.1524" layer="91"/>
<wire x1="152.4" y1="190.5" x2="170.18" y2="190.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="ANT1"/>
<wire x1="160.02" y1="162.56" x2="152.4" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PI_3V3" class="0">
<segment>
<pinref part="PI_HEADER" gate="G$1" pin="1"/>
<wire x1="325.12" y1="226.06" x2="325.12" y2="231.14" width="0.1524" layer="91"/>
<wire x1="330.2" y1="226.06" x2="325.12" y2="226.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FAN1-" class="0">
<segment>
<pinref part="FAN1" gate="G$1" pin="1"/>
<pinref part="Q1_FAN1" gate="G$1" pin="D"/>
<wire x1="198.12" y1="60.96" x2="195.58" y2="60.96" width="0.1524" layer="91"/>
<wire x1="195.58" y1="60.96" x2="195.58" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FAN2-" class="0">
<segment>
<pinref part="FAN2" gate="G$1" pin="1"/>
<pinref part="Q1_FAN2" gate="G$1" pin="D"/>
<wire x1="236.22" y1="60.96" x2="233.68" y2="60.96" width="0.1524" layer="91"/>
<wire x1="233.68" y1="60.96" x2="233.68" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FAN1G" class="0">
<segment>
<pinref part="Q1_FAN1" gate="G$1" pin="G"/>
<wire x1="190.5" y1="48.26" x2="187.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="R1_FAN1" gate="G$1" pin="2"/>
<pinref part="R2_FAN1" gate="G$1" pin="2"/>
<wire x1="187.96" y1="48.26" x2="182.88" y2="48.26" width="0.1524" layer="91"/>
<wire x1="187.96" y1="48.26" x2="187.96" y2="45.72" width="0.1524" layer="91"/>
<junction x="187.96" y="48.26"/>
</segment>
</net>
<net name="+12V" class="0">
<segment>
<pinref part="FAN1" gate="G$1" pin="2"/>
<wire x1="198.12" y1="63.5" x2="195.58" y2="63.5" width="0.1524" layer="91"/>
<wire x1="195.58" y1="63.5" x2="195.58" y2="71.12" width="0.1524" layer="91"/>
<pinref part="P+14" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="FAN2" gate="G$1" pin="2"/>
<wire x1="236.22" y1="63.5" x2="233.68" y2="63.5" width="0.1524" layer="91"/>
<wire x1="233.68" y1="63.5" x2="233.68" y2="71.12" width="0.1524" layer="91"/>
<pinref part="P+15" gate="1" pin="+12V"/>
</segment>
<segment>
<pinref part="P+16" gate="1" pin="+12V"/>
<wire x1="134.62" y1="66.04" x2="132.08" y2="66.04" width="0.1524" layer="91"/>
<wire x1="132.08" y1="66.04" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
<pinref part="NOZZLE" gate="1" pin="3"/>
<pinref part="NOZZLE" gate="1" pin="4"/>
<wire x1="132.08" y1="68.58" x2="132.08" y2="73.66" width="0.1524" layer="91"/>
<wire x1="134.62" y1="68.58" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
<junction x="132.08" y="68.58"/>
</segment>
<segment>
<pinref part="P+17" gate="1" pin="+12V"/>
<wire x1="73.66" y1="66.04" x2="71.12" y2="66.04" width="0.1524" layer="91"/>
<wire x1="71.12" y1="66.04" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<pinref part="BED" gate="1" pin="3"/>
<pinref part="BED" gate="1" pin="4"/>
<wire x1="71.12" y1="68.58" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="68.58" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
<junction x="71.12" y="68.58"/>
</segment>
<segment>
<pinref part="P+18" gate="1" pin="+12V"/>
<pinref part="IC1_REG" gate="G$1" pin="VIN"/>
<wire x1="40.64" y1="246.38" x2="40.64" y2="241.3" width="0.1524" layer="91"/>
<wire x1="40.64" y1="241.3" x2="45.72" y2="241.3" width="0.1524" layer="91"/>
<pinref part="C1_REG" gate="G$1" pin="+"/>
<wire x1="45.72" y1="241.3" x2="63.5" y2="241.3" width="0.1524" layer="91"/>
<wire x1="45.72" y1="238.76" x2="45.72" y2="241.3" width="0.1524" layer="91"/>
<junction x="45.72" y="241.3"/>
<wire x1="40.64" y1="241.3" x2="27.94" y2="241.3" width="0.1524" layer="91"/>
<junction x="40.64" y="241.3"/>
<pinref part="+12V" gate="1" pin="3"/>
<pinref part="+12V" gate="1" pin="4"/>
<wire x1="27.94" y1="241.3" x2="25.4" y2="241.3" width="0.1524" layer="91"/>
<wire x1="25.4" y1="243.84" x2="27.94" y2="243.84" width="0.1524" layer="91"/>
<wire x1="27.94" y1="243.84" x2="27.94" y2="241.3" width="0.1524" layer="91"/>
<junction x="27.94" y="241.3"/>
</segment>
<segment>
<pinref part="C3_REG" gate="G$1" pin="1"/>
<pinref part="IC2_REG" gate="G$1" pin="VIN"/>
<wire x1="53.34" y1="198.12" x2="53.34" y2="200.66" width="0.1524" layer="91"/>
<wire x1="53.34" y1="200.66" x2="60.96" y2="200.66" width="0.1524" layer="91"/>
<pinref part="IC2_REG" gate="G$1" pin="ON/!OFF"/>
<wire x1="60.96" y1="200.66" x2="63.5" y2="200.66" width="0.1524" layer="91"/>
<wire x1="63.5" y1="190.5" x2="60.96" y2="190.5" width="0.1524" layer="91"/>
<wire x1="60.96" y1="190.5" x2="60.96" y2="200.66" width="0.1524" layer="91"/>
<junction x="60.96" y="200.66"/>
<pinref part="P+20" gate="1" pin="+12V"/>
<wire x1="53.34" y1="205.74" x2="53.34" y2="200.66" width="0.1524" layer="91"/>
<junction x="53.34" y="200.66"/>
</segment>
</net>
<net name="SWZ" class="0">
<segment>
<pinref part="END_Z" gate="G$1" pin="2"/>
<pinref part="R1_SWZ" gate="G$1" pin="1"/>
<wire x1="330.2" y1="71.12" x2="322.58" y2="71.12" width="0.1524" layer="91"/>
<wire x1="322.58" y1="71.12" x2="322.58" y2="73.66" width="0.1524" layer="91"/>
<wire x1="322.58" y1="71.12" x2="312.42" y2="71.12" width="0.1524" layer="91"/>
<junction x="322.58" y="71.12"/>
<label x="312.42" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.01"/>
<wire x1="160.02" y1="144.78" x2="147.32" y2="144.78" width="0.1524" layer="91"/>
<label x="147.32" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWY" class="0">
<segment>
<pinref part="END_Y" gate="G$1" pin="2"/>
<pinref part="R1_SWY" gate="G$1" pin="1"/>
<wire x1="330.2" y1="93.98" x2="322.58" y2="93.98" width="0.1524" layer="91"/>
<wire x1="322.58" y1="93.98" x2="322.58" y2="96.52" width="0.1524" layer="91"/>
<wire x1="322.58" y1="93.98" x2="312.42" y2="93.98" width="0.1524" layer="91"/>
<junction x="322.58" y="93.98"/>
<label x="312.42" y="93.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.00"/>
<wire x1="160.02" y1="147.32" x2="147.32" y2="147.32" width="0.1524" layer="91"/>
<label x="147.32" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWX" class="0">
<segment>
<pinref part="END_X" gate="G$1" pin="2"/>
<pinref part="R1_SWX" gate="G$1" pin="1"/>
<wire x1="330.2" y1="116.84" x2="322.58" y2="116.84" width="0.1524" layer="91"/>
<wire x1="322.58" y1="116.84" x2="322.58" y2="119.38" width="0.1524" layer="91"/>
<wire x1="322.58" y1="116.84" x2="312.42" y2="116.84" width="0.1524" layer="91"/>
<junction x="322.58" y="116.84"/>
<label x="312.42" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.30"/>
<wire x1="213.36" y1="147.32" x2="200.66" y2="147.32" width="0.1524" layer="91"/>
<label x="203.2" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="FAN1" class="0">
<segment>
<pinref part="R1_FAN1" gate="G$1" pin="1"/>
<wire x1="172.72" y1="48.26" x2="170.18" y2="48.26" width="0.1524" layer="91"/>
<label x="167.64" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.24"/>
<wire x1="213.36" y1="132.08" x2="200.66" y2="132.08" width="0.1524" layer="91"/>
<label x="203.2" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="FAN2" class="0">
<segment>
<pinref part="R1_FAN2" gate="G$1" pin="1"/>
<wire x1="210.82" y1="48.26" x2="208.28" y2="48.26" width="0.1524" layer="91"/>
<label x="205.74" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.29"/>
<wire x1="213.36" y1="144.78" x2="200.66" y2="144.78" width="0.1524" layer="91"/>
<label x="203.2" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="NOZG" class="0">
<segment>
<pinref part="R1_NOZ" gate="G$1" pin="2"/>
<pinref part="R2_NOZ" gate="G$1" pin="2"/>
<wire x1="124.46" y1="50.8" x2="119.38" y2="50.8" width="0.1524" layer="91"/>
<wire x1="124.46" y1="50.8" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<pinref part="Q1_NOZ" gate="G$1" pin="G"/>
<wire x1="127" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<junction x="124.46" y="50.8"/>
</segment>
</net>
<net name="NOZ" class="0">
<segment>
<pinref part="R1_NOZ" gate="G$1" pin="1"/>
<wire x1="109.22" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<label x="104.14" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.04"/>
<wire x1="160.02" y1="137.16" x2="147.32" y2="137.16" width="0.1524" layer="91"/>
<label x="147.32" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="BEDG" class="0">
<segment>
<pinref part="R1_BED" gate="G$1" pin="2"/>
<pinref part="R2_BED" gate="G$1" pin="2"/>
<wire x1="63.5" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
<wire x1="63.5" y1="50.8" x2="63.5" y2="48.26" width="0.1524" layer="91"/>
<pinref part="Q1_BED" gate="G$1" pin="G"/>
<wire x1="66.04" y1="50.8" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
<junction x="63.5" y="50.8"/>
</segment>
</net>
<net name="BED" class="0">
<segment>
<pinref part="R1_BED" gate="G$1" pin="1"/>
<wire x1="48.26" y1="50.8" x2="45.72" y2="50.8" width="0.1524" layer="91"/>
<label x="43.18" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.05"/>
<wire x1="160.02" y1="134.62" x2="147.32" y2="134.62" width="0.1524" layer="91"/>
<label x="147.32" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="NOZ-" class="0">
<segment>
<pinref part="Q1_NOZ" gate="G$1" pin="D"/>
<wire x1="132.08" y1="58.42" x2="132.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="132.08" y1="60.96" x2="132.08" y2="63.5" width="0.1524" layer="91"/>
<wire x1="132.08" y1="63.5" x2="134.62" y2="63.5" width="0.1524" layer="91"/>
<pinref part="NOZZLE" gate="1" pin="2"/>
<pinref part="NOZZLE" gate="1" pin="1"/>
<wire x1="132.08" y1="60.96" x2="134.62" y2="60.96" width="0.1524" layer="91"/>
<junction x="132.08" y="60.96"/>
</segment>
</net>
<net name="BED-" class="0">
<segment>
<pinref part="Q1_BED" gate="G$1" pin="D"/>
<wire x1="71.12" y1="58.42" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="71.12" y1="60.96" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<wire x1="71.12" y1="63.5" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<pinref part="BED" gate="1" pin="2"/>
<pinref part="BED" gate="1" pin="1"/>
<wire x1="71.12" y1="60.96" x2="73.66" y2="60.96" width="0.1524" layer="91"/>
<junction x="71.12" y="60.96"/>
</segment>
</net>
<net name="FAN2G" class="0">
<segment>
<pinref part="Q1_FAN2" gate="G$1" pin="G"/>
<pinref part="R2_FAN2" gate="G$1" pin="2"/>
<wire x1="228.6" y1="48.26" x2="226.06" y2="48.26" width="0.1524" layer="91"/>
<wire x1="226.06" y1="48.26" x2="226.06" y2="45.72" width="0.1524" layer="91"/>
<pinref part="R1_FAN2" gate="G$1" pin="2"/>
<wire x1="226.06" y1="48.26" x2="220.98" y2="48.26" width="0.1524" layer="91"/>
<junction x="226.06" y="48.26"/>
</segment>
</net>
<net name="IC1_REG_OUT" class="0">
<segment>
<pinref part="IC1_REG" gate="G$1" pin="OUTPUT"/>
<pinref part="L1_REG" gate="G$1" pin="1"/>
<wire x1="93.98" y1="238.76" x2="101.6" y2="238.76" width="0.1524" layer="91"/>
<pinref part="D1_REG" gate="G$1" pin="C"/>
<wire x1="101.6" y1="238.76" x2="109.22" y2="238.76" width="0.1524" layer="91"/>
<wire x1="101.6" y1="238.76" x2="101.6" y2="231.14" width="0.1524" layer="91"/>
<junction x="101.6" y="238.76"/>
</segment>
</net>
<net name="IC2_REG_BYPASS" class="0">
<segment>
<pinref part="C4_REG" gate="G$1" pin="1"/>
<pinref part="IC2_REG" gate="G$1" pin="BYPASS"/>
<wire x1="104.14" y1="193.04" x2="104.14" y2="195.58" width="0.1524" layer="91"/>
<wire x1="104.14" y1="195.58" x2="93.98" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="THNOZ" class="0">
<segment>
<pinref part="R3_NOZ" gate="G$1" pin="1"/>
<pinref part="TEMP_NOZZLE" gate="G$1" pin="2"/>
<wire x1="104.14" y1="76.2" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="73.66" x2="106.68" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.03"/>
<wire x1="160.02" y1="139.7" x2="147.32" y2="139.7" width="0.1524" layer="91"/>
<label x="147.32" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="THBED" class="0">
<segment>
<pinref part="R3_BED" gate="G$1" pin="1"/>
<pinref part="TEMP_BED" gate="G$1" pin="2"/>
<wire x1="43.18" y1="76.2" x2="43.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="43.18" y1="73.66" x2="45.72" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.02"/>
<wire x1="160.02" y1="142.24" x2="147.32" y2="142.24" width="0.1524" layer="91"/>
<label x="147.32" y="142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.22"/>
<wire x1="213.36" y1="127" x2="200.66" y2="127" width="0.1524" layer="91"/>
<label x="203.2" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="PI_3V32" class="0">
<segment>
<pinref part="PI_HEADER" gate="G$1" pin="17"/>
<wire x1="330.2" y1="205.74" x2="325.12" y2="205.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="STEP_M3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.25"/>
<wire x1="213.36" y1="134.62" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<label x="203.2" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.14"/>
<wire x1="160.02" y1="111.76" x2="147.32" y2="111.76" width="0.1524" layer="91"/>
<label x="147.32" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.15"/>
<wire x1="200.66" y1="109.22" x2="213.36" y2="109.22" width="0.1524" layer="91"/>
<label x="203.2" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.16"/>
<wire x1="200.66" y1="111.76" x2="213.36" y2="111.76" width="0.1524" layer="91"/>
<label x="203.2" y="111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.19"/>
<wire x1="213.36" y1="119.38" x2="200.66" y2="119.38" width="0.1524" layer="91"/>
<label x="203.2" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.18"/>
<wire x1="213.36" y1="116.84" x2="200.66" y2="116.84" width="0.1524" layer="91"/>
<label x="203.2" y="116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.20"/>
<wire x1="213.36" y1="121.92" x2="200.66" y2="121.92" width="0.1524" layer="91"/>
<label x="203.2" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.12"/>
<wire x1="160.02" y1="116.84" x2="147.32" y2="116.84" width="0.1524" layer="91"/>
<label x="147.32" y="116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.28"/>
<wire x1="213.36" y1="142.24" x2="200.66" y2="142.24" width="0.1524" layer="91"/>
<label x="203.2" y="142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.27"/>
<wire x1="213.36" y1="139.7" x2="200.66" y2="139.7" width="0.1524" layer="91"/>
<label x="203.2" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.21" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.21"/>
<wire x1="213.36" y1="124.46" x2="200.66" y2="124.46" width="0.1524" layer="91"/>
<label x="203.2" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P0.21" gate="G$1" pin="TP"/>
<wire x1="254" y1="109.22" x2="254" y2="104.14" width="0.1524" layer="91"/>
<wire x1="254" y1="104.14" x2="243.84" y2="104.14" width="0.1524" layer="91"/>
<label x="241.3" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.26"/>
<wire x1="213.36" y1="137.16" x2="200.66" y2="137.16" width="0.1524" layer="91"/>
<label x="203.2" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.23"/>
<wire x1="213.36" y1="129.54" x2="200.66" y2="129.54" width="0.1524" layer="91"/>
<label x="203.2" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.08" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.08"/>
<wire x1="160.02" y1="127" x2="147.32" y2="127" width="0.1524" layer="91"/>
<label x="147.32" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.17" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.17"/>
<wire x1="213.36" y1="114.3" x2="200.66" y2="114.3" width="0.1524" layer="91"/>
<label x="203.2" y="114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="P0.17" gate="G$1" pin="TP"/>
<wire x1="248.92" y1="109.22" x2="248.92" y2="106.68" width="0.1524" layer="91"/>
<wire x1="248.92" y1="106.68" x2="243.84" y2="106.68" width="0.1524" layer="91"/>
<label x="241.3" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.13"/>
<wire x1="160.02" y1="114.3" x2="147.32" y2="114.3" width="0.1524" layer="91"/>
<label x="147.32" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="SWA" class="0">
<segment>
<pinref part="R1_SWA" gate="G$1" pin="1"/>
<wire x1="226.06" y1="236.22" x2="226.06" y2="238.76" width="0.1524" layer="91"/>
<wire x1="226.06" y1="236.22" x2="215.9" y2="236.22" width="0.1524" layer="91"/>
<label x="215.9" y="236.22" size="1.778" layer="95"/>
<pinref part="SWA" gate="G$1" pin="2"/>
<wire x1="226.06" y1="236.22" x2="226.06" y2="233.68" width="0.1524" layer="91"/>
<junction x="226.06" y="236.22"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.10"/>
<wire x1="160.02" y1="121.92" x2="147.32" y2="121.92" width="0.1524" layer="91"/>
<label x="147.32" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="LEDA" class="0">
<segment>
<pinref part="R1_LED" gate="G$1" pin="2"/>
<pinref part="LED" gate="G$1" pin="A"/>
<wire x1="205.74" y1="233.68" x2="205.74" y2="231.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED" class="0">
<segment>
<pinref part="R1_LED" gate="G$1" pin="1"/>
<wire x1="205.74" y1="243.84" x2="205.74" y2="248.92" width="0.1524" layer="91"/>
<label x="198.12" y="248.92" size="1.778" layer="95"/>
<wire x1="205.74" y1="248.92" x2="198.12" y2="248.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="P0.11"/>
<wire x1="160.02" y1="119.38" x2="147.32" y2="119.38" width="0.1524" layer="91"/>
<label x="147.32" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="P0.09" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="P0.09"/>
<wire x1="160.02" y1="124.46" x2="147.32" y2="124.46" width="0.1524" layer="91"/>
<label x="147.32" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="73.66" y="144.78" size="1.778" layer="91">TODO:
Calculate I sense calculations
Thermal pad on BOT?
CFG table in schematic</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<instance part="FRAME2" gate="G$2" x="287.02" y="0"/>
<instance part="IC_M1" gate="G$1" x="86.36" y="195.58"/>
<instance part="P+1" gate="1" x="53.34" y="231.14"/>
<instance part="P+2" gate="1" x="132.08" y="231.14"/>
<instance part="C1_M1" gate="G$1" x="63.5" y="233.68"/>
<instance part="GND1" gate="1" x="63.5" y="241.3" rot="R180"/>
<instance part="COPå" gate="1" x="109.22" y="241.3" rot="R180"/>
<instance part="C2_M1" gate="G$1" x="109.22" y="233.68"/>
<instance part="C3_M1" gate="G$1" x="116.84" y="233.68"/>
<instance part="GND3" gate="1" x="116.84" y="241.3" rot="R180"/>
<instance part="C4_M1" gate="G$1" x="124.46" y="218.44" rot="R90"/>
<instance part="C5_M1" gate="G$1" x="109.22" y="218.44" rot="R90"/>
<instance part="COPå1" gate="1" x="106.68" y="162.56"/>
<instance part="COPå2" gate="1" x="149.86" y="172.72"/>
<instance part="COPå3" gate="1" x="157.48" y="172.72"/>
<instance part="R2_M1" gate="G$1" x="149.86" y="182.88" rot="R90"/>
<instance part="R3_M1" gate="G$1" x="157.48" y="182.88" rot="R90"/>
<instance part="R1_M1" gate="G$1" x="124.46" y="187.96"/>
<instance part="COPå4" gate="1" x="66.04" y="162.56"/>
<instance part="COPå5" gate="1" x="116.84" y="162.56"/>
<instance part="C6_M1" gate="G$1" x="17.78" y="208.28"/>
<instance part="COPå6" gate="1" x="17.78" y="198.12"/>
<instance part="COPå7" gate="1" x="27.94" y="198.12"/>
<instance part="C7_M1" gate="G$1" x="27.94" y="208.28"/>
<instance part="R4_M1" gate="G$1" x="38.1" y="213.36"/>
<instance part="C8_M1" gate="G$1" x="45.72" y="208.28"/>
<instance part="COPå8" gate="1" x="45.72" y="198.12"/>
<instance part="X" gate="1" x="139.7" y="205.74" rot="R180"/>
<instance part="POT_M1" gate="G$1" x="116.84" y="180.34" rot="R270"/>
<instance part="IC_M2" gate="G$1" x="246.38" y="195.58"/>
<instance part="P+5" gate="1" x="213.36" y="231.14"/>
<instance part="P+6" gate="1" x="292.1" y="231.14"/>
<instance part="C1_M2" gate="G$1" x="223.52" y="233.68"/>
<instance part="GND11" gate="1" x="223.52" y="241.3" rot="R180"/>
<instance part="COPå9" gate="1" x="269.24" y="241.3" rot="R180"/>
<instance part="C2_M2" gate="G$1" x="269.24" y="233.68"/>
<instance part="C3_M2" gate="G$1" x="276.86" y="233.68"/>
<instance part="GND12" gate="1" x="276.86" y="241.3" rot="R180"/>
<instance part="C4_M2" gate="G$1" x="284.48" y="218.44" rot="R90"/>
<instance part="C5_M2" gate="G$1" x="269.24" y="218.44" rot="R90"/>
<instance part="COPå10" gate="1" x="266.7" y="162.56"/>
<instance part="COPå11" gate="1" x="309.88" y="172.72"/>
<instance part="COPå12" gate="1" x="317.5" y="172.72"/>
<instance part="R2_M2" gate="G$1" x="309.88" y="182.88" rot="R90"/>
<instance part="R3_M2" gate="G$1" x="317.5" y="182.88" rot="R90"/>
<instance part="R1_M2" gate="G$1" x="284.48" y="187.96"/>
<instance part="COPå13" gate="1" x="226.06" y="162.56"/>
<instance part="COPå14" gate="1" x="276.86" y="162.56"/>
<instance part="C6_M2" gate="G$1" x="177.8" y="208.28"/>
<instance part="COPå15" gate="1" x="177.8" y="198.12"/>
<instance part="COPå16" gate="1" x="187.96" y="198.12"/>
<instance part="C7_M2" gate="G$1" x="187.96" y="208.28"/>
<instance part="R4_M2" gate="G$1" x="198.12" y="213.36"/>
<instance part="C8_M2" gate="G$1" x="205.74" y="208.28"/>
<instance part="COPå17" gate="1" x="205.74" y="198.12"/>
<instance part="Y" gate="1" x="299.72" y="205.74" rot="R180"/>
<instance part="POT_M2" gate="G$1" x="276.86" y="180.34" rot="R270"/>
<instance part="IC_M3" gate="G$1" x="86.36" y="88.9"/>
<instance part="P+8" gate="1" x="53.34" y="124.46"/>
<instance part="P+9" gate="1" x="132.08" y="124.46"/>
<instance part="C1_M3" gate="G$1" x="63.5" y="127"/>
<instance part="GND13" gate="1" x="63.5" y="134.62" rot="R180"/>
<instance part="COPå18" gate="1" x="109.22" y="134.62" rot="R180"/>
<instance part="C2_M3" gate="G$1" x="109.22" y="127"/>
<instance part="C3_M3" gate="G$1" x="116.84" y="127"/>
<instance part="GND14" gate="1" x="116.84" y="134.62" rot="R180"/>
<instance part="C4_M3" gate="G$1" x="124.46" y="111.76" rot="R90"/>
<instance part="C5_M3" gate="G$1" x="109.22" y="111.76" rot="R90"/>
<instance part="COPå19" gate="1" x="106.68" y="55.88"/>
<instance part="COPå20" gate="1" x="149.86" y="66.04"/>
<instance part="COPå21" gate="1" x="157.48" y="66.04"/>
<instance part="R2_M3" gate="G$1" x="149.86" y="76.2" rot="R90"/>
<instance part="R3_M3" gate="G$1" x="157.48" y="76.2" rot="R90"/>
<instance part="R1_M3" gate="G$1" x="124.46" y="81.28"/>
<instance part="COPå22" gate="1" x="66.04" y="55.88"/>
<instance part="COPå23" gate="1" x="116.84" y="55.88"/>
<instance part="C6_M3" gate="G$1" x="17.78" y="101.6"/>
<instance part="COPå24" gate="1" x="17.78" y="91.44"/>
<instance part="COPå25" gate="1" x="27.94" y="91.44"/>
<instance part="C7_M3" gate="G$1" x="27.94" y="101.6"/>
<instance part="R4_M3" gate="G$1" x="38.1" y="106.68"/>
<instance part="C8_M3" gate="G$1" x="45.72" y="101.6"/>
<instance part="COPå26" gate="1" x="45.72" y="91.44"/>
<instance part="Z" gate="1" x="139.7" y="99.06" rot="R180"/>
<instance part="POT_M3" gate="G$1" x="116.84" y="73.66" rot="R270"/>
<instance part="IC_M4" gate="G$1" x="246.38" y="88.9"/>
<instance part="P+11" gate="1" x="213.36" y="124.46"/>
<instance part="P+12" gate="1" x="292.1" y="124.46"/>
<instance part="C1_M4" gate="G$1" x="223.52" y="127"/>
<instance part="GND15" gate="1" x="223.52" y="134.62" rot="R180"/>
<instance part="COPå27" gate="1" x="269.24" y="134.62" rot="R180"/>
<instance part="C2_M4" gate="G$1" x="269.24" y="127"/>
<instance part="C3_M4" gate="G$1" x="276.86" y="127"/>
<instance part="GND16" gate="1" x="276.86" y="134.62" rot="R180"/>
<instance part="C4_M4" gate="G$1" x="284.48" y="111.76" rot="R90"/>
<instance part="C5_M4" gate="G$1" x="269.24" y="111.76" rot="R90"/>
<instance part="COPå28" gate="1" x="266.7" y="55.88"/>
<instance part="COPå29" gate="1" x="309.88" y="66.04"/>
<instance part="COPå30" gate="1" x="317.5" y="66.04"/>
<instance part="R2_M4" gate="G$1" x="309.88" y="76.2" rot="R90"/>
<instance part="R3_M4" gate="G$1" x="317.5" y="76.2" rot="R90"/>
<instance part="R1_M4" gate="G$1" x="284.48" y="81.28"/>
<instance part="COPå31" gate="1" x="226.06" y="55.88"/>
<instance part="COPå32" gate="1" x="276.86" y="55.88"/>
<instance part="C6_M4" gate="G$1" x="177.8" y="101.6"/>
<instance part="COPå33" gate="1" x="177.8" y="91.44"/>
<instance part="COPå34" gate="1" x="187.96" y="91.44"/>
<instance part="C7_M4" gate="G$1" x="187.96" y="101.6"/>
<instance part="R4_M4" gate="G$1" x="198.12" y="106.68"/>
<instance part="C8_M4" gate="G$1" x="205.74" y="101.6"/>
<instance part="COPå35" gate="1" x="205.74" y="91.44"/>
<instance part="E" gate="1" x="299.72" y="99.06" rot="R180"/>
<instance part="POT_M4" gate="G$1" x="276.86" y="73.66" rot="R270"/>
<instance part="+3V8" gate="G$1" x="17.78" y="231.14"/>
<instance part="+3V9" gate="G$1" x="177.8" y="231.14"/>
<instance part="+3V10" gate="G$1" x="177.8" y="124.46"/>
<instance part="+3V11" gate="G$1" x="17.78" y="124.46"/>
<instance part="CHG1_X" gate="G$1" x="22.86" y="177.8" rot="R180"/>
<instance part="CHG2_X" gate="G$1" x="33.02" y="165.1" rot="R180"/>
<instance part="+3V12" gate="G$1" x="22.86" y="187.96"/>
<instance part="+3V13" gate="G$1" x="33.02" y="175.26"/>
<instance part="COPå36" gate="1" x="33.02" y="154.94"/>
<instance part="COPå37" gate="1" x="22.86" y="167.64"/>
<instance part="CHG1_Y" gate="G$1" x="185.42" y="175.26" rot="R180"/>
<instance part="CHG2_Y" gate="G$1" x="195.58" y="162.56" rot="R180"/>
<instance part="+3V14" gate="G$1" x="185.42" y="185.42"/>
<instance part="+3V15" gate="G$1" x="195.58" y="172.72"/>
<instance part="COPå38" gate="1" x="195.58" y="152.4"/>
<instance part="COPå39" gate="1" x="185.42" y="165.1"/>
<instance part="CHG1_Z" gate="G$1" x="27.94" y="71.12" rot="R180"/>
<instance part="CHG2_Z" gate="G$1" x="38.1" y="58.42" rot="R180"/>
<instance part="+3V16" gate="G$1" x="27.94" y="81.28"/>
<instance part="+3V17" gate="G$1" x="38.1" y="68.58"/>
<instance part="COPå40" gate="1" x="38.1" y="48.26"/>
<instance part="COPå41" gate="1" x="27.94" y="60.96"/>
<instance part="CFG1_E" gate="G$1" x="182.88" y="68.58" rot="R180"/>
<instance part="CFG2_E" gate="G$1" x="193.04" y="55.88" rot="R180"/>
<instance part="+3V18" gate="G$1" x="182.88" y="78.74"/>
<instance part="+3V19" gate="G$1" x="193.04" y="66.04"/>
<instance part="COPå42" gate="1" x="193.04" y="45.72"/>
<instance part="COPå43" gate="1" x="182.88" y="58.42"/>
</instances>
<busses>
</busses>
<nets>
<net name="+12V" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="VSA"/>
<pinref part="P+1" gate="1" pin="+12V"/>
<wire x1="68.58" y1="226.06" x2="63.5" y2="226.06" width="0.1524" layer="91"/>
<wire x1="63.5" y1="226.06" x2="53.34" y2="226.06" width="0.1524" layer="91"/>
<wire x1="53.34" y1="226.06" x2="53.34" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C1_M1" gate="G$1" pin="2"/>
<wire x1="63.5" y1="226.06" x2="63.5" y2="228.6" width="0.1524" layer="91"/>
<junction x="63.5" y="226.06"/>
</segment>
<segment>
<pinref part="IC_M1" gate="G$1" pin="VS"/>
<pinref part="C2_M1" gate="G$1" pin="2"/>
<wire x1="104.14" y1="226.06" x2="109.22" y2="226.06" width="0.1524" layer="91"/>
<wire x1="109.22" y1="226.06" x2="109.22" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C3_M1" gate="G$1" pin="2"/>
<wire x1="109.22" y1="226.06" x2="116.84" y2="226.06" width="0.1524" layer="91"/>
<wire x1="116.84" y1="226.06" x2="116.84" y2="228.6" width="0.1524" layer="91"/>
<junction x="109.22" y="226.06"/>
<pinref part="P+2" gate="1" pin="+12V"/>
<wire x1="116.84" y1="226.06" x2="132.08" y2="226.06" width="0.1524" layer="91"/>
<wire x1="132.08" y1="226.06" x2="132.08" y2="228.6" width="0.1524" layer="91"/>
<junction x="116.84" y="226.06"/>
<wire x1="132.08" y1="218.44" x2="132.08" y2="226.06" width="0.1524" layer="91"/>
<junction x="132.08" y="226.06"/>
<pinref part="C4_M1" gate="G$1" pin="2"/>
<wire x1="129.54" y1="218.44" x2="132.08" y2="218.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M2" gate="G$1" pin="VSA"/>
<pinref part="P+5" gate="1" pin="+12V"/>
<wire x1="228.6" y1="226.06" x2="223.52" y2="226.06" width="0.1524" layer="91"/>
<wire x1="223.52" y1="226.06" x2="213.36" y2="226.06" width="0.1524" layer="91"/>
<wire x1="213.36" y1="226.06" x2="213.36" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C1_M2" gate="G$1" pin="2"/>
<wire x1="223.52" y1="226.06" x2="223.52" y2="228.6" width="0.1524" layer="91"/>
<junction x="223.52" y="226.06"/>
</segment>
<segment>
<pinref part="IC_M2" gate="G$1" pin="VS"/>
<pinref part="C2_M2" gate="G$1" pin="2"/>
<wire x1="264.16" y1="226.06" x2="269.24" y2="226.06" width="0.1524" layer="91"/>
<wire x1="269.24" y1="226.06" x2="269.24" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C3_M2" gate="G$1" pin="2"/>
<wire x1="269.24" y1="226.06" x2="276.86" y2="226.06" width="0.1524" layer="91"/>
<wire x1="276.86" y1="226.06" x2="276.86" y2="228.6" width="0.1524" layer="91"/>
<junction x="269.24" y="226.06"/>
<pinref part="P+6" gate="1" pin="+12V"/>
<wire x1="276.86" y1="226.06" x2="292.1" y2="226.06" width="0.1524" layer="91"/>
<wire x1="292.1" y1="226.06" x2="292.1" y2="228.6" width="0.1524" layer="91"/>
<junction x="276.86" y="226.06"/>
<wire x1="292.1" y1="218.44" x2="292.1" y2="226.06" width="0.1524" layer="91"/>
<junction x="292.1" y="226.06"/>
<pinref part="C4_M2" gate="G$1" pin="2"/>
<wire x1="289.56" y1="218.44" x2="292.1" y2="218.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M3" gate="G$1" pin="VSA"/>
<pinref part="P+8" gate="1" pin="+12V"/>
<wire x1="68.58" y1="119.38" x2="63.5" y2="119.38" width="0.1524" layer="91"/>
<wire x1="63.5" y1="119.38" x2="53.34" y2="119.38" width="0.1524" layer="91"/>
<wire x1="53.34" y1="119.38" x2="53.34" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C1_M3" gate="G$1" pin="2"/>
<wire x1="63.5" y1="119.38" x2="63.5" y2="121.92" width="0.1524" layer="91"/>
<junction x="63.5" y="119.38"/>
</segment>
<segment>
<pinref part="IC_M3" gate="G$1" pin="VS"/>
<pinref part="C2_M3" gate="G$1" pin="2"/>
<wire x1="104.14" y1="119.38" x2="109.22" y2="119.38" width="0.1524" layer="91"/>
<wire x1="109.22" y1="119.38" x2="109.22" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C3_M3" gate="G$1" pin="2"/>
<wire x1="109.22" y1="119.38" x2="116.84" y2="119.38" width="0.1524" layer="91"/>
<wire x1="116.84" y1="119.38" x2="116.84" y2="121.92" width="0.1524" layer="91"/>
<junction x="109.22" y="119.38"/>
<pinref part="P+9" gate="1" pin="+12V"/>
<wire x1="116.84" y1="119.38" x2="132.08" y2="119.38" width="0.1524" layer="91"/>
<wire x1="132.08" y1="119.38" x2="132.08" y2="121.92" width="0.1524" layer="91"/>
<junction x="116.84" y="119.38"/>
<wire x1="132.08" y1="111.76" x2="132.08" y2="119.38" width="0.1524" layer="91"/>
<junction x="132.08" y="119.38"/>
<pinref part="C4_M3" gate="G$1" pin="2"/>
<wire x1="129.54" y1="111.76" x2="132.08" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M4" gate="G$1" pin="VSA"/>
<pinref part="P+11" gate="1" pin="+12V"/>
<wire x1="228.6" y1="119.38" x2="223.52" y2="119.38" width="0.1524" layer="91"/>
<wire x1="223.52" y1="119.38" x2="213.36" y2="119.38" width="0.1524" layer="91"/>
<wire x1="213.36" y1="119.38" x2="213.36" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C1_M4" gate="G$1" pin="2"/>
<wire x1="223.52" y1="119.38" x2="223.52" y2="121.92" width="0.1524" layer="91"/>
<junction x="223.52" y="119.38"/>
</segment>
<segment>
<pinref part="IC_M4" gate="G$1" pin="VS"/>
<pinref part="C2_M4" gate="G$1" pin="2"/>
<wire x1="264.16" y1="119.38" x2="269.24" y2="119.38" width="0.1524" layer="91"/>
<wire x1="269.24" y1="119.38" x2="269.24" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C3_M4" gate="G$1" pin="2"/>
<wire x1="269.24" y1="119.38" x2="276.86" y2="119.38" width="0.1524" layer="91"/>
<wire x1="276.86" y1="119.38" x2="276.86" y2="121.92" width="0.1524" layer="91"/>
<junction x="269.24" y="119.38"/>
<pinref part="P+12" gate="1" pin="+12V"/>
<wire x1="276.86" y1="119.38" x2="292.1" y2="119.38" width="0.1524" layer="91"/>
<wire x1="292.1" y1="119.38" x2="292.1" y2="121.92" width="0.1524" layer="91"/>
<junction x="276.86" y="119.38"/>
<wire x1="292.1" y1="111.76" x2="292.1" y2="119.38" width="0.1524" layer="91"/>
<junction x="292.1" y="119.38"/>
<pinref part="C4_M4" gate="G$1" pin="2"/>
<wire x1="289.56" y1="111.76" x2="292.1" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="COPå" gate="1" pin="GND"/>
<pinref part="C2_M1" gate="G$1" pin="1"/>
<wire x1="109.22" y1="236.22" x2="109.22" y2="238.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1_M1" gate="G$1" pin="1"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="63.5" y1="236.22" x2="63.5" y2="238.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="C3_M1" gate="G$1" pin="1"/>
<wire x1="116.84" y1="238.76" x2="116.84" y2="236.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2_M1" gate="G$1" pin="1"/>
<pinref part="COPå2" gate="1" pin="GND"/>
<wire x1="149.86" y1="177.8" x2="149.86" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3_M1" gate="G$1" pin="1"/>
<pinref part="COPå3" gate="1" pin="GND"/>
<wire x1="157.48" y1="177.8" x2="157.48" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M1" gate="G$1" pin="CLK"/>
<pinref part="COPå1" gate="1" pin="GND"/>
<wire x1="104.14" y1="175.26" x2="106.68" y2="175.26" width="0.1524" layer="91"/>
<wire x1="106.68" y1="175.26" x2="106.68" y2="172.72" width="0.1524" layer="91"/>
<pinref part="IC_M1" gate="G$1" pin="N.C"/>
<wire x1="106.68" y1="172.72" x2="106.68" y2="170.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="170.18" x2="106.68" y2="167.64" width="0.1524" layer="91"/>
<wire x1="106.68" y1="167.64" x2="106.68" y2="165.1" width="0.1524" layer="91"/>
<wire x1="104.14" y1="172.72" x2="106.68" y2="172.72" width="0.1524" layer="91"/>
<junction x="106.68" y="172.72"/>
<pinref part="IC_M1" gate="G$1" pin="CFG0"/>
<wire x1="104.14" y1="170.18" x2="106.68" y2="170.18" width="0.1524" layer="91"/>
<junction x="106.68" y="170.18"/>
<pinref part="IC_M1" gate="G$1" pin="TST_MODE"/>
<wire x1="104.14" y1="167.64" x2="106.68" y2="167.64" width="0.1524" layer="91"/>
<junction x="106.68" y="167.64"/>
</segment>
<segment>
<pinref part="COPå4" gate="1" pin="GND"/>
<pinref part="IC_M1" gate="G$1" pin="GNDA"/>
<wire x1="66.04" y1="165.1" x2="66.04" y2="167.64" width="0.1524" layer="91"/>
<wire x1="66.04" y1="167.64" x2="66.04" y2="170.18" width="0.1524" layer="91"/>
<wire x1="66.04" y1="170.18" x2="66.04" y2="172.72" width="0.1524" layer="91"/>
<wire x1="66.04" y1="172.72" x2="66.04" y2="175.26" width="0.1524" layer="91"/>
<wire x1="66.04" y1="175.26" x2="68.58" y2="175.26" width="0.1524" layer="91"/>
<pinref part="IC_M1" gate="G$1" pin="GNDD"/>
<wire x1="68.58" y1="172.72" x2="66.04" y2="172.72" width="0.1524" layer="91"/>
<junction x="66.04" y="172.72"/>
<pinref part="IC_M1" gate="G$1" pin="GNDP"/>
<wire x1="66.04" y1="170.18" x2="68.58" y2="170.18" width="0.1524" layer="91"/>
<junction x="66.04" y="170.18"/>
<pinref part="IC_M1" gate="G$1" pin="PAD"/>
<wire x1="68.58" y1="167.64" x2="66.04" y2="167.64" width="0.1524" layer="91"/>
<junction x="66.04" y="167.64"/>
</segment>
<segment>
<pinref part="C6_M1" gate="G$1" pin="2"/>
<pinref part="COPå6" gate="1" pin="GND"/>
<wire x1="17.78" y1="200.66" x2="17.78" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå7" gate="1" pin="GND"/>
<pinref part="C7_M1" gate="G$1" pin="2"/>
<wire x1="27.94" y1="203.2" x2="27.94" y2="200.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8_M1" gate="G$1" pin="2"/>
<pinref part="COPå8" gate="1" pin="GND"/>
<wire x1="45.72" y1="203.2" x2="45.72" y2="200.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POT_M1" gate="G$1" pin="3"/>
<pinref part="COPå5" gate="1" pin="GND"/>
<wire x1="116.84" y1="170.18" x2="116.84" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå9" gate="1" pin="GND"/>
<pinref part="C2_M2" gate="G$1" pin="1"/>
<wire x1="269.24" y1="236.22" x2="269.24" y2="238.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1_M2" gate="G$1" pin="1"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="223.52" y1="236.22" x2="223.52" y2="238.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<pinref part="C3_M2" gate="G$1" pin="1"/>
<wire x1="276.86" y1="238.76" x2="276.86" y2="236.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2_M2" gate="G$1" pin="1"/>
<pinref part="COPå11" gate="1" pin="GND"/>
<wire x1="309.88" y1="177.8" x2="309.88" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3_M2" gate="G$1" pin="1"/>
<pinref part="COPå12" gate="1" pin="GND"/>
<wire x1="317.5" y1="177.8" x2="317.5" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M2" gate="G$1" pin="CLK"/>
<pinref part="COPå10" gate="1" pin="GND"/>
<wire x1="264.16" y1="175.26" x2="266.7" y2="175.26" width="0.1524" layer="91"/>
<wire x1="266.7" y1="175.26" x2="266.7" y2="172.72" width="0.1524" layer="91"/>
<pinref part="IC_M2" gate="G$1" pin="N.C"/>
<wire x1="266.7" y1="172.72" x2="266.7" y2="170.18" width="0.1524" layer="91"/>
<wire x1="266.7" y1="170.18" x2="266.7" y2="167.64" width="0.1524" layer="91"/>
<wire x1="266.7" y1="167.64" x2="266.7" y2="165.1" width="0.1524" layer="91"/>
<wire x1="264.16" y1="172.72" x2="266.7" y2="172.72" width="0.1524" layer="91"/>
<junction x="266.7" y="172.72"/>
<pinref part="IC_M2" gate="G$1" pin="CFG0"/>
<wire x1="264.16" y1="170.18" x2="266.7" y2="170.18" width="0.1524" layer="91"/>
<junction x="266.7" y="170.18"/>
<pinref part="IC_M2" gate="G$1" pin="TST_MODE"/>
<wire x1="264.16" y1="167.64" x2="266.7" y2="167.64" width="0.1524" layer="91"/>
<junction x="266.7" y="167.64"/>
</segment>
<segment>
<pinref part="COPå13" gate="1" pin="GND"/>
<pinref part="IC_M2" gate="G$1" pin="GNDA"/>
<wire x1="226.06" y1="165.1" x2="226.06" y2="167.64" width="0.1524" layer="91"/>
<wire x1="226.06" y1="167.64" x2="226.06" y2="170.18" width="0.1524" layer="91"/>
<wire x1="226.06" y1="170.18" x2="226.06" y2="172.72" width="0.1524" layer="91"/>
<wire x1="226.06" y1="172.72" x2="226.06" y2="175.26" width="0.1524" layer="91"/>
<wire x1="226.06" y1="175.26" x2="228.6" y2="175.26" width="0.1524" layer="91"/>
<pinref part="IC_M2" gate="G$1" pin="GNDD"/>
<wire x1="228.6" y1="172.72" x2="226.06" y2="172.72" width="0.1524" layer="91"/>
<junction x="226.06" y="172.72"/>
<pinref part="IC_M2" gate="G$1" pin="GNDP"/>
<wire x1="226.06" y1="170.18" x2="228.6" y2="170.18" width="0.1524" layer="91"/>
<junction x="226.06" y="170.18"/>
<pinref part="IC_M2" gate="G$1" pin="PAD"/>
<wire x1="228.6" y1="167.64" x2="226.06" y2="167.64" width="0.1524" layer="91"/>
<junction x="226.06" y="167.64"/>
</segment>
<segment>
<pinref part="C6_M2" gate="G$1" pin="2"/>
<pinref part="COPå15" gate="1" pin="GND"/>
<wire x1="177.8" y1="200.66" x2="177.8" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå16" gate="1" pin="GND"/>
<pinref part="C7_M2" gate="G$1" pin="2"/>
<wire x1="187.96" y1="203.2" x2="187.96" y2="200.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8_M2" gate="G$1" pin="2"/>
<pinref part="COPå17" gate="1" pin="GND"/>
<wire x1="205.74" y1="203.2" x2="205.74" y2="200.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POT_M2" gate="G$1" pin="3"/>
<pinref part="COPå14" gate="1" pin="GND"/>
<wire x1="276.86" y1="170.18" x2="276.86" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå18" gate="1" pin="GND"/>
<pinref part="C2_M3" gate="G$1" pin="1"/>
<wire x1="109.22" y1="129.54" x2="109.22" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1_M3" gate="G$1" pin="1"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="63.5" y1="129.54" x2="63.5" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="C3_M3" gate="G$1" pin="1"/>
<wire x1="116.84" y1="132.08" x2="116.84" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2_M3" gate="G$1" pin="1"/>
<pinref part="COPå20" gate="1" pin="GND"/>
<wire x1="149.86" y1="71.12" x2="149.86" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3_M3" gate="G$1" pin="1"/>
<pinref part="COPå21" gate="1" pin="GND"/>
<wire x1="157.48" y1="71.12" x2="157.48" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M3" gate="G$1" pin="CLK"/>
<pinref part="COPå19" gate="1" pin="GND"/>
<wire x1="104.14" y1="68.58" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC_M3" gate="G$1" pin="N.C"/>
<wire x1="106.68" y1="66.04" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
<wire x1="106.68" y1="63.5" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<wire x1="106.68" y1="60.96" x2="106.68" y2="58.42" width="0.1524" layer="91"/>
<wire x1="104.14" y1="66.04" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
<junction x="106.68" y="66.04"/>
<pinref part="IC_M3" gate="G$1" pin="CFG0"/>
<wire x1="104.14" y1="63.5" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
<junction x="106.68" y="63.5"/>
<pinref part="IC_M3" gate="G$1" pin="TST_MODE"/>
<wire x1="104.14" y1="60.96" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<junction x="106.68" y="60.96"/>
</segment>
<segment>
<pinref part="COPå22" gate="1" pin="GND"/>
<pinref part="IC_M3" gate="G$1" pin="GNDA"/>
<wire x1="66.04" y1="58.42" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="66.04" y1="60.96" x2="66.04" y2="63.5" width="0.1524" layer="91"/>
<wire x1="66.04" y1="63.5" x2="66.04" y2="66.04" width="0.1524" layer="91"/>
<wire x1="66.04" y1="66.04" x2="66.04" y2="68.58" width="0.1524" layer="91"/>
<wire x1="66.04" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC_M3" gate="G$1" pin="GNDD"/>
<wire x1="68.58" y1="66.04" x2="66.04" y2="66.04" width="0.1524" layer="91"/>
<junction x="66.04" y="66.04"/>
<pinref part="IC_M3" gate="G$1" pin="GNDP"/>
<wire x1="66.04" y1="63.5" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<junction x="66.04" y="63.5"/>
<pinref part="IC_M3" gate="G$1" pin="PAD"/>
<wire x1="68.58" y1="60.96" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<junction x="66.04" y="60.96"/>
</segment>
<segment>
<pinref part="C6_M3" gate="G$1" pin="2"/>
<pinref part="COPå24" gate="1" pin="GND"/>
<wire x1="17.78" y1="93.98" x2="17.78" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå25" gate="1" pin="GND"/>
<pinref part="C7_M3" gate="G$1" pin="2"/>
<wire x1="27.94" y1="96.52" x2="27.94" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8_M3" gate="G$1" pin="2"/>
<pinref part="COPå26" gate="1" pin="GND"/>
<wire x1="45.72" y1="96.52" x2="45.72" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POT_M3" gate="G$1" pin="3"/>
<pinref part="COPå23" gate="1" pin="GND"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå27" gate="1" pin="GND"/>
<pinref part="C2_M4" gate="G$1" pin="1"/>
<wire x1="269.24" y1="129.54" x2="269.24" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1_M4" gate="G$1" pin="1"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="223.52" y1="129.54" x2="223.52" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<pinref part="C3_M4" gate="G$1" pin="1"/>
<wire x1="276.86" y1="132.08" x2="276.86" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2_M4" gate="G$1" pin="1"/>
<pinref part="COPå29" gate="1" pin="GND"/>
<wire x1="309.88" y1="71.12" x2="309.88" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R3_M4" gate="G$1" pin="1"/>
<pinref part="COPå30" gate="1" pin="GND"/>
<wire x1="317.5" y1="71.12" x2="317.5" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC_M4" gate="G$1" pin="CLK"/>
<pinref part="COPå28" gate="1" pin="GND"/>
<wire x1="264.16" y1="68.58" x2="266.7" y2="68.58" width="0.1524" layer="91"/>
<wire x1="266.7" y1="68.58" x2="266.7" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC_M4" gate="G$1" pin="N.C"/>
<wire x1="266.7" y1="66.04" x2="266.7" y2="63.5" width="0.1524" layer="91"/>
<wire x1="266.7" y1="63.5" x2="266.7" y2="60.96" width="0.1524" layer="91"/>
<wire x1="266.7" y1="60.96" x2="266.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="264.16" y1="66.04" x2="266.7" y2="66.04" width="0.1524" layer="91"/>
<junction x="266.7" y="66.04"/>
<pinref part="IC_M4" gate="G$1" pin="CFG0"/>
<wire x1="264.16" y1="63.5" x2="266.7" y2="63.5" width="0.1524" layer="91"/>
<junction x="266.7" y="63.5"/>
<pinref part="IC_M4" gate="G$1" pin="TST_MODE"/>
<wire x1="264.16" y1="60.96" x2="266.7" y2="60.96" width="0.1524" layer="91"/>
<junction x="266.7" y="60.96"/>
</segment>
<segment>
<pinref part="COPå31" gate="1" pin="GND"/>
<pinref part="IC_M4" gate="G$1" pin="GNDA"/>
<wire x1="226.06" y1="58.42" x2="226.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="226.06" y1="60.96" x2="226.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="226.06" y1="63.5" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<wire x1="226.06" y1="66.04" x2="226.06" y2="68.58" width="0.1524" layer="91"/>
<wire x1="226.06" y1="68.58" x2="228.6" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC_M4" gate="G$1" pin="GNDD"/>
<wire x1="228.6" y1="66.04" x2="226.06" y2="66.04" width="0.1524" layer="91"/>
<junction x="226.06" y="66.04"/>
<pinref part="IC_M4" gate="G$1" pin="GNDP"/>
<wire x1="226.06" y1="63.5" x2="228.6" y2="63.5" width="0.1524" layer="91"/>
<junction x="226.06" y="63.5"/>
<pinref part="IC_M4" gate="G$1" pin="PAD"/>
<wire x1="228.6" y1="60.96" x2="226.06" y2="60.96" width="0.1524" layer="91"/>
<junction x="226.06" y="60.96"/>
</segment>
<segment>
<pinref part="C6_M4" gate="G$1" pin="2"/>
<pinref part="COPå33" gate="1" pin="GND"/>
<wire x1="177.8" y1="93.98" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="COPå34" gate="1" pin="GND"/>
<pinref part="C7_M4" gate="G$1" pin="2"/>
<wire x1="187.96" y1="96.52" x2="187.96" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8_M4" gate="G$1" pin="2"/>
<pinref part="COPå35" gate="1" pin="GND"/>
<wire x1="205.74" y1="96.52" x2="205.74" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="POT_M4" gate="G$1" pin="3"/>
<pinref part="COPå32" gate="1" pin="GND"/>
<wire x1="276.86" y1="63.5" x2="276.86" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG1_X" gate="G$1" pin="1"/>
<pinref part="COPå37" gate="1" pin="GND"/>
<wire x1="22.86" y1="172.72" x2="22.86" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG2_X" gate="G$1" pin="1"/>
<pinref part="COPå36" gate="1" pin="GND"/>
<wire x1="33.02" y1="160.02" x2="33.02" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG1_Y" gate="G$1" pin="1"/>
<pinref part="COPå39" gate="1" pin="GND"/>
<wire x1="185.42" y1="170.18" x2="185.42" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG2_Y" gate="G$1" pin="1"/>
<pinref part="COPå38" gate="1" pin="GND"/>
<wire x1="195.58" y1="157.48" x2="195.58" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG1_Z" gate="G$1" pin="1"/>
<pinref part="COPå41" gate="1" pin="GND"/>
<wire x1="27.94" y1="66.04" x2="27.94" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG2_Z" gate="G$1" pin="1"/>
<pinref part="COPå40" gate="1" pin="GND"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CFG1_E" gate="G$1" pin="1"/>
<pinref part="COPå43" gate="1" pin="GND"/>
<wire x1="182.88" y1="63.5" x2="182.88" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CFG2_E" gate="G$1" pin="1"/>
<pinref part="COPå42" gate="1" pin="GND"/>
<wire x1="193.04" y1="50.8" x2="193.04" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPI_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="CPI"/>
<pinref part="C5_M1" gate="G$1" pin="1"/>
<wire x1="104.14" y1="218.44" x2="106.68" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPO_M1" class="0">
<segment>
<pinref part="C5_M1" gate="G$1" pin="2"/>
<wire x1="114.3" y1="218.44" x2="116.84" y2="218.44" width="0.1524" layer="91"/>
<wire x1="116.84" y1="218.44" x2="116.84" y2="215.9" width="0.1524" layer="91"/>
<wire x1="116.84" y1="215.9" x2="104.14" y2="215.9" width="0.1524" layer="91"/>
<pinref part="IC_M1" gate="G$1" pin="CPO"/>
</segment>
</net>
<net name="VCP_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="VCP"/>
<wire x1="119.38" y1="223.52" x2="104.14" y2="223.52" width="0.1524" layer="91"/>
<wire x1="119.38" y1="223.52" x2="119.38" y2="218.44" width="0.1524" layer="91"/>
<pinref part="C4_M1" gate="G$1" pin="1"/>
<wire x1="119.38" y1="218.44" x2="121.92" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OA1_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="OA1"/>
<label x="106.68" y="210.82" size="1.778" layer="95"/>
<wire x1="104.14" y1="210.82" x2="132.08" y2="210.82" width="0.1524" layer="91"/>
<pinref part="X" gate="1" pin="1"/>
</segment>
</net>
<net name="OA2_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="OA2"/>
<label x="106.68" y="208.28" size="1.778" layer="95"/>
<wire x1="104.14" y1="208.28" x2="132.08" y2="208.28" width="0.1524" layer="91"/>
<pinref part="X" gate="1" pin="2"/>
</segment>
</net>
<net name="OB1_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="OB1"/>
<wire x1="104.14" y1="203.2" x2="119.38" y2="203.2" width="0.1524" layer="91"/>
<label x="106.68" y="203.2" size="1.778" layer="95"/>
<wire x1="119.38" y1="203.2" x2="119.38" y2="205.74" width="0.1524" layer="91"/>
<wire x1="119.38" y1="205.74" x2="132.08" y2="205.74" width="0.1524" layer="91"/>
<pinref part="X" gate="1" pin="3"/>
</segment>
</net>
<net name="OB2_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="OB2"/>
<wire x1="104.14" y1="200.66" x2="121.92" y2="200.66" width="0.1524" layer="91"/>
<label x="106.68" y="200.66" size="1.778" layer="95"/>
<wire x1="121.92" y1="200.66" x2="121.92" y2="203.2" width="0.1524" layer="91"/>
<wire x1="121.92" y1="203.2" x2="132.08" y2="203.2" width="0.1524" layer="91"/>
<pinref part="X" gate="1" pin="4"/>
</segment>
</net>
<net name="BRB_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="BRB"/>
<pinref part="R2_M1" gate="G$1" pin="2"/>
<wire x1="104.14" y1="193.04" x2="149.86" y2="193.04" width="0.1524" layer="91"/>
<wire x1="149.86" y1="193.04" x2="149.86" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRA_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="BRA"/>
<pinref part="R3_M1" gate="G$1" pin="2"/>
<wire x1="104.14" y1="195.58" x2="157.48" y2="195.58" width="0.1524" layer="91"/>
<wire x1="157.48" y1="195.58" x2="157.48" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V_M1" class="0">
<segment>
<pinref part="R1_M1" gate="G$1" pin="2"/>
<wire x1="129.54" y1="187.96" x2="137.16" y2="187.96" width="0.1524" layer="91"/>
<label x="129.54" y="187.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R4_M1" gate="G$1" pin="2"/>
<pinref part="IC_M1" gate="G$1" pin="5VOUT"/>
<wire x1="43.18" y1="213.36" x2="45.72" y2="213.36" width="0.1524" layer="91"/>
<pinref part="C8_M1" gate="G$1" pin="1"/>
<wire x1="45.72" y1="213.36" x2="68.58" y2="213.36" width="0.1524" layer="91"/>
<wire x1="45.72" y1="210.82" x2="45.72" y2="213.36" width="0.1524" layer="91"/>
<junction x="45.72" y="213.36"/>
<label x="50.8" y="213.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="DIR"/>
<wire x1="68.58" y1="198.12" x2="58.42" y2="198.12" width="0.1524" layer="91"/>
<label x="58.42" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="STEP"/>
<wire x1="68.58" y1="200.66" x2="58.42" y2="200.66" width="0.1524" layer="91"/>
<label x="58.42" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="CFG6_!ENABLE"/>
<wire x1="68.58" y1="203.2" x2="58.42" y2="203.2" width="0.1524" layer="91"/>
<label x="58.42" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG1_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="CFG1"/>
<wire x1="68.58" y1="205.74" x2="58.42" y2="205.74" width="0.1524" layer="91"/>
<label x="58.42" y="205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG1_X" gate="G$1" pin="2"/>
<wire x1="27.94" y1="177.8" x2="33.02" y2="177.8" width="0.1524" layer="91"/>
<label x="30.48" y="177.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG2_M1" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="CFG2"/>
<wire x1="68.58" y1="208.28" x2="58.42" y2="208.28" width="0.1524" layer="91"/>
<label x="58.42" y="208.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG2_X" gate="G$1" pin="2"/>
<wire x1="38.1" y1="165.1" x2="43.18" y2="165.1" width="0.1524" layer="91"/>
<label x="40.64" y="165.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC_M1" class="0">
<segment>
<pinref part="C7_M1" gate="G$1" pin="1"/>
<pinref part="IC_M1" gate="G$1" pin="VCC"/>
<wire x1="27.94" y1="210.82" x2="27.94" y2="213.36" width="0.1524" layer="91"/>
<wire x1="27.94" y1="213.36" x2="27.94" y2="218.44" width="0.1524" layer="91"/>
<wire x1="27.94" y1="218.44" x2="68.58" y2="218.44" width="0.1524" layer="91"/>
<pinref part="R4_M1" gate="G$1" pin="1"/>
<wire x1="27.94" y1="213.36" x2="33.02" y2="213.36" width="0.1524" layer="91"/>
<junction x="27.94" y="213.36"/>
</segment>
</net>
<net name="AIN_M1" class="0">
<segment>
<pinref part="POT_M1" gate="G$1" pin="2"/>
<wire x1="110.49" y1="177.8" x2="109.22" y2="177.8" width="0.1524" layer="91"/>
<pinref part="IC_M1" gate="G$1" pin="AIN_IREF"/>
<wire x1="109.22" y1="177.8" x2="109.22" y2="187.96" width="0.1524" layer="91"/>
<wire x1="109.22" y1="187.96" x2="104.14" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="POT_M1" class="0">
<segment>
<pinref part="POT_M1" gate="G$1" pin="1"/>
<pinref part="R1_M1" gate="G$1" pin="1"/>
<wire x1="116.84" y1="185.42" x2="116.84" y2="187.96" width="0.1524" layer="91"/>
<wire x1="116.84" y1="187.96" x2="119.38" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPI_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="CPI"/>
<pinref part="C5_M2" gate="G$1" pin="1"/>
<wire x1="264.16" y1="218.44" x2="266.7" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPO_M2" class="0">
<segment>
<pinref part="C5_M2" gate="G$1" pin="2"/>
<wire x1="274.32" y1="218.44" x2="276.86" y2="218.44" width="0.1524" layer="91"/>
<wire x1="276.86" y1="218.44" x2="276.86" y2="215.9" width="0.1524" layer="91"/>
<wire x1="276.86" y1="215.9" x2="264.16" y2="215.9" width="0.1524" layer="91"/>
<pinref part="IC_M2" gate="G$1" pin="CPO"/>
</segment>
</net>
<net name="VCP_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="VCP"/>
<wire x1="279.4" y1="223.52" x2="264.16" y2="223.52" width="0.1524" layer="91"/>
<wire x1="279.4" y1="223.52" x2="279.4" y2="218.44" width="0.1524" layer="91"/>
<pinref part="C4_M2" gate="G$1" pin="1"/>
<wire x1="279.4" y1="218.44" x2="281.94" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRB_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="BRB"/>
<pinref part="R2_M2" gate="G$1" pin="2"/>
<wire x1="264.16" y1="193.04" x2="309.88" y2="193.04" width="0.1524" layer="91"/>
<wire x1="309.88" y1="193.04" x2="309.88" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRA_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="BRA"/>
<pinref part="R3_M2" gate="G$1" pin="2"/>
<wire x1="264.16" y1="195.58" x2="317.5" y2="195.58" width="0.1524" layer="91"/>
<wire x1="317.5" y1="195.58" x2="317.5" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC_M2" class="0">
<segment>
<pinref part="C7_M2" gate="G$1" pin="1"/>
<pinref part="IC_M2" gate="G$1" pin="VCC"/>
<wire x1="187.96" y1="210.82" x2="187.96" y2="213.36" width="0.1524" layer="91"/>
<wire x1="187.96" y1="213.36" x2="187.96" y2="218.44" width="0.1524" layer="91"/>
<wire x1="187.96" y1="218.44" x2="228.6" y2="218.44" width="0.1524" layer="91"/>
<pinref part="R4_M2" gate="G$1" pin="1"/>
<wire x1="187.96" y1="213.36" x2="193.04" y2="213.36" width="0.1524" layer="91"/>
<junction x="187.96" y="213.36"/>
</segment>
</net>
<net name="AIN_M2" class="0">
<segment>
<pinref part="POT_M2" gate="G$1" pin="2"/>
<wire x1="270.51" y1="177.8" x2="269.24" y2="177.8" width="0.1524" layer="91"/>
<pinref part="IC_M2" gate="G$1" pin="AIN_IREF"/>
<wire x1="269.24" y1="177.8" x2="269.24" y2="187.96" width="0.1524" layer="91"/>
<wire x1="269.24" y1="187.96" x2="264.16" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="POT_M2" class="0">
<segment>
<pinref part="POT_M2" gate="G$1" pin="1"/>
<pinref part="R1_M2" gate="G$1" pin="1"/>
<wire x1="276.86" y1="185.42" x2="276.86" y2="187.96" width="0.1524" layer="91"/>
<wire x1="276.86" y1="187.96" x2="279.4" y2="187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPI_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="CPI"/>
<pinref part="C5_M3" gate="G$1" pin="1"/>
<wire x1="104.14" y1="111.76" x2="106.68" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPO_M3" class="0">
<segment>
<pinref part="C5_M3" gate="G$1" pin="2"/>
<wire x1="114.3" y1="111.76" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<wire x1="116.84" y1="111.76" x2="116.84" y2="109.22" width="0.1524" layer="91"/>
<wire x1="116.84" y1="109.22" x2="104.14" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC_M3" gate="G$1" pin="CPO"/>
</segment>
</net>
<net name="VCP_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="VCP"/>
<wire x1="119.38" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<wire x1="119.38" y1="116.84" x2="119.38" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C4_M3" gate="G$1" pin="1"/>
<wire x1="119.38" y1="111.76" x2="121.92" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRB_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="BRB"/>
<pinref part="R2_M3" gate="G$1" pin="2"/>
<wire x1="104.14" y1="86.36" x2="149.86" y2="86.36" width="0.1524" layer="91"/>
<wire x1="149.86" y1="86.36" x2="149.86" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRA_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="BRA"/>
<pinref part="R3_M3" gate="G$1" pin="2"/>
<wire x1="104.14" y1="88.9" x2="157.48" y2="88.9" width="0.1524" layer="91"/>
<wire x1="157.48" y1="88.9" x2="157.48" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC_M3" class="0">
<segment>
<pinref part="C7_M3" gate="G$1" pin="1"/>
<pinref part="IC_M3" gate="G$1" pin="VCC"/>
<wire x1="27.94" y1="104.14" x2="27.94" y2="106.68" width="0.1524" layer="91"/>
<wire x1="27.94" y1="106.68" x2="27.94" y2="111.76" width="0.1524" layer="91"/>
<wire x1="27.94" y1="111.76" x2="68.58" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R4_M3" gate="G$1" pin="1"/>
<wire x1="27.94" y1="106.68" x2="33.02" y2="106.68" width="0.1524" layer="91"/>
<junction x="27.94" y="106.68"/>
</segment>
</net>
<net name="AIN_M3" class="0">
<segment>
<pinref part="POT_M3" gate="G$1" pin="2"/>
<wire x1="110.49" y1="71.12" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC_M3" gate="G$1" pin="AIN_IREF"/>
<wire x1="109.22" y1="71.12" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<wire x1="109.22" y1="81.28" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="POT_M3" class="0">
<segment>
<pinref part="POT_M3" gate="G$1" pin="1"/>
<pinref part="R1_M3" gate="G$1" pin="1"/>
<wire x1="116.84" y1="78.74" x2="116.84" y2="81.28" width="0.1524" layer="91"/>
<wire x1="116.84" y1="81.28" x2="119.38" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPI_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="CPI"/>
<pinref part="C5_M4" gate="G$1" pin="1"/>
<wire x1="264.16" y1="111.76" x2="266.7" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CPO_M4" class="0">
<segment>
<pinref part="C5_M4" gate="G$1" pin="2"/>
<wire x1="274.32" y1="111.76" x2="276.86" y2="111.76" width="0.1524" layer="91"/>
<wire x1="276.86" y1="111.76" x2="276.86" y2="109.22" width="0.1524" layer="91"/>
<wire x1="276.86" y1="109.22" x2="264.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="IC_M4" gate="G$1" pin="CPO"/>
</segment>
</net>
<net name="VCP_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="VCP"/>
<wire x1="279.4" y1="116.84" x2="264.16" y2="116.84" width="0.1524" layer="91"/>
<wire x1="279.4" y1="116.84" x2="279.4" y2="111.76" width="0.1524" layer="91"/>
<pinref part="C4_M4" gate="G$1" pin="1"/>
<wire x1="279.4" y1="111.76" x2="281.94" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRB_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="BRB"/>
<pinref part="R2_M4" gate="G$1" pin="2"/>
<wire x1="264.16" y1="86.36" x2="309.88" y2="86.36" width="0.1524" layer="91"/>
<wire x1="309.88" y1="86.36" x2="309.88" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BRA_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="BRA"/>
<pinref part="R3_M4" gate="G$1" pin="2"/>
<wire x1="264.16" y1="88.9" x2="317.5" y2="88.9" width="0.1524" layer="91"/>
<wire x1="317.5" y1="88.9" x2="317.5" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC_M4" class="0">
<segment>
<pinref part="C7_M4" gate="G$1" pin="1"/>
<pinref part="IC_M4" gate="G$1" pin="VCC"/>
<wire x1="187.96" y1="104.14" x2="187.96" y2="106.68" width="0.1524" layer="91"/>
<wire x1="187.96" y1="106.68" x2="187.96" y2="111.76" width="0.1524" layer="91"/>
<wire x1="187.96" y1="111.76" x2="228.6" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R4_M4" gate="G$1" pin="1"/>
<wire x1="187.96" y1="106.68" x2="193.04" y2="106.68" width="0.1524" layer="91"/>
<junction x="187.96" y="106.68"/>
</segment>
</net>
<net name="AIN_M4" class="0">
<segment>
<pinref part="POT_M4" gate="G$1" pin="2"/>
<wire x1="270.51" y1="71.12" x2="269.24" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC_M4" gate="G$1" pin="AIN_IREF"/>
<wire x1="269.24" y1="71.12" x2="269.24" y2="81.28" width="0.1524" layer="91"/>
<wire x1="269.24" y1="81.28" x2="264.16" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="POT_M4" class="0">
<segment>
<pinref part="POT_M4" gate="G$1" pin="1"/>
<pinref part="R1_M4" gate="G$1" pin="1"/>
<wire x1="276.86" y1="78.74" x2="276.86" y2="81.28" width="0.1524" layer="91"/>
<wire x1="276.86" y1="81.28" x2="279.4" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V_M2" class="0">
<segment>
<pinref part="R4_M2" gate="G$1" pin="2"/>
<pinref part="IC_M2" gate="G$1" pin="5VOUT"/>
<wire x1="203.2" y1="213.36" x2="205.74" y2="213.36" width="0.1524" layer="91"/>
<pinref part="C8_M2" gate="G$1" pin="1"/>
<wire x1="205.74" y1="213.36" x2="228.6" y2="213.36" width="0.1524" layer="91"/>
<wire x1="205.74" y1="210.82" x2="205.74" y2="213.36" width="0.1524" layer="91"/>
<junction x="205.74" y="213.36"/>
<label x="210.82" y="213.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R1_M2" gate="G$1" pin="2"/>
<wire x1="289.56" y1="187.96" x2="297.18" y2="187.96" width="0.1524" layer="91"/>
<label x="289.56" y="187.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="OA1_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="OA1"/>
<label x="266.7" y="210.82" size="1.778" layer="95"/>
<wire x1="264.16" y1="210.82" x2="292.1" y2="210.82" width="0.1524" layer="91"/>
<pinref part="Y" gate="1" pin="1"/>
</segment>
</net>
<net name="OA2_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="OA2"/>
<label x="266.7" y="208.28" size="1.778" layer="95"/>
<wire x1="264.16" y1="208.28" x2="292.1" y2="208.28" width="0.1524" layer="91"/>
<pinref part="Y" gate="1" pin="2"/>
</segment>
</net>
<net name="OB1_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="OB1"/>
<wire x1="264.16" y1="203.2" x2="279.4" y2="203.2" width="0.1524" layer="91"/>
<label x="266.7" y="203.2" size="1.778" layer="95"/>
<wire x1="279.4" y1="203.2" x2="279.4" y2="205.74" width="0.1524" layer="91"/>
<pinref part="Y" gate="1" pin="3"/>
<wire x1="279.4" y1="205.74" x2="292.1" y2="205.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OB2_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="OB2"/>
<wire x1="264.16" y1="200.66" x2="281.94" y2="200.66" width="0.1524" layer="91"/>
<label x="266.7" y="200.66" size="1.778" layer="95"/>
<wire x1="281.94" y1="200.66" x2="281.94" y2="203.2" width="0.1524" layer="91"/>
<pinref part="Y" gate="1" pin="4"/>
<wire x1="292.1" y1="203.2" x2="281.94" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CFG2_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="CFG2"/>
<wire x1="228.6" y1="208.28" x2="218.44" y2="208.28" width="0.1524" layer="91"/>
<label x="218.44" y="208.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG2_Y" gate="G$1" pin="2"/>
<wire x1="200.66" y1="162.56" x2="205.74" y2="162.56" width="0.1524" layer="91"/>
<label x="203.2" y="162.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG1_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="CFG1"/>
<wire x1="228.6" y1="205.74" x2="218.44" y2="205.74" width="0.1524" layer="91"/>
<label x="218.44" y="205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG1_Y" gate="G$1" pin="2"/>
<wire x1="190.5" y1="175.26" x2="195.58" y2="175.26" width="0.1524" layer="91"/>
<label x="193.04" y="175.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="CFG6_!ENABLE"/>
<wire x1="228.6" y1="203.2" x2="218.44" y2="203.2" width="0.1524" layer="91"/>
<label x="218.44" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="STEP"/>
<wire x1="228.6" y1="200.66" x2="218.44" y2="200.66" width="0.1524" layer="91"/>
<label x="218.44" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M2" class="0">
<segment>
<pinref part="IC_M2" gate="G$1" pin="DIR"/>
<wire x1="228.6" y1="198.12" x2="218.44" y2="198.12" width="0.1524" layer="91"/>
<label x="218.44" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG2_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="CFG2"/>
<wire x1="68.58" y1="101.6" x2="58.42" y2="101.6" width="0.1524" layer="91"/>
<label x="58.42" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG2_Z" gate="G$1" pin="2"/>
<wire x1="43.18" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<label x="45.72" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG1_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="CFG1"/>
<wire x1="68.58" y1="99.06" x2="58.42" y2="99.06" width="0.1524" layer="91"/>
<label x="58.42" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG1_Z" gate="G$1" pin="2"/>
<wire x1="33.02" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<label x="35.56" y="71.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="CFG6_!ENABLE"/>
<wire x1="68.58" y1="96.52" x2="58.42" y2="96.52" width="0.1524" layer="91"/>
<label x="58.42" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="STEP"/>
<wire x1="68.58" y1="93.98" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
<label x="58.42" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="DIR"/>
<wire x1="68.58" y1="91.44" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<label x="58.42" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V_M3" class="0">
<segment>
<pinref part="R1_M3" gate="G$1" pin="2"/>
<wire x1="129.54" y1="81.28" x2="137.16" y2="81.28" width="0.1524" layer="91"/>
<label x="129.54" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R4_M3" gate="G$1" pin="2"/>
<pinref part="IC_M3" gate="G$1" pin="5VOUT"/>
<wire x1="43.18" y1="106.68" x2="45.72" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C8_M3" gate="G$1" pin="1"/>
<wire x1="45.72" y1="106.68" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="45.72" y1="104.14" x2="45.72" y2="106.68" width="0.1524" layer="91"/>
<junction x="45.72" y="106.68"/>
<label x="50.8" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="OB2_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="OB2"/>
<wire x1="104.14" y1="93.98" x2="121.92" y2="93.98" width="0.1524" layer="91"/>
<label x="106.68" y="93.98" size="1.778" layer="95"/>
<wire x1="121.92" y1="93.98" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
<pinref part="Z" gate="1" pin="4"/>
<wire x1="132.08" y1="96.52" x2="121.92" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OB1_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="OB1"/>
<wire x1="104.14" y1="96.52" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<label x="106.68" y="96.52" size="1.778" layer="95"/>
<wire x1="119.38" y1="96.52" x2="119.38" y2="99.06" width="0.1524" layer="91"/>
<pinref part="Z" gate="1" pin="3"/>
<wire x1="119.38" y1="99.06" x2="132.08" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OA2_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="OA2"/>
<label x="106.68" y="101.6" size="1.778" layer="95"/>
<wire x1="104.14" y1="101.6" x2="132.08" y2="101.6" width="0.1524" layer="91"/>
<pinref part="Z" gate="1" pin="2"/>
</segment>
</net>
<net name="OA1_M3" class="0">
<segment>
<pinref part="IC_M3" gate="G$1" pin="OA1"/>
<label x="106.68" y="104.14" size="1.778" layer="95"/>
<wire x1="104.14" y1="104.14" x2="132.08" y2="104.14" width="0.1524" layer="91"/>
<pinref part="Z" gate="1" pin="1"/>
</segment>
</net>
<net name="5V_M4" class="0">
<segment>
<pinref part="R1_M4" gate="G$1" pin="2"/>
<wire x1="289.56" y1="81.28" x2="297.18" y2="81.28" width="0.1524" layer="91"/>
<label x="289.56" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R4_M4" gate="G$1" pin="2"/>
<pinref part="IC_M4" gate="G$1" pin="5VOUT"/>
<wire x1="203.2" y1="106.68" x2="205.74" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C8_M4" gate="G$1" pin="1"/>
<wire x1="205.74" y1="106.68" x2="228.6" y2="106.68" width="0.1524" layer="91"/>
<wire x1="205.74" y1="104.14" x2="205.74" y2="106.68" width="0.1524" layer="91"/>
<junction x="205.74" y="106.68"/>
<label x="210.82" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="OB2_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="OB2"/>
<wire x1="264.16" y1="93.98" x2="281.94" y2="93.98" width="0.1524" layer="91"/>
<label x="266.7" y="93.98" size="1.778" layer="95"/>
<wire x1="281.94" y1="93.98" x2="281.94" y2="96.52" width="0.1524" layer="91"/>
<pinref part="E" gate="1" pin="4"/>
<wire x1="292.1" y1="96.52" x2="281.94" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OB1_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="OB1"/>
<wire x1="264.16" y1="96.52" x2="279.4" y2="96.52" width="0.1524" layer="91"/>
<label x="266.7" y="96.52" size="1.778" layer="95"/>
<wire x1="279.4" y1="96.52" x2="279.4" y2="99.06" width="0.1524" layer="91"/>
<pinref part="E" gate="1" pin="3"/>
<wire x1="279.4" y1="99.06" x2="292.1" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="OA2_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="OA2"/>
<label x="266.7" y="101.6" size="1.778" layer="95"/>
<wire x1="264.16" y1="101.6" x2="292.1" y2="101.6" width="0.1524" layer="91"/>
<pinref part="E" gate="1" pin="2"/>
</segment>
</net>
<net name="OA1_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="OA1"/>
<label x="266.7" y="104.14" size="1.778" layer="95"/>
<wire x1="264.16" y1="104.14" x2="292.1" y2="104.14" width="0.1524" layer="91"/>
<pinref part="E" gate="1" pin="1"/>
</segment>
</net>
<net name="DIR_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="DIR"/>
<wire x1="228.6" y1="91.44" x2="218.44" y2="91.44" width="0.1524" layer="91"/>
<label x="218.44" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="STEP"/>
<wire x1="228.6" y1="93.98" x2="218.44" y2="93.98" width="0.1524" layer="91"/>
<label x="218.44" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="EN_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="CFG6_!ENABLE"/>
<wire x1="228.6" y1="96.52" x2="218.44" y2="96.52" width="0.1524" layer="91"/>
<label x="218.44" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG1_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="CFG1"/>
<wire x1="228.6" y1="99.06" x2="218.44" y2="99.06" width="0.1524" layer="91"/>
<label x="218.44" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CFG1_E" gate="G$1" pin="2"/>
<wire x1="187.96" y1="68.58" x2="193.04" y2="68.58" width="0.1524" layer="91"/>
<label x="190.5" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="CFG2_M4" class="0">
<segment>
<pinref part="IC_M4" gate="G$1" pin="CFG2"/>
<wire x1="228.6" y1="101.6" x2="218.44" y2="101.6" width="0.1524" layer="91"/>
<label x="218.44" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CFG2_E" gate="G$1" pin="2"/>
<wire x1="198.12" y1="55.88" x2="203.2" y2="55.88" width="0.1524" layer="91"/>
<label x="200.66" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="IC_M1" gate="G$1" pin="VCC_IO"/>
<wire x1="68.58" y1="220.98" x2="17.78" y2="220.98" width="0.1524" layer="91"/>
<wire x1="17.78" y1="220.98" x2="17.78" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C6_M1" gate="G$1" pin="1"/>
<wire x1="17.78" y1="210.82" x2="17.78" y2="220.98" width="0.1524" layer="91"/>
<junction x="17.78" y="220.98"/>
<pinref part="+3V8" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="IC_M2" gate="G$1" pin="VCC_IO"/>
<wire x1="228.6" y1="220.98" x2="177.8" y2="220.98" width="0.1524" layer="91"/>
<wire x1="177.8" y1="220.98" x2="177.8" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C6_M2" gate="G$1" pin="1"/>
<wire x1="177.8" y1="210.82" x2="177.8" y2="220.98" width="0.1524" layer="91"/>
<junction x="177.8" y="220.98"/>
<pinref part="+3V9" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="IC_M4" gate="G$1" pin="VCC_IO"/>
<wire x1="228.6" y1="114.3" x2="177.8" y2="114.3" width="0.1524" layer="91"/>
<wire x1="177.8" y1="114.3" x2="177.8" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C6_M4" gate="G$1" pin="1"/>
<wire x1="177.8" y1="104.14" x2="177.8" y2="114.3" width="0.1524" layer="91"/>
<junction x="177.8" y="114.3"/>
<pinref part="+3V10" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="IC_M3" gate="G$1" pin="VCC_IO"/>
<wire x1="68.58" y1="114.3" x2="17.78" y2="114.3" width="0.1524" layer="91"/>
<wire x1="17.78" y1="114.3" x2="17.78" y2="121.92" width="0.1524" layer="91"/>
<pinref part="C6_M3" gate="G$1" pin="1"/>
<wire x1="17.78" y1="104.14" x2="17.78" y2="114.3" width="0.1524" layer="91"/>
<junction x="17.78" y="114.3"/>
<pinref part="+3V11" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="CHG1_X" gate="G$1" pin="3"/>
<pinref part="+3V12" gate="G$1" pin="+3V3"/>
<wire x1="22.86" y1="182.88" x2="22.86" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V13" gate="G$1" pin="+3V3"/>
<pinref part="CHG2_X" gate="G$1" pin="3"/>
<wire x1="33.02" y1="172.72" x2="33.02" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG1_Y" gate="G$1" pin="3"/>
<pinref part="+3V14" gate="G$1" pin="+3V3"/>
<wire x1="185.42" y1="180.34" x2="185.42" y2="182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V15" gate="G$1" pin="+3V3"/>
<pinref part="CHG2_Y" gate="G$1" pin="3"/>
<wire x1="195.58" y1="170.18" x2="195.58" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CHG1_Z" gate="G$1" pin="3"/>
<pinref part="+3V16" gate="G$1" pin="+3V3"/>
<wire x1="27.94" y1="76.2" x2="27.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V17" gate="G$1" pin="+3V3"/>
<pinref part="CHG2_Z" gate="G$1" pin="3"/>
<wire x1="38.1" y1="66.04" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CFG1_E" gate="G$1" pin="3"/>
<pinref part="+3V18" gate="G$1" pin="+3V3"/>
<wire x1="182.88" y1="73.66" x2="182.88" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V19" gate="G$1" pin="+3V3"/>
<pinref part="CFG2_E" gate="G$1" pin="3"/>
<wire x1="193.04" y1="63.5" x2="193.04" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="106,1,160.02,127,P0.08,,,,,"/>
<approved hash="106,1,160.02,124.46,P0.09,,,,,"/>
<approved hash="106,1,160.02,116.84,P0.12,,,,,"/>
<approved hash="106,1,160.02,114.3,P0.13,,,,,"/>
<approved hash="106,1,330.2,223.52,PI_02_SDA1,,,,,"/>
<approved hash="106,1,330.2,226.06,PI_3V3,,,,,"/>
<approved hash="106,1,330.2,205.74,PI_3V32,,,,,"/>
<approved hash="106,1,330.2,220.98,PI_03_SCL1,,,,,"/>
<approved hash="106,1,330.2,218.44,PI_04,,,,,"/>
<approved hash="106,1,330.2,190.5,PI_05,,,,,"/>
<approved hash="106,1,330.2,187.96,PI_06,,,,,"/>
<approved hash="106,1,345.44,195.58,PI_07_CE1,,,,,"/>
<approved hash="106,1,345.44,198.12,PI_08_CE0,,,,,"/>
<approved hash="106,1,330.2,200.66,PI_09_MISO,,,,,"/>
<approved hash="106,1,330.2,203.2,PI_10_MOSI,,,,,"/>
<approved hash="106,1,330.2,198.12,PI_11_SCK,,,,,"/>
<approved hash="106,1,345.44,187.96,PI_12,,,,,"/>
<approved hash="106,1,330.2,185.42,PI_13,,,,,"/>
<approved hash="106,1,345.44,182.88,PI_16,,,,,"/>
<approved hash="106,1,330.2,213.36,PI_17,,,,,"/>
<approved hash="106,1,345.44,213.36,PI_18,,,,,"/>
<approved hash="106,1,330.2,182.88,PI_19,,,,,"/>
<approved hash="106,1,345.44,180.34,PI_20,,,,,"/>
<approved hash="106,1,345.44,177.8,PI_21,,,,,"/>
<approved hash="106,1,330.2,208.28,PI_22,,,,,"/>
<approved hash="106,1,345.44,208.28,PI_23,,,,,"/>
<approved hash="106,1,345.44,205.74,PI_24,,,,,"/>
<approved hash="106,1,345.44,200.66,PI_25,,,,,"/>
<approved hash="106,1,330.2,180.34,PI_26,,,,,"/>
<approved hash="106,1,330.2,210.82,PI_27,,,,,"/>
<approved hash="106,1,345.44,193.04,PI_ID_SC,,,,,"/>
<approved hash="106,1,330.2,193.04,PI_ID_SD,,,,,"/>
<approved hash="113,1,194.206,131.976,FRAME1,,,,,"/>
<approved hash="113,1,337.82,200.465,PI_HEADER,,,,,"/>
<approved hash="113,2,194.206,131.976,FRAME2,,,,,"/>
<approved hash="113,2,134.662,205.545,X,,,,,"/>
<approved hash="113,2,294.682,205.545,Y,,,,,"/>
<approved hash="113,2,134.662,98.8653,Z,,,,,"/>
<approved hash="113,2,294.682,98.8653,E,,,,,"/>
<approved hash="113,1,337.862,150.055,SWD,,,,,"/>
<approved hash="113,1,200.702,63.6947,FAN1,,,,,"/>
<approved hash="113,1,238.802,63.6947,FAN2,,,,,"/>
<approved hash="113,1,332.782,117.035,END_X,,,,,"/>
<approved hash="113,1,332.782,94.1747,END_Y,,,,,"/>
<approved hash="113,1,332.782,71.3147,END_Z,,,,,"/>
<approved hash="113,1,22.8177,241.495,+12V,,,,,"/>
<approved hash="113,1,76.2423,66.2347,BED,,,,,"/>
<approved hash="113,1,137.202,66.2347,NOZZLE,,,,,"/>
<approved hash="113,1,106.314,73.8547,TEMP_NOZZLE,,,,,"/>
<approved hash="113,1,47.7549,73.8547,TEMP_BED,,,,,"/>
<approved hash="113,2,20.9049,177.8,CHG1_X,,,,,"/>
<approved hash="113,2,31.0649,165.1,CHG2_X,,,,,"/>
<approved hash="113,2,183.465,175.26,CHG1_Y,,,,,"/>
<approved hash="113,2,193.625,162.56,CHG2_Y,,,,,"/>
<approved hash="113,2,26.0563,71.12,CHG1_Z,,,,,"/>
<approved hash="113,2,36.2163,58.42,CHG2_Z,,,,,"/>
<approved hash="113,2,181.063,68.58,CFG1_E,,,,,"/>
<approved hash="113,2,191.223,55.88,CFG2_E,,,,,"/>
<approved hash="115,1,43.18,74.93,THBED,,,,,"/>
<approved hash="115,1,104.14,74.93,THNOZ,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
