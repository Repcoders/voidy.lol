--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v86=0;local v87;while true do if (v86==0) then v87=v2(v0(v30,16));if v19 then local v128=0;local v129;while true do if (v128==1) then return v129;end if (v128==0) then v129=v5(v87,v19);v19=nil;v128=1;end end else return v87;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/((5 -3)^(v32-(1 + 0))))%((5 -3)^(((v33-(1 -(1065 -(68 + 997)))) -(v32-(2 -1))) + (1638 -(1523 + 114)))) ;return v88-(v88%(620 -(555 + 64))) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and ((2202 -(226 + 1044)) -(857 + 74))) or (568 -(367 + 201)) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + (8 -6) );v18=v18 + (119 -(32 + 85)) ;return (v36 * 256) + v35 ;end local function v23() local v37=0 + 0 ;local v38;local v39;local v40;local v41;while true do if (v37==(351 -(87 + 263))) then return (v41 * ((16778348 -(802 + 150)) -(67 + 113))) + (v40 * (48056 + (47062 -29582))) + (v39 * (57 + (360 -161))) + v38 ;end if (v37==(957 -(892 + 65))) then v38,v39,v40,v41=v1(v16,v18,v18 + ((6 + 1) -4) );v18=v18 + (15 -(1008 -(915 + 82))) ;v37=1 -(0 -0) ;end end end local function v24() local v42=0 + 0 ;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==(3 -0)) then if (v47==(0 -0)) then if (v46==(1187 -(1069 + 118))) then return v48 * (859 -(814 + 45)) ;else local v130=0 -0 ;while true do if (v130==(0 + 0)) then v47=1 + 0 ;v45=0 -0 ;break;end end end elseif (v47==2047) then return ((v46==(0 + 0)) and (v48 * ((1 -0)/(0 + 0)))) or (v48 * NaN) ;end return v8(v48,v47-(1814 -(368 + 423)) ) * (v45 + (v46/(((1419 -(447 + 966)) -4)^(70 -(10 + 8))))) ;end if (v42==(7 -5)) then v47=v20(v44,(24 -15) + 12 ,473 -(416 + 26) );v48=((v20(v44,102 -70 )==((1818 -(1703 + 114)) + 0)) and  -(767 -(745 + 21))) or (1 + 0) ;v42=(708 -(376 + 325)) -4 ;end if (v42==1) then v45=1 -0 ;v46=(v20(v44,439 -(145 + 293) ,450 -(44 + (632 -246)) ) * ((1488 -(998 + 488))^((33 -22) + 7 + 14))) + v43 ;v42=2 + 0 ;end if (v42==(772 -(201 + 571))) then v43=v23();v44=v23();v42=1139 -(116 + 1022) ;end end end local function v25(v49) local v50=0 -0 ;local v51;local v52;while true do if (v50==(16 -((1939 -(1869 + 61)) + 5))) then v52={};for v116=1, #v51 do v52[v116]=v2(v1(v3(v51,v116,v116)));end v50=379 -(85 + 291) ;end if (3==v50) then return v6(v52);end if (v50==((354 + 912) -(243 + 1022))) then v51=v3(v16,v18,(v18 + v49) -(3 -2) );v18=v18 + v49 ;v50=2 + 0 ;end if (v50==0) then v51=nil;if  not v49 then local v122=0;while true do if (v122==(1180 -(1123 + 57))) then v49=v23();if (v49==((0 -0) + 0)) then return "";end break;end end end v50=255 -(163 + (139 -48)) ;end end end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v53=(function() return function(v90,v91,v92,v93,v94,v95,v96,v97) local v90=(function() return 0 + 0 ;end)();local v91=(function() return;end)();local v92=(function() return;end)();while true do if (v90~= #" ") then else if (v91== #"{") then v92=(function() return v93()~=(0 -0) ;end)();elseif (v91==(1 + 1)) then v92=(function() return v94();end)();elseif (v91== #"-19") then v92=(function() return v95();end)();end v96[v97]=(function() return v92;end)();break;end if (0==v90) then local v124=(function() return 560 -(306 + 254) ;end)();local v125=(function() return;end)();while true do if (v124~=0) then else v125=(function() return 0;end)();while true do if (v125==(0 + 0)) then v91=(function() return v93();end)();v92=(function() return nil;end)();v125=(function() return 1;end)();end if (v125~=1) then else v90=(function() return  #":";end)();break;end end break;end end end end return v90,v91,v92,v93,v94,v95,v96,v97;end;end)();local v54=(function() return function(v98,v99,v100,v101,v102,v103,v104,v105,v106) local v107=(function() return 0;end)();local v98=(function() return;end)();local v99=(function() return;end)();while true do if (v107==(0 -0)) then local v126=(function() return 0;end)();local v127=(function() return;end)();while true do if (0~=v126) then else v127=(function() return 1467 -(899 + 568) ;end)();while true do if (v127==(1 + 0)) then v107=(function() return 1;end)();break;end if (v127~=(0 -0)) then else v98=(function() return 603 -(268 + 335) ;end)();v99=(function() return nil;end)();v127=(function() return 1;end)();end end break;end end end if (v107==1) then while true do if (v98~=0) then else v99=(function() return v100();end)();if (v101(v99, #"<", #"/")==0) then local v132=(function() return 0;end)();local v133=(function() return;end)();local v134=(function() return;end)();local v135=(function() return;end)();while true do if (v132==(291 -(60 + 230))) then local v137=(function() return 0;end)();while true do if (v137~=(573 -(426 + 146))) then else v132=(function() return 1 + 1 ;end)();break;end if (v137==0) then v135=(function() return {v102(),v102(),nil,nil};end)();if (v133==0) then local v328=(function() return 0;end)();local v329=(function() return;end)();while true do if (v328==(811 -(569 + 242))) then v329=(function() return 0;end)();while true do if (v329~=0) then else v135[ #"gha"]=(function() return v102();end)();v135[ #"?id="]=(function() return v102();end)();break;end end break;end end elseif (v133== #".") then v135[ #"gha"]=(function() return v103();end)();elseif (v133==(5 -3)) then v135[ #"-19"]=(function() return v103() -((1 + 1)^16) ;end)();elseif (v133~= #"19(") then else local v391=(function() return 0;end)();local v392=(function() return;end)();while true do if (v391~=(1024 -(706 + 318))) then else v392=(function() return 1251 -(721 + 530) ;end)();while true do if (v392==0) then v135[ #"gha"]=(function() return v103() -((1273 -(945 + 326))^(39 -23)) ;end)();v135[ #".dev"]=(function() return v102();end)();break;end end break;end end end v137=(function() return 1 + 0 ;end)();end end end if (v132~=(702 -(271 + 429))) then else if (v101(v134, #"/", #" ")== #">") then v135[2]=(function() return v104[v135[2]];end)();end if (v101(v134,2,2)== #":") then v135[ #"gha"]=(function() return v104[v135[ #"xnx"]];end)();end v132=(function() return 3;end)();end if ((0 + 0)==v132) then local v138=(function() return 1500 -(1408 + 92) ;end)();local v139=(function() return;end)();while true do if (v138~=(1086 -(461 + 625))) then else v139=(function() return 1288 -(993 + 295) ;end)();while true do if (v139~=0) then else v133=(function() return v101(v99,1 + 1 , #"xnx");end)();v134=(function() return v101(v99, #"http",1177 -(418 + 753) );end)();v139=(function() return 1;end)();end if (v139~=(1 + 0)) then else v132=(function() return 1;end)();break;end end break;end end end if (v132==(1 + 2)) then if (v101(v134, #"asd", #"19(")== #".") then v135[ #".dev"]=(function() return v104[v135[ #".dev"]];end)();end v105[v106]=(function() return v135;end)();break;end end end break;end end return v98,v99,v100,v101,v102,v103,v104,v105,v106;end end end;end)();local v55=(function() return function(v108,v109,v110) local v111=(function() return 0;end)();local v112=(function() return;end)();while true do if (v111==(0 + 0)) then v112=(function() return 0 + 0 ;end)();while true do if (v112~=0) then else local v131=(function() return 529 -(406 + 123) ;end)();while true do if (v131~=0) then else v108[v109-#"~" ]=(function() return v110();end)();return v108,v109,v110;end end end end break;end end end;end)();local v56=(function() return {};end)();local v57=(function() return {};end)();local v58=(function() return {};end)();local v59=(function() return {v56,v57,nil,v58};end)();local v60=(function() return v23();end)();local v61=(function() return {};end)();for v69= #"{",v60 do FlatIdent_E652,Type,Cons,v21,v24,v25,v61,v69=(function() return v53(FlatIdent_E652,Type,Cons,v21,v24,v25,v61,v69);end)();end v59[ #"91("]=(function() return v21();end)();for v70= #"/",v23() do FlatIdent_6053C,Descriptor,v21,v20,v22,v23,v61,v56,v70=(function() return v54(FlatIdent_6053C,Descriptor,v21,v20,v22,v23,v61,v56,v70);end)();end for v71= #"~",v23() do v57,v71,v28=(function() return v55(v57,v71,v28);end)();end return v59;end local function v29(v63,v64,v65) local v66=v63[(1324 + 446) -(868 + 881 + 20) ];local v67=v63[1158 -(798 + 276 + 82) ];local v68=v63[1 + 2 ];return function(...) local v72=v66;local v73=v67;local v74=v68;local v75=v27;local v76=1323 -(1249 + 73) ;local v77= -(1 + 0);local v78={};local v79={...};local v80=v12("#",...) -(2 -1) ;local v81={};local v82={};for v113=0 -0 ,v80 do if ((v113>=v74) or (1063<=877)) then v78[v113-v74 ]=v79[v113 + (1901 -(106 + 1794)) ];else v82[v113]=v79[v113 + (3 -2) ];end end local v83=(v80-v74) + 1 + 0 ;local v84;local v85;while true do v84=v72[v76];v85=v84[1 + 0 ];if ((v85<=((1511 -(1001 + 413)) -64)) or (692>=4933)) then if ((v85<=(43 -27)) or (3154<=2260)) then if ((v85<=((269 -148) -(4 + 110))) or (2637>3149)) then if (v85<=((1469 -(244 + 638)) -(57 + 527))) then if ((2314==2314) and (v85<=(1428 -(41 + 1386)))) then if (v85==((693 -(627 + 66)) -0)) then local v141=v84[105 -(17 + (256 -170)) ];v82[v141]=v82[v141](v13(v82,v141 + 1 + 0 ,v77));else local v143=0 -(602 -(512 + 90)) ;local v144;while true do if (v143==(0 + 0)) then v144=v84[5 -3 ];v82[v144](v82[v144 + 1 ]);break;end end end elseif ((v85>((2074 -(1665 + 241)) -(122 + 44))) or (3992<2407)) then local v145=1469 -((1986 -(373 + 344)) + 200) ;local v146;while true do if ((924>=477) and (v145==(0 -0))) then v146=v84[6 -4 ];do return v13(v82,v146,v146 + v84[3 + 0 ] );end break;end end else local v147=0;local v148;local v149;local v150;while true do if ((1813<=3778) and (v147==(1 + 0))) then v150={};v149=v10({},{__index=function(v330,v331) local v332=0 -0 ;local v333;while true do if (v332==(65 -(30 + 35))) then v333=v150[v331];return v333[1 + 0 ][v333[1259 -(1043 + 214) ]];end end end,__newindex=function(v334,v335,v336) local v337=0 -0 ;local v338;while true do if ((v337==(1212 -(323 + 889))) or (2902>4859)) then v338=v150[v335];v338[1 + 0 ][v338[5 -3 ]]=v336;break;end end end});v147=1 + 1 ;end if ((1679<4359) and (4150==4150) and (v147==((1529 -949) -(361 + 219)))) then v148=v73[v84[(545 -222) -((1152 -(35 + 1064)) + 267) ]];v149=nil;v147=1 + 0 ;end if (v147==(415 -(15 + 290 + 108))) then for v339=(2 -1) + 0 ,v84[986 -(18 + 964) ] do v76=v76 + (3 -2) ;local v340=v72[v76];if ((432<=3007) and (v340[1 + 0 ]==(1465 -(797 + 636)))) then v150[v339-(1 + 0) ]={v82,v340[3 + 0 ]};else v150[v339-(127 -(116 + 10)) ]={v64,v340[329 -(192 + 134) ]};end v81[ #v81 + ((2943 -(636 + 1030)) -(316 + 960)) ]=v150;end v82[v84[3 -1 ]]=v29(v148,v149,v65);break;end end end elseif ((v85<=(2 + 3)) or (408>2721)) then if (v85==(3 + 1)) then v82[v84[1 + 1 ]]={};else for v250=v84[4 -2 ],v84[7 -4 ] do v82[v250]=nil;end end elseif (v85>(557 -(83 + 468))) then local v152=v84[1553 -(1126 + 425) ];local v153=v82[v152];local v154=v84[408 -(61 + 57 + 287) ];for v252=1 -0 ,v154 do v153[v252]=v82[v152 + v252 ];end else v82[v84[7 -5 ]]={};end elseif (v85<=(1132 -(118 + 1003))) then if (v85<=(9 + 0)) then if ((1913<4670) and (v85==((7 + 16) -15))) then if v82[v84[2]] then v76=v76 + ((26 + 352) -(142 + 235)) ;else v76=v84[2 + 1 ];end else do return;end end elseif ((v85==((266 -(55 + 166)) -35)) or (3418<2497)) then local v156=v84[1 + 0 + 1 ];v82[v156]=v82[v156](v13(v82,v156 + (1 -0) ,v77));else local v158=977 -(553 + 424) ;local v159;while true do if ((v158==(0 -0)) or (2846<879)) then v159=v84[1 + 0 + 1 ];v82[v159](v13(v82,v159 + 1 + 0 ,v84[1775 -(1733 + 39) ]));break;end end end elseif (v85<=((133 -98) -22)) then if ((1735<2169) and (v85>(12 + 0))) then local v160=v84[2 + 0 ];v82[v160](v13(v82,v160 + 1 + 0 ,v84[2 + 1 ]));elseif ((4588==4588) and  not v82[v84[4 -2 ]]) then v76=v76 + (2 -1) ;else v76=v84[6 -3 ];end elseif ((v85<=14) or (347==2065)) then if (v82[v84[97 -(51 + 44) ]] or (1311>2697)) then v76=v76 + 1 + (297 -(36 + 261)) ;else v76=v84[14 -11 ];end elseif ((3890>=3262) and (v85==(768 -(239 + 514)))) then v82[v84[2]]=v82[v84[1 + 2 ]][v82[v84[2 + 2 ]]];else local v288=663 -(174 + 489) ;local v289;local v290;local v291;local v292;while true do if (v288==((2323 -994) -(797 + 532))) then v289=v84[2 + (1368 -(34 + 1334)) ];v290,v291=v75(v82[v289](v13(v82,v289 + (525 -(303 + 221)) ,v84[1272 -(231 + 400 + 638) ])));v288=1 + 0 ;end if (v288==(4 -2)) then for v371=v289,v77 do v292=v292 + ((935 + 268) -(373 + (2112 -(1035 + 248)))) ;v82[v371]=v290[v292];end break;end if ((v288==(732 -((497 -(20 + 1)) + 255))) or (2717>3795)) then v77=(v291 + v289) -(1131 -(193 + 176 + 761)) ;v292=0 + 0 ;v288=2 -0 ;end end end elseif ((v85<=(45 -21)) or (4356>=4649)) then if ((3904==3904) and (v85<=(258 -(64 + (493 -(134 + 185)))))) then if ((v85<=(3 + 15)) or (2860>=3789)) then if (v85==(52 -35)) then local v161=0 -0 ;local v162;local v163;local v164;while true do if (((1469 -(549 + 584)) -(144 + 192))==v161) then v162=v84[218 -(42 + (859 -(314 + 371))) ];v163={v82[v162](v82[v162 + 1 + 0 ])};v161=1 + 0 ;end if (v161==1) then v164=0 + 0 ;for v342=v162,v84[1508 -(363 + 1141) ] do v164=v164 + (1581 -(1183 + 397)) ;v82[v342]=v163[v164];end break;end end else do return v82[v84[5 -3 ]];end end elseif (v85>(82 -63)) then v82[v84[2 + 0 ]]=v82[v84[3 + 0 ]][v84[1979 -(1913 + (1030 -(478 + 490))) ]];else v82[v84[2 + 0 + 0 ]]=v84[7 -4 ];end elseif (v85<=(1955 -(565 + 1368))) then if ((v85>(78 -(1229 -(786 + 386)))) or (1081<391)) then if (v82[v84[1663 -(1477 + (595 -411)) ]]==v84[(1384 -(1055 + 324)) -1 ]) then v76=v76 + 1 + 0 ;else v76=v84[8 -5 ];end elseif (v84[1 + 1 ]==v82[v84[860 -(564 + 292) ]]) then v76=v76 + (1 -0) ;else v76=v84[8 -5 ];end elseif ((v85>23) or (1086>4449)) then local v169=v84[306 -(244 + 60) ];v82[v169](v82[v169 + 1 + 0 ]);else do return v82[v84[478 -(41 + 435) ]];end end elseif (v85<=(1029 -(938 + 63))) then if ((v85<=(20 + 6)) or (121>3438)) then if (v85>(1150 -(936 + 189))) then local v170=v84[1 + 1 ];v82[v170]=v82[v170]();else v82[v84[(2955 -(1093 + 247)) -(1565 + 43 + 5) ]]=v82[v84[2 + 1 ]][v84[4]];end elseif (v85==(62 -35)) then v82[v84[1140 -(83 + 699 + 356) ]][v84[1 + 2 ]]=v84[271 -((698 -522) + 91) ];else v76=v84[7 -4 ];end elseif ((71<1949) and (v85<=(1126 -(709 + 387)))) then if ((4981>546) and (v85==(42 -13))) then local v177=v84[2];local v178={};for v255=1093 -(975 + (397 -280)) , #v81 do local v256=v81[v255];for v295=(0 -0) -0 , #v256 do local v296=1875 -((394 -237) + 612 + 1106) ;local v297;local v298;local v299;while true do if ((4254==4254) and ((0 -0)==v296)) then v297=v256[v295];v298=v297[1 + 0 ];v296=1 + 0 ;end if ((3 -2)==v296) then v299=v297[6 -4 ];if ((3196>=2550) and (v298==v82) and (v299>=v177)) then v178[v299]=v298[v299];v297[1019 -(697 + 321) ]=v178;end break;end end end end else local v179=v84[5 -3 ];v82[v179]=v82[v179](v13(v82,v179 + (1 -0) ,v84[5 -2 ]));end elseif (v85<=(71 -40)) then do return;end elseif ((v85>(13 + 19)) or (2366<=8)) then v82[v84[3 -1 ]][v84[7 -4 ]]=v82[v84[(37 -26) -7 ]];else v82[v84[1849 -(559 + 1288) ]]=v82[v84[3]];end elseif (v85<=(1277 -(322 + 905))) then if ((2456<4176) and ((v85<=(652 -(602 + 9))) or (2590==2864))) then if ((v85<=((371 + 120) -(13 + 441))) or (1150==3452)) then if ((1875<2258) and (v85<=(130 -95))) then if ((1173>41) and (v85==(1223 -(449 + 740)))) then v82[v84[874 -(826 + 46) ]]=v65[v84[950 -(245 + 702) ]];else v82[v84[6 -4 ]][v84[1 + 2 ]]=v84[1902 -(260 + 1638) ];end elseif ((v85>(476 -(382 + 58))) or (2624>4149)) then local v185=0 -0 ;local v186;local v187;local v188;local v189;while true do if (v185==(0 + 0)) then v186=v84[3 -1 ];v187,v188=v75(v82[v186](v13(v82,v186 + (1 -0) ,v77)));v185=2 -1 ;end if ((1206 -(902 + 303))==v185) then v77=(v188 + v186) -(1 + 0) ;v189=0 -0 ;v185=(691 -(364 + 324)) -1 ;end if ((v185==(435 -(153 + 280))) or (56>=3208)) then for v345=v186,v77 do local v346=0 -(0 -0) ;while true do if (v346==(0 + 0)) then v189=v189 + (2 -1) ;v82[v345]=v187[v189];break;end end end break;end end else v82[v84[1 + 1 ]]();end elseif (v85<=(1729 -(1121 + 569))) then if (v85>((604 -352) -(22 + 192))) then v82[v84[685 -(483 + 200) ]]=v84[4 -(1 + 0) ];else v76=v84[(6134 -4668) -(1404 + 59) ];end elseif (v85==(707 -(89 + 578))) then local v193=v84[2 + 0 ];local v194=v82[v193];local v195=v84[8 -5 ];for v257=(1 -0) -0 ,v195 do v194[v257]=v82[v193 + v257 ];end else local v196=v73[v84[768 -(468 + 297) ]];local v197;local v198={};v197=v10({},{__index=function(v260,v261) local v262=v198[v261];return v262[563 -(334 + 228) ][v262[2 + 0 ]];end,__newindex=function(v263,v264,v265) local v266=v198[v264];v266[3 -2 ][v266[2]]=v265;end});for v268=2 -1 ,v84[6 -2 ] do local v269=0 + 0 ;local v270;while true do if ((4313>3373) and (v269==(2 -1))) then if (v270[(1505 -(1249 + 19)) -(141 + 95) ]==32) then v198[v268-(1 + 0) ]={v82,v270[1 + 2 ]};else v198[v268-(2 -1) ]={v64,v270[6 -3 ]};end v81[ #v81 + 1 + 0 ]=v198;break;end if ((v269==(0 -0)) or (2618>=4495)) then v76=v76 + 1 + 0 ;v270=v72[v76];v269=1 + 0 ;end end end v82[v84[165 -(92 + (276 -205)) ]]=v29(v196,v197,v65);end elseif (v85<=(534 -(457 + 32))) then if ((v85<=43) or (4493==2225)) then if ((3104>=3092) and (v85==(21 + 21))) then v82[v84[2 -0 ]]=v82[v84[768 -(574 + 191) ]][v82[v84[4 + 0 ]]];else v82[v84[1 + 1 ]]=v82[v84[7 -(1090 -(686 + 400)) ]];end elseif (v85==(23 + 21)) then v82[v84[798 -(588 + 208) ]]=v64[v84[852 -(254 + 595) ]];elseif ((3548>3098) and ( not v82[v84[128 -(55 + 71) ]] or (2485>=3131))) then v76=v76 + (1 -0) ;else v76=v84[(1407 + 386) -(573 + 1217) ];end elseif (v85<=(130 -83)) then if (v85==(4 + 42)) then v82[v84[2 -0 ]]();else local v206=v84[941 -(714 + 225) ];local v207=v82[v206];for v271=v206 + (2 -1) ,v77 do v7(v207,v82[v271]);end end elseif ((v85<=(66 -18)) or (2804<=2785) or (3252==503)) then local v208=v84[2];local v209=v82[v84[1 + 2 ]];v82[v208 + (1 -0) ]=v209;v82[v208]=v209[v84[810 -(118 + 688) ]];elseif ((4733>2066) and (v85>(278 -(73 + 156)))) then local v305=48 -(25 + 23) ;local v306;local v307;while true do if (v305==(0 + 0)) then v306=v84[2 + 0 ];v307=v82[v306];v305=1887 -(927 + 959) ;end if (v305==(3 -2)) then for v376=v306 + (733 -(16 + 716)) ,v84[5 -2 ] do v7(v307,v82[v376]);end break;end end else local v308=v84[(1 + 99) -(11 + 86) ];local v309=v82[v308];for v324=v308 + (2 -1) ,v84[289 -(175 + 110) ] do v309=v309   .. v82[v324] ;end v82[v84[(815 -(721 + 90)) -2 ]]=v309;end elseif ((3549>=916) and ((v85<=(239 -(92 + 89))) or (4571==3415))) then if ((v85<=(266 -212)) or (4441>4787)) then if (v85<=(1848 -(503 + 1293))) then if (v85==(31 + 20)) then local v213=v84[(1 + 4) -3 ];local v214={};for v272=3 -2 , #v81 do local v273=0 + (0 -0) ;local v274;while true do if ((v273==((1531 -(224 + 246)) -(810 + 251))) or (2189<=245)) then v274=v81[v272];for v363=0 + 0 , #v274 do local v364=0 + (0 -0) ;local v365;local v366;local v367;while true do if ((1920==1920) and (v364==((0 -0) + 0))) then v365=v274[v363];v366=v365[534 -(43 + 490) ];v364=1;end if ((v364==(734 -(711 + 22))) or (647==4477)) then v367=v365[7 -5 ];if (((v366==v82) and (v367>=v213)) or (1389>3925)) then v214[v367]=v366[v367];v365[860 -(44 + 196 + 619) ]=v214;end break;end end end break;end end end else local v215=v84[1 + 1 ];local v216=v82[v84[1138 -(832 + 303) ]];v82[v215 + (947 -(88 + 858)) ]=v216;v82[v215]=v216[v84[5 -1 ]];end elseif (v85==(1 + 3 + 49)) then local v220=v84[1746 -(1344 + 400) ];local v221=v82[v220];for v275=v220 + (406 -(255 + 150)) ,v77 do v7(v221,v82[v275]);end else local v222=v84[2 + 0 + 0 ];local v223,v224=v75(v82[v222](v13(v82,v222 + 1 + 0 ,v77)));v77=(v224 + v222) -(1 -(0 -0)) ;local v225=0;for v276=v222,v77 do local v277=0 -0 ;while true do if ((3819==3819) and (v277==(0 -0))) then v225=v225 + 1 ;v82[v276]=v223[v225];break;end end end end elseif ((4169>=3081) and ((v85<=(180 -124)) or (1466>4360))) then if (v85==(1794 -(404 + 1335))) then local v226=v84[408 -(183 + 223) ];local v227,v228=v75(v82[v226](v13(v82,v226 + (1 -0) ,v84[2 + 1 ])));v77=(v228 + v226) -(1 + 0) ;local v229=(3038 -2125) -((1423 -(203 + 310)) + 3) ;for v278=v226,v77 do local v279=(2330 -(1238 + 755)) -(1 + 9 + 327) ;while true do if ((v279==((1534 -(709 + 825)) + 0)) or (14>994)) then v229=v229 + (339 -(118 + 220)) ;v82[v278]=v227[v229];break;end end end else local v230=v84[1 + 1 ];v82[v230]=v82[v230](v82[v230 + (450 -(108 + 341)) ]);end elseif (v85>(26 + 31)) then local v232=v84[12 -9 ];local v233=v82[v232];for v280=v232 + ((1490 -681) -(329 + 479)) ,v84[1497 -(711 + (1138 -356)) ] do v233=v233   .. v82[v280] ;end v82[v84[3 -1 ]]=v233;else local v235=469 -(270 + 199) ;local v236;while true do if (v235==(0 + 0)) then v236=v84[1821 -(580 + 1239) ];v82[v236]=v82[v236](v13(v82,v236 + (2 -1) ,v84[1480 -(29 + (2312 -(196 + 668))) ]));break;end end end elseif ((349<=894) and (v85<=(60 + 2))) then if ((731<=2978) and (401<=734) and (v85<=(3 + (224 -167)))) then if (v85>(26 + (68 -35))) then v82[v84[4 -(835 -(171 + 662)) ]]=v65[v84[13 -10 ]];else for v281=v84[(95 -(4 + 89)) + 0 ],v84[1170 -(645 + 522) ] do v82[v281]=nil;end end elseif ((v85>((6487 -4636) -(1010 + 285 + 495))) or (2167>=3426) or (892>3892)) then v82[v84[2 + 0 ]]=v64[v84[14 -11 ]];elseif ((764<3285) and (v82[v84[2 + 0 ]]==v84[11 -7 ])) then v76=v76 + (1837 -(1045 + 791)) ;else v76=v84[7 -4 ];end elseif (v85<=(97 -(144 -111))) then if ((v85==((599 + 928) -((1643 -(35 + 1451)) + 1307))) or (4466==900)) then local v241=v84[507 -(351 + 154) ];v82[v241]=v82[v241](v82[v241 + (1575 -((2734 -(28 + 1425)) + 293)) ]);else local v243=(1993 -(941 + 1052)) + 0 ;local v244;local v245;local v246;while true do if (v243==((1 + 0) -(1514 -(822 + 692)))) then v246=266 -((39 -11) + 238) ;for v354=v244,v84[4] do v246=v246 + 1 ;v82[v354]=v245[v246];end break;end if (v243==(0 -0)) then v244=v84[(485 + 543) -(834 + 192) ];v245={v82[v244](v82[v244 + 1 + 0 ])};v243=1 + 0 ;end end end elseif ((2499==2499) and (v85<=(100 -35))) then if (v84[(603 -(45 + 252)) -(300 + 4) ]==v82[v84[4 + 0 + 0 ]]) then v76=v76 + 1 + 0 ;else v76=v84[10 -7 ];end elseif (v85>(35 + 31)) then v82[v84[1 + 1 ]][v84[473 -(381 + 89) ]]=v82[v84[3 + 1 ]];else local v315=v84[1 + 1 + 0 ];v82[v315]=v82[v315]();end v76=v76 + 1 + 0 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!6C3O0003043O0067616D65030A3O004765745365727669636503073O00506C617965727303113O005265706C69636174656453746F7261676503073O00506C6163654964022O00B8A5D576034203483O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F526570636F646572732F7A656E6F6E6875622F6D61696E2F6F6266757363617465642E6C7561022O00B8CE47710C4203203O00682O7470733A2O2F706173746566792E612O702F3773784F3250494E2F726177022O00909DBBDAF741034A3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F526570636F646572732F7A656E6F6E6875622F6D61696E2F536C61702D42612O746C65732E6C7561023O00FA43A0E44103423O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F526570636F646572732F7A656E6F6E6875622F6D61696E2F332O30382E6C7561022O00C0BADEF9F841022O0058B71D360142022O0098D924360142022O00902427E80F4203453O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F526570636F646572732F7A656E6F6E6875622F6D61696E2F52616D706167652E6C7561030A3O006C6F6164737472696E6703073O00482O747047657403423O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F426F6375734C756B652F55492F6D61696E2F5354582F4D6F64756C652E4C756103423O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F426F6375734C756B652F55492F6D61696E2F5354582F436C69656E742E4C7561028O0003063O004E6F7469667903053O005469746C6503103O00556E73752O706F727465642047616D65030B3O004465736372697074696F6E031B3O00546869732067616D65206973206E6F742073752O706F727465642E030C3O004F75746C696E65436F6C6F7203063O00436F6C6F723303073O0066726F6D524742025O00E06F40026O00544003043O0054696D65026O00244003043O005479706503073O0064656661756C74030E3O0053752O706F727465642047616D6503173O00546869732067616D652069732073752O706F727465642E026O00144003083O00496E7374616E63652O033O006E657703093O005363722O656E47756903043O004E616D65030C3O004B657953797374656D47756903063O00506172656E74030B3O004C6F63616C506C61796572030C3O0057616974466F724368696C6403093O00506C6179657247756903053O004672616D6503043O0053697A6503053O005544696D32029A5O99D93F02CD5OCCDC3F03083O00506F736974696F6E026O00E03F03103O004261636B67726F756E64436F6C6F7233026O004940030F3O00426F7264657253697A65506978656C030B3O00416E63686F72506F696E7403073O00566563746F723203083O005549436F726E6572030C3O00436F726E657252616469757303043O005544696D026O002E40026O00F03F026O33C33F025O00805140030A3O0055494772616469656E7403053O00436F6C6F72030D3O00436F6C6F7253657175656E636503153O00436F6C6F7253657175656E63654B6579706F696E7403083O00526F746174696F6E025O0080464003093O00546578744C6162656C029A5O99E93F029A5O99B93F03043O005465787403143O005A656E6F6E20487562204B65792053797374656D030A3O0054657874436F6C6F723303163O004261636B67726F756E645472616E73706172656E637903043O00466F6E7403043O00456E756D030A3O00476F7468616D426F6C6403083O005465787453697A65026O00324003073O0054657874426F78029A5O99C93F030F3O00506C616365686F6C6465725465787403093O00456E746572204B6579034O00026O00444003063O00476F7468616D026O003040030A3O005465787442752O746F6E026O66D63F03063O005375626D6974026O004E40029A5O99E13F03073O00476574204B657902CD5OCCE43F03303O00436C69636B2027476574204B65792720616E64206A6F696E2074686520446973636F726420666F7220746865206B6579026O002C40030B3O00546578745772612O7065642O01030A3O005A656E6F6E313233343503113O004D6F75736542752O746F6E31436C69636B03073O00436F2O6E65637400ED012O0012223O00013O0020305O0002001227000200034O001E3O00020002001222000100013O002030000100010002001227000300044O001E000100030002001222000200013O0020140002000200052O000600033O000800301B00030006000700301B00030008000900301B0003000A000B00301B0003000C000D00301B0003000E000D00301B0003000F000D00301B00030010000D00301B00030011001200062900043O000100012O00203O00033O001222000500133O001222000600013O002030000600060014001227000800154O0037000600084O000A00053O00022O001A000500010002001222000600133O001222000700013O002030000700070014001227000900164O0037000700094O000A00063O00022O001A0006000100022O002B000700044O002B000800024O003F00070002000200062D000700470001000100041C3O00470001001227000800174O003B000900093O00263D0008002A0001001700041C3O002A0001001227000900173O00263D0009002D0001001700041C3O002D0001001227000A00173O00263D000A00300001001700041C3O00300001002030000B000600182O0006000D3O000200301B000D0019001A00301B000D001B001C2O0006000E3O0003001222000F001E3O002014000F000F001F001227001000203O001227001100213O001227001200214O001E000F00120002001021000E001D000F00301B000E0022002300301B000E002400252O000D000B000E00012O00093O00013O00041C3O0030000100041C3O002D000100041C3O0056000100041C3O002A000100041C3O005600010020300008000600182O0006000A3O000200301B000A0019002600301B000A001B00272O0006000B3O0003001222000C001E3O002014000C000C001F001227000D00213O001227000E00203O001227000F00214O001E000C000F0002001021000B001D000C00301B000B0022002800301B000B002400252O000D0008000B0001001222000800293O00201400080008002A0012270009002B4O003F00080002000200301B0008002C002D00201400093O002F002030000900090030001227000B00314O001E0009000B00020010210008002E0009001222000900293O00201400090009002A001227000A00324O003F000900020002001222000A00343O002014000A000A002A001227000B00353O001227000C00173O001227000D00363O001227000E00174O001E000A000E000200102100090033000A001222000A00343O002014000A000A002A001227000B00383O001227000C00173O001227000D00383O001227000E00174O001E000A000E000200102100090037000A001222000A001E3O002014000A000A001F001227000B003A3O001227000C003A3O001227000D003A4O001E000A000D000200102100090039000A00301B0009003B0017001222000A003D3O002014000A000A002A001227000B00383O001227000C00384O001E000A000C00020010210009003C000A0010210009002E0008001222000A00293O002014000A000A002A001227000B003E4O003F000A00020002001222000B00403O002014000B000B002A001227000C00173O001227000D00414O001E000B000D0002001021000A003F000B001021000A002E0009001222000B00293O002014000B000B002A001227000C00324O003F000B00020002001222000C00343O002014000C000C002A001227000D00423O001227000E00173O001227000F00433O001227001000174O001E000C00100002001021000B0033000C001222000C00343O002014000C000C002A001227000D00173O001227000E00173O001227000F00173O001227001000174O001E000C00100002001021000B0037000C001222000C001E3O002014000C000C001F001227000D00443O001227000E00443O001227000F00444O001E000C000F0002001021000B0039000C00301B000B003B0017001021000B002E0009001222000C00293O002014000C000C002A001227000D00454O003F000C00020002001222000D00473O002014000D000D002A2O0006000E00013O001222000F00483O002014000F000F002A001227001000173O0012220011001E3O00201400110011001F001227001200443O001227001300443O001227001400444O0037001100144O000A000F3O0002001222001000483O00201400100010002A001227001100423O0012220012001E3O00201400120012001F0012270013003A3O0012270014003A3O0012270015003A4O0037001200154O002500106O0035000E3O00012O003F000D00020002001021000C0046000D00301B000C0049004A001021000C002E000B001222000D00293O002014000D000D002A001227000E003E4O003F000D00020002001222000E00403O002014000E000E002A001227000F00173O001227001000414O001E000E00100002001021000D003F000E001021000D002E000B001222000E00293O002014000E000E002A001227000F004B4O003F000E00020002001222000F00343O002014000F000F002A0012270010004C3O001227001100173O001227001200423O001227001300174O001E000F00130002001021000E0033000F001222000F00343O002014000F000F002A0012270010004D3O001227001100173O001227001200173O001227001300174O001E000F00130002001021000E0037000F00301B000E004E004F001222000F001E3O002014000F000F001F001227001000203O001227001100203O001227001200204O001E000F00120002001021000E0050000F00301B000E00510042001222000F00533O002014000F000F0052002014000F000F0054001021000E0052000F00301B000E00550056001021000E002E000B001222000F00293O002014000F000F002A001227001000574O003F000F00020002001222001000343O00201400100010002A0012270011004C3O001227001200173O001227001300433O001227001400174O001E001000140002001021000F00330010001222001000343O00201400100010002A0012270011004D3O001227001200173O001227001300583O001227001400174O001E001000140002001021000F0037001000301B000F0059005A00301B000F004E005B0012220010001E3O00201400100010001F0012270011005C3O0012270012005C3O0012270013005C4O001E001000130002001021000F003900100012220010001E3O00201400100010001F001227001100203O001227001200203O001227001300204O001E001000130002001021000F00500010001222001000533O00201400100010005200201400100010005D001021000F0052001000301B000F0055005E001021000F002E0009001222001000293O00201400100010002A0012270011003E4O003F001000020002001222001100403O00201400110011002A001227001200173O001227001300234O001E0011001300020010210010003F00110010210010002E000F001222001100293O00201400110011002A0012270012005F4O003F001100020002001222001200343O00201400120012002A001227001300603O001227001400173O001227001500433O001227001600174O001E001200160002001021001100330012001222001200343O00201400120012002A0012270013004D3O001227001400173O001227001500363O001227001600174O001E00120016000200102100110037001200301B0011004E00610012220012001E3O00201400120012001F001227001300623O001227001400623O001227001500624O001E0012001500020010210011003900120012220012001E3O00201400120012001F001227001300203O001227001400203O001227001500204O001E001200150002001021001100500012001222001200533O00201400120012005200201400120012005400102100110052001200301B00110055005E0010210011002E0009001222001200293O00201400120012002A0012270013003E4O003F001200020002001222001300403O00201400130013002A001227001400173O001227001500234O001E0013001500020010210012003F00130010210012002E0011001222001300293O00201400130013002A0012270014005F4O003F001300020002001222001400343O00201400140014002A001227001500603O001227001600173O001227001700433O001227001800174O001E001400180002001021001300330014001222001400343O00201400140014002A001227001500633O001227001600173O001227001700363O001227001800174O001E00140018000200102100130037001400301B0013004E00640012220014001E3O00201400140014001F001227001500623O001227001600623O001227001700624O001E0014001700020010210013003900140012220014001E3O00201400140014001F001227001500203O001227001600203O001227001700204O001E001400170002001021001300500014001222001400533O00201400140014005200201400140014005400102100130052001400301B00130055005E0010210013002E0009001222001400293O00201400140014002A0012270015003E4O003F001400020002001222001500403O00201400150015002A001227001600173O001227001700234O001E0015001700020010210014003F00150010210014002E0013001222001500293O00201400150015002A0012270016004B4O003F001500020002001222001600343O00201400160016002A0012270017004C3O001227001800173O001227001900583O001227001A00174O001E0016001A0002001021001500330016001222001600343O00201400160016002A0012270017004D3O001227001800173O001227001900653O001227001A00174O001E0016001A000200102100150037001600301B0015004E00660012220016001E3O00201400160016001F001227001700203O001227001800203O001227001900204O001E00160019000200102100150050001600301B001500510042001222001600533O00201400160016005200201400160016005D00102100150052001600301B00150055006700301B0015006800690010210015002E0009001222001600293O00201400160016002A001227001700454O003F001600020002001222001700473O00201400170017002A2O0006001800013O001222001900483O00201400190019002A001227001A00173O001222001B001E3O002014001B001B001F001227001C00443O001227001D00443O001227001E00444O0037001B001E4O000A00193O0002001222001A00483O002014001A001A002A001227001B00423O001222001C001E3O002014001C001C001F001227001D003A3O001227001E003A3O001227001F003A4O0037001C001F4O0025001A6O003500183O00012O003F00170002000200102100160046001700301B00160049004A0010210016002E00092O0006001700013O0012270018006A4O000700170001000100201400180011006B00203000180018006C000629001A0001000100052O00203O000F4O00203O00174O00203O00084O00203O00064O00203O00074O000D0018001A000100201400180013006B00203000180018006C000629001A0002000100012O00203O00064O000D0018001A00012O00338O00093O00013O00037O0001074O002C00016O002A000100013O00062D000100050001000100041C3O000500012O003B000100014O0012000100024O00093O00017O00193O00028O0003043O005465787403053O007461626C6503043O0066696E64026O00F03F03053O007072696E74031C3O00452O726F7220657865637574696E67206C6F6164737472696E673A2003073O0044657374726F7903063O004E6F7469667903053O005469746C6503073O0053752O63652O73030B3O004465736372697074696F6E03123O0056616C6964206B657920656E746572656421030C3O004F75746C696E65436F6C6F7203063O00436F6C6F723303073O0066726F6D524742026O005440025O00E06F4003043O0054696D65026O00144003043O005479706503073O0064656661756C7403053O007063612O6C03053O00452O726F7203263O00496E76616C6964206B657920656E74657265642E20506C656173652074727920616761696E2E005C3O0012273O00014O003B000100013O00263D3O00020001000100041C3O000200012O002C00025O002014000100020002001222000200033O0020140002000200042O002C000300014O002B000400014O001E0002000400020006080002004900013O00041C3O00490001001227000200014O003B000300053O00263D000200420001000500041C3O004200012O003B000500053O00263D0003001F0001000500041C3O001F000100062D0004001B0001000100041C3O001B0001001222000600063O001227000700074O002B000800054O00310007000700082O00180006000200012O002C000600023O0020300006000600082O001800060002000100041C3O005B000100263D000300120001000100041C3O00120001001227000600013O00263D0006003B0001000100041C3O003B00012O002C000700033O0020300007000700092O000600093O000200301B0009000A000B00301B0009000C000D2O0006000A3O0003001222000B000F3O002014000B000B0010001227000C00113O001227000D00123O001227000E00114O001E000B000E0002001021000A000E000B00301B000A0013001400301B000A001500162O000D0007000A0001001222000700173O00062900083O000100012O003E3O00044O00110007000200082O002B000500084O002B000400073O001227000600053O000E41000500220001000600041C3O00220001001227000300053O00041C3O0012000100041C3O0022000100041C3O0012000100041C3O005B000100263D0002000F0001000100041C3O000F0001001227000300014O003B000400043O001227000200053O00041C3O000F000100041C3O005B00012O002C000200033O0020300002000200092O000600043O000200301B0004000A001800301B0004000C00192O000600053O00030012220006000F3O002014000600060010001227000700123O001227000800113O001227000900114O001E0006000900020010210005000E000600301B00050013001400301B0005001500162O000D00020005000100041C3O005B000100041C3O000200012O00093O00013O00013O00073O00028O00026O00F03F03053O00652O726F7203163O004661696C656420746F206C6F6164207363726970742E03043O0067616D6503073O00482O7470476574030A3O006C6F6164737472696E6700233O0012273O00014O003B000100023O00263D3O000D0001000200041C3O000D00010006080002000900013O00041C3O000900012O002B000300024O002400030001000100041C3O00220001001222000300033O001227000400044O001800030002000100041C3O0022000100263D3O00020001000100041C3O00020001001227000300013O000E41000200140001000300041C3O001400010012273O00023O00041C3O0002000100263D000300100001000100041C3O00100001001222000400053O0020300004000400062O002C00066O001E0004000600022O002B000100043O001222000400074O002B000500014O003F0004000200022O002B000200043O001227000300023O00041C3O0010000100041C3O000200012O00093O00017O00113O00028O00030C3O00736574636C6970626F617264031D3O00682O7470733A2O2F646973636F72642E2O672F566D753972554B6E396803063O004E6F7469667903053O005469746C65030B3O004C696E6B20436F70696564030B3O004465736372697074696F6E03333O0054686520446973636F7264206C696E6B2068617320622O656E20636F7069656420746F20796F757220636C6970626F61726421030C3O004F75746C696E65436F6C6F7203063O00436F6C6F723303073O0066726F6D524742026O005440025O00E06F4003043O0054696D65026O00144003043O005479706503073O0064656661756C7400193O0012273O00013O00263D3O00010001000100041C3O00010001001222000100023O001227000200034O00180001000200012O002C00015O0020300001000100042O000600033O000200301B00030005000600301B0003000700082O000600043O00030012220005000A3O00201400050005000B0012270006000C3O0012270007000C3O0012270008000D4O001E00050008000200102100040009000500301B0004000E000F00301B0004001000112O000D00010004000100041C3O0018000100041C3O000100012O00093O00017O00",v9(),...);