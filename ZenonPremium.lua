--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then local v83=0;while true do if (v83==0) then v19=v0(v3(v30,1,1));return "";end end else local v84=v2(v0(v30,16));if v19 then local v92=0;local v93;while true do if (v92==1) then return v93;end if (v92==0) then v93=v5(v84,v19);v19=nil;v92=1;end end else return v84;end end end);local function v20(v31,v32,v33) if v33 then local v85=0 -0 ;local v86;while true do if (v85==(0 -0)) then v86=(v31/(2^(v32-1)))%((3 -1)^(((v33-(2 -1)) -(v32-(620 -(555 + (91 -27))))) + (932 -(857 + 74)))) ;return v86-(v86%(569 -(367 + 201))) ;end end else local v87=927 -(214 + 713) ;local v88;while true do if (v87==((1065 -(68 + 997)) + 0)) then v88=(1 + 1)^(v32-(878 -(282 + 595))) ;return (((v31%(v88 + v88))>=v88) and (1638 -(1523 + (1384 -(226 + 1044))))) or (0 + 0) ;end end end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + (8 -6) );v18=v18 + (119 -(32 + 85)) ;return (v36 * (251 + 5)) + v35 ;end local function v23() local v37=0;local v38;local v39;local v40;local v41;while true do if (v37==(1 + 0)) then return (v41 * (16778173 -(655 + 237 + (159 -94)))) + (v40 * 65536) + (v39 * (610 -354)) + v38 ;end if (v37==((0 + 0) -0)) then v38,v39,v40,v41=v1(v16,v18,v18 + (4 -1) );v18=v18 + (354 -((345 -258) + 263)) ;v37=181 -(67 + 113) ;end end end local function v24() local v42=952 -(255 + 547 + 150) ;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==(7 -(4 + 0))) then if (v47==(0 -0)) then if (v46==(0 + (772 -(201 + 571)))) then return v48 * ((2135 -(116 + 1022)) -(915 + 82)) ;else v47=1;v45=0 -0 ;end elseif (v47==2047) then return ((v46==(0 + 0)) and (v48 * ((1 -0)/(1187 -(1069 + 118))))) or (v48 * NaN) ;end return v8(v48,v47-(2320 -1297) ) * (v45 + (v46/((3 -1)^((41 -31) + 25 + 17)))) ;end if (v42==((10 -7) -1)) then v47=v20(v44,21,31 + 0 );v48=((v20(v44,823 -(368 + 423) )==((10 -7) -2)) and  -1) or (19 -(10 + 8)) ;v42=11 -(867 -(814 + 45)) ;end if (v42==(443 -((1024 -608) + 26))) then v45=3 -2 ;v46=(v20(v44,1 + 0 ,35 -(1 + 14) ) * (2^(470 -(145 + 293)))) + v43 ;v42=2;end if (v42==(430 -(44 + 386))) then v43=v23();v44=v23();v42=1487 -(998 + 488) ;end end end local function v25(v49) local v50;if  not v49 then local v89=0 + 0 ;while true do if (v89==(1423 -(630 + 793))) then v49=v23();if (v49==((0 -0) -0)) then return "";end break;end end end v50=v3(v16,v18,(v18 + v49) -(886 -(261 + 624)) );v18=v18 + v49 ;local v51={};for v66=1 -0 , #v50 do v51[v66]=v2(v1(v3(v50,v66,v66)));end return v6(v51);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return 0;end)();local v53=(function() return;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();local v59=(function() return;end)();while true do local v68=(function() return 0;end)();while true do if (v68==(867 -(550 + 317))) then if (v52==(0 -0)) then local v100=(function() return 0 -0 ;end)();local v101=(function() return;end)();while true do if (v100==0) then v101=(function() return 0;end)();while true do if (0~=v101) then else v53=(function() return function(v124,v125,v126) local v127=(function() return 0 -0 ;end)();local v128=(function() return;end)();while true do if (v127~=0) then else v128=(function() return 0;end)();while true do if (v128~=(285 -(134 + 151))) then else local v412=(function() return 1665 -(970 + 695) ;end)();while true do if (v412~=(0 -0)) then else v124[v125-#"/" ]=(function() return v126();end)();return v124,v125,v126;end end end end break;end end end;end)();v54=(function() return {};end)();v101=(function() return 1;end)();end if (v101==(1991 -(582 + 1408))) then v55=(function() return {};end)();v56=(function() return {};end)();v101=(function() return 2;end)();end if (v101~=2) then else v52=(function() return 3 -2 ;end)();break;end end break;end end end if (v52==(1 -0)) then v57=(function() return {v54,v55,nil,v56};end)();v58=(function() return v23();end)();v59=(function() return {};end)();for v103= #"|",v58 do local v104=(function() return 1824 -(1195 + 629) ;end)();local v105=(function() return;end)();local v106=(function() return;end)();local v107=(function() return;end)();while true do if (v104~=1) then else v107=(function() return nil;end)();while true do if (v105==0) then local v116=(function() return 0;end)();while true do if ((0 -0)~=v116) then else v106=(function() return v21();end)();v107=(function() return nil;end)();v116=(function() return 1;end)();end if (v116==(242 -(187 + 54))) then v105=(function() return 781 -(162 + 618) ;end)();break;end end end if (v105==1) then if (v106== #"|") then v107=(function() return v21()~=0 ;end)();elseif (v106==(2 + 0)) then v107=(function() return v24();end)();elseif (v106~= #"gha") then else v107=(function() return v25();end)();end v59[v103]=(function() return v107;end)();break;end end break;end if ((0 + 0)==v104) then v105=(function() return 0 -0 ;end)();v106=(function() return nil;end)();v104=(function() return 1 -0 ;end)();end end end v52=(function() return 1 + 1 ;end)();end v68=(function() return 1637 -(1373 + 263) ;end)();end if (v68==1) then if (2==v52) then v57[ #"xxx"]=(function() return v21();end)();for v108= #"|",v23() do local v109=(function() return 0;end)();local v110=(function() return;end)();while true do if (v109==0) then v110=(function() return v21();end)();if (v20(v110, #",", #"\\")==0) then local v112=(function() return 1000 -(451 + 549) ;end)();local v113=(function() return;end)();local v114=(function() return;end)();local v115=(function() return;end)();while true do if (v112~=3) then else if (v20(v114, #"xxx", #"nil")== #"}") then v115[ #"xnxx"]=(function() return v59[v115[ #".dev"]];end)();end v54[v108]=(function() return v115;end)();break;end if ((1 + 0)==v112) then v115=(function() return {v22(),v22(),nil,nil};end)();if (v113==(0 -0)) then local v295=(function() return 1384 -(746 + 638) ;end)();local v296=(function() return;end)();while true do if (v295==(0 + 0)) then v296=(function() return 0;end)();while true do if (v296~=0) then else v115[ #"-19"]=(function() return v22();end)();v115[ #"http"]=(function() return v22();end)();break;end end break;end end elseif (v113== #"[") then v115[ #"xnx"]=(function() return v23();end)();elseif (v113==(2 -0)) then v115[ #"-19"]=(function() return v23() -((343 -(218 + 123))^(1597 -(1535 + 46))) ;end)();elseif (v113== #"xxx") then local v422=(function() return 0 + 0 ;end)();local v423=(function() return;end)();while true do if (v422==0) then v423=(function() return 0;end)();while true do if (v423==(0 + 0)) then v115[ #"gha"]=(function() return v23() -((562 -(306 + 254))^16) ;end)();v115[ #"http"]=(function() return v22();end)();break;end end break;end end end v112=(function() return 2;end)();end if (v112==(1 + 1)) then if (v20(v114, #"<", #":")== #"]") then v115[2]=(function() return v59[v115[3 -1 ]];end)();end if (v20(v114,1469 -(899 + 568) ,2 + 0 )== #"[") then v115[ #"19("]=(function() return v59[v115[ #"19("]];end)();end v112=(function() return 7 -4 ;end)();end if (0~=v112) then else v113=(function() return v20(v110,2, #"-19");end)();v114=(function() return v20(v110, #"asd1",6);end)();v112=(function() return 1;end)();end end end break;end end end for v111= #" ",v23() do v55,v111,v28=(function() return v53(v55,v111,v28);end)();end return v57;end break;end end end end local function v29(v60,v61,v62) local v63=v60[604 -(268 + 335) ];local v64=v60[2 + 0 ];local v65=v60[293 -(60 + 230) ];return function(...) local v69=v63;local v70=v64;local v71=v65;local v72=v27;local v73=573 -(426 + 146) ;local v74= -(1 + 0);local v75={};local v76={...};local v77=v12("#",...) -(1 + 0) ;local v78={};local v79={};for v90=0 -0 ,v77 do if ((233<487) and ((v90>=v71) or (1150==3452))) then v75[v90-v71 ]=v76[v90 + (812 -(569 + 242)) ];else v79[v90]=v76[v90 + (2 -1) ];end end local v80=(v77-v71) + (1773 -(1733 + 39)) ;local v81;local v82;while true do local v91=0 + 0 ;while true do if ((1025 -(706 + 318))==v91) then if ((2473>=201) and (v82<=(1265 -(721 + 530)))) then if (v82<=(1277 -(945 + 326))) then if ((1875<2258) and (v82<=(4 -2))) then if (v82<=(0 -0)) then local v118=0 + 0 ;local v119;local v120;local v121;local v122;local v123;while true do if ((4120>=133) and (v118==(704 -(271 + (522 -(4 + 89)))))) then v81=v69[v73];v123=v81[2 + (0 -0) ];v79[v123](v13(v79,v123 + (1501 -(1408 + 92)) ,v81[1089 -(461 + 625) ]));v73=v73 + 1 + 0 + 0 ;v81=v69[v73];v79[v81[1290 -(993 + 295) ]]=v62[v81[1 + 2 ]];v118=1176 -(418 + 753) ;end if (v118==(3 + 4)) then v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[1 + 1 ]]=v81[13 -10 ]~=(0 + 0 + 0) ;v73=v73 + 1 + 0 ;v81=v69[v73];v123=v81[(2017 -(35 + 1451)) -(406 + (1576 -(28 + 1425))) ];v118=1777 -(1749 + 20) ;end if ((1 + 2)==v118) then v81=v69[v73];v79[v81[1324 -(1249 + 73) ]][v81[2 + 1 ]]=v81[4 + 0 ];v73=v73 + (1146 -((2459 -(941 + 1052)) + 679)) ;v81=v69[v73];v79[v81[4 -(2 + 0) ]][v81[3]]=v81[10 -6 ];v73=v73 + (2 -1) ;v118=1904 -(106 + 1794) ;end if ((3080>=1986) and (1173>41) and (v118==(2 + 3))) then v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[5 -3 ]]=v62[v81[7 -4 ]];v73=v73 + (115 -(4 + 110)) ;v81=v69[v73];v123=v81[586 -(57 + 527) ];v118=1433 -(41 + 1386) ;end if ((v118==(112 -((1531 -(822 + 692)) + 86))) or (1439>3538)) then v123=v81[(2 -0) + 0 + 0 ];v79[v123]=v79[v123](v13(v79,v123 + (1 -0) ,v74));v73=v73 + (2 -1) ;v81=v69[v73];v79[v81[168 -(122 + 44) ]]();v73=v73 + ((298 -(45 + 252)) -0) ;v118=(33 + 0) -23 ;end if (v118==(0 + 0)) then v119=nil;v120,v121=nil;v122=nil;v123=nil;v123=v81[1 + 0 + 1 ];v122=v79[v81[5 -2 ]];v118=66 -(30 + 35) ;end if (v118==(2 + 0)) then v81=v69[v73];v79[v81[8 -6 ]][v81[3]]=v81[8 -4 ];v73=v73 + (1258 -(1043 + 214)) ;v81=v69[v73];v79[v81[7 -5 ]][v81[1215 -((785 -462) + 889) ]]=v81[10 -6 ];v73=v73 + (882 -(614 + 267)) ;v118=583 -(361 + (652 -(114 + 319))) ;end if ((v118==((57 -17) -(19 + 13))) or (419<7)) then v120,v121=v72(v79[v123](v13(v79,v123 + (321 -((67 -14) + 267)) ,v81[1 + 2 ])));v74=(v121 + v123) -(414 -(15 + 398)) ;v119=982 -(18 + 964) ;for v299=v123,v74 do v119=v119 + (3 -(2 + 0)) ;v79[v299]=v120[v119];end v73=v73 + 1 + 0 ;v81=v69[v73];v118=6 + 3 ;end if ((2820==2820) and (v118==6)) then v122=v79[v81[853 -(20 + 830) ]];v79[v123 + (1 -0) + (0 -0) ]=v122;v79[v123]=v122[v81[7 -3 ]];v73=v73 + (127 -((2079 -(556 + 1407)) + 10)) ;v81=v69[v73];v79[v81[1 + 1 ]]=v81[5 -2 ];v118=745 -(542 + 196) ;end if ((v118==(1 -0)) or (56>=3208)) then v79[v123 + 1 + (1206 -(741 + 465)) ]=v122;v79[v123]=v122[v81[3 + 1 ]];v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[4 -2 ]]={};v73=v73 + (2 -1) ;v118=1553 -(1126 + 425) ;end if (v118==10) then v81=v69[v73];v73=v81[(873 -(170 + 295)) -(118 + 287) ];break;end end elseif (v82>(2 -(1 + 0))) then local v130=0;local v131;while true do if (v130==((0 + 0) -0)) then v131=v81[1123 -((290 -172) + 1003) ];v79[v131]=v79[v131](v13(v79,v131 + (2 -1) ,v74));break;end end else local v132;v79[v81[1 + 1 ]][v81[380 -(142 + 235) ]]=v81[18 -14 ];v73=v73 + 1 + 0 ;v81=v69[v73];v132=v81[979 -(553 + 352 + 72) ];v79[v132]=v79[v132](v13(v79,v132 + (1 -0) ,v81[8 -(4 + 1) ]));v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[2 + 0 ]]=v79[v81[3]];v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[2 + 0 + 0 ]]=v81[2 + 1 ];v73=v73 + 1 ;v81=v69[v73];v73=v81[(1232 -(957 + 273)) + 1 ];end elseif (v82<=(1 + 3)) then if ((4313>3373) and (v82>(6 -3))) then v79[v81[2]]={};else local v144=0 -0 ;local v145;local v146;while true do if ((4 -2)==v144) then v146=v81[1 + 0 + 1 ];v79[v146](v13(v79,v146 + (4 -3) ,v81[8 -5 ]));v73=v73 + (754 -(239 + 514)) ;v81=v69[v73];v144=2 + 1 ;end if ((v144==(1335 -(797 + 532))) or (4362<=3527)) then v79[v81[2 + 0 ]][v81[2 + 1 ]]=v81[9 -5 ];v73=v73 + 1 ;v81=v69[v73];v79[v81[1204 -(373 + 829) ]][v81[734 -(476 + 255) ]]=v81[1134 -(369 + 761) ];break;end if ((v144==(2 + 1)) or (4493==2225)) then v146=v81[2 -0 ];v145=v79[v81[5 -2 ]];v79[v146 + 1 + 0 ]=v145;v79[v146]=v145[v81[242 -(64 + 174) ]];v144=1 + 3 ;end if (v144==(1 + 0)) then v81=v69[v73];v79[v81[(1 + 1) -0 ]]=v81[339 -(144 + 192) ];v73=v73 + 1 ;v81=v69[v73];v144=2;end if ((2613<=2680) and (3104>=3092) and ((220 -(42 + 174))==v144)) then v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[2]]={};v73=v73 + 1 + 0 ;v144=3 + 2 ;end if (((3548>3098) and (v144==(1504 -(363 + 1141)))) or (1482>=4288)) then v145=nil;v146=nil;v79[v81[1582 -(1183 + 397) ]]=v81[(30 -22) -5 ];v73=v73 + 1 + 0 ;v144=1 + (0 -0) ;end if ((v144==(1980 -(1913 + 62))) or (3252==503)) then v81=v69[v73];v79[v81[2 + 0 ]][v81[7 -(11 -7) ]]=v81[1937 -(565 + 1368) ];v73=v73 + 1 ;v81=v69[v73];v144=4 + (9 -7) ;end end end elseif (v82>(18 -13)) then for v277=v81[(3443 -(389 + 1391)) -(1477 + 184) ],v81[3 -0 ] do v79[v277]=nil;end else local v147=0 + 0 ;local v148;local v149;while true do if (v147==((539 + 319) -(564 + 292))) then v73=v73 + ((1 + 0) -0) ;v81=v69[v73];v79[v81[669 -(89 + (1315 -737)) ]][v81[8 -5 ]]=v81[308 -(244 + (1011 -(783 + 168))) ];v73=v73 + 1 + 0 ;v81=v69[v73];v149=v81[1051 -((1919 -1347) + 477) ];v147=479 -(41 + 435) ;end if ((0 + 0)==v147) then v148=nil;v149=nil;v79[v81[1003 -(938 + 63) ]]={};v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[1127 -(936 + 189) ]][v81[1 + 2 ]]=v81[3 + 1 ];v147=843 -(497 + 345) ;end if ((4733>2066) and ((1614 -(1565 + 48))==v147)) then v73=v73 + 1 ;v81=v69[v73];v79[v81[2 + 0 + 0 ]][v81[1141 -(782 + 356) ]]=v81[1337 -(605 + 728) ];v73=v73 + (268 -((487 -(309 + 2)) + 91)) ;v81=v69[v73];v79[v81[4 -2 ]][v81[1 + 2 ]]=v81[5 -(2 -1) ];v147=(2306 -(1090 + 122)) -(975 + 38 + 79) ;end if (4==v147) then v149=v81[(6303 -4426) -(157 + 1718) ];v148=v79[v81[3 + 0 ]];v79[v149 + (3 -(2 + 0)) ]=v148;v79[v149]=v148[v81[13 -9 ]];v73=v73 + (1019 -(697 + 321)) ;v81=v69[v73];v147=3 + (1120 -(628 + 490)) ;end if (v147==(7 -4)) then v79[v149]=v79[v149](v13(v79,v149 + (1403 -(832 + 103 + 467)) ,v81[5 -2 ]));v73=v73 + (2 -1) ;v81=v69[v73];v79[v81[1 + 1 ]]=v79[v81[5 -2 ]];v73=v73 + (2 -1) ;v81=v69[v73];v147=2 + 2 ;end if (v147==((3049 -1817) -(322 + 905))) then v79[v81[613 -(602 + (41 -32)) ]]={};v73=v73 + (1190 -(449 + 740)) ;v81=v69[v73];v79[v81[874 -(826 + 46) ]][v81[950 -(245 + 702) ]]=v81[12 -8 ];break;end end end elseif (((3549>=916) and (v82<=(4 + 6))) or (2462>4426)) then if (v82<=(1906 -(260 + 1638))) then if (v82==(660 -(232 + 421))) then do return;end else v79[v81[2]]();end elseif (v82>(449 -(382 + 58))) then local v150=v70[v81[3]];local v151;local v152={};v151=v10({},{__index=function(v279,v280) local v281=0 -0 ;local v282;while true do if (v281==(0 + 0)) then v282=v152[v280];return v282[1 -0 ][v282[5 -3 ]];end end end,__newindex=function(v283,v284,v285) local v286=v152[v284];v286[1206 -(902 + 303) ][v286[3 -1 ]]=v285;end});for v288=(5 -3) -1 ,v81[1 + 3 ] do v73=v73 + ((1336 + 355) -(1121 + 73 + 496)) ;local v289=v69[v73];if ((v289[215 -(22 + 192) ]==27) or (2189<=245)) then v152[v288-(1454 -(666 + 787)) ]={v79,v289[8 -5 ]};else v152[v288-(1 -0) ]={v61,v289[8 -5 ]};end v78[ #v78 + (563 -(334 + 228)) ]=v152;end v79[v81[6 -4 ]]=v29(v150,v151,v62);else local v154=0 -0 ;local v155;local v156;local v157;local v158;local v159;while true do if ((4774==4774) and ((2 -0)==v154)) then v81=v69[v73];v79[v81[1 + 1 ]]=v81[239 -(141 + 95) ];v73=v73 + 1 + 0 ;v81=v69[v73];v159=v81[4 -2 ];v156,v157=v72(v79[v159](v13(v79,v159 + (2 -1) ,v81[3])));v154=1 + 2 + 0 ;end if ((8 -5)==v154) then v74=(v157 + v159) -(1 + 0) ;v155=0 -0 ;for v407=v159,v74 do v155=v155 + 1 + 0 ;v79[v407]=v156[v155];end v73=v73 + (1 -0) ;v81=v69[v73];v159=v81[2 + 0 ];v154=167 -(92 + 71) ;end if ((3 + 2)==v154) then v81=v69[v73];v79[v81[1191 -(442 + 747) ]]=v79[v81[4 -1 ]];v73=v73 + (766 -(574 + 191)) ;v81=v69[v73];v79[v81[948 -(88 + 858) ]]=v81[3 + 0 ];v73=v73 + 1 + 0 ;v154=14 -8 ;end if (v154==(1 + 0)) then v81=v69[v73];v159=v81[851 -(254 + 595) ];v158=v79[v81[129 -(55 + 71) ]];v79[v159 + (1 -0) ]=v158;v79[v159]=v158[v81[4]];v73=v73 + (3 -2) ;v154=1792 -(573 + 1217) ;end if ((v154==(16 -10)) or (1389>3925)) then v81=v69[v73];v79[v81[3 -1 ]]=v81[3 + 0 ];break;end if ((566<=960) and (v154==((1649 -(28 + 141)) -(641 + 839)))) then v155=nil;v156,v157=nil;v158=nil;v159=nil;v79[v81[1 + 1 ]]=v62[v81[7 -4 ]];v73=v73 + ((1 + 0) -0) ;v154=1;end if (v154==(943 -(714 + 225))) then v79[v159]=v79[v159](v13(v79,v159 + (2 -1) ,v74));v73=v73 + (1 -0) ;v81=v69[v73];v159=v81[1 + 1 ];v79[v159]=v79[v159]();v73=v73 + (1 -(0 -0)) ;v154=811 -(118 + 688) ;end end end elseif ((v82<=(5 + 7)) or (2910<=1930)) then if (v82>11) then local v160=48 -(25 + 23) ;local v161;local v162;while true do if (v160==(0 + 0)) then v161=v81[1888 -(927 + 959) ];v162={};v160=(606 + 249) -(174 + 680) ;end if (v160==(3 -(1319 -(486 + 831)))) then for v410=733 -(16 + 716) , #v78 do local v411=v78[v410];for v413=0 -0 , #v411 do local v414=97 -(11 + (223 -137)) ;local v415;local v416;local v417;while true do if ((4169>=3081) and (v414==(0 + 0))) then v415=v411[v413];v416=v415[2 -1 ];v414=286 -(175 + 110) ;end if (v414==(2 -1)) then v417=v415[9 -7 ];if (((v416==v79) and (v417>=v161)) or (19>452)) then v162[v417]=v416[v417];v415[4 -3 ]=v162;end break;end end end end break;end end else local v163=v81[1798 -(503 + 1293) ];v79[v163](v13(v79,v163 + (2 -1) ,v81[3 + (0 -0) ]));end elseif (v82>(1074 -(810 + 251))) then v79[v81[2 + 0 ]]=v81[1548 -(320 + 1225) ]~=0 ;else local v165=0 + 0 ;local v166;while true do if ((v165==(0 + 0)) or (907>3152)) then v166=v81[535 -(43 + 490) ];v79[v166](v79[v166 + (734 -(711 + 5 + 17)) ]);break;end end end elseif ((349<=894) and (v82<=(84 -62))) then if (v82<=(877 -(240 + (1957 -1338)))) then if (v82<=(4 + 12)) then if ((731<=2978) and (v82==(23 -8))) then local v167=v81[1 + 1 ];v79[v167]=v79[v167](v13(v79,v167 + (1745 -(1344 + 400)) ,v81[408 -(255 + 150) ]));else v79[v81[2 + 0 ]][v81[2 + 1 ]]=v81[16 -12 ];end elseif ((v82>(54 -(1300 -(668 + 595)))) or (892>3892)) then if ((v79[v81[1741 -(404 + 1335) ]]==v81[410 -(183 + 223) ]) or (2505>4470)) then v73=v73 + (1 -0) ;else v73=v81[2 + 1 ];end else v73=v81[2 + 1 ];end elseif (v82<=(357 -(10 + 327))) then if (v82==(14 + 5)) then local v172=338 -(118 + 220) ;local v173;while true do if ((v172==(0 + 0)) or (4466==900) or (3711>4062)) then v173=v81[451 -(98 + 10 + 69 + 272) ];v79[v173]=v79[v173]();break;end end else local v174=0 + (0 -0) ;local v175;local v176;while true do if (v174==((298 -(23 + 267)) -6)) then v81=v69[v73];v176=v81[1495 -(711 + 782) ];v175=v79[v81[5 -2 ]];v79[v176 + 1 ]=v175;v174=472 -(270 + 199) ;end if ((420==420) and ((v174==(1 + 2)) or (2084>=2888))) then v79[v176]=v175[v81[2 + 2 ]];v73=v73 + (1820 -(580 + 1239)) ;v81=v69[v73];v176=v81[1416 -(1001 + 413) ];v174=11 -7 ;end if (v174==(0 + 0)) then v175=nil;v176=nil;v79[v81[1 + 1 ]][v81[3]]=v79[v81[2 + 2 ]];v73=v73 + (2 -1) ;v174=1 + 0 ;end if (v174==((3851 -(1129 + 815)) -(1665 + 241))) then v81=v69[v73];v176=v81[1169 -(645 + 522) ];v79[v176](v13(v79,v176 + (1791 -(1010 + 780)) ,v81[3 + 0 ]));v73=v73 + 1 + 0 ;v174=9 -7 ;end if ((11 -7)==v174) then v79[v176](v79[v176 + (1 -0) ]);v73=v73 + (1837 -(1045 + 791)) ;v81=v69[v73];v73=v81[7 -4 ];break;end end end elseif ((479<1863) and (v82==(31 -10))) then local v177=v81[507 -(351 + 154) ];local v178,v179=v72(v79[v177](v13(v79,v177 + (1575 -(1281 + 293)) ,v81[1239 -((685 -(371 + 16)) + (2688 -(1326 + 424))) ])));v74=(v179 + v177) -(1260 -(233 + 1026)) ;local v180=(503 -237) -(28 + 238) ;for v291=v177,v74 do v180=v180 + ((7 -5) -(119 -(88 + 30))) ;v79[v291]=v178[v180];end else local v181=1559 -(1381 + 178) ;local v182;local v183;while true do if ((v181==1) or (33>=3494)) then v79[v182 + 1 + 0 ]=v183;v79[v182]=v183[v81[2 + (773 -(720 + 51)) ]];break;end if (v181==0) then v182=v81[1 + 1 ];v183=v79[v81[3 + 0 ]];v181=222 -(55 + (369 -203)) ;end end end elseif (v82<=(12 + 14)) then if (v82<=(82 -58)) then if ((v82>(12 + 11)) or (2428>=4038)) then local v184;local v185;v185=v81[472 -(381 + 89) ];v184=v79[v81[1 + 2 ]];v79[v185 + 1 + 0 ]=v184;v79[v185]=v184[v81[1780 -(421 + 1355) ]];v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[299 -(36 + 261) ]]={};v73=v73 + (1 -0) ;v81=v69[v73];v79[v81[1158 -(1074 + 82) ]][v81[(9 -3) -3 ]]=v81[4 + 0 ];v73=v73 + (1284 -(1035 + 122 + 126)) ;v81=v69[v73];v79[v81[1786 -(214 + 1570) ]][v81[2 + (1084 -(286 + 797)) ]]=v81[1459 -(990 + 465) ];v73=v73 + 1 + (0 -0) ;v81=v69[v73];v79[v81[687 -(314 + 371) ]][v81[10 -7 ]]=v81[2 + 2 ];v73=v73 + (1 -0) + 0 ;v81=v69[v73];v79[v81[2 + 0 ]][v81[11 -8 ]]=v81[1730 -(1668 + (497 -(397 + 42))) ];v73=v73 + (627 -(512 + 114)) ;v81=v69[v73];v185=v81[1342 -(1093 + 247) ];v79[v185](v13(v79,v185 + (2 -(1 + 0)) ,v81[5 -2 ]));else v79[v81[6 -4 ]]=v62[v81[1 + 2 ]];end elseif ((v82==(12 + 13)) or (1267==4744)) then v79[v81[1 + 1 ]][v81[3 + 0 ]]=v79[v81[(813 -(24 + 776)) -9 ]];else local v206;local v207;v79[v81[1 + 1 ]]=v81[1997 -(109 + 1885) ];v73=v73 + (1470 -(1269 + 200)) ;v81=v69[v73];v207=v81[3 -1 ];v79[v207](v79[v207 + (816 -(98 + 717)) ]);v73=v73 + (827 -((1234 -432) + 24)) ;v81=v69[v73];v79[v81[2 -0 ]]=v61[v81[3 -0 ]];v73=v73 + 1 + 0 ;v81=v69[v73];v207=v81[4 -2 ];v206=v79[v81[3 + 0 ]];v79[v207 + 1 ]=v206;v79[v207]=v206[v81[1 + 3 ]];v73=v73 + 1 + 0 ;v81=v69[v73];v79[v81[5 -3 ]]={};v73=v73 + (3 -2) ;v81=v69[v73];v79[v81[(786 -(222 + 563)) + 1 ]][v81[2 + 1 ]]=v81[4 + 0 ];v73=v73 + 1 + (0 -0) ;v81=v69[v73];v79[v81[2 + 0 ]][v81[3]]=v81[2 + 2 ];v73=v73 + (230 -(73 + 156)) ;v81=v69[v73];v79[v81[1435 -(797 + 636) ]][v81[(587 + 227) -(721 + 90) ]]=v81[1 + 3 ];v73=v73 + (4 -3) ;v81=v69[v73];v79[v81[1621 -(1427 + 192) ]][v81[2 + 1 ]]=v81[8 -4 ];v73=v73 + (1 -0) ;v81=v69[v73];v207=v81[2 + (190 -(23 + 167)) ];v79[v207](v13(v79,v207 + 1 + 0 ,v81[329 -(192 + 134) ]));v73=v73 + 1 + 0 ;v81=v69[v73];v73=v81[1279 -(316 + 960) ];end elseif (v82<=(92 -64)) then if (v82==(16 + 11)) then v79[v81[(2313 -(690 + 1108)) -(203 + 310) ]]=v79[v81[3 + 0 ]];elseif ((v79[v81[1 + 1 + 0 ]]==v79[v81[4]]) or (2878>2897)) then v73=v73 + (3 -2) ;else v73=v81[554 -(83 + 468) ];end elseif (v82==(1835 -(1202 + 499 + 105))) then v79[v81[2]]=v61[v81[4 -1 ]];else v79[v81[850 -(40 + 808) ]]=v81[13 -10 ];end v73=v73 + (865 -(196 + 668)) ;break;end if ((v91==(0 -0)) or (2469>3676)) then v81=v69[v73];v82=v81[(1 + 1) -1 ];v91=326 -(45 + 280) ;end end end end;end return v29(v28(),{},v17)(...);end return v15("LOL!233O00028O00027O0040030C3O00412O64506172616772617068030C3O00496E737472756374696F6E7303493O00436C69636B20476574204B657920616E64206A6F696E2074686520646973636F726420666F7220746865205072656D69756D206B65792C20746865726520617265206E6F206164732E030A3O00412O6454657874626F7803043O004E616D6503113O00456E746572205072656D69756D204B657903073O0044656661756C74034O00030D3O0054657874446973612O70656172010003083O0043612O6C6261636B026O000840030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033D3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F73686C6578776172652F4F72696F6E2F6D61696E2F736F7572636503103O005A656E6F6E5370656369616C2D343733026O00F03F03093O00412O6442752O746F6E030F3O00476574205072656D69756D204B657903043O00496E6974030A3O004D616B6557696E646F77031C3O005A656E6F6E20487562205072656D69756D204B65792053797374656D030B3O00486964655072656D69756D030A3O0053617665436F6E6669672O01030C3O00436F6E666967466F6C64657203183O005A656E6F6E4875625072656D69756D4B657953797374656D03073O004D616B6554616203123O005072656D69756D204B65792053797374656D03043O0049636F6E03173O00726278612O73657469643A2O2F2O34382O333435383735030B3O005072656D69756D4F6E6C7900483O00121E3O00014O0006000100043O0026123O0013000100020004113O00130001002016000500040003001203000700043O00122O000800056O00050008000100202O0005000400064O00073O000400302O00070007000800302O00070009000A00302O0007000B000C00060A00083O000100022O001B3O00024O001B3O00013O0010190007000D00082O000B00050007000100121E3O000E3O0026123O001F000100010004113O001F00010012170005000F3O001209000600103O00202O00060006001100122O000800126O000600086O00053O00024O0005000100024O000100053O00122O000200133O00124O00143O0026123O002B0001000E0004113O002B00010020160005000400152O000400073O000200301000070007001600060A00080001000100012O001B3O00013O0010140007000D00084O00050007000100202O0005000100174O00050002000100044O004600010026123O0002000100140004113O0002000100121E000500013O00261200050032000100140004113O0032000100121E3O00023O0004113O000200010026120005002E000100010004113O002E00010020160006000100182O000500083O000400302O00080007001900302O0008001A000C00302O0008001B001C00302O0008001D001E4O0006000800024O000300063O00202O00060003001F4O00083O000300302O00080007002000301000080021002200300100080023000C4O0006000800024O000400063O00122O000500143O00044O002E00010004113O000200012O000C8O00073O00013O00023O00103O00028O0003103O004D616B654E6F74696669636174696F6E03043O004E616D6503163O005072656D69756D20412O63652O73204772616E74656403073O00436F6E74656E7403253O005072656D69756D204B657920412O6365707465642120412O63652O73204772616E7465642E03053O00496D61676503173O00726278612O73657469643A2O2F2O34382O33343538373503043O0054696D65026O001440030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403523O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F526570636F646572732F7469636B6C656D797069636B6C652F6D61696E2F5A656E6F6E556E6976657273616C2E6C756103053O00452O726F7203263O00496E76616C6964205072656D69756D204B65792120506C656173652074727920616761696E2E01284O001D00015O00061C3O001F000100010004113O001F000100121E000100014O0006000200023O00261200010005000100010004113O0005000100121E000200013O00261200020008000100010004113O000800012O001D000300013O00202O0003000300024O00053O000400302O00050003000400302O00050005000600302O00050007000800302O00050009000A4O00030005000100122O0003000B3O00122O0004000C3O00202O00040004000D00122O0006000E6O000700016O000400076O00033O00024O00030001000100044O002700010004113O000800010004113O002700010004113O000500010004113O002700012O001D000100013O0020180001000100024O00033O000400302O00030003000F00302O00030005001000302O00030007000800302O00030009000A4O0001000300012O00073O00017O000C3O00028O00030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F566D753972554B6E396803103O004D616B654E6F74696669636174696F6E03043O004E616D6503123O005072656D69756D204B65792053797374656D03073O00436F6E74656E74033C3O00446973636F726420696E76697465206C696E6B20636F7069656420746F20636C6970626F61726420666F7220746865205072656D69756D206B65792103053O00496D61676503173O00726278612O73657469643A2O2F2O34382O33343538373503043O0054696D65026O00144000113O00121E3O00013O0026123O0001000100010004113O00010001001217000100023O00121A000200036O0001000200014O00015O00202O0001000100044O00033O000400302O00030005000600302O00030007000800302O00030009000A00302O0003000B000C4O00010003000100044O001000010004113O000100012O00073O00017O00",v9(),...);
