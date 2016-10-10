<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="jOpenSpace" FOLDED="false" ID="ID_1525942565" CREATED="1475910417790" MODIFIED="1475943034387" LINK="menuitem:_$addons.roan.presentation_menuAction_on_single_node$0" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="0.848">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
<edge COLOR="#ff0000"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
<edge COLOR="#0000ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
<edge COLOR="#00ff00"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
<edge COLOR="#ff00ff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5">
<edge COLOR="#00ffff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6">
<edge COLOR="#7c0000"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7">
<edge COLOR="#00007c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8">
<edge COLOR="#007c00"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9">
<edge COLOR="#7c007c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10">
<edge COLOR="#007c7c"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11">
<edge COLOR="#7c7c00"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="37" RULE="ON_BRANCH_CREATION"/>
<attribute NAME="roan-p" VALUE="inited,v0.1.0"/>
<node TEXT="Talks" POSITION="left" ID="ID_1848291970" CREATED="1476006827590" MODIFIED="1476006833412">
<edge COLOR="#00ff00"/>
<node TEXT="Tom&#xe1;&#x161; Z&#xe1;lusk&#xfd; - PLSQL-Java bridge" ID="ID_276365852" CREATED="1475910456002" MODIFIED="1476006871803">
<node TEXT="TopMonks" ID="ID_139021085" CREATED="1475910696990" MODIFIED="1475910713740"/>
<node TEXT="Jak zavolat PLSQL z Javy?" ID="ID_1117965432" CREATED="1475910845639" MODIFIED="1475910852183">
<node TEXT="JOOQ" ID="ID_777977598" CREATED="1475910863373" MODIFIED="1475910870974"/>
<node TEXT="JDBC" ID="ID_1899615049" CREATED="1475910884156" MODIFIED="1475910887256"/>
<node TEXT="typ nesm&#xed; b&#xfd;t v PLSQL package, pak nejde zavolat" ID="ID_367745429" CREATED="1475910891466" MODIFIED="1475910901652"/>
<node TEXT="Rozhran&#xed; mezi PLSQL a Javy - chyb&#xed; typov&#xe1; bezpe&#x10d;nost" ID="ID_445733053" CREATED="1475910940174" MODIFIED="1475910952476"/>
<node TEXT="jdbi.org" ID="ID_704272561" CREATED="1475910956938" MODIFIED="1475910961587">
<node TEXT="Princip anotac&#xed;" ID="ID_723174241" CREATED="1475910963363" MODIFIED="1475910966159"/>
</node>
<node TEXT="&#x158;e&#x161;en&#xed;" ID="ID_1618936246" CREATED="1475911007549" MODIFIED="1475911011524">
<node TEXT="Vytvo&#x159;&#xed;me interface pro package, s anotacc&#xed; @function" ID="ID_1713351070" CREATED="1475911016563" MODIFIED="1475911038021"/>
<node TEXT="Datov&#xe9; typy v PLSQL maj&#xed; obdobu oanotovan&#xfd;ch DTO" ID="ID_1426721909" CREATED="1475911056835" MODIFIED="1475911069720"/>
<node TEXT="U package private dat, nelze volat p&#x159;es JDBC" ID="ID_824739753" CREATED="1475911174473" MODIFIED="1475911186279">
<node TEXT="Rozkladem na primitivn&#xed; typy" ID="ID_675830784" CREATED="1475911264595" MODIFIED="1475911271286"/>
</node>
</node>
<node TEXT="V&#xfd;hody" ID="ID_1160171984" CREATED="1475911301867" MODIFIED="1475911307812">
<node TEXT="zachov&#xe1;n&#xed; typ&#x16f; - typov&#x11b; bezpe&#x10d;n&#xfd; p&#x159;&#xed;stup do PL/SQL z Javy" ID="ID_351331812" CREATED="1475911313101" MODIFIED="1475911353182"/>
<node TEXT="&#x17e;&#xe1;dn&#xfd; boilerplate k&#xf3;d" ID="ID_1795917242" CREATED="1475911316467" MODIFIED="1475911326324"/>
<node TEXT="vy&#x159;e&#x161;eno p&#x159;emost&#x11b;n&#xed;" ID="ID_1889974471" CREATED="1475911331110" MODIFIED="1475911337396"/>
</node>
</node>
</node>
<node TEXT="V&#xed;&#x165;a Pl&#x161;ek - Angular 2" ID="ID_1493381451" CREATED="1475911502739" MODIFIED="1476006871805">
<node TEXT="2 cesty" ID="ID_836216577" CREATED="1475911560368" MODIFIED="1475911563139">
<node TEXT="Vlastn&#xed; ekosystem, t&#x159;eba pou&#x17e;&#xed;t react.js (na renderov&#xe1;n&#xed; HTML), plus dal&#x161;&#xed; komponenty dle vl. v&#xfd;b&#x11b;ru" ID="ID_443253983" CREATED="1475911563732" MODIFIED="1475912190925"/>
<node TEXT="Pou&#x17e;&#xed;t framework" ID="ID_1169984951" CREATED="1475911580798" MODIFIED="1475911586053">
<node TEXT="Angular.js" ID="ID_67546167" CREATED="1475911605130" MODIFIED="1475911612863"/>
<node TEXT="Amber" ID="ID_1731341555" CREATED="1475911613322" MODIFIED="1475911614887"/>
<node TEXT="Bobr" ID="ID_900894434" CREATED="1475911615385" MODIFIED="1475911617423"/>
</node>
</node>
<node TEXT="Angular 1.x" ID="ID_369151781" CREATED="1475911664321" MODIFIED="1475911668548">
<node TEXT="Nau&#x10d;il lidi ps&#xe1;t single page aplikace v prohl&#xed;&#x17e;e&#x10d;i" ID="ID_1059804766" CREATED="1475911669656" MODIFIED="1475911677937"/>
<node TEXT="Je star&#xfd;, nesta&#x10d;&#xed; nov&#xfd;m trend&#x16f;m" ID="ID_28120864" CREATED="1475911703646" MODIFIED="1475912287621">
<node TEXT="Dirty checking - pr&#xe1;ce s detekc&#xed; zm&#x11b;ny" ID="ID_981352814" CREATED="1475911709787" MODIFIED="1475911720854"/>
<node TEXT="Nepodporuje lazy loading" ID="ID_1664777767" CREATED="1475911721224" MODIFIED="1475911726998"/>
<node TEXT="Neum&#xed; renderovat na serveru" ID="ID_1948501979" CREATED="1475911727645" MODIFIED="1475911734207">
<node TEXT="server side loading" ID="ID_1801394115" CREATED="1475911911585" MODIFIED="1475911916971"/>
<node TEXT="probl&#xe9;m indexac&#xed; search engines" ID="ID_1190032091" CREATED="1475911922929" MODIFIED="1475911934685"/>
<node TEXT="V angular 2 &#x159;e&#x161;&#xed; angular universal" ID="ID_1768676135" CREATED="1475911940021" MODIFIED="1475911956215">
<node TEXT="HTML str&#xe1;nky se vygeneruje JS, ale na serveru, odkud ho search engine st&#xe1;hne" ID="ID_1236095374" CREATED="1475911957744" MODIFIED="1475911976939"/>
</node>
</node>
<node TEXT="Za&#x10d;n&#x11b;me jinak, na zelen&#xe9; louce" ID="ID_1178448932" CREATED="1475911739873" MODIFIED="1475911755620">
<node TEXT="Angular 2" ID="ID_1008008" CREATED="1475911759026" MODIFIED="1475911763866"/>
</node>
</node>
</node>
<node TEXT="Angular 2" ID="ID_951101095" CREATED="1475911766491" MODIFIED="1475911771521">
<node TEXT="m&#xe1; probl&#xe9;m migra&#x10d;n&#xed; cesty z 1.x" ID="ID_1281542496" CREATED="1475911772674" MODIFIED="1475911793660">
<node TEXT="" ID="ID_646316763" CREATED="1475912089747" MODIFIED="1475912089747"/>
</node>
<node TEXT="c&#xed;lem je b&#xfd;t komplexn&#xed; platformou - nic dal&#x161;&#xed;ho v JS nepot&#x159;ebujete" ID="ID_249148895" CREATED="1475911794224" MODIFIED="1475911815934"/>
<node TEXT="Je napsan&#xfd; v tightscriptu TS" ID="ID_323112915" CREATED="1475911816574" MODIFIED="1475911823309"/>
<node TEXT="Je postaven&#xe1; na komponent&#xe1;ch" ID="ID_80233321" CREATED="1475911828845" MODIFIED="1475911834422">
<node TEXT="Metody" ID="ID_755075826" CREATED="1475911835492" MODIFIED="1475911837364"/>
<node TEXT="Vlastnosti" ID="ID_1216696692" CREATED="1475911837636" MODIFIED="1475911839188"/>
<node TEXT="Metadata" ID="ID_1348907619" CREATED="1475911839496" MODIFIED="1475911842872"/>
<node TEXT="&#x161;ablony" ID="ID_1899116129" CREATED="1475911843306" MODIFIED="1475911846563"/>
<node TEXT="styly" ID="ID_916505207" CREATED="1475911846754" MODIFIED="1475911849891"/>
<node TEXT="vlastn&#xed; depedency injection container" ID="ID_1082818463" CREATED="1475911850862" MODIFIED="1475911857360"/>
<node TEXT="p&#x159;esn&#x11b; def. vstupy a v&#xfd;stupy" ID="ID_1216930788" CREATED="1475911857561" MODIFIED="1475911863784"/>
</node>
<node TEXT="Cel&#xe1; aplikace je strom komponent" ID="ID_1885120046" CREATED="1475911867502" MODIFIED="1475911875682"/>
<node TEXT="Na &#xfa;rovni routeru lze nahr&#xe1;t celou podaplikaci" ID="ID_1361122473" CREATED="1475911889941" MODIFIED="1475911900386"/>
<node TEXT="Angular CLI Command line interface" ID="ID_1860965125" CREATED="1475911986184" MODIFIED="1475911993721">
<node TEXT="komplexn&#xed; v&#xfd;vojov&#xfd; stack" ID="ID_1986066854" CREATED="1475912002796" MODIFIED="1475912008544"/>
</node>
<node TEXT="&quot;Spring&quot; pro javascript sv&#x11b;t" ID="ID_356153163" CREATED="1475912013250" MODIFIED="1475912018280"/>
<node TEXT="Tutorial Tour of Heroes - angular.io" ID="ID_1901564996" CREATED="1475912121563" MODIFIED="1475912179388"/>
</node>
</node>
<node TEXT="Radek Hubner - Digital preservation in the national archives" ID="ID_286918455" CREATED="1475912320829" MODIFIED="1476006871807">
<node TEXT="London" ID="ID_1317904613" CREATED="1475912326841" MODIFIED="1475918740380"/>
<node TEXT="Chalenges - incoming data" ID="ID_241867005" CREATED="1475912450749" MODIFIED="1475912456010">
<node TEXT="Sensitivity" ID="ID_1893301969" CREATED="1475912457326" MODIFIED="1475912466243"/>
<node TEXT="Diversity" ID="ID_1457667856" CREATED="1475912466602" MODIFIED="1475912468652"/>
<node TEXT="Trustability" ID="ID_1975047122" CREATED="1475912482348" MODIFIED="1475912491154"/>
</node>
<node TEXT="Tools used" ID="ID_707533296" CREATED="1475912791686" MODIFIED="1475912793725">
<node TEXT="CSV validator" ID="ID_1572005761" CREATED="1475912558536" MODIFIED="1475912563202">
<node TEXT="ala XML schema for CSV" ID="ID_76689761" CREATED="1475912563820" MODIFIED="1475912587179"/>
<node TEXT="Github, opensource" ID="ID_1181491417" CREATED="1475912643847" MODIFIED="1475912650744"/>
</node>
<node TEXT="PRONOM" ID="ID_1682061431" CREATED="1475912651709" MODIFIED="1475912657837">
<node TEXT="Database of different file formats" ID="ID_1745773284" CREATED="1475912659434" MODIFIED="1475912685709"/>
<node TEXT="Provides data about format and its validation" ID="ID_499357481" CREATED="1475912666711" MODIFIED="1475912701049"/>
<node TEXT="Java, JPEG 2000, ..." ID="ID_783011107" CREATED="1475912701432" MODIFIED="1475912712912"/>
</node>
<node TEXT="Droid" ID="ID_1322993974" CREATED="1475912714924" MODIFIED="1475912718854">
<node TEXT="Digital record and object identification" ID="ID_489270387" CREATED="1475912720567" MODIFIED="1475912727319"/>
<node TEXT="Uses PRONOM dadtabase, validates the files" ID="ID_1535017867" CREATED="1475912734457" MODIFIED="1475912775785"/>
<node TEXT="Opensource" ID="ID_1281114326" CREATED="1475912748033" MODIFIED="1475912750989">
<node TEXT="Command line" ID="ID_581331150" CREATED="1475912754844" MODIFIED="1475912757518"/>
<node TEXT="GUI" ID="ID_234925077" CREATED="1475912757777" MODIFIED="1475912765457"/>
</node>
</node>
<node TEXT="Pre ingest" ID="ID_1927223083" CREATED="1475912779658" MODIFIED="1475912782481">
<node TEXT="Creates XML metadata describing document" ID="ID_673297181" CREATED="1475912816748" MODIFIED="1475912825985"/>
</node>
<node TEXT="Ingest - Preservica" ID="ID_770889261" CREATED="1475912874719" MODIFIED="1475912879640">
<node TEXT="Built on Drools platform" ID="ID_585085422" CREATED="1475912882395" MODIFIED="1475912887258"/>
<node TEXT="Chain of workflow tasks" ID="ID_644682592" CREATED="1475912896796" MODIFIED="1475912912582"/>
</node>
<node TEXT="Catalogue" ID="ID_258897479" CREATED="1475912968867" MODIFIED="1475912979985">
<node TEXT="Stores data in graph database" ID="ID_28583951" CREATED="1475912980621" MODIFIED="1475912998218"/>
</node>
<node TEXT="Final storage" ID="ID_797678557" CREATED="1475913040583" MODIFIED="1475913045091">
<node TEXT="Conversion to common, not bloated formats" ID="ID_1162817334" CREATED="1475913046056" MODIFIED="1475913064074"/>
</node>
</node>
</node>
<node TEXT="Jirka Bukovjan - Monetizace mobiln&#xed;ch her" ID="ID_1662661315" CREATED="1475912204569" MODIFIED="1476006871810">
<node TEXT="NOXGAMES" ID="ID_71402832" CREATED="1475913401510" MODIFIED="1475913407570"/>
<node TEXT="P&#x159;&#xed;stupy k placen&#xed;" ID="ID_1387890095" CREATED="1475913408193" MODIFIED="1475913450250">
<node TEXT="Free to play" ID="ID_1789138573" CREATED="1475913468020" MODIFIED="1475913471506"/>
<node TEXT="Premium" ID="ID_933100886" CREATED="1475913491315" MODIFIED="1475913499181">
<node TEXT="5%" ID="ID_554655572" CREATED="1475913546144" MODIFIED="1475913552412"/>
</node>
<node TEXT="Freemium" ID="ID_1472037812" CREATED="1475913499900" MODIFIED="1475913501919">
<node TEXT="vygeneruj&#xed; 95% v&#x161;eho zisku" ID="ID_1922206843" CREATED="1475913506561" MODIFIED="1475913541549"/>
<node TEXT="N&#xe1;kupy v aplikaci" ID="ID_1488113233" CREATED="1475913556164" MODIFIED="1475913570175">
<node TEXT="Jen m&#xe1;lo konverz&#xed;" ID="ID_77990890" CREATED="1475913571120" MODIFIED="1475913576337"/>
<node TEXT="Soust&#x159;ed&#x11b;n&#xed; se na velryby, co utrat&#xed; tis&#xed;ce dolar&#x16f;" ID="ID_96643532" CREATED="1475913613373" MODIFIED="1475913625766"/>
</node>
<node TEXT="Reklamy" ID="ID_422095921" CREATED="1475913578111" MODIFIED="1475913579809">
<node TEXT="Rewarded videa" ID="ID_1230981736" CREATED="1475913589726" MODIFIED="1475913595641">
<node TEXT="Hr&#xe1;&#x10d; dostane odm&#x11b;nu za shl&#xe9;dnut&#xed; videa" ID="ID_1282767022" CREATED="1475913596517" MODIFIED="1475913605180"/>
</node>
</node>
<node TEXT="Subscription" ID="ID_537521772" CREATED="1475913607419" MODIFIED="1475913609890"/>
</node>
</node>
<node TEXT="Jak monetizovat" ID="ID_1430187229" CREATED="1475913630254" MODIFIED="1475913633317">
<node TEXT="Motivovat hr&#xe1;&#x10d;e, aby ve h&#x159;e vydr&#x17e;el nejd&#xe9;le" ID="ID_1174035198" CREATED="1475913638431" MODIFIED="1475913645948">
<node TEXT="Nejsiln&#x11b;j&#x161;&#xed; motivace = progress" ID="ID_1819830972" CREATED="1475913650112" MODIFIED="1475913661197">
<node TEXT="Levely" ID="ID_630106679" CREATED="1475913661206" MODIFIED="1475913662465"/>
<node TEXT="Stavby a vylep&#x161;en&#xed;" ID="ID_550049829" CREATED="1475913662760" MODIFIED="1475913667082">
<node TEXT="Clash of clans" ID="ID_838633105" CREATED="1475913689613" MODIFIED="1475913691846"/>
</node>
<node TEXT="Sb&#x11b;ratelstv&#xed; a vylep&#x161;en&#xed;" ID="ID_402095855" CREATED="1475913668178" MODIFIED="1475913673403">
<node TEXT="Contest of champions" ID="ID_404045461" CREATED="1475913704021" MODIFIED="1475913707887"/>
<node TEXT="Karti&#x10d;ky, kolekce hrdin&#x16f;, m&#x16f;&#x17e;ete se s t&#xed;m chlubit" ID="ID_885461387" CREATED="1475913709224" MODIFIED="1475913724192"/>
</node>
</node>
<node TEXT="Budov&#xe1;n&#xed; trvanlivosti syst&#xe9;mu" ID="ID_707757994" CREATED="1475913736040" MODIFIED="1475913743280">
<node TEXT="Modelov&#xe1;n&#xed; postupu" ID="ID_364996141" CREATED="1475913745750" MODIFIED="1475913750920">
<node TEXT="Tutori&#xe1;lu na za&#x10d;&#xe1;tku" ID="ID_790932267" CREATED="1475913752110" MODIFIED="1475913757627"/>
<node TEXT="Midstage" ID="ID_1800142809" CREATED="1475913758206" MODIFIED="1475913760573"/>
<node TEXT="End game" ID="ID_1098312651" CREATED="1475913760914" MODIFIED="1475913763181"/>
</node>
<node TEXT="&#x160;k&#xe1;lovatelnost" ID="ID_886740938" CREATED="1475913773051" MODIFIED="1475913778484">
<node TEXT="Ve vy&#x161;&#x161;&#xed;ch levelech se n&#xe1;sob&#xed; &#x17e;ivoty p&#x159;&#xed;&#x161;er i s&#xed;la &#xfa;toku" ID="ID_855208683" CREATED="1475913792193" MODIFIED="1475913837556"/>
</node>
</node>
<node TEXT="Jak motivovat k placen&#xed; re&#xe1;ln&#xfd;ch pen&#x11b;z za virtu&#xe1;ln&#xed; v&#x11b;ci" ID="ID_831410458" CREATED="1475913861884" MODIFIED="1475913885660">
<node TEXT="Vizu&#xe1;ln&#xed; progress" ID="ID_1703449854" CREATED="1475913887028" MODIFIED="1475913891318">
<node TEXT="Postupn&#x11b; se odkr&#xfd;v&#xe1; v&#xed;c a v&#xed;c mapy" ID="ID_891839538" CREATED="1475913891872" MODIFIED="1475913898733"/>
<node TEXT="Z&#xe1;kladna se po&#x159;&#xe1;d zv&#x11b;t&#x161;uje a zdokonaluje" ID="ID_376426910" CREATED="1475913899080" MODIFIED="1475913907029"/>
<node TEXT="Sb&#x11b;ratelstv&#xed;" ID="ID_1064467066" CREATED="1475913948487" MODIFIED="1475913955158"/>
</node>
<node TEXT="Soci&#xe1;ln&#xed; tlak" ID="ID_265723698" CREATED="1475913963180" MODIFIED="1475913966346">
<node TEXT="Porovn&#xe1;v&#xe1;n&#xed; a sd&#xed;len&#xed;" ID="ID_1434408558" CREATED="1475913969037" MODIFIED="1475913972835">
<node TEXT="postup a sk&#xf3;re - Candy Crush" ID="ID_1305384009" CREATED="1475913980017" MODIFIED="1475913990538"/>
<node TEXT="stavitelstv&#xed;" ID="ID_307597693" CREATED="1475913992056" MODIFIED="1475914023497"/>
</node>
<node TEXT="Guildy" ID="ID_1339715245" CREATED="1475913977009" MODIFIED="1475913978219">
<node TEXT="Spojen&#xed; hr&#xe1;&#x10d;&#x16f;" ID="ID_1010519190" CREATED="1475914001785" MODIFIED="1475914004115"/>
<node TEXT="Vz&#xe1;jemn&#xe1; pomoc" ID="ID_206910091" CREATED="1475914004437" MODIFIED="1475914006812"/>
<node TEXT="Soupe&#x159;en&#xed; guild" ID="ID_103052318" CREATED="1475914007153" MODIFIED="1475914013668"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Katka Novotn&#xe1; - XML eXternal Entity XXE &#xfa;tok" ID="ID_1888225932" CREATED="1475914343198" MODIFIED="1476006871811">
<node TEXT="Zneu&#x17e;it&#xed; definovan&#xe9; &lt;!Entity uri&gt;" ID="ID_1146717128" CREATED="1475914387609" MODIFIED="1475914409734"/>
<node TEXT="uri - definice um&#xed;st&#x11b;n&#xed; entity, lok&#xe1;ln&#x11b; nebo vzd&#xe1;len&#x11b;" ID="ID_1236256962" CREATED="1475914410341" MODIFIED="1475914426630"/>
<node TEXT="&#xda;tok na aplikace, parsuj&#xed;c&#xed; XML" ID="ID_1233651480" CREATED="1475914438445" MODIFIED="1475914451360">
<node TEXT="Umo&#x17e;n&#xed; z&#xed;skat obsah souboru z disku" ID="ID_1972796101" CREATED="1475914609536" MODIFIED="1475914627352"/>
</node>
<node TEXT="OWASP" ID="ID_1379545395" CREATED="1475914629777" MODIFIED="1475914634056">
<node TEXT="Doporu&#x10d;en&#xed;, jak se br&#xe1;nit XXE" ID="ID_351926425" CREATED="1475914634607" MODIFIED="1475914642172"/>
<node TEXT="Zak&#xe1;zat validaci proti dynamick&#xfd;m DTD" ID="ID_314691136" CREATED="1475914642650" MODIFIED="1475914654966"/>
<node TEXT="Zak&#xe1;zat extern&#xed; entity" ID="ID_518923771" CREATED="1475914655214" MODIFIED="1475914664254"/>
</node>
<node TEXT="P&#x159;&#xed;klady XXE &#xfa;toku" ID="ID_167026271" CREATED="1475914707710" MODIFIED="1475914713753">
<node TEXT="RunKeeper" ID="ID_899251978" CREATED="1475914715022" MODIFIED="1475914721493"/>
<node TEXT="Facebook - implementace OpenID login" ID="ID_1329350349" CREATED="1475914723294" MODIFIED="1475914736397">
<node TEXT="$33500 dolar&#x16f; odm&#x11b;na pro toho, kdo to objevil" ID="ID_1964490295" CREATED="1475914742138" MODIFIED="1475914767973"/>
</node>
</node>
<node TEXT="Chcete zbohatnout objeven&#xed;m bezp. d&#xed;ry?" ID="ID_1959571288" CREATED="1475914781099" MODIFIED="1475914791900">
<node TEXT="Bug bounty programy" ID="ID_1219684859" CREATED="1475914793036" MODIFIED="1475914799254"/>
<node TEXT="Google, twitter, facebook, U.S.A. - Hack the Pentagon" ID="ID_1911934364" CREATED="1475914828961" MODIFIED="1475914847990"/>
<node TEXT="Hackerone - prost&#x159;edn&#xed;k mezi hackery a firmamy" ID="ID_432521725" CREATED="1475914859225" MODIFIED="1475914871744"/>
</node>
<node TEXT="Kafemlejnek - rozhovor s Romanem Kymlem" ID="ID_1748128321" CREATED="1475915019631" MODIFIED="1475915030777"/>
</node>
<node TEXT="Novoj Honza Novotn&#xfd; - kdy&#x17e; v&#xe1;m rozb&#xed;jej&#xed; hra&#x10d;ky" ID="ID_413624676" CREATED="1475915087185" MODIFIED="1476006871813">
<node TEXT="Roman Kyml - t&#xfd;denn&#xed; hackersk&#xe9; &#x161;kolen&#xed;" ID="ID_764007718" CREATED="1475915133169" MODIFIED="1475915141608"/>
<node TEXT="Z&#xe1;sady" ID="ID_615822976" CREATED="1475915155388" MODIFIED="1475915159863">
<node TEXT="Nev&#x11b;&#x159;it ni&#x10d;emu od klienta" ID="ID_1948793420" CREATED="1475915161743" MODIFIED="1475915168930">
<node TEXT="HTTP hlavi&#x10d;ky" ID="ID_372541124" CREATED="1475915170357" MODIFIED="1475915175750">
<node TEXT="HTTP respose splitting &#xfa;tok" ID="ID_200012781" CREATED="1475915188609" MODIFIED="1475915196515">
<node TEXT="Zneu&#x17e;it&#xed; 302 response status" ID="ID_1310343532" CREATED="1475915205487" MODIFIED="1475915217555"/>
</node>
</node>
<node TEXT="Parametry od klienta" ID="ID_843041896" CREATED="1475915176151" MODIFIED="1475915180961"/>
<node TEXT="N&#xe1;zvy soubor&#x16f; z upload dialogu" ID="ID_11126844" CREATED="1475915243510" MODIFIED="1475915254966">
<node TEXT="Burb Suite aplikace to dok&#xe1;&#x17e;e p&#x159;epsat" ID="ID_1238540096" CREATED="1475915261537" MODIFIED="1475917173560"/>
</node>
<node TEXT="XML poslan&#xfd; na http endpoint" ID="ID_755293495" CREATED="1475915295917" MODIFIED="1475915309707">
<node TEXT="M&#x16f;&#x17e;e se otisknout do HTML a prov&#xe9;st XSS (cross site scripting)" ID="ID_434232915" CREATED="1475915311486" MODIFIED="1475915332290"/>
</node>
<node TEXT="kraden&#xed; hesel p&#x159;es XSS" ID="ID_224832836" CREATED="1475915379998" MODIFIED="1475915385322">
<node TEXT="Zneu&#x17e;ije autocomplete feature" ID="ID_333674788" CREATED="1475915385840" MODIFIED="1475915398987"/>
</node>
<node TEXT="Zji&#x161;t&#x11b;n&#xed;, kter&#xe9; str&#xe1;nky u&#x17e;ivatel nav&#x161;t&#xed;vil" ID="ID_1834438388" CREATED="1475915444797" MODIFIED="1475915454983">
<node TEXT="JS se d&#xed;v&#xe1;, jak browser obarv&#xed; nav&#x161;t&#xed;ven&#xe9; odkazy" ID="ID_664637098" CREATED="1475915459384" MODIFIED="1475915471083"/>
</node>
<node TEXT="Nebezpe&#x10d;&#xed; v URL" ID="ID_1496204948" CREATED="1475915513969" MODIFIED="1475915518632">
<node TEXT="WYSIWYG editor umo&#x17e;&#x148;uj&#xed;c&#xed; vkl&#xe1;dat obr&#xe1;zek/URL" ID="ID_1898787193" CREATED="1475915520076" MODIFIED="1475915535986"/>
<node TEXT="M&#x16f;&#x17e;e tam vlo&#x17e;it sv&#x16f;j obr&#xe1;zek, kter&#xfd; je chr&#xe1;n&#x11b;n&#xfd; HTTP autentizac&#xed;, vysko&#x10d;&#xed; pak autentiza&#x10d;n&#xed; ok&#xfd;nko kter&#xfd; u&#x17e;ivatel vypln&#xed;" ID="ID_1030628681" CREATED="1475915536401" MODIFIED="1475915598835"/>
</node>
</node>
</node>
</node>
<node TEXT="Jan Horal&#xed;k - Burb Suite" ID="ID_572942611" CREATED="1475917088460" MODIFIED="1476006871815">
<node TEXT="Platforma pro bezpe&#x10d;nostn&#xed; tesov&#xe1;n&#xed; webov&#xfd;ch aplikac&#xed;" ID="ID_1736130796" CREATED="1475917101814" MODIFIED="1475917114919"/>
<node TEXT="Vendavo" ID="ID_825324851" CREATED="1475917115832" MODIFIED="1475917151098"/>
<node TEXT="Inteligentn&#xed; HTTP proxy" ID="ID_950725528" CREATED="1475917205248" MODIFIED="1475917210571">
<node TEXT="Aktivn&#xed; testov&#xe1;n&#xed;" ID="ID_475768084" CREATED="1475917211426" MODIFIED="1475917214109">
<node TEXT="Pos&#xed;l&#xe1;m s&#xe1;m requesty" ID="ID_986982517" CREATED="1475917214822" MODIFIED="1475917219949"/>
<node TEXT="Hlavn&#xed; role SW" ID="ID_478024374" CREATED="1475917241668" MODIFIED="1475917246833"/>
</node>
<node TEXT="Pasivn&#xed;" ID="ID_1843740437" CREATED="1475917221086" MODIFIED="1475917223024">
<node TEXT="Monitoring" ID="ID_1750033543" CREATED="1475917223965" MODIFIED="1475917229031"/>
<node TEXT="Statick&#xe1; anal&#xfd;za Javascript&#x16f;" ID="ID_208723543" CREATED="1475917229225" MODIFIED="1475917239969"/>
</node>
</node>
<node TEXT="Moduly" ID="ID_610405036" CREATED="1475917253519" MODIFIED="1475917257926">
<node TEXT="Proxy" ID="ID_1288125282" CREATED="1475917258900" MODIFIED="1475917260062"/>
<node TEXT="Intruder" ID="ID_1196522227" CREATED="1475917260307" MODIFIED="1475917261869"/>
<node TEXT="Scanner" ID="ID_1632543976" CREATED="1475917262074" MODIFIED="1475917263350">
<node TEXT="Dostane URL aplikace, spust&#xed; baterii test&#x16f;" ID="ID_1652992688" CREATED="1475917273291" MODIFIED="1475917280722"/>
<node TEXT="Vhodn&#xe9; napojen&#xed; na Jenkins" ID="ID_380314221" CREATED="1475917290181" MODIFIED="1475917300506"/>
</node>
<node TEXT="Spider" ID="ID_617546157" CREATED="1475917265975" MODIFIED="1475917267588">
<node TEXT="Sestav&#xed; site map" ID="ID_1068644133" CREATED="1475917305727" MODIFIED="1475917310042"/>
<node TEXT="Hled&#xe1; chybn&#xe9; odkryt&#xed; soubor&#x16f;, kter&#xfd; m&#xe1; b&#xfd;t skryt&#xfd;" ID="ID_589809891" CREATED="1475917310273" MODIFIED="1475917320413"/>
</node>
</node>
<node TEXT="Roz&#x161;&#xed;&#x159;en&#xed;" ID="ID_702838832" CREATED="1475917354714" MODIFIED="1475917356978">
<node TEXT="Carbonator - mo&#x17e;nost pustit v headless mod (Jenkins)" ID="ID_458331522" CREATED="1475917357839" MODIFIED="1475917374337"/>
</node>
<node TEXT="WebGoat od OWASTu" ID="ID_1579782151" CREATED="1475917392522" MODIFIED="1475917422815">
<node TEXT="&lt;html&gt;&#xa;  &lt;head&gt;&#xa;    &#xa;  &lt;/head&gt;&#xa;  &lt;body&gt;&#xa;    &lt;p&gt;&#xa;      schv&amp;#225;ln&amp;#283; rozbit&amp;#225; aplikace na tr&amp;#233;nov&amp;#225;n&amp;#237; hackersk&amp;#253;ch &amp;#250;tok&amp;#367;&#xa;    &lt;/p&gt;&#xa;  &lt;/body&gt;&#xa;&lt;/html&gt;" ID="ID_363499746" CREATED="1475917423841" MODIFIED="1475917423841"/>
<node TEXT="50 lekc&#xed;" ID="ID_1686254216" CREATED="1475917548017" MODIFIED="1475917759576"/>
</node>
<node TEXT="330&#x20ac; / rok" ID="ID_698282274" CREATED="1475917740605" MODIFIED="1475917746932"/>
</node>
<node TEXT="Tom&#xe1;&#x161; Bambas - pro&#x10d; (ne)chce&#x161; pou&#x17e;&#xed;t Vaadin pro v&#xfd;voj webov&#xe9; aplikace" ID="ID_1912439871" CREATED="1475917030414" MODIFIED="1476006871817"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      MoroSystems
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Framework v Java" ID="ID_1587355294" CREATED="1475917978288" MODIFIED="1475917989501">
<node TEXT="Nahrazuje HTML/View javascript vrstvu" ID="ID_585756236" CREATED="1475918114700" MODIFIED="1475918123796"/>
</node>
<node TEXT="Zam&#x11b;&#x159;en na Rich internet applications" ID="ID_568956512" CREATED="1475917989852" MODIFIED="1475917997397"/>
<node TEXT="Server side, komponentn&#xed;" ID="ID_1757279582" CREATED="1475918000745" MODIFIED="1475918008899"/>
<node TEXT="View se skl&#xe1;d&#xe1; z Java komponent, kter&#xe9; generuj&#xed; HTML" ID="ID_1510329136" CREATED="1475918011315" MODIFIED="1475918026843"/>
<node TEXT="Komponenty p&#x159;&#xed;mo propojen&#xed; do Controlleru (bez Javascript boilerplate)" ID="ID_1507358809" CREATED="1475918033579" MODIFIED="1475918049670"/>
<node TEXT="Bez javascriptu" ID="ID_581058115" CREATED="1475918159107" MODIFIED="1475918163900">
<node TEXT="Sna&#x17e;&#x161;&#xed; debugging" ID="ID_1534447560" CREATED="1475918166222" MODIFIED="1475918170328">
<node TEXT="Nen&#xed; nutn&#xe9; debugovat JS" ID="ID_264832580" CREATED="1475918182445" MODIFIED="1475918190718"/>
</node>
<node TEXT="Statick&#xe1; typov&#xe1; kontrola" ID="ID_71990207" CREATED="1475918170946" MODIFIED="1475918178851"/>
</node>
<node TEXT="Vaadin CDI" ID="ID_881409451" CREATED="1475918224488" MODIFIED="1475918228616">
<node TEXT="Dependency injection, events a interceptors na frontendu" ID="ID_102619057" CREATED="1475918234608" MODIFIED="1475918245807"/>
<node TEXT="Pou&#x17e;it&#xed; spolu s websockets" ID="ID_401296112" CREATED="1475918264102" MODIFIED="1475918283046"/>
</node>
<node TEXT="Nev&#xfd;hody" ID="ID_1425558869" CREATED="1475918295579" MODIFIED="1475918297842">
<node TEXT="Nedok&#xe1;&#x17e;e b&#x11b;&#x17e;et offline" ID="ID_1576664453" CREATED="1475918298918" MODIFIED="1475918305489">
<node TEXT="Rendering HTML na serveru" ID="ID_438507387" CREATED="1475918326419" MODIFIED="1475918335321"/>
</node>
<node TEXT="Vy&#x161;&#x161;&#xed; n&#xe1;roky na zdroje" ID="ID_1781736660" CREATED="1475918306774" MODIFIED="1475918310768">
<node TEXT="Stav view v&#x161;ech u&#x17e;ivatel&#x16f; nar&#xe1;z je na serveru" ID="ID_596369524" CREATED="1475918365503" MODIFIED="1475918378492"/>
<node TEXT="N&#xe1;ro&#x10d;n&#xfd; na pam&#x11b;&#x165;" ID="ID_1431135970" CREATED="1475918409991" MODIFIED="1475918417392"/>
</node>
<node TEXT="Komponentov&#xe9; uzam&#x10d;en&#xed;" ID="ID_338388702" CREATED="1475918315723" MODIFIED="1475918320402">
<node TEXT="Pou&#x17e;&#xed;t JS knihovnu (v Angular.js sv&#x11b;t&#x11b;) je mnohem jednodu&#x161;&#x161;&#xed; ne&#x17e; v Vaadinu" ID="ID_350448018" CREATED="1475918454734" MODIFIED="1475918477747"/>
</node>
</node>
</node>
<node TEXT="Zden&#x11b;k Merta - Event Sourcing" ID="ID_1536978933" CREATED="1475918698134" MODIFIED="1476006871818">
<node TEXT="Zp&#x16f;sob ulo&#x17e;en&#xed; stavu aplikace" ID="ID_745000091" CREATED="1475918866188" MODIFIED="1475918872561">
<node TEXT="Alternativa k tradici - ulo&#x17e;en&#xed; jen aktu&#xe1;ln&#xed;ho stavu" ID="ID_431239600" CREATED="1475918880280" MODIFIED="1475918895627"/>
<node TEXT="Ukl&#xe1;d&#xe1; v&#x161;echny zm&#x11b;ny, kter&#xe9; k aktu&#xe1;ln&#xed;mu stavu vedou" ID="ID_485073626" CREATED="1475918943949" MODIFIED="1475918954749"/>
<node TEXT="Zm&#x11b;na = ud&#xe1;lost/fakt" ID="ID_98650449" CREATED="1475918955035" MODIFIED="1475918965491">
<node TEXT="N&#x11b;co, co se stalo v minulosti a m&#xe1; dopad na business" ID="ID_354796764" CREATED="1475918966871" MODIFIED="1475918976706"/>
<node TEXT="Je nem&#x11b;niteln&#xe1; (v minulosti)" ID="ID_1322507937" CREATED="1475918977076" MODIFIED="1475918985701"/>
<node TEXT="Ukl&#xe1;d&#xe1; se do streamu ud&#xe1;lost&#xed;" ID="ID_1935653712" CREATED="1475918989521" MODIFIED="1475918995254">
<node TEXT="Se&#x159;azen&#xe9; dle &#x10d;asu vzniku" ID="ID_991374926" CREATED="1475919004715" MODIFIED="1475919014231"/>
<node TEXT="Jedin&#xe1; operace - append" ID="ID_355727588" CREATED="1475919024424" MODIFIED="1475919029542"/>
</node>
</node>
</node>
<node TEXT="Stav objektu se z&#xed;sk&#xe1; p&#x159;ehr&#xe1;n&#xed;m v&#x161;ech ud&#xe1;lost&#xed;" ID="ID_1942274170" CREATED="1475919147559" MODIFIED="1475919158621"/>
<node TEXT="P&#x159;&#xed;klad - finan&#x10d;n&#xed; &#x17e;urn&#xe1;l v&#xfd;voje &#x10d;&#xe1;stky na &#xfa;&#x10d;tu" ID="ID_1014924454" CREATED="1475919174509" MODIFIED="1475919265791"/>
<node TEXT="V&#xfd;hoda" ID="ID_871132558" CREATED="1475919287429" MODIFIED="1475919289733">
<node TEXT="Super zdroj dat pro business anal&#xfd;zu" ID="ID_203281664" CREATED="1475919292141" MODIFIED="1475919308094"/>
<node TEXT="Integrace s jin&#xfd;mi syst&#xe9;my, kter&#xe9; pot&#x159;ebuj&#xed; na ud&#xe1;losti reagovat" ID="ID_868614852" CREATED="1475919374015" MODIFIED="1475919387277"/>
<node TEXT="Flexibilita" ID="ID_395437914" CREATED="1475919388571" MODIFIED="1475919392011">
<node TEXT="Lze vytv&#xe1;&#x159;et jin&#xe9; pohledy na streamy ud&#xe1;lost&#xed;" ID="ID_1202793837" CREATED="1475919394252" MODIFIED="1475919408186"/>
<node TEXT="tzv. materializovan&#xe9; pohledy (obdoba view)" ID="ID_1677251755" CREATED="1475919408972" MODIFIED="1475919419338">
<node TEXT="P&#x159;&#xed;klad: sledov&#xe1;n&#xed; &#xfa;&#x10d;t&#x16f; s &#x10d;&#xe1;stkou nad 10 000 000" ID="ID_588272471" CREATED="1475919422022" MODIFIED="1475919445544"/>
</node>
</node>
<node TEXT="Perfect audit log" ID="ID_1266638807" CREATED="1475919455741" MODIFIED="1475919459964"/>
<node TEXT="Super debugov&#xe1;n&#xed;" ID="ID_1668762819" CREATED="1475919466637" MODIFIED="1475919470941">
<node TEXT="P&#x159;enesen&#xed; ud&#xe1;lost&#xed; z produkce na testovac&#xed; prost&#x159;ed&#xed;" ID="ID_995156590" CREATED="1475919471940" MODIFIED="1475919481685"/>
</node>
<node TEXT="Super testov&#xe1;n&#xed;" ID="ID_1399135267" CREATED="1475919489237" MODIFIED="1475919491984">
<node TEXT="V&#xfd;sledek operace = vyvolan&#xe9; ud&#xe1;losti" ID="ID_1512655946" CREATED="1475919492778" MODIFIED="1475919500742"/>
</node>
</node>
<node TEXT="Nepou&#x17e;&#xed;vat" ID="ID_144362708" CREATED="1475919516404" MODIFIED="1475919518425">
<node TEXT="CRUD aplikace, jednoduch&#xe9; dom&#xe9;ny" ID="ID_136104492" CREATED="1475919519842" MODIFIED="1475919528827"/>
<node TEXT="v dom&#xe9;n&#xe1;ch, kde historick&#xe1; data nemaji hodnotu" ID="ID_824909219" CREATED="1475919529201" MODIFIED="1475919547232"/>
</node>
<node TEXT="Rolling snapshot" ID="ID_571530062" CREATED="1475919608204" MODIFIED="1475919611687">
<node TEXT="Ukl&#xe1;d&#xe1;m si periodicky kompletn&#xed; stav, abych u&#x161;et&#x159;il v&#xfd;kon" ID="ID_315825446" CREATED="1475919613009" MODIFIED="1475919632867"/>
</node>
<node TEXT="N&#xe1;stroje" ID="ID_1905724576" CREATED="1475919713042" MODIFIED="1475919715953">
<node TEXT="EventStore opensource" ID="ID_1586285190" CREATED="1475919667365" MODIFIED="1475919673929"/>
<node TEXT="Apache Kavka - ne p&#x159;&#xed;li&#x161; vhodn&#xe1;" ID="ID_1438884957" CREATED="1475919685433" MODIFIED="1475919698889"/>
<node TEXT="Akka - modul pro event store" ID="ID_168662694" CREATED="1475919704837" MODIFIED="1475919709896"/>
</node>
</node>
<node TEXT="Ond&#x159;ej David - behavior&#xe1;ln&#xed; anal&#xfd;za na Androidu s podporou hardware" ID="ID_535423954" CREATED="1475919776094" MODIFIED="1476006871820">
<node TEXT="Beh. anal&#xfd;za - vlastnost procesoru, kdy se monitoruj&#xed; podez&#x159;el&#xe9; operace" ID="ID_1550868254" CREATED="1475919823372" MODIFIED="1475919857098"/>
<node TEXT="Dovol&#xed; antiviru vid&#x11b;t i to, co d&#x11b;laj&#xed; ostatn&#xed; izolovan&#xe9; aplikace v mobilu" ID="ID_584022647" CREATED="1475920057897" MODIFIED="1475920086288">
<node TEXT="Aktivita malware se sleduje pomoc&#xed; tzv. hooks" ID="ID_1307406635" CREATED="1475920131924" MODIFIED="1475920163355"/>
</node>
<node TEXT="Co pot&#x159;ebujeme detekovat v mobilu" ID="ID_53471121" CREATED="1475920033960" MODIFIED="1475920042268">
<node ID="ID_347867778" CREATED="1475919987188" MODIFIED="1475919987188"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      pos&#237;l&#225;n&#237; SMS na pozad&#237;
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="zobrazov&#xe1;n&#xed; Pop-up oken" ID="ID_1215760933" CREATED="1475919988639" MODIFIED="1475919994787"/>
</node>
</node>
<node TEXT="David Ond&#x159;ich - ViM 8.0" FOLDED="true" ID="ID_680893572" CREATED="1475920632286" MODIFIED="1476006871821">
<node TEXT="Hodn&#x11b; klon&#x16f;" ID="ID_1228877919" CREATED="1475920841886" MODIFIED="1475920845854"/>
<node TEXT="V&#xfd;hody" ID="ID_1922638027" CREATED="1475920877077" MODIFIED="1475920879692">
<node TEXT="Existuje v&#x161;ude" ID="ID_1204702806" CREATED="1475920849573" MODIFIED="1475920871436"/>
<node TEXT="Lze ovl&#xe1;dat zvenku jako p&#x159;echroust&#xe1;tor dat" ID="ID_984978257" CREATED="1475920893645" MODIFIED="1475920906009"/>
<node TEXT="Mraky funkc&#xed;, plugin&#x16f;, syntax highlighting" ID="ID_574789076" CREATED="1475920912874" MODIFIED="1475920928633"/>
</node>
<node TEXT="Zm&#x11b;na 8.0" ID="ID_811419746" CREATED="1475920946719" MODIFIED="1475920954525">
<node TEXT="Asynchron&#xed; komunikace s procesem/socketem" ID="ID_1601543684" CREATED="1475920955145" MODIFIED="1475920963986"/>
<node TEXT="&#x10d;asova&#x10d;" ID="ID_609478615" CREATED="1475920982847" MODIFIED="1475921009679"/>
<node TEXT="lambdy (na transforma&#x10d;n&#xed; funkce)" ID="ID_931747332" CREATED="1475921010063" MODIFIED="1475921012550">
<node TEXT="D&#x11b;d&#xed; stack prom&#x11b;nn&#xfd;ch ze scope" ID="ID_499124159" CREATED="1475921013379" MODIFIED="1475921303316"/>
<node TEXT="daj&#xed; se p&#x159;i&#x159;azovat do prom&#x11b;nn&#xfd;ch, v&#x10d;. stacku" ID="ID_1357698534" CREATED="1475921277265" MODIFIED="1475921294164"/>
</node>
<node TEXT="Ctrl-A - v&#x161;echna &#x10d;&#xed;sla v ozna&#x10d;en&#xe9;m textu zv&#x11b;t&#x161;&#xed; o 1" ID="ID_1095730638" CREATED="1475921141974" MODIFIED="1475921157276"/>
</node>
</node>
<node TEXT="Tom&#xe1;&#x161; L&#xe1;tal - Bobril" ID="ID_1796086519" CREATED="1475926421135" MODIFIED="1476006871823"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      GMC
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Framework pro tvorbu single page aplikac&#xed;" ID="ID_723893688" CREATED="1475926455111" MODIFIED="1475926465412"/>
<node TEXT="OpenSource v TightScriptu (typovost)" ID="ID_673972790" CREATED="1475926465637" MODIFIED="1475926477655"/>
<node TEXT="Motivace" ID="ID_437265110" CREATED="1475926609861" MODIFIED="1475926611515">
<node TEXT="Kdy&#x17e; nesta&#x10d;il Angular 1.js, zobrazen&#xed; na mobilu p&#x159;&#xed;li&#x161; pomal&#xe9;" ID="ID_63523167" CREATED="1475926522911" MODIFIED="1475926571848"/>
<node TEXT="Co d&#xe1;l?" ID="ID_345341678" CREATED="1475926620284" MODIFIED="1475926622675">
<node TEXT="Angular 2" ID="ID_997911170" CREATED="1475926623590" MODIFIED="1475926626142"/>
<node TEXT="React (pou&#x17e;&#xed;v&#xe1; Virtual DOM VDOM a je komponentn&#xed;)" ID="ID_904536285" CREATED="1475926627999" MODIFIED="1475926679074"/>
<node TEXT="Bobril" ID="ID_348755092" CREATED="1475926649429" MODIFIED="1475926651760">
<node TEXT="Tak&#xe9; VDOM a kompomenty" ID="ID_812583074" CREATED="1475926683793" MODIFIED="1475926689034"/>
<node TEXT="Inspirov&#xe1;n Mithrilem" ID="ID_468220805" CREATED="1475926689218" MODIFIED="1475926697100"/>
<node TEXT="D&#x16f;raz na rychlost (na mobilu)" ID="ID_1209474375" CREATED="1475926697296" MODIFIED="1475926703907">
<node TEXT="Lep&#x161;&#xed; VDOM porovn&#xe1;n&#xed;" ID="ID_1381476657" CREATED="1475926711329" MODIFIED="1475926719860"/>
<node TEXT="Shlukov&#xe1;n&#xed; p&#x159;ekreslov&#xe1;n&#xed;" ID="ID_1501516691" CREATED="1475926720161" MODIFIED="1475926734871"/>
<node TEXT="O 40% pomalej&#x161;&#xed; ne&#x17e; plain JS, oproti Angular 2x rychlej&#x161;&#xed;" ID="ID_1052422958" CREATED="1475926749267" MODIFIED="1475926775144"/>
</node>
<node TEXT="P&#x159;enesen&#xe1; data" ID="ID_31292919" CREATED="1475926786360" MODIFIED="1475926790887">
<node TEXT="140kB angular" ID="ID_1429444754" CREATED="1475926792679" MODIFIED="1475926797807"/>
<node TEXT="128 React.js" ID="ID_1106811116" CREATED="1475926798223" MODIFIED="1475926805741"/>
<node TEXT="40 Bobril" ID="ID_1077889168" CREATED="1475926806792" MODIFIED="1475926810661"/>
<node TEXT="17kB Bobril GZIP" ID="ID_408033347" CREATED="1475926812234" MODIFIED="1475926822424"/>
</node>
</node>
</node>
</node>
<node TEXT="Features" ID="ID_493478953" CREATED="1475926839226" MODIFIED="1475926852471">
<node TEXT="G11N" ID="ID_1976735636" CREATED="1475926856956" MODIFIED="1475926859030"/>
<node TEXT="SVG" ID="ID_1116582853" CREATED="1475926866394" MODIFIED="1475926870064"/>
<node TEXT="IE9+, Android 4.1" ID="ID_1461256301" CREATED="1475926874122" MODIFIED="1475926883177"/>
<node TEXT="CSS jako sou&#x10d;&#xe1;st k&#xf3;du" ID="ID_395205183" CREATED="1475926883534" MODIFIED="1475926891934"/>
<node TEXT="Normalizace mouse &amp; touch ud&#xe1;lost&#xed;" ID="ID_1327260965" CREATED="1475926900947" MODIFIED="1475926913931">
<node TEXT="V&#xfd;voj&#xe1;&#x159; ne&#x159;e&#x161;&#xed;, je-li na desktopu nebo mobilu" ID="ID_1542139964" CREATED="1475926914351" MODIFIED="1475926925456"/>
</node>
<node TEXT="Build system" ID="ID_104917350" CREATED="1475926939352" MODIFIED="1475926951276">
<node TEXT="Development mode" ID="ID_1405620570" CREATED="1475926954053" MODIFIED="1475926957376"/>
<node TEXT="Production mode" ID="ID_1122608713" CREATED="1475926957615" MODIFIED="1475926962165">
<node TEXT="Minimalization js" ID="ID_1990453219" CREATED="1475926963722" MODIFIED="1475926966913"/>
<node TEXT="Sprite generation" ID="ID_717528863" CREATED="1475926967265" MODIFIED="1475926976317">
<node TEXT="Jeden velk&#xfd; obr&#xe1;zek poskl&#xe1;dan&#xfd; z v&#x161;ech obr&#xe1;zk&#x16f; webu" ID="ID_604747962" CREATED="1475926977218" MODIFIED="1475926992380"/>
</node>
</node>
</node>
<node TEXT="Vykresluje komponenty na klientovi pomoc&#xed; Javascriptu" ID="ID_1443270862" CREATED="1475927163458" MODIFIED="1475927179670"/>
</node>
<node TEXT="Kamar&#xe1;tk&#xe9; projekty" ID="ID_1994746679" CREATED="1475927007891" MODIFIED="1475927018251">
<node TEXT="Bobrilstrap" ID="ID_1548539654" CREATED="1475927020268" MODIFIED="1475927026273"/>
<node TEXT="Bobril-M" ID="ID_1267737755" CREATED="1475927026746" MODIFIED="1475927030418"/>
<node TEXT="ngBobril" ID="ID_1460960907" CREATED="1475927032313" MODIFIED="1475927038675"/>
</node>
</node>
<node TEXT="Dan Kvasni&#x10d;ka - ELM327 &amp; OBD2" ID="ID_1507414017" CREATED="1475926431867" MODIFIED="1476006871824">
<node TEXT="OBD2 - standard pro diagnostiku aut" ID="ID_796087709" CREATED="1475927429559" MODIFIED="1475927439468">
<node TEXT="Definuje tvar konektoru" ID="ID_340827141" CREATED="1475927460267" MODIFIED="1475927467509"/>
<node TEXT="Zp&#x16f;sob nap&#xe1;jen&#xed;" ID="ID_348124588" CREATED="1475927467740" MODIFIED="1475927470803"/>
<node TEXT="Sada parameter ids" ID="ID_988554109" CREATED="1475927474360" MODIFIED="1475927479667">
<node TEXT="&#x17d;&#xe1;dosti o data" ID="ID_1148648258" CREATED="1475927481474" MODIFIED="1475927493301"/>
<node TEXT="Ot&#xe1;&#x10d;ky motoru, ..." ID="ID_487699669" CREATED="1475927493536" MODIFIED="1475927500686"/>
<node TEXT="&#xda;daje o emis&#xed;ch" ID="ID_1408608195" CREATED="1475927541324" MODIFIED="1475927548431"/>
</node>
</node>
<node TEXT="ELM327" ID="ID_1432315464" CREATED="1475927572845" MODIFIED="1475927576621">
<node TEXT="p&#x159;ekl&#xe1;d&#xe1; &#xfa;daje z OBD2 na n&#x11b;co, s &#x10d;&#xed;m se d&#xe1; pracovat" ID="ID_566657169" CREATED="1475927597304" MODIFIED="1475927617018"/>
<node TEXT="Dnes cena kol. 200,300 K&#x10d;" ID="ID_605798697" CREATED="1475927617187" MODIFIED="1475927627613"/>
<node TEXT="Nejlep&#x161;&#xed; verze p&#x159;es Wifi - vyrob&#xed; to HotSpot" ID="ID_1008000555" CREATED="1475927631629" MODIFIED="1475927641476"/>
<node TEXT="mobiln&#xed; apka" ID="ID_833203636" CREATED="1475927651040" MODIFIED="1475927714112">
<node TEXT="DashCommand iOS - 20&#x20ac;" ID="ID_455539954" CREATED="1475927655527" MODIFIED="1475927710271"/>
<node TEXT="ThorPro Android" ID="ID_1485555218" CREATED="1475927691525" MODIFIED="1475927695768"/>
</node>
</node>
<node TEXT="Od roku 2001 v EU" ID="ID_1139726089" CREATED="1475927443901" MODIFIED="1475927449050"/>
<node TEXT="Rocket" ID="ID_209110925" CREATED="1475927731945" MODIFIED="1475927735405">
<node TEXT="V&#xfd;vojov&#xe9; prost&#x159;ed&#xed;" ID="ID_1823166863" CREATED="1475927913219" MODIFIED="1475927916998"/>
<node TEXT="Um&#xed; generovat 3D grafy" ID="ID_693075117" CREATED="1475927917578" MODIFIED="1475927928456"/>
</node>
</node>
<node TEXT="Jarda &#x160;najdr - Rust" ID="ID_734736242" CREATED="1475928280483" MODIFIED="1476006871826">
<node TEXT="Ambice nahradit C, C++" ID="ID_1271024904" CREATED="1475928289868" MODIFIED="1475928299552">
<node TEXT="Narozd&#xed;l od nich je Rust safe p&#x159;i pr&#xe1;ci s pam&#x11b;t&#xed;" ID="ID_595655019" CREATED="1475928350943" MODIFIED="1475928391307"/>
<node TEXT="Pro frustrovan&#xe9; v&#xfd;voj&#xe1;&#x159;e C/C++" ID="ID_1624254131" CREATED="1475928440837" MODIFIED="1475928448804">
<node TEXT="Vzniklo v Mozille (FF je naps&#xe1;n v C++)" ID="ID_429121187" CREATED="1475928449056" MODIFIED="1475928464714"/>
</node>
</node>
<node TEXT="Bezpe&#x10d;n&#xfd; jazyk pro syst&#xe9;mov&#xe9; programov&#xe1;n&#xed;" ID="ID_1504144466" CREATED="1475928301288" MODIFIED="1475928311390">
<node TEXT="P&#x159;&#xed;m&#xe1; kontrola nad HW" ID="ID_987095184" CREATED="1475928312525" MODIFIED="1475928317558">
<node TEXT="Kontrola in-memory layoutu dat. struktur" ID="ID_819318065" CREATED="1475928321400" MODIFIED="1475928335106"/>
<node TEXT="Nem&#xe1; GC, kontrola nad alokac&#xed;/dealokac&#xed;" ID="ID_1766227891" CREATED="1475928335476" MODIFIED="1475928346523"/>
</node>
</node>
<node TEXT="Pou&#x17e;it&#xfd; v Servo" ID="ID_1098029711" CREATED="1475928470523" MODIFIED="1475928477257">
<node TEXT="Rendering engine browseru" ID="ID_663919697" CREATED="1475928478130" MODIFIED="1475928486345"/>
<node TEXT="Maxim&#xe1;ln&#xed; paralelizace renderov&#xe1;n&#xed; do v&#xed;cejader" ID="ID_1918700085" CREATED="1475928494199" MODIFIED="1475928508387"/>
</node>
</node>
<node TEXT="Ond&#x159;ej Nekola - testov&#xe1;n&#xed;" ID="ID_526182123" CREATED="1475929157445" MODIFIED="1476006871827">
<node TEXT="Obdobn&#xe1; my&#x161;lenka jako podvojn&#xe9; &#xfa;&#x10d;tov&#xe1;n&#xed;" ID="ID_582826007" CREATED="1475929190892" MODIFIED="1475929201261"/>
<node TEXT="Spock" ID="ID_1885689941" CREATED="1475929533144" MODIFIED="1475929535350">
<node TEXT="given, when, then" ID="ID_406834385" CREATED="1475929536132" MODIFIED="1475929551734"/>
</node>
<node TEXT="Genesis" ID="ID_1324435447" CREATED="1475929735740" MODIFIED="1475929738400">
<node TEXT="Nadstavba nad Spock" ID="ID_1745746586" CREATED="1475929738899" MODIFIED="1475929746797"/>
<node TEXT="P&#x159;&#xed;prava testovac&#xed;ch dat - gener&#xe1;tory" ID="ID_811674532" CREATED="1475929747000" MODIFIED="1475929814664"/>
<node TEXT="Gen.type(Person, ... Gen.character(&quot;MFTU&quot;))" ID="ID_1799121683" CREATED="1475929790371" MODIFIED="1475929807699"/>
</node>
</node>
<node TEXT="Jaroslav Hola&#x148; - techniky pr&#xe1;ce" ID="ID_1508196627" CREATED="1475930163204" MODIFIED="1476006871834"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      TopMonksGen.character(&quot;MFTU&quot;)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Future of work konference" ID="ID_756569225" CREATED="1475930221365" MODIFIED="1475930226521"/>
<node TEXT="Kniha Hlubok&#xe1; pr&#xe1;ce" ID="ID_609510696" CREATED="1475930229934" MODIFIED="1475930234680">
<node TEXT="V rozt&#x11b;kan&#xe9;m sv&#x11b;t&#x11b;" ID="ID_1575424874" CREATED="1475930240486" MODIFIED="1475930244700"/>
<node TEXT="U&#x10d;&#xed;, jak dostat mozek do flow" ID="ID_1405832889" CREATED="1475930263370" MODIFIED="1475930269612"/>
<node TEXT="Hlubok&#xe1; pr&#xe1;ce" ID="ID_1506546476" CREATED="1475930387624" MODIFIED="1475930391399">
<node TEXT="V tom vznik&#xe1; nejkvalitn&#x11b;j&#x161;&#xed; znalostn&#xed; pr&#xe1;ce" ID="ID_962095359" CREATED="1475930269895" MODIFIED="1475930286447"/>
<node TEXT="D&#xed;t&#x11b; 1 hod, dosp&#x11b;l&#xed; max. 4 hodiny" ID="ID_1901035670" CREATED="1475930398330" MODIFIED="1475930412835"/>
<node TEXT="Kdy&#x17e; vy&#x10d;erp&#xe1;me 4 hodiny" ID="ID_1327314830" CREATED="1475930418492" MODIFIED="1475930424651">
<node TEXT="Je mo&#x17e;n&#xe9; &#x159;e&#x161;it v nev&#x11b;dom&#xe9;m my&#x161;len&#xed;" ID="ID_1759094290" CREATED="1475930425742" MODIFIED="1475930434967"/>
<node TEXT="Mozek pro nev&#x11b;dom&#xe9; my&#x161;len&#xed; m&#xe1; v&#xed;ce neuron&#x16f;" ID="ID_739042225" CREATED="1475930437496" MODIFIED="1475930446606">
<node TEXT="&#x158;e&#x161;en&#xed; m&#x16f;&#x17e;e b&#xfd;t lep&#x161;&#xed;" ID="ID_154502201" CREATED="1475930453669" MODIFIED="1475930461141"/>
</node>
</node>
</node>
<node TEXT="M&#x11b;lk&#xe1; pr&#xe1;ce" ID="ID_1573084155" CREATED="1475930289101" MODIFIED="1475930296844">
<node TEXT="Meetingy" ID="ID_410102256" CREATED="1475930297703" MODIFIED="1475930299237"/>
<node TEXT="Maily" ID="ID_1078999507" CREATED="1475930299443" MODIFIED="1475930305071"/>
</node>
<node TEXT="Rady" ID="ID_1982282077" CREATED="1475930469751" MODIFIED="1475930471212">
<node TEXT="M&#x11b;lk&#xe1; pr&#xe1;ce - ne cel&#xfd; den tro&#x161;ku, ale 1x denn&#x11b;" ID="ID_1101488669" CREATED="1475930472160" MODIFIED="1475930491416"/>
</node>
<node TEXT="Kvalitn&#xed; pracovn&#xed; v&#xfd;stup = str&#xe1;ven&#xfd; &#x10d;as * intenzita soust&#x159;ed&#x11b;n&#xed;" ID="ID_1721495362" CREATED="1475930327010" MODIFIED="1475930344290"/>
</node>
<node TEXT="Kniha Inov&#xe1;to&#x159;i - Walter Isaacson" ID="ID_1189697138" CREATED="1475930493449" MODIFIED="1475930506041">
<node TEXT="&quot;Abyste vymysleli inovaci, mus&#xed;te se setk&#xe1;vat s lidmi mimo v&#xe1;&#x161; obor&quot;" ID="ID_576138562" CREATED="1475930511737" MODIFIED="1475930533949"/>
<node TEXT="V bellov&#xfd;ch laborato&#x159;&#xed;ch m&#x11b;li dlouh&#xe9; chodby, aby se v&#x11b;dci setk&#xe1;vali" ID="ID_776567080" CREATED="1475930535107" MODIFIED="1475930546805"/>
</node>
<node TEXT="&quot;Stupid dreams are the beginning of amazing stories&quot;" ID="ID_1430669920" CREATED="1475930628309" MODIFIED="1475930640861"/>
<node TEXT="Kniha The Zen Programmer" ID="ID_1191591195" CREATED="1475930652669" MODIFIED="1475930662181">
<node TEXT="Nejlep&#x161;&#xed; posledn&#xed; t&#x159;etina" ID="ID_1413473193" CREATED="1475930663404" MODIFIED="1475930667821"/>
<node TEXT="Desatero pro program&#xe1;tora" ID="ID_910644362" CREATED="1475930668042" MODIFIED="1475930696745">
<node TEXT="Meditujte" ID="ID_1739834154" CREATED="1475930786813" MODIFIED="1475930789554"/>
</node>
<node TEXT="Princip mysli za&#x10d;&#xe1;te&#x10d;n&#xed;ka" ID="ID_442332988" CREATED="1475930701732" MODIFIED="1475930713470"/>
<node TEXT="Discover the power of meditation - calm.com" ID="ID_1498165329" CREATED="1475930796529" MODIFIED="1475930823437">
<node TEXT="Android Appka" ID="ID_1366974256" CREATED="1475930807005" MODIFIED="1475930809256"/>
</node>
</node>
</node>
<node TEXT="Josef Cacek - Sunstone pro cloud" ID="ID_1571225912" CREATED="1475930987368" MODIFIED="1476006871839">
<node TEXT="Knihovna, github" ID="ID_1725086758" CREATED="1475930999967" MODIFIED="1475931051410"/>
<node TEXT="&#x17e;ivotn&#xed; cyklus virtu&#xe1;ln&#xed;ch box&#x16f; na cloudu" ID="ID_1584422125" CREATED="1475931051608" MODIFIED="1475931061394">
<node TEXT="Docker containery" ID="ID_531836515" CREATED="1475931063626" MODIFIED="1475931068739"/>
<node TEXT="P&#xe1;r z&#xe1;kladn&#xed;ch cloud&#x16f;" ID="ID_944390742" CREATED="1475931069061" MODIFIED="1475931072473">
<node TEXT="Azure" ID="ID_1347259114" CREATED="1475931103782" MODIFIED="1475931185706"/>
<node TEXT="Amazon" ID="ID_793890576" CREATED="1475931185889" MODIFIED="1475931188156"/>
<node TEXT="OpenStack" ID="ID_354777391" CREATED="1475931107311" MODIFIED="1475931110566"/>
<node TEXT="Unix servery p&#x159;es SSH (simulace cloudu)" ID="ID_480837010" CREATED="1475931124597" MODIFIED="1475931135892"/>
</node>
</node>
<node TEXT="Zjednodu&#x161;uje testov&#xe1;n&#xed; jBossu" ID="ID_754968271" CREATED="1475931078978" MODIFIED="1475931090373"/>
</node>
<node TEXT="Martin Strejc - agiln&#xed; t&#xfd;m i k&#xf3;d" ID="ID_285910425" CREATED="1475933378761" MODIFIED="1476006871843">
<node TEXT="&#xda;skal&#xed; agile" ID="ID_1902528192" CREATED="1475933459970" MODIFIED="1475933466061">
<node TEXT="Nestihnu story ve sprintu" ID="ID_839146508" CREATED="1475933469751" MODIFIED="1475933475091">
<node TEXT="Nedod&#xe1;m nic" ID="ID_1455531759" CREATED="1475933475400" MODIFIED="1475933479203"/>
</node>
<node TEXT="&quot;Agiln&#xed; vodop&#xe1;d&quot;" ID="ID_1931448438" CREATED="1475933505349" MODIFIED="1475933510550"/>
<node TEXT="Tester nem&#xe1; polovinu Sprintu co testovat" ID="ID_53070945" CREATED="1475933513807" MODIFIED="1475933523740"/>
</node>
<node TEXT="Jak to d&#x11b;lat" ID="ID_1003226810" CREATED="1475933549096" MODIFIED="1475933552258">
<node TEXT="Mob programming" ID="ID_1607567569" CREATED="1475933553794" MODIFIED="1475933708675"><richcontent TYPE="DETAILS">

<html>
  

  <head>

  </head>
  <body>
  </body>
</html>
</richcontent>
<node TEXT="V&#x161;ichni pracuj&#xed; spolu" ID="ID_990790753" CREATED="1475933560487" MODIFIED="1475933568158">
<node TEXT="V zaseda&#x10d;ce" ID="ID_1774095614" CREATED="1475933568480" MODIFIED="1475933572318"/>
<node TEXT="U stolu" ID="ID_807328741" CREATED="1475933573071" MODIFIED="1475933575990"/>
</node>
<node TEXT="Jeden sed&#xed; u PC, ostatn&#xed; p&#x159;em&#xfd;&#x161;l&#xed;" ID="ID_1755070259" CREATED="1475933583262" MODIFIED="1475933596456"/>
<node TEXT="Vy&#x17e;aduje zm&#x11b;nu my&#x161;len&#xed;" ID="ID_778161132" CREATED="1475933667756" MODIFIED="1475933676780"/>
<node TEXT="Ne cel&#xfd; den, jen tak 4 hodiny" ID="ID_639704391" CREATED="1475933677187" MODIFIED="1475933683263"/>
<node TEXT="Zbytek dne - domluv&#xed; se, co d&#xe1;l" ID="ID_532488093" CREATED="1475933685412" MODIFIED="1475933694877"/>
</node>
<node TEXT="Z&#xe1;sady psan&#xed;" ID="ID_374609690" CREATED="1475933744349" MODIFIED="1475933763114">
<node TEXT="Inkrement&#xe1;ln&#xed; k&#xf3;d" ID="ID_371191242" CREATED="1475933763548" MODIFIED="1475933783401">
<node TEXT="Nap&#x159;. na formul&#xe1;&#x159;i ud&#x11b;l&#xe1;m jen jeden field" ID="ID_1752683608" CREATED="1475933783888" MODIFIED="1475933797203"/>
<node TEXT="V&#x161;echno, co jde, omockuju" ID="ID_367701662" CREATED="1475933800914" MODIFIED="1475933809890"/>
<node TEXT="Umo&#x17e;n&#xed; co nejd&#x159;&#xed;ve z&#xed;skat proof of concept" ID="ID_1510729411" CREATED="1475933912316" MODIFIED="1475933919790"/>
</node>
</node>
</node>
</node>
<node TEXT="Maryna - Test heuristics in agile" ID="ID_1575015583" CREATED="1475934287194" MODIFIED="1476006871848">
<node TEXT="QA" ID="ID_1025233167" CREATED="1475934353247" MODIFIED="1475934355458">
<node TEXT="1. t&#xfd;den - p&#x159;&#xed;prava" ID="ID_822679634" CREATED="1475934356548" MODIFIED="1475934362951"/>
<node TEXT="2. t&#xfd;den - dostane se ke k&#xf3;du a za&#x10d;ne hl&#xe1;sit chyby" ID="ID_1332698860" CREATED="1475934363230" MODIFIED="1475934381810"/>
<node TEXT="Probl&#xe9;m - chyb&#xed; synchronizace QA a DEV t&#xfd;mu" ID="ID_698761888" CREATED="1475934385702" MODIFIED="1475934401041"/>
</node>
<node TEXT="Zru&#x161;ili jsme rozd&#x11b;len&#xed; QA a Dev" ID="ID_1065445311" CREATED="1475934407985" MODIFIED="1475934423460"/>
<node TEXT="Exploratory testing" ID="ID_1115876406" CREATED="1475934455179" MODIFIED="1475934459517">
<node TEXT="Nepou&#x17e;&#xed;vaj&#xed; se test cases" ID="ID_571424826" CREATED="1475934460824" MODIFIED="1475934470069"/>
<node TEXT="Co se d&#xe1; otestovat se ur&#x10d;uje podle heuristik" ID="ID_908404858" CREATED="1475934485314" MODIFIED="1475934494563"/>
<node TEXT="ExploreIt kniha" ID="ID_123901355" CREATED="1475934811837" MODIFIED="1475934817455"/>
</node>
<node TEXT="V n&#x11b;jakou f&#xe1;zi se cel&#xfd; t&#xfd;m sejde" ID="ID_1142033792" CREATED="1475934523932" MODIFIED="1475934532346">
<node TEXT="V dob&#x11b;, kdy v&#xed;me, co m&#xe1; k&#xf3;d d&#x11b;lat, ale nev&#xed;me jak" ID="ID_598986741" CREATED="1475934533583" MODIFIED="1475934544643"/>
<node TEXT="Vezmeme testovac&#xed; heuristiky a d&#x11b;l&#xe1;me brainstorming" ID="ID_1068606441" CREATED="1475934545067" MODIFIED="1475934554891">
<node TEXT="Co jsme mohli novou story rozb&#xed;t?" ID="ID_932785711" CREATED="1475934610785" MODIFIED="1475934619403"/>
</node>
<node TEXT="Z brainstormingu zjist&#xed;me, co chceme testovat" ID="ID_218607146" CREATED="1475934631415" MODIFIED="1475934639503">
<node TEXT="Seznam test&#x16f; pro danou story" ID="ID_248557474" CREATED="1475934646052" MODIFIED="1475934650960"/>
<node TEXT="Ur&#x10d;&#xed;me formu test&#x16f;" ID="ID_187733100" CREATED="1475934667033" MODIFIED="1475934671382">
<node TEXT="Integra&#x10d;n&#xed; test" ID="ID_1674739869" CREATED="1475934672398" MODIFIED="1475934674792"/>
<node TEXT="End-to-end test" ID="ID_713282396" CREATED="1475934674968" MODIFIED="1475934677759"/>
<node TEXT="Manu&#xe1;ln&#xed; test" ID="ID_127255072" CREATED="1475934678156" MODIFIED="1475934680313"/>
<node TEXT="Unit testy" ID="ID_533417472" CREATED="1475934715088" MODIFIED="1475934717876"/>
</node>
</node>
</node>
</node>
<node TEXT="Luk&#xe1;&#x161; K&#x159;e&#x10d;an - new Java Literals for the brave and True" ID="ID_1767181258" CREATED="1475935070825" MODIFIED="1476006871852">
<node TEXT="Java 1.8 - definice pomoc&#xed; -&gt;" ID="ID_431522759" CREATED="1475935380837" MODIFIED="1475935389338"/>
<node TEXT="Map&lt;String, String&gt; map = new map(&#xa;key1 -&gt; value1,&#xa;key2 -&gt; value2&#xa;)" ID="ID_206659404" CREATED="1475935390656" MODIFIED="1475935433620"/>
</node>
<node TEXT="Petr J&#x16f;za - CleverBus" ID="ID_75811712" CREATED="1475935767181" MODIFIED="1476006871866">
<node TEXT="EBS made by developers for developers" ID="ID_547140182" CREATED="1475935786146" MODIFIED="1475935799383"/>
<node TEXT="&quot;Apache camel on steroids&quot;" ID="ID_1957284354" CREATED="1475935962602" MODIFIED="1475935970192"/>
<node TEXT="vyu&#x17e;&#xed;v&#xe1;" ID="ID_1069725432" CREATED="1475935925293" MODIFIED="1475935927879">
<node TEXT="Apache camel" ID="ID_983863303" CREATED="1475935806293" MODIFIED="1475935826266">
<node ID="ID_469896454" CREATED="1475935826938" MODIFIED="1475935826938"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      implementuje z&#225;kladn&#237; integra&#269;n&#237; patterny
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Lze pou&#x17e;&#xed;t n&#xe1;stroje pro camel (Hawito)" ID="ID_431569591" CREATED="1475936127202" MODIFIED="1475936141750"/>
</node>
<node TEXT="Spring" ID="ID_1066946163" CREATED="1475935933610" MODIFIED="1475935934818"/>
<node TEXT="PostgreSQL" ID="ID_1276787884" CREATED="1475935955362" MODIFIED="1475935958721"/>
</node>
<node TEXT="Vlastnosti" ID="ID_714215131" CREATED="1475935868822" MODIFIED="1475935871699">
<node TEXT="ESB" ID="ID_1494464535" CREATED="1475935872192" MODIFIED="1475935875614"/>
<node TEXT="sou&#x10d;&#xe1;st aplikace" ID="ID_1355291586" CREATED="1475935878021" MODIFIED="1475935882426"/>
<node TEXT="security proxy" ID="ID_1965052806" CREATED="1475935883075" MODIFIED="1475935888265"/>
<node TEXT="Mobiln&#xed; gateway" ID="ID_1455183474" CREATED="1475935888457" MODIFIED="1475935893902"/>
</node>
<node TEXT="Feutures" ID="ID_779152691" CREATED="1475936182979" MODIFIED="1475936188002">
<node TEXT="Obsolete messages" ID="ID_516431810" CREATED="1475936192172" MODIFIED="1475936198064"/>
<node TEXT="omezen&#xed; toku dat (komponenta Funnel)" ID="ID_1412819569" CREATED="1475936198375" MODIFIED="1475936222299"/>
<node TEXT="Monitoring &amp; Logging" ID="ID_1601761353" CREATED="1475936240270" MODIFIED="1475936281615"/>
<node TEXT="Error handling" ID="ID_119350661" CREATED="1475936283779" MODIFIED="1475936287729"/>
<node TEXT="Automatick&#xe9; alerty" ID="ID_1601624806" CREATED="1475936384896" MODIFIED="1475936389492"/>
<node TEXT="Admin GUI" ID="ID_1646878840" CREATED="1475936397144" MODIFIED="1475936400150"/>
<node TEXT="Throttling - obrana proti DOS &#xfa;tok&#x16f;m" ID="ID_1570758150" CREATED="1475936254761" MODIFIED="1475936270051"/>
</node>
<node TEXT="Stabiln&#xed; a prov&#x11b;&#x159;en&#xe9; - pou&#x17e;&#xed;vaj&#xed; velc&#xed; oper&#xe1;to&#x159;i" ID="ID_487063321" CREATED="1475936005117" MODIFIED="1475936016609"/>
<node TEXT="Lightweight, DB agnostic" ID="ID_646305516" CREATED="1475936045122" MODIFIED="1475936057745"/>
</node>
<node TEXT="Pavel Lahoda - Do you like buzzwords (Server 2.0)?" ID="ID_220323913" CREATED="1475936547685" MODIFIED="1476006871870">
<node TEXT="Loginaut authentication projekt" ID="ID_58785403" CREATED="1475936595304" MODIFIED="1475936606121"/>
<node TEXT="Loginaut server" ID="ID_1704583737" CREATED="1475936608836" MODIFIED="1475936614462">
<node TEXT="Probl&#xe9;my" ID="ID_589807116" CREATED="1475936624224" MODIFIED="1475936629349">
<node TEXT="&#x160;k&#xe1;lovatelnost" ID="ID_810127887" CREATED="1475936631335" MODIFIED="1475936636142"/>
<node TEXT="Bezpe&#x10d;nost" ID="ID_407393559" CREATED="1475936636363" MODIFIED="1475936638488"/>
<node TEXT="Transparentnost" ID="ID_1036803699" CREATED="1475936640104" MODIFIED="1475936644931">
<node TEXT="Jak lidi p&#x159;esv&#x11b;d&#x10d;it, &#x17e;e jejich data nejsou zneu&#x17e;it&#xe1;" ID="ID_163353781" CREATED="1475936647555" MODIFIED="1475936660718"/>
</node>
</node>
<node TEXT="&#x158;e&#x161;en&#xed; - blockchain" ID="ID_953826733" CREATED="1475936683289" MODIFIED="1475936694803">
<node TEXT="Pou&#x17e;&#xed;v&#xe1; bitcoin" ID="ID_1283910241" CREATED="1475936696068" MODIFIED="1475936705354">
<node TEXT="Pro pos&#xed;l&#xe1;n&#xed; pen&#x11b;z" ID="ID_903422257" CREATED="1475936732674" MODIFIED="1475936736237"/>
</node>
<node TEXT="Nepot&#x159;ebuje centr&#xe1;ln&#xed; autoritu" ID="ID_970986943" CREATED="1475936705993" MODIFIED="1475936711632"/>
</node>
<node TEXT="Smart contracts" ID="ID_1265119752" CREATED="1475936746307" MODIFIED="1475936751063">
<node TEXT="Hyperledger" ID="ID_1377925279" CREATED="1475936752014" MODIFIED="1475936756996">
<node TEXT="Implementace smart contracts (POC)" ID="ID_1325451199" CREATED="1475936758874" MODIFIED="1475936778100"/>
</node>
<node TEXT="Ethereum" ID="ID_375069448" CREATED="1475936779073" MODIFIED="1475936783799">
<node TEXT="Funguje podobn&#x11b; jako bitcoin" ID="ID_1778576424" CREATED="1475936786531" MODIFIED="1475936790860"/>
<node TEXT="Dva typy &#xfa;&#x10d;t&#x16f;" ID="ID_1264236056" CREATED="1475936791048" MODIFIED="1475936796507">
<node TEXT="Extern&#x11b; vlastn&#x11b;n&#xfd; &#xfa;&#x10d;et" ID="ID_955998211" CREATED="1475936798007" MODIFIED="1475936803478">
<node TEXT="Pou&#x17e;&#xed;v&#xe1;n&#xed; Ethereum m&#x11b;ny" ID="ID_473963599" CREATED="1475936804467" MODIFIED="1475936810333"/>
<node TEXT="Tvorba transakc&#xed;" ID="ID_1732322403" CREATED="1475936810988" MODIFIED="1475936814682">
<node TEXT="Data" ID="ID_588626323" CREATED="1475937057778" MODIFIED="1475937062699"/>
<node TEXT="Placen&#xe1; &#x10d;&#xe1;stka" ID="ID_1220619166" CREATED="1475937067129" MODIFIED="1475937072405"/>
<node TEXT="EVM spustiteln&#xfd; k&#xf3;d" ID="ID_1909067369" CREATED="1475937073403" MODIFIED="1475937085887">
<node TEXT="existuje cena, za prov&#xe1;d&#x11b;n&#xed; dan&#xe9;ho k&#xf3;du" ID="ID_1906587774" CREATED="1475937104794" MODIFIED="1475937119051"/>
<node TEXT="Pokud je to moc slo&#x17e;it&#xfd; (p&#x159;&#xed;li&#x161; hodn&#x11b; smy&#x10d;ek), k&#xf3;d se zastav&#xed;" ID="ID_1586147831" CREATED="1475937119494" MODIFIED="1475937135956"/>
</node>
</node>
</node>
<node TEXT="&#xda;&#x10d;ty chytr&#xfd;ch transakc&#xed;" ID="ID_301962071" CREATED="1475936817474" MODIFIED="1475936830421">
<node TEXT="Maj&#xed; balance v hal&#xed;&#x159;&#xed;ch" ID="ID_6016103" CREATED="1475936836801" MODIFIED="1475936844571"/>
<node TEXT="Ka&#x17e;d&#xfd; stav m&#xe1;" ID="ID_1738842282" CREATED="1475936845174" MODIFIED="1475936863136">
<node TEXT="&lt;html&gt;&#xa;  &lt;head&gt;&#xa;    &#xa;  &lt;/head&gt;&#xa;  &lt;body&gt;&#xa;    &lt;p&gt;&#xa;      persistentn&amp;#237; storage key/value&#xa;    &lt;/p&gt;&#xa;  &lt;/body&gt;&#xa;&lt;/html&gt;" ID="ID_288977089" CREATED="1475936864212" MODIFIED="1475936864212"/>
<node TEXT="k&#xf3;d, kter&#xfd; se m&#x16f;&#x17e;e spustit, kdy&#x17e; tam p&#x159;ijde transakce" ID="ID_850057547" CREATED="1475936866163" MODIFIED="1475936878582"/>
</node>
</node>
</node>
<node TEXT="EVM - ethereum virtual machine" ID="ID_1202234856" CREATED="1475936884292" MODIFIED="1475936890291">
<node TEXT="Distribuovan&#xe1; platforma" ID="ID_1279989533" CREATED="1475936891588" MODIFIED="1475937161226">
<node TEXT="&lt;html&gt;&#xa;  &lt;head&gt;&#xa;    &#xa;  &lt;/head&gt;&#xa;  &lt;body&gt;&#xa;    &lt;p&gt;&#xa;      b&amp;#283;&amp;#382;&amp;#237; na mili&amp;#243;nech po&amp;#269;&amp;#237;ta&amp;#269;&amp;#367;&#xa;    &lt;/p&gt;&#xa;  &lt;/body&gt;&#xa;&lt;/html&gt;" ID="ID_753630439" CREATED="1475937161854" MODIFIED="1475937161854"/>
<node TEXT="Ka&#x17e;d&#xe9; PC pak vyd&#x11b;l&#xe1;v&#xe1; spou&#x161;t&#x11b;n&#xed;m EVM k&#xf3;d&#x16f;" ID="ID_903161575" CREATED="1475937165500" MODIFIED="1475937181744"/>
</node>
<node TEXT="Programovac&#xed; jazyk podobn&#xfd; javascriptu" ID="ID_1079548684" CREATED="1475936922198" MODIFIED="1475936929292">
<node TEXT="Kompiluje se do bytecode" ID="ID_571336360" CREATED="1475937014304" MODIFIED="1475937021515"/>
</node>
</node>
</node>
<node TEXT="Aplikace" ID="ID_1066745666" CREATED="1475937186695" MODIFIED="1475937189011">
<node TEXT="Politick&#xe1; strana by do kontraktu mohla d&#xe1;t svoje p&#x159;edvolebn&#xed; sliby" ID="ID_277131857" CREATED="1475937192090" MODIFIED="1475937206384"/>
<node TEXT="K&#xf3;d je s&#xe1;m sob&#x11b; z&#xe1;rukou, nepot&#x159;ebuje centr&#xe1;ln&#xed; autoritu" ID="ID_1166805415" CREATED="1475937207126" MODIFIED="1475937222715"/>
<node TEXT="Je tak mo&#x17e;n&#xe9; zalogovat n&#x11b;jak&#xe1; data, a pak u&#x17e; je nijak nelze zp&#x11b;tn&#x11b; zm&#x11b;nit (zfal&#x161;ovat)" ID="ID_876192801" CREATED="1475937466291" MODIFIED="1475937495219"/>
</node>
</node>
</node>
</node>
<node TEXT="Ji&#x159;&#xed; Kr&#x16f;&#x10d;ek - continuous improvement" ID="ID_1118622158" CREATED="1475937570923" MODIFIED="1476006871875">
<node TEXT="Not about to be best, but be better than yesterday" ID="ID_1843329085" CREATED="1475937802100" MODIFIED="1475937813928"/>
<node TEXT="Kai (Change) + Zen (Good) = KaiZen" ID="ID_651499914" CREATED="1475937836204" MODIFIED="1475937850863"/>
<node TEXT="Principy" ID="ID_615762227" CREATED="1475937857942" MODIFIED="1475937860077">
<node TEXT="Idea management" ID="ID_690035268" CREATED="1475937868122" MODIFIED="1475937870876">
<node TEXT="Feedback box on the wall" ID="ID_26425744" CREATED="1475938088043" MODIFIED="1475938140526">
<node TEXT="&lt;html&gt;&#xa;  &lt;head&gt;&#xa;    &#xa;  &lt;/head&gt;&#xa;  &lt;body&gt;&#xa;    &lt;p&gt;&#xa;      nefungoval&#xa;    &lt;/p&gt;&#xa;  &lt;/body&gt;&#xa;&lt;/html&gt;" ID="ID_1093638018" CREATED="1475938141169" MODIFIED="1475938141169"/>
<node TEXT="Anonymn&#xed;" ID="ID_1966405386" CREATED="1475938142615" MODIFIED="1475938145729"/>
</node>
<node TEXT="Hromadn&#xfd; sb&#x11b;r n&#xe1;pad&#x16f; p&#x159;es Jira" ID="ID_1039692083" CREATED="1475938130592" MODIFIED="1475938135403">
<node TEXT="Hlasov&#xe1;n&#xed;" ID="ID_1023410859" CREATED="1475938147263" MODIFIED="1475938149790"/>
<node TEXT="Koment&#xe1;&#x159;e" ID="ID_643633732" CREATED="1475938149981" MODIFIED="1475938151871"/>
</node>
</node>
<node TEXT="happiness at work" ID="ID_1191019035" CREATED="1475937873790" MODIFIED="1475937878671">
<node TEXT="Fotb&#xe1;lek, liga o poh&#xe1;r" ID="ID_1992826977" CREATED="1475938407401" MODIFIED="1475938414498"/>
</node>
<node TEXT="Improvement MNG" ID="ID_1951224516" CREATED="1475937886260" MODIFIED="1475937893412"/>
<node TEXT="information communication" ID="ID_1327062589" CREATED="1475937898409" MODIFIED="1475938178298">
<node TEXT="blogs" ID="ID_55953472" CREATED="1475938237120" MODIFIED="1475938238826"/>
<node TEXT="Newsletters" ID="ID_1022082515" CREATED="1475938239097" MODIFIED="1475938242398"/>
<node TEXT="Dashboards" ID="ID_1586863363" CREATED="1475938242621" MODIFIED="1475938245019">
<node TEXT="dashing.io" ID="ID_578889330" CREATED="1475938261455" MODIFIED="1475938264262"/>
</node>
</node>
<node TEXT="Knowledge sharing" ID="ID_995727983" CREATED="1475938164862" MODIFIED="1475938169641">
<node TEXT="Confluence Wiki" ID="ID_783924391" CREATED="1475938170691" MODIFIED="1475938174233"/>
<node TEXT="DevHour" ID="ID_519564063" CREATED="1475938184963" MODIFIED="1475938188662">
<node TEXT="1x per week" ID="ID_516548659" CREATED="1475938189059" MODIFIED="1475938196076"/>
</node>
<node TEXT="Internal IT conferences" ID="ID_1536279503" CREATED="1475938211753" MODIFIED="1475938218090">
<node TEXT="Across dev. and operations" ID="ID_1040360422" CREATED="1475938218859" MODIFIED="1475938226551"/>
</node>
</node>
<node TEXT="People got extra time outside their project duties, where they can" ID="ID_221660482" CREATED="1475938007449" MODIFIED="1475938025702">
<node TEXT="Code review" ID="ID_1385726288" CREATED="1475938026861" MODIFIED="1475938029230"/>
<node TEXT="Talk about technogies" ID="ID_918124449" CREATED="1475938029464" MODIFIED="1475938034724"/>
<node TEXT="Train others" ID="ID_1426374288" CREATED="1475938034949" MODIFIED="1475938037058"/>
</node>
<node TEXT="Books" ID="ID_137044624" CREATED="1475938346205" MODIFIED="1475938347633">
<node TEXT="Happy hour is 9 to 5" ID="ID_1222537667" CREATED="1475938348866" MODIFIED="1475938355190"/>
<node TEXT="Team geek" ID="ID_96111446" CREATED="1475938356984" MODIFIED="1475938359110"/>
<node TEXT="Lean enterprise" ID="ID_1534619901" CREATED="1475938362354" MODIFIED="1475938367101"/>
</node>
</node>
</node>
<node TEXT="Jakub Fojtl - code your architecture" ID="ID_1973568576" CREATED="1475939780246" MODIFIED="1476006871879">
<node TEXT="N&#xe1;stroje" ID="ID_865894940" CREATED="1475939950011" MODIFIED="1475939954141">
<node TEXT="Android - Office Lens mobiln&#xed; aplikace" ID="ID_131240306" CREATED="1475939847229" MODIFIED="1475939865775">
<node TEXT="Vyhlad&#xed; kresbu rukou" ID="ID_913812739" CREATED="1475939867107" MODIFIED="1475939876102"/>
</node>
<node TEXT="structurizr" ID="ID_1301871116" CREATED="1475939885507" MODIFIED="1475939889874">
<node TEXT="Pro kreslen&#xed; diagram&#x16f;" ID="ID_547829623" CREATED="1475939927792" MODIFIED="1475939932620"/>
<node TEXT="Varianty z&#xe1;pisu" ID="ID_1973615267" CREATED="1475940054686" MODIFIED="1475940058301">
<node TEXT="Pou&#x17e;&#xed;v&#xe1; Javu pro popis diagram&#x16f;" ID="ID_1208822078" CREATED="1475939932799" MODIFIED="1475939941383"/>
<node TEXT="Mo&#x17e;nost pou&#x17e;&#xed;t freetext pro UML diagramy" ID="ID_1402030338" CREATED="1475939962374" MODIFIED="1475939971021"/>
</node>
</node>
<node TEXT="C4 framework" ID="ID_1139223628" CREATED="1475939899292" MODIFIED="1475939903231">
<node TEXT="Pro popis statick&#xe9; &#x10d;&#xe1;sti architektury" ID="ID_169601335" CREATED="1475939903728" MODIFIED="1475939920781"/>
<node TEXT="Exporty do statick&#xe9; HTML str&#xe1;nky" ID="ID_1541827131" CREATED="1475939988122" MODIFIED="1475939995056"/>
<node TEXT="4 &#xfa;rovn&#x11b; diagram&#x16f;" ID="ID_471791491" CREATED="1475940073648" MODIFIED="1475940079120">
<node TEXT="Context diagram" ID="ID_1004384341" CREATED="1475940080206" MODIFIED="1475940083627">
<node TEXT="Zobraz&#xed; syst&#xe9;m, a kdo s n&#xed;m interaguje" ID="ID_36785732" CREATED="1475940085210" MODIFIED="1475940094868">
<node TEXT="U&#x17e;ivatel&#xe9;" ID="ID_1845366352" CREATED="1475940095917" MODIFIED="1475940098874"/>
<node TEXT="Extern&#xed; syst&#xe9;my" ID="ID_1167751888" CREATED="1475940099117" MODIFIED="1475940103072"/>
</node>
</node>
<node TEXT="Containers" ID="ID_1572489879" CREATED="1475940111247" MODIFIED="1475940113226">
<node TEXT="Spustiteln&#xe9; &#x10d;&#xe1;sti, z nich&#x17e; se S skl&#xe1;d&#xe1;" ID="ID_778857226" CREATED="1475940113879" MODIFIED="1475940125987"/>
</node>
<node TEXT="Components" ID="ID_1105526214" CREATED="1475940129248" MODIFIED="1475940134463">
<node TEXT="Z nich se skl&#xe1;daj&#xed; containers, projekty, moduly" ID="ID_854778832" CREATED="1475940135672" MODIFIED="1475940147182"/>
</node>
<node TEXT="Classes" ID="ID_1386321341" CREATED="1475940148808" MODIFIED="1475940150585">
<node TEXT="Class diagram komponenty" ID="ID_862224448" CREATED="1475940151054" MODIFIED="1475940156965"/>
</node>
</node>
<node TEXT="Super v&#xfd;hoda" ID="ID_429050647" CREATED="1475940179631" MODIFIED="1475940249011">
<node TEXT="&lt;html&gt;&#xa;  &lt;head&gt;&#xa;    &#xa;  &lt;/head&gt;&#xa;  &lt;body&gt;&#xa;    &lt;p&gt;&#xa;      diff v CSV&#xa;    &lt;/p&gt;&#xa;  &lt;/body&gt;&#xa;&lt;/html&gt;" ID="ID_492063131" CREATED="1475940249820" MODIFIED="1475940249820">
<node TEXT="To v kresl&#xed;tk&#xe1;ch s netextov&#xfd;m form&#xe1;tem nem&#xe1;m" ID="ID_502968065" CREATED="1475940205126" MODIFIED="1475940233997"/>
</node>
<node TEXT="Decision log = git message log" ID="ID_82894871" CREATED="1475940254920" MODIFIED="1475940262827"/>
</node>
</node>
<node TEXT="clj-structurizr" ID="ID_803264542" CREATED="1475940281981" MODIFIED="1475940291461">
<node TEXT="Teprve v po&#x10d;&#xe1;tku" ID="ID_490160967" CREATED="1475940296107" MODIFIED="1475940301244"/>
</node>
</node>
</node>
<node TEXT="Pavel Jetensk&#xfd; - p&#x159;&#xed;prava rela&#x10d;n&#xed;ch dat pro test &amp; No more Mr. Nice Guy" ID="ID_941272546" CREATED="1475941550370" MODIFIED="1476006871886">
<node TEXT="Jak p&#x159;ipravit komplexn&#xed; (rela&#x10d;n&#xed;) testovac&#xed; data?" ID="ID_758233070" CREATED="1465891948013" MODIFIED="1475941789628">
<node TEXT="Zp&#x16f;sob nahr&#xe1;n&#xed; dat" ID="ID_383369343" CREATED="1465893267367" MODIFIED="1472397919041">
<node TEXT="P&#x159;edp&#x159;ipravit p&#x159;&#xed;mo v datab&#xe1;zi" ID="ID_209563713" CREATED="1472399120917" MODIFIED="1472399139023">
<node TEXT="Subset produk&#x10d;n&#xed;ch dat (dump)" ID="ID_1309351411" CREATED="1465893193062" MODIFIED="1472399075446"/>
<node TEXT="Kdy&#x17e; se zm&#x11b;n&#xed; aplikace, mus&#xed; se aktualizovat" ID="ID_1215340279" CREATED="1472399043263" MODIFIED="1472399226841">
<icon BUILTIN="subtraction"/>
</node>
</node>
<node TEXT="Data si vyrob&#xed; test" ID="ID_169150970" CREATED="1475932305610" MODIFIED="1475932310501">
<node TEXT="Spu&#x161;t&#x11b;n&#xed; SQL - WTF?" ID="ID_1330318338" CREATED="1465893271750" MODIFIED="1475932803363"/>
<node TEXT="Zavol&#xe1;n&#xed; API" ID="ID_511569187" CREATED="1472398589255" MODIFIED="1472398593192">
<node TEXT="Aktualizuje se spolu s k&#xf3;dem" ID="ID_891610685" CREATED="1472398805949" MODIFIED="1472398965175">
<icon BUILTIN="addition"/>
</node>
</node>
<node TEXT="Test data factory" ID="ID_560531028" CREATED="1472398610846" MODIFIED="1475932342426">
<node TEXT="Minimalizuje duplicitu k&#xf3;du pro p&#x159;&#xed;pravu dat" ID="ID_247758349" CREATED="1472398671961" MODIFIED="1472399026095">
<icon BUILTIN="addition"/>
</node>
</node>
</node>
</node>
<node TEXT="Spring JPA &amp; Groovy" ID="ID_1664268148" CREATED="1472397930883" MODIFIED="1475940801558"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Test data factory jako jedin&#225; t&#345;&#237;da
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Rozd&#x11b;l a panuj" ID="ID_1179635930" CREATED="1472397945994" MODIFIED="1472397950169"/>
<node TEXT="Princip lze pou&#x17e;&#xed;t i u manu&#xe1;ln&#xed;ho popisu jak p&#x159;ipravit data" ID="ID_259341453" CREATED="1472398712169" MODIFIED="1472398731696"/>
<node TEXT="Demo" ID="ID_102666442" CREATED="1475932728680" MODIFIED="1475932730756"/>
</node>
</node>
<node TEXT="No More Mr. Nice Guy" ID="ID_1349718058" CREATED="1475913272905" MODIFIED="1475941789632"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (Infekce)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="P&#x159;e&#x10d;t&#x11b;te si knihu" ID="ID_1522528027" CREATED="1475918830052" MODIFIED="1475918836758">
<node TEXT="R&#xe1;dce prav&#xe9;ho mu&#x17e;e" ID="ID_1172168498" CREATED="1475919879061" MODIFIED="1475919891309"/>
</node>
<node TEXT="Jsem taky infikov&#xe1;n?" ID="ID_1523512309" CREATED="1475913306760" MODIFIED="1475913336584">
<node TEXT="if (plnimPredstavy() &amp;&amp; skryvamNedostatky())" ID="ID_61422384" CREATED="1475920317528" MODIFIED="1475925054209">
<node TEXT="def whatIGet = whatIGet();" ID="ID_1894218771" CREATED="1475924913716" MODIFIED="1475924969163"/>
<node TEXT="assert whatIGet == {" ID="ID_238267165" CREATED="1475924970310" MODIFIED="1475925104008"/>
<node TEXT="  Laska," ID="ID_1262238487" CREATED="1475924820358" MODIFIED="1475925033211"/>
<node TEXT="  NaplneniPotreb," ID="ID_1778840703" CREATED="1475924836145" MODIFIED="1475925036064"/>
<node TEXT="  BezproblemovyZivot" ID="ID_108667291" CREATED="1475924854353" MODIFIED="1475925038867"/>
<node TEXT="}" ID="ID_1876074267" CREATED="1475925017958" MODIFIED="1475925021976">
<node TEXT="" ID="ID_700636788" CREATED="1475925413189" MODIFIED="1475926054142">
<hook URI="jOpenSpace2016_assertFailed.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="" ID="ID_1048364935" CREATED="1475920584948" MODIFIED="1475920601406">
<hook URI="jOpenSpace2016_4980091072318300727.png" SIZE="0.35882974" NAME="ExternalObject"/>
</node>
<node TEXT="Navenek" ID="ID_331508801" CREATED="1475916580353" MODIFIED="1475925433849">
<icon BUILTIN="button_ok"/>
<node TEXT="Pomoc ostatn&#xed;m" ID="ID_626940518" CREATED="1475916331026" MODIFIED="1475916569759"/>
<node TEXT="&#x160;t&#x11b;st&#xed; partnerky" ID="ID_1518232065" CREATED="1475916376043" MODIFIED="1475916780242">
<node TEXT="&quot;St&#x11b;hov&#xe1;ci&quot;" ID="ID_1661791547" CREATED="1475925468243" MODIFIED="1475925481768"/>
</node>
<node TEXT="&#x17d;&#xe1;dn&#xe9; konflikty" ID="ID_1442408247" CREATED="1475916439426" MODIFIED="1475916460359"/>
<node TEXT="&#x10c;estn&#xed; ho&#x161;i" ID="ID_151125303" CREATED="1475916497334" MODIFIED="1475916658838">
<node TEXT=" bez chyb" ID="ID_937624594" CREATED="1475916660949" MODIFIED="1475916668784"/>
<node TEXT="nejsou na obt&#xed;&#x17e;" ID="ID_1256257204" CREATED="1475916669165" MODIFIED="1475916683250"/>
<node TEXT="bez vlastn&#xed;ch pot&#x159;eb" ID="ID_1651161319" CREATED="1475916691469" MODIFIED="1475916697660"/>
</node>
</node>
<node TEXT="Pod pokli&#x10d;kou" ID="ID_1137712808" CREATED="1475916597146" MODIFIED="1475925437386">
<icon BUILTIN="button_cancel"/>
<node TEXT="Nerovnov&#xe1;ha M&#xe1; d&#xe1;ti / Dal" ID="ID_1575769829" CREATED="1475916601264" MODIFIED="1475916617211"/>
<node TEXT="M&#xe1;lo &#x10d;asu (pro sebe)" ID="ID_1374093132" CREATED="1475920237583" MODIFIED="1475920250465"/>
<node TEXT="Nespokojenost, deprese" ID="ID_96755950" CREATED="1475916619865" MODIFIED="1475916627867"/>
<node TEXT="Potla&#x10d;ov&#xe1;n&#xed; emoc&#xed; (vztek)" ID="ID_991418205" CREATED="1475916632984" MODIFIED="1475919912922"/>
<node TEXT="Neup&#x159;&#xed;mnost, manipulace" ID="ID_1094456772" CREATED="1475916716597" MODIFIED="1475916723606"/>
<node TEXT="Osam&#x11b;lost, izolace" ID="ID_502535566" CREATED="1475916756036" MODIFIED="1475930608734"/>
<node TEXT="Nenapl&#x148;uj&#xed;c&#xed;/&#x17e;&#xe1;dn&#xfd; sex" ID="ID_213257457" CREATED="1475917060028" MODIFIED="1475917073257"/>
</node>
</node>
<node TEXT="P&#x159;&#xed;&#x10d;iny" ID="ID_226243987" CREATED="1475913345764" MODIFIED="1475913350216">
<node TEXT="Nenapln&#x11b;n&#xed; pot&#x159;eb v d&#x11b;tstv&#xed;" ID="ID_642654100" CREATED="1475916814236" MODIFIED="1475916825452">
<node TEXT="Nep&#x159;&#xed;tomn&#xed; rodi&#x10d;e" ID="ID_890635665" CREATED="1475916825993" MODIFIED="1475916831523"/>
<node TEXT="Kriti&#x10d;t&#xed; rodi&#x10d;e" ID="ID_1537291601" CREATED="1475916832219" MODIFIED="1475916843331"/>
<node TEXT="Dlouhodob&#x11b; ne&#x161;&#x165;astn&#xed; rodi&#x10d;e" ID="ID_1914236499" CREATED="1475916852338" MODIFIED="1475920271557"/>
<node TEXT="Role syn/matka" ID="ID_65889718" CREATED="1475926348078" MODIFIED="1475926365101"/>
</node>
<node TEXT="Historick&#xe9; souvislosti" ID="ID_918652726" CREATED="1475913301282" MODIFIED="1475913306319">
<node TEXT="V&#xe1;lka" ID="ID_43934470" CREATED="1475916800799" MODIFIED="1475916802469"/>
<node TEXT="Vzd&#x11b;l&#xe1;vac&#xed; syst&#xe9;m" ID="ID_450596212" CREATED="1475916802815" MODIFIED="1475916807274"/>
</node>
<node TEXT="TOXIC SHAME" ID="ID_148767041" CREATED="1475925506798" MODIFIED="1475925513181"/>
</node>
<node TEXT="&#x158;e&#x161;en&#xed;" ID="ID_1868025089" CREATED="1475916896983" MODIFIED="1475916901020">
<node TEXT="Kdo je odpov&#x11b;dn&#xfd; za napln&#x11b;n&#xed; m&#xfd;ch pot&#x159;eb?" ID="ID_933244095" CREATED="1475916953426" MODIFIED="1475916979160"/>
<node TEXT="Kdo prvn&#xed; m&#x11b; m&#xe1; d&#xe1;t l&#xe1;sku?" ID="ID_511993027" CREATED="1475916979437" MODIFIED="1475916988135"/>
<node TEXT="Kdo m&#xe1; nastavit m&#x16f;j &#x17e;ivot, abych byl &#x161;&#x165;astn&#xfd;?" ID="ID_394726544" CREATED="1475916989357" MODIFIED="1475917016457"/>
</node>
</node>
</node>
<node TEXT="Luk&#xe1;&#x161; Vl&#x10d;ek - microservice for Java Developers" ID="ID_235820653" CREATED="1475941558165" MODIFIED="1476006871890">
<node TEXT="Velk&#xe1; aplikace rozbit&#xe1; na malinkat&#xe9; pidiaplikace" ID="ID_1555168169" CREATED="1475941837784" MODIFIED="1475941857750"/>
<node TEXT="Ka&#x17e;d&#xe1; pidiaplikace je samostatn&#x11b; deployovateln&#xe1;" ID="ID_1815026067" CREATED="1475941858030" MODIFIED="1475941870334">
<node TEXT="V redhat b&#x11b;&#x17e;&#xed; v dockeru" ID="ID_101888885" CREATED="1475941878753" MODIFIED="1475941888175"/>
</node>
<node TEXT="Wildfly swarm" ID="ID_66090493" CREATED="1475941948560" MODIFIED="1475941952475">
<node TEXT="Kousky aplika&#x10d;n&#xed;ho serveru se obal&#xed; kolem microservice" ID="ID_1170947565" CREATED="1475941958818" MODIFIED="1475941972754">
<node TEXT="Lze vybrat komponenty, kter&#xe9; tam maj&#xed; b&#xfd;t" ID="ID_206101974" CREATED="1475942039991" MODIFIED="1475942048680"/>
<node TEXT="Jax-rs, CDI, JTA, JPA, Messaging, Undertow (static web content)" ID="ID_376282448" CREATED="1475942049117" MODIFIED="1475942069284"/>
</node>
<node TEXT="Spustiteln&#xe9; jako java jar" ID="ID_854781178" CREATED="1475942006177" MODIFIED="1475942022768"/>
</node>
<node TEXT="OpenShift od Redhatu" ID="ID_1928682451" CREATED="1475942363424" MODIFIED="1475942371449"/>
</node>
<node TEXT="Filip &#x160;taffa - Jak vyvinout testovac&#xed; framework" ID="ID_515479693" CREATED="1475942516474" MODIFIED="1476006871894">
<node TEXT="Verze 2.0" ID="ID_93007329" CREATED="1475942868526" MODIFIED="1475942872757">
<node TEXT="FileSystem je vlastn&#x11b; UnitTest" ID="ID_1727896337" CREATED="1475942821869" MODIFIED="1475942827709"/>
<node TEXT="Extern&#xed; syst&#xe9;my jsou v&#x161;echny mockov&#xe1;ny" ID="ID_163255221" CREATED="1475942835257" MODIFIED="1475942843576"/>
<node TEXT="Vstupy definov&#xe1;ny pomoc&#xed; servisn&#xed;ch kontrakt&#x16f;" ID="ID_1676259172" CREATED="1475942846370" MODIFIED="1475942853705"/>
<node TEXT="Probl&#xe9;m - kdy&#x17e; se servisn&#xed; kontrakty zm&#x11b;nily, testy jsme mohli zahodit" ID="ID_555802053" CREATED="1475942883387" MODIFIED="1475942896419"/>
</node>
<node TEXT="Sou&#x10d;asn&#xe1; verze - best practices" ID="ID_799710083" CREATED="1475943019170" MODIFIED="1475943029198">
<node TEXT="Stejn&#xfd; runtime/codebase jako k&#xf3;d aplikace" ID="ID_298369499" CREATED="1475943039172" MODIFIED="1475943048370"/>
<node TEXT="Vlastn&#xed; DSL pro psan&#xed; test&#x16f;" ID="ID_1224246815" CREATED="1475943049650" MODIFIED="1475943053739">
<node TEXT="V F# - &#x10d;iteln&#x11b;j&#x161;&#xed; ne&#x17e; C#, Java" ID="ID_899690054" CREATED="1475943240198" MODIFIED="1475943253003"/>
<node TEXT="Test je definovan&#xfd; jako lambda funkce, kter&#xe1; bere jako parametr nastaven&#xed; syst&#xe9;mu/prost&#x159;ed&#xed;" ID="ID_1787509813" CREATED="1475943263752" MODIFIED="1475943286164"/>
<node TEXT="&#x160;lo by p&#x159;ev&#xe9;st na fluent API" ID="ID_560206346" CREATED="1475943301771" MODIFIED="1475943307748"/>
</node>
<node TEXT="Jedna definice testovac&#xed;ch sc&#xe9;n&#xe1;&#x159;&#x16f; pro r&#x16f;zn&#xe9; &#xfa;rovn&#x11b; test&#x16f;" ID="ID_23662034" CREATED="1475943053964" MODIFIED="1475943064406"/>
<node TEXT="Anonymn&#xed; data a paralelizace" ID="ID_526362233" CREATED="1475943065131" MODIFIED="1475943072282">
<node TEXT="Nutn&#xe9; pro paraleln&#xed; pou&#x161;t&#x11b;n&#xed; dat" ID="ID_984196454" CREATED="1475943178634" MODIFIED="1475943186026"/>
<node TEXT="Data nesm&#xed; spolu kolidovat" ID="ID_1345950264" CREATED="1475943186269" MODIFIED="1475943190558"/>
<node TEXT="Pro data se nastav&#xed; jen to, co je relevantn&#xed;" ID="ID_257956257" CREATED="1475943209960" MODIFIED="1475943217687"/>
</node>
</node>
</node>
<node TEXT="Martin Bedn&#xe1;&#x159; - jak rychle vyrobit a deploynout Microservice" ID="ID_1055085348" CREATED="1475943531754" MODIFIED="1476086144253">
<node TEXT="Spring boot command line utility" ID="ID_245486799" CREATED="1475943562837" MODIFIED="1475943571146">
<node TEXT="spring init -build gradle -l groovy -g xxx ..." ID="ID_1090519710" CREATED="1475943604091" MODIFIED="1475943652166"/>
</node>
<node TEXT="sdkman.io" ID="ID_102812588" CREATED="1475943571645" MODIFIED="1475943576181">
<node TEXT="Utilitka pro instalaci v&#x161;ech d&#x16f;le&#x17e;it&#xfd;ch Java n&#xe1;stroj&#x16f;" ID="ID_382032615" CREATED="1475943577721" MODIFIED="1475943590422"/>
</node>
<node TEXT="Hal Browser" ID="ID_384920575" CREATED="1475944076112" MODIFIED="1475944085255">
<node TEXT="Slou&#x17e;&#xed; pro proch&#xe1;zen&#xed; API endpoint&#x16f;" ID="ID_738844494" CREATED="1475944086194" MODIFIED="1475944092255"/>
<node TEXT="http://docs.spring.io/spring-data/rest/docs/current/reference/html/#_the_hal_browser" ID="ID_306655197" CREATED="1475944616204" MODIFIED="1475944616204" LINK="http://docs.spring.io/spring-data/rest/docs/current/reference/html/#_the_hal_browser"/>
<node TEXT="compile &apos;org.springframework.data:spring-data-rest-hal-browser&apos;" ID="ID_1429024158" CREATED="1475944668234" MODIFIED="1475944671780"/>
</node>
<node TEXT="Vystav&#xed;me na heroku" ID="ID_1703090739" CREATED="1475944205996" MODIFIED="1475944210891">
<node TEXT="heroku push ..." ID="ID_117442675" CREATED="1475944213132" MODIFIED="1475944217401"/>
</node>
</node>
<node TEXT="Zden&#x11b;k Henek - Jopenspace 3000" ID="ID_1260123063" CREATED="1475944479829" MODIFIED="1476006871904">
<node TEXT="Ot&#xe1;zky" ID="ID_843058067" CREATED="1475945255148" MODIFIED="1475945260822">
<node TEXT="Jak financovat?" ID="ID_634232879" CREATED="1475945261702" MODIFIED="1475945264553"/>
<node TEXT="Jak vyb&#xed;rat &#xfa;&#x10d;astn&#xed;ky?" ID="ID_650844486" CREATED="1475945265340" MODIFIED="1475945271297">
<node TEXT="Losov&#xe1;n&#xed;" ID="ID_966387372" CREATED="1475945272064" MODIFIED="1475945274636"/>
<node TEXT="Hlasov&#xe1;n&#xed; o nejlep&#x161;&#xed; talk" ID="ID_661680480" CREATED="1475945274988" MODIFIED="1475945279639"/>
</node>
<node TEXT="Co bychom mohli ud&#x11b;lat pro partnery?" ID="ID_1769470678" CREATED="1475945284853" MODIFIED="1475945291740">
<node TEXT="Digit&#xe1;ln&#xed; otisk" ID="ID_1843953772" CREATED="1475945293414" MODIFIED="1475945307255">
<node TEXT="Blogy" ID="ID_265429639" CREATED="1475945308036" MODIFIED="1475945310422"/>
<node TEXT="Tweety" ID="ID_537345250" CREATED="1475945310619" MODIFIED="1475945313092"/>
<node TEXT="" ID="ID_1128062687" CREATED="1475945313317" MODIFIED="1475945313317"/>
</node>
</node>
</node>
</node>
<node TEXT="Ond&#x159;ej Havel - Integrace JIRA s bitbucket" ID="ID_1496990682" CREATED="1475997553407" MODIFIED="1476006871907">
<node TEXT="Tohle funguje na bitbucket.org" ID="ID_1287217542" CREATED="1475998170156" MODIFIED="1475998178177">
<node TEXT="Nebo si koupit JIRU, a doinstalovat si bitbucket.org plugin" ID="ID_292715218" CREATED="1475998254550" MODIFIED="1475998285693"/>
</node>
<node TEXT="V Jira - pole development" ID="ID_819020945" CREATED="1475997586600" MODIFIED="1475997598757">
<node TEXT="Create branch" ID="ID_1557460697" CREATED="1475997602580" MODIFIED="1475997605991">
<node TEXT="Tla&#x10d;&#xed;tko v JIRA p&#x159;&#xed;mo tvo&#x159;&#xed; git branch" ID="ID_1980510368" CREATED="1475997606767" MODIFIED="1475997622093"/>
<node TEXT="V&#xfd;hoda" ID="ID_1980197037" CREATED="1475997623652" MODIFIED="1475997671388">
<node ID="ID_1816156103" CREATED="1475997672665" MODIFIED="1475997672665"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      unifikovan&#253; zp&#367;sob tvorby branch
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Propojen&#xed; gitu s konkr&#xe9;tn&#xed;m issue (n&#xe1;zev branch, souvisej&#xed;c&#xed; commity)" ID="ID_1295798048" CREATED="1475997674266" MODIFIED="1475997712966"/>
<node TEXT="Mo&#x17e;nost zobrazen&#xed; commit&#x16f; z Jiry" ID="ID_311390656" CREATED="1475997714498" MODIFIED="1475997723792"/>
<node TEXT="Commit msg se p&#x159;id&#xe1;vaj&#xed; jako koment&#xe1;&#x159;e" ID="ID_1666591475" CREATED="1475997836900" MODIFIED="1475997845551"/>
</node>
</node>
<node TEXT="Commit msg" ID="ID_342878440" CREATED="1475997760873" MODIFIED="1475997800650">
<node ID="ID_1674687049" CREATED="1475997801359" MODIFIED="1475997801359"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;mus&#237; za&#269;&#237;nat issue id
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="m&#x16f;&#x17e;e obsahovat odprac. &#x10d;as" ID="ID_462943723" CREATED="1475997803676" MODIFIED="1475997810984"/>
</node>
</node>
<node TEXT="Create pull request" ID="ID_1791218968" CREATED="1475997854494" MODIFIED="1475997858492">
<node TEXT="Ozna&#x10d;&#xed;m lidi, po kter&#xfd;ch chci code review" ID="ID_1507256496" CREATED="1475997862161" MODIFIED="1475997871651"/>
<node TEXT="Pokud je k&#xf3;d schv&#xe1;len, provede se merge branch se zm&#x11b;nou" ID="ID_1217623701" CREATED="1475997883830" MODIFIED="1475997911358"/>
<node TEXT="Provede e-mail notifikace" ID="ID_429536071" CREATED="1475997913279" MODIFIED="1475997919107"/>
</node>
<node TEXT="Alternativn&#xed; produkt - UpSource od IntelliJ Idea" ID="ID_425200235" CREATED="1475998058756" MODIFIED="1475998070453"/>
</node>
<node TEXT="David Vo&#x148;ka - Kotlin 4ever" ID="ID_1935804843" CREATED="1475998527286" MODIFIED="1476006871911">
<node TEXT="Standardn&#xed; stack web aplikace" ID="ID_1570150435" CREATED="1475998600013" MODIFIED="1475998611146">
<node TEXT="Pou&#x17e;&#xed;van&#xe9; vrstvy" ID="ID_1924556880" CREATED="1475998683044" MODIFIED="1475998697066">
<node TEXT="Java" ID="ID_1899953434" CREATED="1475998613400" MODIFIED="1475998614622"/>
<node TEXT="Rela&#x10d;n&#xed; datab&#xe1;ze" ID="ID_1961608310" CREATED="1475998614924" MODIFIED="1475998618566"/>
<node TEXT="Templatovac&#xed; jazyk" ID="ID_273315432" CREATED="1475998618787" MODIFIED="1475998623567"/>
<node TEXT="Javascript" ID="ID_276638610" CREATED="1475998623853" MODIFIED="1475998626688"/>
<node TEXT="CSS" ID="ID_879594588" CREATED="1475998626890" MODIFIED="1475998627805"/>
</node>
<node TEXT="Probl&#xe9;m - spousta duplicity p&#x159;i p&#x159;ed&#xe1;v&#xe1;n&#xed; dat mezi vrstvami" ID="ID_204624017" CREATED="1475998702391" MODIFIED="1475998713909"/>
<node TEXT="Co hled&#xe1;m?" ID="ID_941436515" CREATED="1475998782915" MODIFIED="1475998787087">
<node TEXT="Napsat celou aplikaci v jednom jazyce" ID="ID_1674196583" CREATED="1475998788062" MODIFIED="1475998800345"/>
</node>
</node>
<node TEXT="Kotlin" ID="ID_414124545" CREATED="1475998746807" MODIFIED="1475998752309">
<node TEXT="Jedna z c&#xed;lov&#xfd;ch platform je Javascript" ID="ID_1350746514" CREATED="1475998753402" MODIFIED="1475998762141"/>
<node TEXT="&quot;Mix&quot; mezi Javou a pythonem" ID="ID_1275094825" CREATED="1475998762390" MODIFIED="1475998779923"/>
<node TEXT="P&#x159;&#xed;stup k datab&#xe1;zi pomoc&#xed; Objektov&#xe9;ho API" ID="ID_160586889" CREATED="1475998922222" MODIFIED="1475998936926">
<node TEXT="Je&#x161;t&#x11b; ne &#xfa;pln&#x11b; dod&#x11b;lan&#xe9; ;)" ID="ID_143944470" CREATED="1475998945912" MODIFIED="1475998953603"/>
</node>
<node TEXT="HTML templating" ID="ID_1603107271" CREATED="1475998956769" MODIFIED="1475998966019">
<node TEXT="metody h2, p" ID="ID_456903" CREATED="1475999001008" MODIFIED="1475999005581"/>
<node TEXT="h2(&quot;Welcome to Kara&quot;)" ID="ID_1023780837" CREATED="1475999061204" MODIFIED="1475999069678"/>
</node>
<node TEXT="CSS templating" ID="ID_1045548893" CREATED="1475999070921" MODIFIED="1475999076517">
<node TEXT="Definice CSS pomoc&#xed; Kotlin API" ID="ID_1165232884" CREATED="1475999220022" MODIFIED="1475999229229"/>
</node>
<node TEXT="Javascript definice" ID="ID_478298407" CREATED="1475999231170" MODIFIED="1475999236603"/>
</node>
<node TEXT="Alternativn&#xed; produkt - Vaadin" ID="ID_1621899674" CREATED="1475999541712" MODIFIED="1475999550617">
<node TEXT="Tam taky v&#xfd;voj&#xe1;&#x159; vol&#xe1; jen Java API pro tvorbu komponent" ID="ID_1012108081" CREATED="1475999551582" MODIFIED="1475999567080"/>
<node TEXT="Z komponent se skl&#xe1;d&#xe1; view" ID="ID_1642135592" CREATED="1475999567567" MODIFIED="1475999577605"/>
</node>
</node>
<node TEXT="Jakub Ko&#x10d;&#xed; - ClojureScript" ID="ID_1004210291" CREATED="1475999580254" MODIFIED="1476006871915">
<node TEXT="Budgetbakers" ID="ID_235193837" CREATED="1475999591287" MODIFIED="1475999595853"/>
<node TEXT="ClojureScript" ID="ID_1172358427" CREATED="1476000403895" MODIFIED="1476000408512">
<node TEXT="Subset clojure, jen nap&#x159;. neobsahuje pr&#xe1;ci s vl&#xe1;kny (proto&#x17e;e to nen&#xed; v JS pot&#x159;eba)" ID="ID_731984626" CREATED="1476000409450" MODIFIED="1476000440120"/>
</node>
<node TEXT="Co je ClojureScript?" ID="ID_160956856" CREATED="1475999629028" MODIFIED="1475999634345">
<node TEXT="Funkcion&#xe1;ln&#xed; jazyk zalo&#x17e;en&#xfd; na Lispu" ID="ID_1132605255" CREATED="1475999634782" MODIFIED="1475999641495"/>
<node TEXT="Hostovan&#xfd;, b&#x11b;&#x17e;&#xed; v JVM, nebo .NET" ID="ID_1318455504" CREATED="1475999645743" MODIFIED="1475999655359"/>
</node>
<node TEXT="Syntaxe" ID="ID_284821689" CREATED="1475999736884" MODIFIED="1475999739818">
<node TEXT="Lze p&#x159;istupovat k js objekt&#x16f;m" ID="ID_1082592438" CREATED="1475999743687" MODIFIED="1475999754364">
<node TEXT=".log js/console &quot;Hello world&quot;" ID="ID_1423368879" CREATED="1475999754837" MODIFIED="1475999764547"/>
</node>
</node>
<node TEXT="Vlastnosti" ID="ID_1225892461" CREATED="1475999774784" MODIFIED="1475999779818">
<node TEXT="Funkce pro p&#x159;evod z/do JSON" ID="ID_1782679323" CREATED="1475999780670" MODIFIED="1475999796608"/>
<node TEXT="P&#x159;&#xed;stup k DOM objekt&#x16f;m" ID="ID_733177967" CREATED="1475999797275" MODIFIED="1475999801318"/>
<node TEXT="Metoda POST" ID="ID_698706084" CREATED="1475999936875" MODIFIED="1475999944424">
<node TEXT="errorHandler" ID="ID_894726040" CREATED="1475999945354" MODIFIED="1475999949126"/>
<node TEXT="parametry" ID="ID_1725925174" CREATED="1475999949665" MODIFIED="1475999953361"/>
<node TEXT="..." ID="ID_254899484" CREATED="1475999953592" MODIFIED="1475999954455"/>
</node>
<node TEXT="Obsahuje Google closure library" ID="ID_421722880" CREATED="1475999962997" MODIFIED="1475999975941">
<node TEXT="Nad t&#xed;m b&#x11b;&#x17e;&#xed; gmail, google maps, ..." ID="ID_529749750" CREATED="1475999976455" MODIFIED="1475999984767"/>
<node TEXT="pou&#x17e;&#xed;v&#xe1;  google closure compiler" ID="ID_1166906080" CREATED="1475999997547" MODIFIED="1476000005326"/>
</node>
<node TEXT="Nen&#xed; nutn&#xe9; ps&#xe1;t HTML ani CSS" ID="ID_156583217" CREATED="1476000010416" MODIFIED="1476000017718"/>
<node TEXT="Immutable data" ID="ID_623183484" CREATED="1476000018135" MODIFIED="1476000021348"/>
</node>
<node TEXT="Roz&#x161;&#xed;&#x159;en&#xed;" ID="ID_51528828" CREATED="1476000122910" MODIFIED="1476000128282">
<node TEXT="Figwheel" ID="ID_1548173211" CREATED="1476000096783" MODIFIED="1476000100742">
<node TEXT="Plugin, vygenerov&#xe1;n&#xed; kostry projektu" ID="ID_1706994775" CREATED="1476000101666" MODIFIED="1476000111462"/>
<node TEXT="Hot-reload (d&#xed;ky Figwheel)" ID="ID_59843904" CREATED="1476000021762" MODIFIED="1476000037635"/>
</node>
<node TEXT="Material.UI" ID="ID_334970626" CREATED="1476000138146" MODIFIED="1476000143639"/>
<node TEXT="Om Next" ID="ID_530935859" CREATED="1476000177376" MODIFIED="1476000183083">
<node TEXT="Obdoba GraphQL" ID="ID_1045190179" CREATED="1476000198820" MODIFIED="1476000207037"/>
</node>
</node>
<node TEXT="Knihovny" ID="ID_173235896" CREATED="1475999805832" MODIFIED="1475999808653">
<node TEXT="Reagent" ID="ID_1679585628" CREATED="1475999808986" MODIFIED="1475999813302">
<node TEXT="Obdoba reactu, vnit&#x159;n&#x11b; ho pou&#x17e;&#xed;v&#xe1;" ID="ID_643228693" CREATED="1475999846186" MODIFIED="1475999853780"/>
</node>
<node TEXT="Reframe" ID="ID_620525805" CREATED="1475999817665" MODIFIED="1475999819844">
<node TEXT="Funkce na registr, tah&#xe1;n&#xed; informac&#xed; ze stavu" ID="ID_883328639" CREATED="1475999821751" MODIFIED="1475999832969"/>
<node TEXT="Obdoba redux" ID="ID_950207958" CREATED="1475999857487" MODIFIED="1475999859791"/>
<node TEXT="HTML lze ps&#xe1;t ve vektorech" ID="ID_1654462267" CREATED="1475999870839" MODIFIED="1475999875403"/>
</node>
</node>
<node TEXT="React Native" ID="ID_1069736891" CREATED="1476000154506" MODIFIED="1476000158168">
<node TEXT="Psan&#xed; mobiln&#xed;ch aplikac&#xed; pomoc&#xed; ClojureScript" ID="ID_465609070" CREATED="1476000159485" MODIFIED="1476000168286"/>
</node>
<node TEXT="Probl&#xe9;my" ID="ID_493495537" CREATED="1476000268352" MODIFIED="1476000270494">
<node TEXT="Kryptick&#xe9; chybov&#xe9; hl&#xe1;&#x161;ky, proto&#x17e;e jde o kompilovan&#xfd; JS" ID="ID_1301542160" CREATED="1476000271257" MODIFIED="1476000283902"/>
</node>
<node TEXT="P&#x159;edn&#xe1;&#x161;ka: Darek Slager - Closure for sceptics" ID="ID_1121622121" CREATED="1476000295499" MODIFIED="1476000309235"/>
</node>
<node TEXT="Petr Hamern&#xed;k - Textov&#xe1; analytika a jej&#xed; aplikace" ID="ID_1468920778" CREATED="1476000451938" MODIFIED="1476006871918">
<node TEXT="NLP - natural language processing" ID="ID_1415213625" CREATED="1476000745607" MODIFIED="1476000750918">
<node TEXT="Extrakce informac&#xed; z textu" ID="ID_806319935" CREATED="1476000756328" MODIFIED="1476000761759">
<node TEXT="Relace mezi lidmi" ID="ID_1615113534" CREATED="1476000897860" MODIFIED="1476000901760"/>
<node TEXT="P&#x159;&#xed;vlastky" ID="ID_303847760" CREATED="1476000902043" MODIFIED="1476000905469"/>
<node TEXT="Rozd&#x11b;len&#xed; dokumentu do kategori&#xed;" ID="ID_585492130" CREATED="1476000905704" MODIFIED="1476000912946"/>
<node TEXT="Anal&#xfd;za sentimentu pisatele" ID="ID_558407638" CREATED="1476000913520" MODIFIED="1476000964367">
<node TEXT="Na&#x161;tvanost" ID="ID_128444152" CREATED="1476000920181" MODIFIED="1476000923751"/>
<node TEXT="Spokojenost" ID="ID_1503289115" CREATED="1476000924735" MODIFIED="1476000927833"/>
<node TEXT="N&#xe1;lada" ID="ID_1137455747" CREATED="1476000932134" MODIFIED="1476000933724"/>
</node>
</node>
<node TEXT="Dal&#x161;&#xed; discipl&#xed;ny" ID="ID_503056996" CREATED="1476000761950" MODIFIED="1476000771127">
<node TEXT="Porovn&#xe1;v&#xe1;n&#xed; dokument&#x16f;" ID="ID_834041779" CREATED="1476001107378" MODIFIED="1476001114347"/>
<node TEXT="Korekce text&#x16f;" ID="ID_267361621" CREATED="1476001115405" MODIFIED="1476001121141"/>
<node TEXT="Chatbots" ID="ID_1938508926" CREATED="1476001121512" MODIFIED="1476001124576"/>
</node>
<node TEXT="Probl&#xe9;m k &#x159;e&#x161;en&#xed;" ID="ID_1118376335" CREATED="1476001181136" MODIFIED="1476001184483">
<node TEXT="Poznat kde za&#x10d;&#xed;n&#xe1; a kon&#x10d;&#xed; v&#x11b;ta." ID="ID_1546218849" CREATED="1476001185521" MODIFIED="1476001191908"/>
<node TEXT="Tokenizace - rozd&#x11b;len&#xed; v&#x11b;ty do &#x10d;&#xe1;st&#xed;" ID="ID_468416986" CREATED="1476001193586" MODIFIED="1476001208948">
<node TEXT="B&#xfd;t konzistentn&#xed;" ID="ID_36022418" CREATED="1476001311059" MODIFIED="1476001317701"/>
</node>
<node TEXT="Lemmatization" ID="ID_1924111455" CREATED="1476001213573" MODIFIED="1476001217447">
<node TEXT="P&#x159;ev&#xe9;st slova v r&#x16f;zn&#xfd;ch tvarech na tvar ve slovn&#xed;ku" ID="ID_630131478" CREATED="1476001218479" MODIFIED="1476001237599"/>
<node TEXT="Seda&#x10d;ek -&gt; Seda&#x10d;ka" ID="ID_253876090" CREATED="1476001319247" MODIFIED="1476001337631"/>
<node TEXT="Z&#xe1;pory nezdrav&#xfd; = NOT(zdrav&#xfd;)" ID="ID_1176997505" CREATED="1476001338057" MODIFIED="1476001352249"/>
</node>
<node TEXT="Rozpozn&#xe1;v&#xe1;n&#xed; (extrakce) entity" ID="ID_325668534" CREATED="1476001381303" MODIFIED="1476001629345">
<node TEXT="Gymn&#xe1;zium Gregora Tajovsk&#xe9;ho - nen&#xed; o Gregoru tajovsk&#xe9;m" ID="ID_1581170676" CREATED="1476001388041" MODIFIED="1476001411151"/>
</node>
<node TEXT="Koreference" ID="ID_1795965467" CREATED="1476001431506" MODIFIED="1476001441081">
<node TEXT="On je pot&#x159;eba spojit s v&#xfd;skytem Milo&#x161; Zeman v p&#x159;edchoz&#xed;m textu" ID="ID_1268814706" CREATED="1476001441602" MODIFIED="1476001463032"/>
</node>
<node TEXT="&quot;&#x17d;enu hol&#xed; stroj&quot;" ID="ID_1795950622" CREATED="1476001642202" MODIFIED="1476001648468"/>
</node>
</node>
<node TEXT="NLG - opa&#x10d;n&#xfd; proces" ID="ID_1908413705" CREATED="1476001129272" MODIFIED="1476001135519">
<node TEXT="Strukturovan&#xe1; data -&gt; Text" ID="ID_1193509720" CREATED="1476001136228" MODIFIED="1476001144184"/>
<node TEXT="Nap&#x159;. z ud&#xe1;lost&#xed; b&#x11b;hem z&#xe1;pasu vygeneruje &#x10d;l&#xe1;nek." ID="ID_353849336" CREATED="1476001145930" MODIFIED="1476001165597"/>
</node>
<node TEXT="Analyz&#xe1;tor Geneea" ID="ID_160826293" CREATED="1476000778594" MODIFIED="1476000786965">
<node TEXT="Copy paste text" ID="ID_1733687207" CREATED="1476000791001" MODIFIED="1476000795217"/>
<node TEXT="Najde keywordy, datumy, osoby" ID="ID_245487225" CREATED="1476000795487" MODIFIED="1476000849493"/>
<node TEXT="Lze proklepnout &#x10d;lov&#x11b;k vyfiltrov&#xe1;n&#xed;m &#x10d;l&#xe1;nk&#x16f;" ID="ID_272458929" CREATED="1476000853426" MODIFIED="1476000863795">
<node TEXT="Vid&#xed;m, s jak&#xfd;mi lidmi se o n&#x11b;m p&#xed;&#x161;e" ID="ID_282104110" CREATED="1476000865849" MODIFIED="1476000874954"/>
</node>
</node>
<node TEXT="Geneea Droid" ID="ID_1389529053" CREATED="1476000985085" MODIFIED="1476001083237">
<node TEXT="Zad&#xe1;m v&#x11b;tu a n&#x11b;co to vr&#xe1;t&#xed;" ID="ID_232985380" CREATED="1476001097045" MODIFIED="1476001102815"/>
</node>
<node TEXT="Rest API" ID="ID_537983352" CREATED="1476001084090" MODIFIED="1476001087075">
<node TEXT="api.geneea.com" ID="ID_357872712" CREATED="1476001087520" MODIFIED="1476001095209"/>
</node>
<node TEXT="Knihovny" ID="ID_1915412713" CREATED="1476001556282" MODIFIED="1476001560063">
<node TEXT="OpenLP" ID="ID_1294817512" CREATED="1476001571053" MODIFIED="1476001574209">
<node TEXT="Nen&#xed; dobr&#xe1;" ID="ID_1494889806" CREATED="1476001578277" MODIFIED="1476001580997"/>
</node>
<node TEXT="V produkci nepou&#x17e;&#xed;v&#xe1;me neuronov&#xe9; s&#xed;t&#x11b;" ID="ID_464796395" CREATED="1476001598652" MODIFIED="1476001607961"/>
</node>
</node>
<node TEXT="Radim Kubacki - Big Data" ID="ID_755698296" CREATED="1476000581976" MODIFIED="1476006871922">
<node TEXT="Hadoop" ID="ID_861694636" CREATED="1476003402987" MODIFIED="1476003414125">
<node TEXT="Best practices" ID="ID_347319884" CREATED="1476003415854" MODIFIED="1476003420519">
<node TEXT="Columnar storage format" ID="ID_1773993727" CREATED="1476003424796" MODIFIED="1476003430770">
<node TEXT="Parquet, ORC" ID="ID_787896485" CREATED="1476003431220" MODIFIED="1476003436674"/>
<node TEXT="Differs from relational DB" ID="ID_359232901" CREATED="1476003513892" MODIFIED="1476003639566">
<node TEXT="Relational DB stores into rows, speed up using indices" ID="ID_1440952582" CREATED="1476003474116" MODIFIED="1476003494442"/>
<node TEXT="Must read whole row" ID="ID_1523033705" CREATED="1476003641215" MODIFIED="1476003645627"/>
</node>
<node TEXT="How it works" ID="ID_1929598300" CREATED="1476003530728" MODIFIED="1476003533705">
<node TEXT="Divide data into blocks" ID="ID_266132464" CREATED="1476003534586" MODIFIED="1476003539342"/>
<node TEXT="Save data per columns" ID="ID_885529321" CREATED="1476003539613" MODIFIED="1476003552174"/>
</node>
<node TEXT="+" ID="ID_1508307609" CREATED="1476003555334" MODIFIED="1476003556849">
<node TEXT="Great ZIP ratio of the data" ID="ID_1635880090" CREATED="1476003558376" MODIFIED="1476003581148"/>
<node TEXT="I can read only those columns, that I am interested in" ID="ID_802806666" CREATED="1476003605289" MODIFIED="1476003615183"/>
<node TEXT="Because of timestamps, I can skip time non-relevant data" ID="ID_485231100" CREATED="1476003660234" MODIFIED="1476003677427"/>
</node>
<node TEXT="-" ID="ID_432784329" CREATED="1476003582667" MODIFIED="1476003583897">
<node TEXT="High load when uncompressing the data" ID="ID_1743050504" CREATED="1476003592647" MODIFIED="1476003599650"/>
</node>
</node>
<node TEXT="MRv1 -&gt; YARN" ID="ID_832278408" CREATED="1476003444898" MODIFIED="1476003457373">
<node TEXT="YARN has better scheduler than MapReduce" ID="ID_243260774" CREATED="1476003687524" MODIFIED="1476003696113"/>
<node TEXT="Better throughput" ID="ID_96056201" CREATED="1476003718275" MODIFIED="1476003726788"/>
</node>
</node>
<node TEXT="Long, sequential read from FS" ID="ID_1998786023" CREATED="1476003498147" MODIFIED="1476003505836"/>
</node>
<node TEXT="Spark + Parquet lessons" ID="ID_342356092" CREATED="1476003765000" MODIFIED="1476003781221">
<node TEXT="Preemptive killing + Spark 1.5 = collapse" ID="ID_569350553" CREATED="1476003787998" MODIFIED="1476003811208">
<node TEXT="Fixed in 1.6" ID="ID_869749172" CREATED="1476003823255" MODIFIED="1476003827415"/>
</node>
<node TEXT="Reduce output size: partition by userId, sort by timestamp" ID="ID_1587738745" CREATED="1476003952204" MODIFIED="1476003973121"/>
<node TEXT="Even if job takes longer time, it may actually be cheaper to execute on cloud (regarding CPU time)" ID="ID_1669230680" CREATED="1476004184546" MODIFIED="1476004209884"/>
<node TEXT="Java/Python/Scala - what to choose?" ID="ID_1616742823" CREATED="1476004211306" MODIFIED="1476004226760">
<node TEXT="Python great for prototyping" ID="ID_606260511" CREATED="1476004229847" MODIFIED="1476004235516">
<node TEXT="Python notebooks - creates spark context, in interactive mode" ID="ID_26604222" CREATED="1476004237015" MODIFIED="1476004251923"/>
<node TEXT="Bad for production" ID="ID_356396345" CREATED="1476004253704" MODIFIED="1476004263260">
<node TEXT="On boundary between Python &amp; Spark - must be converted into Scala structures" ID="ID_1782683680" CREATED="1476004267275" MODIFIED="1476004294379"/>
<node TEXT="This is expensive" ID="ID_74808234" CREATED="1476004296488" MODIFIED="1476004303488"/>
</node>
</node>
<node TEXT="Real (production) implementation in Scala or Java" ID="ID_877725015" CREATED="1476004305843" MODIFIED="1476004319454"/>
</node>
</node>
</node>
<node TEXT="Petr Fleishman - GraphQL rest API 2.0" ID="ID_1630051499" CREATED="1476000592224" MODIFIED="1476006871926">
<node TEXT="GraphQL" ID="ID_1592103567" CREATED="1476002301699" MODIFIED="1476002305381">
<node TEXT="Standard od FB" ID="ID_1648750825" CREATED="1476002532725" MODIFIED="1476002536415"/>
<node TEXT="&#x159;e&#x161;&#xed; probl&#xe9;m, &#x17e;e" ID="ID_721850870" CREATED="1476002306615" MODIFIED="1476002315394">
<node TEXT="Chceme minimalizovat latency dotaz&#x16f; = po&#x10d;et dotaz&#x16f; na data na serveru" ID="ID_1308319884" CREATED="1476002316362" MODIFIED="1476002327736">
<node TEXT="hlavn&#x11b; pro single-page aplikace" ID="ID_1945795266" CREATED="1476002498844" MODIFIED="1476002510843"/>
</node>
<node TEXT="Pot&#x159;ebujeme seskupit v&#xed;ce dotaz&#x16f; do jednoho" ID="ID_1603114516" CREATED="1476002328250" MODIFIED="1476002346467">
<node TEXT="V restu se to &#x159;e&#x161;&#xed; pomoc&#xed; multi-get request&#x16f;" ID="ID_1851333208" CREATED="1476002484061" MODIFIED="1476002491748"/>
</node>
<node TEXT="Pot&#x159;ebujeme stanovit, jak&#xe1; data ze serveru pot&#x159;ebujeme" ID="ID_381455536" CREATED="1476002346711" MODIFIED="1476002355367"/>
</node>
<node TEXT="V dotazu definujeme, co se m&#xe1; vr&#xe1;tit" ID="ID_1184933563" CREATED="1476002357607" MODIFIED="1476002365459">
<node TEXT="Ze serveru se vr&#xe1;t&#xed; jenom ta data, kter&#xe1; zad&#xe1;me v dotazu" ID="ID_1378514870" CREATED="1476002366384" MODIFIED="1476002384214"/>
<node TEXT="user(id: 22524) {&#xa;  name,&#xa;  friends {id, name}&#xa;}" ID="ID_92250346" CREATED="1476002435452" MODIFIED="1476002467245"/>
</node>
<node TEXT="Pom&#xe1;h&#xe1; udr&#x17e;ovat zp&#x11b;tnou kompatibility" ID="ID_1094135727" CREATED="1476002393105" MODIFIED="1476002407989"/>
</node>
<node TEXT="Knihovna Rellay (?) od FB" ID="ID_1088040685" CREATED="1476002538844" MODIFIED="1476002637305">
<node TEXT="Ka&#x17e;d&#xe1; komponenta si &#x159;ekne, jak&#xe1; data pot&#x159;ebuje" ID="ID_1943387673" CREATED="1476002601139" MODIFIED="1476002608788"/>
<node TEXT="Po&#x17e;adavky se posb&#xed;raj&#xed;, a po&#x161;lou jako jeden request na server" ID="ID_1618924920" CREATED="1476002618979" MODIFIED="1476002631091"/>
</node>
<node TEXT="Dataloader od FB" ID="ID_1053657659" CREATED="1476002689302" MODIFIED="1476002694566">
<node TEXT="Vyu&#x17e;&#xed;v&#xe1; eventloop a asynchronicity JS" ID="ID_499686922" CREATED="1476002697235" MODIFIED="1476002706797"/>
<node TEXT="Sb&#xed;r&#xe1; si requesty na server dat, ale hned je neprov&#xe1;d&#xed;" ID="ID_1490313710" CREATED="1476002711696" MODIFIED="1476002730163"/>
<node TEXT="Jednou za &#x10d;as je po&#x161;le jako multirequest na server" ID="ID_1176632529" CREATED="1476002730545" MODIFIED="1476002744282"/>
</node>
<node TEXT="GraphQL.js" ID="ID_1235019607" CREATED="1476002649484" MODIFIED="1476002654052">
<node TEXT="Pro node.js" ID="ID_1590762443" CREATED="1476002654774" MODIFIED="1476002658879"/>
</node>
<node TEXT="Component" ID="ID_1516058130" CREATED="1476002556202" MODIFIED="1476002563223"/>
</node>
</node>
<node TEXT="Workshops" POSITION="left" ID="ID_836852457" CREATED="1476006875728" MODIFIED="1476006881658">
<edge COLOR="#ff00ff"/>
<node TEXT="Peter Cipov - Funkcion&#xe1;ln&#xed; programov&#xe1;n&#xed;" ID="ID_817495241" CREATED="1476006884525" MODIFIED="1476009604211">
<node TEXT="Samotn&#xe1; hodnota se nem&#x11b;n&#xed;" ID="ID_1428781425" CREATED="1476006901793" MODIFIED="1476006906529"/>
<node TEXT="Prom&#x11b;nn&#xe1; nab&#xfd;v&#xe1; stavu" ID="ID_410492157" CREATED="1476006908203" MODIFIED="1476006913237"/>
<node TEXT="Operace p&#x159;i&#x159;azen&#xed; (=) je neobl&#xed;ben&#xe1;" ID="ID_480181618" CREATED="1476006940037" MODIFIED="1476006949840"/>
<node TEXT="Identita" ID="ID_951578126" CREATED="1476006957369" MODIFIED="1476006959448">
<node TEXT="M&#x11b;li by zm&#x11b;nit stav na jinou hodnotu, jenom je-li to nezbytn&#xe9;" ID="ID_531064037" CREATED="1476006963146" MODIFIED="1476006978780">
<node TEXT="Kdy&#x17e; u&#x17e; se to d&#x11b;l&#xe1;, tak v bloku dosync" ID="ID_907126637" CREATED="1476007215853" MODIFIED="1476007228174">
<node TEXT="dosync chr&#xe1;n&#xed; p&#x159;ed ur&#x10d;it&#xfd;m typem chyb" ID="ID_279155929" CREATED="1476007230344" MODIFIED="1476007239239"/>
</node>
</node>
<node TEXT="nap&#x159;. kdy&#x17e; p&#x159;id&#xe1;me hodnotu do pole, zkop&#xed;ruje se pole a vytvo&#x159;&#xed; nov&#xe9; s count+1" ID="ID_1944629423" CREATED="1476006983893" MODIFIED="1476007006966"/>
</node>
<node TEXT="pure funkce" ID="ID_1726698263" CREATED="1476007013585" MODIFIED="1476007019590">
<node TEXT="Funkce m&#xe1; vstup a v&#xfd;stup" ID="ID_1503182496" CREATED="1476007022870" MODIFIED="1476007041493"/>
<node TEXT="Je mo&#x17e;n&#xe9; je paralelizovat" ID="ID_1550843293" CREATED="1476007051804" MODIFIED="1476007056210"/>
<node TEXT="V ka&#x17e;d&#xe9;m &#x10d;ase vrac&#xed; stejn&#xfd; v&#xfd;stup pro dan&#xfd; vstup" ID="ID_962902637" CREATED="1476007056574" MODIFIED="1476007101757"/>
<node TEXT="maj&#xed; vlastnost idenpotence" ID="ID_1313976009" CREATED="1476007120764" MODIFIED="1476007130596"/>
<node TEXT="p&#x159;&#xed;klad nepure funkce" ID="ID_320570004" CREATED="1476007145976" MODIFIED="1476007150567">
<node TEXT="zap&#xed;&#x161;e do logu/console" ID="ID_468681119" CREATED="1476007151516" MODIFIED="1476007158951"/>
</node>
</node>
<node TEXT="Pro&#x10d;?" ID="ID_418703308" CREATED="1476007394311" MODIFIED="1476007399953">
<node TEXT="Asynchronn&#xed; programov&#xe1;n&#xed; je jedin&#xfd; zn&#xe1;m&#xfd; zp&#x16f;sob, jak &#x161;k&#xe1;lovat na v&#xed;ce jadern&#xfd;ch procesorech." ID="ID_1459216650" CREATED="1476007402172" MODIFIED="1476007438447"/>
</node>
<node TEXT="Callback hell" ID="ID_1187711728" CREATED="1476007577395" MODIFIED="1476007582346">
<node TEXT="Asynchronn&#xed; prg, kter&#xe9; pou&#x17e;&#xed;v&#xe1; callbacks, nen&#xed; intuitivn&#x11b; pochopiteln&#xe9;" ID="ID_100693318" CREATED="1476007586243" MODIFIED="1476007612562"/>
<node TEXT="Jak &#x159;e&#x161;&#xed; Javascript callback hell?" ID="ID_382796522" CREATED="1476007548903" MODIFIED="1476007555638">
<node TEXT="Promise" ID="ID_1547499121" CREATED="1476007556816" MODIFIED="1476007558762"/>
<node TEXT="Async" ID="ID_1839901592" CREATED="1476007559041" MODIFIED="1476007563550"/>
</node>
<node TEXT="Pou&#x17e;&#xed;v&#xe1;n&#xed; callback&#x16f; navy&#x161;uje komplexicitu v k&#xf3;du" ID="ID_1755772161" CREATED="1476007628590" MODIFIED="1476007660316"/>
</node>
<node TEXT="Observables" ID="ID_1096309045" CREATED="1476007706321" MODIFIED="1476007709246">
<node TEXT="Podlo&#x17e;en&#xe9; matematickou teori&#xed; mon&#xe1;d" ID="ID_1095039401" CREATED="1476007709745" MODIFIED="1476007719738"/>
<node TEXT="Mon&#xe1;d" ID="ID_634665879" CREATED="1476007727555" MODIFIED="1476007730281">
<node TEXT="Mus&#xed; m&#xed;t identity funkci" ID="ID_1977810001" CREATED="1476007731220" MODIFIED="1476007736371">
<node TEXT="Obdoba Arrays.asList" ID="ID_878026415" CREATED="1476007743769" MODIFIED="1476007748365"/>
<node TEXT="Str&#x10d;&#xed;me do funkce prvek, a vr&#xe1;t&#xed; se Observable dan&#xe9;ho prvku" ID="ID_1140839957" CREATED="1476007749035" MODIFIED="1476007767360"/>
</node>
<node TEXT="Mus&#xed;me m&#xed;t funkci (flatmap), kter&#xe1; pracuje nad observable, a vrac&#xed; n&#xe1;m jin&#xfd; observable" ID="ID_1327153512" CREATED="1476007770895" MODIFIED="1476007822045"/>
<node TEXT="Slou&#x17e;&#xed; pro z&#x159;et&#x11b;zovan&#xe9; asynchronn&#x11b; prov&#xe1;d&#x11b;n&#xe9; transformace" ID="ID_1969636927" CREATED="1476007833492" MODIFIED="1476007846744">
<node TEXT="Metafora/analogie trubek" ID="ID_1036740255" CREATED="1476008001948" MODIFIED="1476008067583">
<node TEXT="N&#x11b;kde je zdroj dat - do trubky te&#x10d;e voda" ID="ID_730258153" CREATED="1476008010825" MODIFIED="1476008024124"/>
<node TEXT="Po cest&#x11b; se voda val&#xed; trubkama" ID="ID_1539273520" CREATED="1476008024793" MODIFIED="1476008032529"/>
<node TEXT="Voda se r&#x16f;zn&#x11b; transformuje p&#x159;i pr&#x16f;chodu trubkama" ID="ID_1128788765" CREATED="1476008032957" MODIFIED="1476008057294"/>
</node>
</node>
</node>
<node TEXT="API observable" ID="ID_258569480" CREATED="1476007866854" MODIFIED="1476007872613">
<node TEXT="subscribe()" ID="ID_1548926373" CREATED="1476007875310" MODIFIED="1476007880540"/>
<node TEXT="onNext()" ID="ID_930659632" CREATED="1476007886566" MODIFIED="1476007892978"/>
<node TEXT="onNext()" ID="ID_978931851" CREATED="1476007886566" MODIFIED="1476007892978"/>
<node TEXT="onCompleted()" ID="ID_134391120" CREATED="1476007900832" MODIFIED="1476007906141"/>
</node>
<node TEXT="Dal&#x161;&#xed; mo&#x17e;nosti" ID="ID_1131078609" CREATED="1476008093968" MODIFIED="1476008099994">
<node TEXT="Throttling" ID="ID_11658102" CREATED="1476008101264" MODIFIED="1476008107164">
<node TEXT="&#x160;krt&#xed;c&#xed; kohout na trubce" ID="ID_1541821439" CREATED="1476008108336" MODIFIED="1476008116710"/>
</node>
</node>
<node TEXT="Obdoba iter&#xe1;toru, ale asynchronn&#x11b; se vol&#xe1; onNext() z observable" ID="ID_503406818" CREATED="1476007924052" MODIFIED="1476007939973"/>
</node>
<node TEXT="JS Knihovna reactiveX" ID="ID_1785498562" CREATED="1476008345938" MODIFIED="1476008354140">
<node TEXT="Interval Observable" ID="ID_883585730" CREATED="1476008380117" MODIFIED="1476008385705">
<node TEXT="Po&#x161;le ka&#x17e;d&#xfd;ch x millis. po&#x161;le &#x10d;&#xed;slo" ID="ID_1155595335" CREATED="1476008387118" MODIFIED="1476008395142"/>
<node TEXT="k n&#x11b;mu se subscribnu" ID="ID_1510294539" CREATED="1476008402177" MODIFIED="1476008410047"/>
<node TEXT="ReactX.interval(...).subscribe(new function() {})" ID="ID_996186585" CREATED="1476008603773" MODIFIED="1476008626026"/>
</node>
<node TEXT="subject" ID="ID_1412785061" CREATED="1476008772132" MODIFIED="1476008774742">
<node TEXT="podobn&#xe9; jako observable, ale lze na n&#x11b;m volat onNext()" ID="ID_1553725829" CREATED="1476008779985" MODIFIED="1476008793193"/>
</node>
</node>
</node>
<node TEXT="Maryna - Testovac&#xed; heuristika v agiln&#xed;m v&#xfd;voji" ID="ID_430886312" CREATED="1476014095816" MODIFIED="1476014128785">
<node TEXT="Maryna - facilit&#xe1;tor" ID="ID_446373603" CREATED="1476014130195" MODIFIED="1476014137437"/>
<node TEXT="Martin - story owner" ID="ID_26605536" CREATED="1476014137780" MODIFIED="1476014143128"/>
<node TEXT="Brainstorming" ID="ID_1300634637" CREATED="1476014394269" MODIFIED="1476014401940">
<node TEXT="Krok 1 - uv&#x11b;domit si, co chceme testovat" ID="ID_838827663" CREATED="1476015150476" MODIFIED="1476015159160">
<node TEXT="Jede se podle heuristik" ID="ID_510235240" CREATED="1476014758500" MODIFIED="1476014762944"/>
<node TEXT="Heuristika" ID="ID_821752914" CREATED="1476014763141" MODIFIED="1476014766573">
<node TEXT="Nightmare scenario - s t&#xed;m se za&#x10d;ne" ID="ID_886225525" CREATED="1476014403085" MODIFIED="1476014608052">
<node TEXT="L&#xe9;ka&#x159; se nedozv&#xed; o objedn&#xe1;n&#xed; zv&#xed;&#x159;ete" ID="ID_1103843507" CREATED="1476014688750" MODIFIED="1476014711834">
<node TEXT="Zv&#xed;&#x159;&#xe1;tko zem&#x159;e" ID="ID_289835813" CREATED="1476014713284" MODIFIED="1476014718294"/>
</node>
<node TEXT="Sma&#x17e;e se datab&#xe1;ze" ID="ID_727526102" CREATED="1476014725219" MODIFIED="1476014728728"/>
</node>
<node TEXT="Co story nesm&#xed; nikdy d&#x11b;lat" ID="ID_1298620395" CREATED="1476014775035" MODIFIED="1476014780120"/>
<node TEXT="Co story mus&#xed; v&#x17e;dycky d&#x11b;lat" ID="ID_983194486" CREATED="1476014780561" MODIFIED="1476014789636"/>
<node TEXT="Beggining, middle, end" ID="ID_167549152" CREATED="1476015200973" MODIFIED="1476015205620">
<node TEXT="Bude se chovat OK, kdy&#x17e; se operace provede" ID="ID_740854119" CREATED="1476015256843" MODIFIED="1476015268769">
<node TEXT="Na za&#x10d;&#xe1;tku?" ID="ID_188439373" CREATED="1476015269353" MODIFIED="1476015290321"/>
<node TEXT="V prost&#x159;ed seznamu?" ID="ID_1001600252" CREATED="1476015273347" MODIFIED="1476015286735"/>
<node TEXT="Nakonec seznamu?" ID="ID_975450002" CREATED="1476015278428" MODIFIED="1476015283019"/>
</node>
</node>
<node TEXT="Moc mal&#xe1;/velk&#xe1; heuristika" ID="ID_11632015" CREATED="1476015427258" MODIFIED="1476015436107"/>
<node TEXT="Zero, one, many" ID="ID_1503760137" CREATED="1476015621054" MODIFIED="1476015624744">
<node TEXT="Pro testov&#xe1;n&#xed; multi-choice list&#x16f;" ID="ID_434218280" CREATED="1476015626142" MODIFIED="1476015634182"/>
</node>
<node TEXT="Interrupt" ID="ID_69059642" CREATED="1476016258374" MODIFIED="1476016261379">
<node TEXT="Co kdy&#x17e; se nedokon&#x10d;&#xed;, co se za&#x10d;alo" ID="ID_714178543" CREATED="1476016261880" MODIFIED="1476016268103"/>
</node>
<node TEXT="..." ID="ID_1646592444" CREATED="1476018074288" MODIFIED="1476018076177"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
