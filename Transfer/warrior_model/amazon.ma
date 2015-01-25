//Maya ASCII 2015 scene
//Name: amazon.ma
//Last modified: Sat, Jan 24, 2015 05:23:41 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKControlSetNode"
		 -nodeType "HIKEffectorFromCharacter" -nodeType "HIKFK2State" -nodeType "HIKState2FK"
		 -nodeType "HIKState2SK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2014.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 43358.298519454715 28878.560926402854 19675.057440198172 ;
	setAttr ".r" -type "double3" 155.06164727038208 115.79999999993366 179.99999999999392 ;
	setAttr ".rp" -type "double3" -4.5474735088646412e-013 -3.637978807091713e-012 -5.4569682106375694e-012 ;
	setAttr ".rpt" -type "double3" 1.9759169995616874e-012 -6.4519749084938415e-012 
		-2.194532694868692e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fcp" 10000000;
	setAttr ".coi" 51164.313485050086;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -133.83038601317287 11966.662511303224 494.36536251128041 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5110.267983990665 100.09999999999749 11284.092239005306 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 10000000000000000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 279678.6498490579;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1193.7289737734786 6777.4321394333165 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 9.9999999999999992e+022;
	setAttr ".coi" 100.1;
	setAttr ".ow" 22142.26674935679;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 21109.7626953125 4356.4008829415634 200.97822767851449 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 2.8421709430404007e-014 0 3.637978807091713e-012 ;
	setAttr ".rpt" -type "double3" 3.6379788070917138e-012 4.7060701311248248e-014 -3.649685369666863e-012 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 10000000000000000;
	setAttr ".coi" 21109.763286337376;
	setAttr ".ow" 92825.59589805991;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.00059102487648488022 9939.7611480526411 221.70916199683901 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "metarig";
	setAttr ".r" -type "double3" -90.00000933466734 0 0 ;
	setAttr ".s" -type "double3" 10000 10000 10000 ;
createNode joint -n "hips" -p "metarig";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 10000 10000 10000 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 10000.001953125 0 0 0 0 9459.1064453125036 3244.2814941406268 0
		 0 -3244.2814941406268 9459.1064453125036 0 -1.9527894655046315e-013 6679.33642578125 -190.64283752441403 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.0054050210955884246;
	setAttr ".fbxID" 5;
createNode joint -n "spine" -p "hips";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 10000.001953125 0 0 0 0 9995.7929687343403 -290.02133232683946 0
		 0 290.02138899914416 9995.7949219859256 0 1.6620589626814564e-010 8383.5576171875 393.87060546875023 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 0.0035699805787651551;
	setAttr ".fbxID" 5;
createNode joint -n "chest" -p "spine";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 10000 0 0 0 0 9879.4619127886526 -1547.9642415284197 0
		 0 1547.9642183568144 9879.4649226131969 0 2.2115916042952932e-010 9573.05078125 359.35827636718756 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 0.0086180995703707495;
	setAttr ".fbxID" 5;
createNode joint -n "neck" -p "chest";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 10000 0 0 0 0 9632.2352654073384 2687.0034826730634 0
		 0 -2687.0021739266367 9632.2377198303275 0 2.7514651668170137e-010 12411.123046875 -85.325706481933537 1;
	setAttr ".ds" 2;
	setAttr ".typ" 7;
	setAttr ".radi" 0.0040388224813927625;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "neck";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 10000 0 0 0 0 9999.9960937499909 0.0024809812680359755 0
		 0 -0.0018798692958625907 9999.9990234376528 0 2.5464827468901779e-010 13707.8876953125 276.41873168945318 1;
	setAttr ".ds" 2;
	setAttr ".typ" 8;
	setAttr ".radi" 0.01143595550614915;
	setAttr ".fbxID" 5;
createNode joint -n "shoulderFBXASC046L" -p "chest";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 0.99999980468753824 0.99999985455525209 0.99999996235608168 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 6518.86572265625 -10.017156600951466 -7583.1582031250018 0
		 -7580.8375667258197 239.04948619279537 -6517.1878873248261 0 187.80338346364795 9997.1328060474225 148.23978524313111 0
		 -136.96995544433594 12013.6845703125 511.95303344726551 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.0046152777800465474;
	setAttr ".fbxID" 5;
createNode joint -n "upper_armFBXASC046L" -p "shoulderFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -8944.0527343750018 -4346.7075195312491 1053.5898437500014 0
		 4325.9189086648394 -9005.6130698634461 -430.47837793523661 0 1135.9382281380738 70.75266535112263 9935.0235218764537 0
		 1497.0797119140625 11897.772460937498 -537.07342529296932 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.0087337643415994134;
	setAttr ".fbxID" 5;
createNode joint -n "forearmFBXASC046L" -p "upper_armFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9404.9501953125 -3278.3251953125 -894.16113281250091 0
		 3278.9897707268633 -9446.0326044122339 143.65696332389496 0 -891.72344624735251 -158.08533923870345 9958.9111368058111 0
		 2756.464599609375 9276.0087890624982 -662.39636230468739 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.0083238361170077674;
	setAttr ".fbxID" 5;
createNode joint -n "handFBXASC046L" -p "forearmFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 989.663024902345 -777.25506591796841 -9920.5078125 0
		 2425.1944742694973 -9649.9915048621151 997.99696404377619 0 -9650.8550819325646 -2504.6836230213016 -766.52482775019962 0
		 3666.2565917968736 6655.1020507812491 -622.53710937500011 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.0017999376339598368;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04601FBXASC046L" -p "handFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9020.5537109375 1512.575439453125 4042.4919433593777 0
		 -1924.3383266684818 -6974.1047501392877 6903.5302103711374 0 3863.4881342441981 -7005.2741079721545 -5999.9625297274615 0
		 3654.3750000000018 6438.2128906250009 -397.2975158691404 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.0011738744973220599;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04602FBXASC046L" -p "thumbFBXASC04601FBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9331.5781250000018 -385.78451538085892 3573.91845703125 0
		 -1942.3260259823953 -8907.0398204725843 4109.9857479360344 0 3024.7459548153547 -4529.4325220922856 -8386.6081201697743 0
		 3579.0771484374995 6165.3222656249991 -127.16779327392601 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.0013049245895270178;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04603FBXASC046L" -p "thumbFBXASC04602FBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9235.3515624999982 -612.239013671875 3785.9548339843745 0
		 -2201.8621980103712 -8929.1014485239484 3927.2019974973987 0 3140.0790516225925 -4460.5209971353661 -8381.1500008452258 0
		 3494.5908203125005 5777.88916015625 51.606521606445284 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.00046683348985149481;
	setAttr ".fbxID" 5;
createNode joint -n "palmFBXASC04602FBXASC046L" -p "handFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1318.6055908203125 -554.53619384765636 -9897.16015625 0
		 2195.1972074802943 -9720.0976157665555 837.08350831160658 0 -9666.5567457021443 -2282.9992043410321 -1159.9661366563046 0
		 3797.0393066406264 6187.3046874999991 -592.27978515624977 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0018223575783925311;
	setAttr ".fbxID" 5;
createNode joint -n "f_middleFBXASC04601FBXASC046L" -p "palmFBXASC04602FBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1387.3165283203123 -223.5548400878908 -9900.7802734375018 0
		 -1449.8095259779525 -9894.3164128154513 20.258751483311869 0 -9796.6004551785063 1432.6142289334634 -1405.0666101830502 0
		 3930.3867187499995 5596.8544921875 -541.43109130859375 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0012868326744077537;
	setAttr ".fbxID" 5;
createNode joint -n "f_middleFBXASC04602FBXASC046L" -p "f_middleFBXASC04601FBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 521.26940917968761 -244.78135681152338 -9983.404296875 0
		 -3932.1813033091021 -9194.4198577276802 20.123511006982085 0 -9179.6590381619953 3924.6055150717152 -575.52918080988968 0
		 3868.1979980468745 5172.4438476562509 -540.56201171874977 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0007229292355958308;
	setAttr ".fbxID" 5;
createNode joint -n "shoulderFBXASC046R" -p "chest";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 6518.86572265625 -10.017156600951466 -7583.1582031250018 0
		 -7580.8375667258197 239.04948619279537 -6517.1878873248261 0 187.80338346364795 9997.1328060474225 148.23978524313111 0
		 -136.96995544433594 12013.6845703125 511.95303344726551 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.0046152777800465474;
	setAttr ".fbxID" 5;
createNode joint -n "upper_armFBXASC046R" -p "shoulderFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -8944.048828125 4346.70361328125 -1053.5891113281223 0
		 -4325.9154590700509 -9005.6099160181002 -430.47588437582556 0 -1135.9383887766089 70.754452262105019 9935.0223593956016 0
		 -1497.079345703125 11897.771484374998 -537.07299804687466 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.0087337643415994134;
	setAttr ".fbxID" 5;
createNode joint -n "forearmFBXASC046R" -p "upper_armFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9404.9443359375 3278.3212890625005 894.16174316406205 0
		 -3278.9864874168388 -9446.0284825965682 143.65907050287376 0 891.72206904332893 -158.08321868456181 9958.9075045719255 0
		 -2756.4628906249991 9276.0087890625018 -662.39514160156239 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.0083238361170077674;
	setAttr ".fbxID" 5;
createNode joint -n "handFBXASC046R" -p "forearmFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 989.66064453125023 777.25665283202977 9920.505859375 0
		 -2425.2063905404157 -9649.9848951305248 997.99951493876029 0 9650.8458608464025 -2504.6941855022292 -766.52330294743456 0
		 -3666.254150390625 6655.1030273437518 -622.53515624999989 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.0017999376339598368;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04601FBXASC046R" -p "handFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9020.5488281249982 -1512.5731201171857 -4042.4921874999995 0
		 1924.3373694727006 -6974.0994227260217 6903.5302540905777 0 -3863.4833116024956 -7005.2725233428309 -5999.9573772102267 0
		 -3654.373046875 6438.2143554687491 -397.29553222656261 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.0011738744973220599;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04602FBXASC046R" -p "thumbFBXASC04601FBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9331.5683593750018 385.7855834960942 -3573.91845703125 0
		 1942.3254582448649 -8907.0327458972097 4109.9864221812531 0 -3024.7424532434025 -4529.4323590291269 -8386.6036113109567 0
		 -3579.0754394531241 6165.32421875 -127.16593170166055 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.0013049245895270178;
	setAttr ".fbxID" 5;
createNode joint -n "thumbFBXASC04603FBXASC046R" -p "thumbFBXASC04602FBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9235.3447265625 612.23999023437534 -3785.9548339843755 0
		 2201.8607932607933 -8929.0938574845986 3927.2027514659908 0 -3140.0739153185764 -4460.519993608913 -8381.1440979862164 0
		 -3494.5888671874995 5777.89111328125 51.608139038086335 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.00046683348985149481;
	setAttr ".fbxID" 5;
createNode joint -n "palmFBXASC04602FBXASC046R" -p "handFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1318.6029052734373 554.53808593750011 9897.158203125 0
		 -2195.1810519031183 -9720.0975849994938 837.08336614107452 0 9666.5556758957882 -2282.9820480179001 -1159.9672653517082 0
		 -3797.0373535156255 6187.30615234375 -592.27758789062511 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0018223575783925311;
	setAttr ".fbxID" 5;
createNode joint -n "f_middleFBXASC04601FBXASC046R" -p "palmFBXASC04602FBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1387.3161621093752 223.55696105957037 9900.7783203125 0
		 1449.8153742338777 -9894.3135219714895 20.259308896676998 0 9796.5949730845859 1432.620962572299 -1405.0694088910466 0
		 -3930.384521484375 5596.8564453124991 -541.42864990234375 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0012868326744077537;
	setAttr ".fbxID" 5;
createNode joint -n "f_middleFBXASC04602FBXASC046R" -p "f_middleFBXASC04601FBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 521.26806640625045 244.78338623046884 9983.4013671875018 0
		 3932.2155211852723 -9194.4004166988307 20.122374315235447 0 9179.6387358374359 3924.6419814230562 -575.53124707872189 0
		 -3868.1958007812495 5172.4453125 -540.55950927734375 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.0007229292355958308;
	setAttr ".fbxID" 5;
createNode joint -n "thighFBXASC046L" -p "hips";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr -av ".is" -type "double3" 1.0000001953125 1.0000002857848385 1.0000002857848385 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 9968.5371093749982 791.79528808593727 -37.969589233398494 0
		 786.90759049948451 -9942.0957314915977 -731.78608262782109 0 -95.692142872510004 726.49546607791308 -9973.1171891606373 0
		 733.50024414062489 7144.13671875 129.70208740234389 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.011311086028114547;
	setAttr ".fbxID" 5;
createNode joint -n "shinFBXASC046L" -p "thighFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9999.4111328125 -57.983470916748274 -92.545410156250057 0
		 -71.262116227852232 -9885.7109313909859 -1505.8613187317978 0 -82.756044829652225 1506.4309762920761 -9885.5351842719065 0
		 1030.19287109375 3395.60791015625 -146.2075958251954 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.0080530393485853512;
	setAttr ".fbxID" 5;
createNode joint -n "footFBXASC046L" -p "shinFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9999.9951171875 0.0069538392126560211 0.0021727157290882815 0
		 0.00096554737052656492 -4923.8374790483276 8703.7795297092525 0 0.0063118495434828503 -8703.7802441992262 -4923.8384305914597 0
		 1011.0639648437499 741.9407958984375 -550.43273925781261 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.0036094825468513296;
	setAttr ".fbxID" 5;
createNode joint -n "toeFBXASC046L" -p "footFBXASC046L";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9999.9960937483847 -0.0069538398906751836 -0.0021727159406643081 0
		 -0.0022674650127588129 0.004765440862684045 10000.001953124773 0 -0.0059691147476715872 9999.9980468737594 -0.0035854332018061541 0
		 1011.0641479492189 149.52392578124989 496.77197265624989 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 29;
	setAttr ".radi" 0.001508914817272904;
	setAttr ".fbxID" 5;
createNode joint -n "thighFBXASC046R" -p "hips";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9968.5390625 -791.79949951171886 37.969997406005888 0
		 -786.91175519957289 -9942.0976930042234 -731.7879766434412 0 95.69297990775361 726.49718815066944 -9973.118164864014 0
		 -733.50030517578125 7144.13671875 129.70208740234389 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.011311086028114547;
	setAttr ".fbxID" 5;
createNode joint -n "shinFBXASC046R" -p "thighFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9999.4033203124982 57.979412078857642 92.544258117675767 0
		 71.257987694258759 -9885.7128847942968 -1505.8627807171113 0 82.755598289114388 1506.4327462011956 -9885.5380485198457 0
		 -1030.194580078125 3395.6069335937491 -146.2083282470704 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.0080530393485853512;
	setAttr ".fbxID" 5;
createNode joint -n "footFBXASC046R" -p "shinFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 9999.9990234375 -0.010958621278376768 -0.0032884678803100087 0
		 -0.0020923964901271574 -4923.8393799024425 8703.7805358421774 0 -0.010173202817281179 -8703.7812170287089 -4923.840878597568 0
		 -1011.0667114257811 741.93927001953125 -550.4339599609375 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.0036094825468513296;
	setAttr ".fbxID" 5;
createNode joint -n "toeFBXASC046R" -p "footFBXASC046R";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -9999.9990234344477 0.010958621279439328 0.0032884678809120011 0
		 0.0031879509226447758 0.0039738448604111909 10000.004882811918 0 0.0098847960789776451 10000.001953123572 -0.0023340067637036555 0
		 -1011.06689453125 149.52212524414051 496.77084350585937 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 29;
	setAttr ".radi" 0.001508914817272904;
	setAttr ".fbxID" 5;
createNode transform -n "Amazon";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 10000 10000 10000 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "AmazonShape" -p "Amazon";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "AmazonShapeOrig" -p "Amazon";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 536 ".vt";
	setAttr ".vt[0:165]"  0.11482757 0.013135077 0.86485702 0.099930763 -0.10239459 0.86088312
		 0.14344184 0.038969964 0.95207739 0.12851989 -0.09227553 0.9609046 0.13059555 0.021080043 0.81402785
		 0.12571359 -0.10383112 0.78615695 0.17278436 0.061053723 0.67896736 0.16136771 -0.10328058 0.6828326
		 0.026869643 0.11581029 0.58710819 0.026869643 -0.10079334 0.58214092 0.078499138 -0.082366213 0.46413374
		 0.10781256 0.10863194 0.46371138 0.1735241 0.0060391575 0.46417272 0.18964612 -0.015054628 0.58132315
		 0.1070164 0.12154298 0.56506842 0.070006058 -0.10128538 0.55860823 0.019409172 -0.0075389892 0.55089241
		 0.02686964 -0.089206994 0.55089241 0.075343385 -0.12815556 0.71035761 0.065224655 -0.13531277 0.77672178
		 0.14344184 -0.036974665 0.95571941 0.11482757 -0.055753939 0.86008829 0.049733188 -0.13163763 0.85975671
		 0.1505954 -0.054367013 0.80110985 0.055663496 -0.12098753 0.96351534 0.18716314 -0.042640522 0.70050651
		 0.026869643 -0.0075389892 0.58214092 0.02686964 0.10526387 0.55207026 0.16332647 -0.085537076 0.57730883
		 0.087558605 0.094689511 0.74757218 0.075297698 0.053617701 0.81730348 0.070006058 -0.12113094 0.61605722
		 0.1070164 0.12154298 0.64191979 0.057413787 0.041341711 0.866844 0.071720921 0.05822771 0.95614403
		 0.15769006 0.048025265 0.74603927 0.17336749 -0.048412301 0.73846042 0.18716314 0.064366549 0.57806647
		 0.15225622 -0.10355023 0.72399944 0.033546016 0.0079070069 0.46448314 0.044306584 -0.064861 0.46448314
		 0.044477649 0.095929071 0.46538618 0.15276226 -0.055283856 0.4649176 0.17114744 0.059548557 0.46203649
		 0.081517845 -0.038437869 0.35449642 0.10116253 0.098780051 0.35421339 0.14924271 0.018038504 0.35452256
		 0.048683036 0.031736895 0.35473058 0.058603354 -0.017488003 0.35473058 0.058717996 0.090267092 0.35533577
		 0.13128603 -0.021699782 0.35502174 0.14360704 0.061730385 0.35607001 0.084257737 0.0077714846 0.28428271
		 0.10033429 0.11105505 0.32835791 0.13968149 0.050235067 0.30253053 0.057386827 0.060469549 0.30710822
		 0.065505281 0.02345087 0.29122052 0.065599099 0.10429078 0.3264544 0.12498634 0.020189501 0.2900801
		 0.13506944 0.082808018 0.31523529 0.084257737 0.016726471 0.23975348 0.10033429 0.12854144 0.25012338
		 0.13968149 0.062736437 0.24413776 0.057386827 0.073880613 0.2453655 0.065505281 0.033776488 0.24156269
		 0.065599099 0.12151912 0.25038022 0.12498634 0.030322604 0.24147454 0.13506944 0.097634301 0.24627006
		 0.089090563 0.034122087 0.15161432 0.098873369 0.10242657 0.14964142 0.1228167 0.062236853 0.15087333
		 0.072739236 0.069058821 0.150794 0.077679425 0.044554234 0.15145119 0.077736519 0.098203734 0.15031384
		 0.1138745 0.042461455 0.15165237 0.1200102 0.083473608 0.14959061 0.091131859 0.039499499 0.095368534
		 0.098256305 0.089243069 0.093931749 0.11569332 0.059974417 0.094828904 0.079223804 0.064942598 0.094771124
		 0.082821563 0.047096834 0.095249727 0.082863137 0.086167738 0.094421439 0.10918106 0.045572743 0.095396243
		 0.11364946 0.075440347 0.093894742 0.14378145 0.058342971 1.058799267 0.1657577 -0.088137999 1.067652941
		 0.16077794 0.0074362475 1.079017878 0.055663496 -0.16319039 1.054541111 0.071183696 0.092726603 1.042582273
		 0.14318939 0.05379976 1.22763133 0.12851989 -0.053382706 1.15288615 0.14757858 -0.012363748 1.15294218
		 0.055663496 -0.096162334 1.15797949 0.071720921 0.11780821 1.12909293 0.080956601 0.035330892 1.26875997
		 0.073076934 -0.0169724 1.25384212 0.038285851 -0.045684412 1.24983287 0.095873222 0.11026254 1.20245051
		 0.11133642 0.045251153 1.24918795 0.041592345 0.07351891 1.28305793 0.057127982 0.087213919 1.25111485
		 0.098599814 -0.033733696 1.20736766 0.046285562 -0.068921663 1.20754862 0.08600767 0.008853768 1.2600255
		 0.11848369 0.0016068034 1.21466422 0.11093635 0.108751 1.12806177 0.1911433 0.064126186 1.2226944
		 0.23595782 0.064126194 1.16753793 0.1926195 0.010136811 1.12120819 0.17902789 0.0056655146 1.15278506
		 0.15577032 0.11955562 1.18340778 0.19347367 0.12095885 1.13612366 0.069689944 0.10647494 1.088257074
		 0.12845011 0.095145553 1.088210821 0.20729978 0.057292115 0.97663486 0.22484927 0.028770728 0.98302555
		 0.28012079 0.063688643 1.018890858 0.25618598 0.031242725 1.0026288033 0.25440055 0.093957141 1.0077037811
		 0.21841614 0.084672943 0.98784655 0.24867354 0.05760628 0.9146136 0.26499909 0.03247216 0.91670334
		 0.31946838 0.063243151 0.93681407 0.29573923 0.034650579 0.92747706 0.29518872 0.089916892 0.93218595
		 0.26040405 0.081735305 0.92209548 0.27053571 0.056876123 0.82479668 0.29441559 0.018089492 0.82812375
		 0.35553855 0.064218588 0.85152292 0.34095874 0.023181019 0.84421456 0.32576147 0.10410824 0.84622204
		 0.27756566 0.096469142 0.83229113 0.34663203 0.059074365 0.66448224 0.35115018 0.038674578 0.6645357
		 0.38018435 0.061657324 0.6750533 0.36933663 0.038259983 0.67023766 0.36397666 0.082730144 0.67117178
		 0.35066274 0.079958387 0.66784751 0.091131859 0.014956603 0.073578827 0.083054438 -0.064259551 0.025898613
		 0.080977388 -0.093639582 0.018959649 0.098256305 0.090572603 0.063352443 0.098256305 0.10852133 0.03576459
		 0.098256305 0.095890746 0.0036595874 0.12314246 0.060409609 0.064895622 0.074222781 0.064942606 0.064187944
		 0.11458616 0.025250461 0.068816103 0.11636979 0.078511007 0.064126715 0.081043489 0.085627601 0.063033722
		 0.079309851 0.040730231 0.068029553 0.086516194 -0.021882018 0.045630731 0.12383699 -0.007590482 0.025995199
		 0.069842406 -0.009584506 0.026393585 0.066651657 0.0030453727 0.0019312799 0.1258312 0.0030453745 0.0027289633
		 0.084691614 0.0030453745 -6.2936917e-005 0.12792812 0.060409613 0.034187652 0.12433888 0.060409617 0.0042772926
		 0.06824071 0.064942613 0.030688342 0.068639517 0.064942613 0.0043672267 0.12692538 -0.061844673 0.015626272
		 0.059541017 -0.063439891 0.017619878 0.056350272 -0.055994473 0.0019312799 0.1289196 -0.055994473 0.0027289633
		 0.081453651 -0.055994473 -6.2936917e-005 0.065207064 -0.093466744 0.01415813;
	setAttr ".vt[166:331]" 0.062016319 -0.092483275 0.0023928471 0.080977388 -0.093639582 0.0025724266
		 0.083054438 -0.10645714 0.017050363 0.12383699 -0.078585058 0.015626272 0.1258312 -0.072734855 0.0027289633
		 0.081453651 -0.098192059 0.002821682 0.087376423 -0.18790461 1.38174033 0.072018899 -0.18363476 1.36017132
		 0.14199086 -0.099814706 1.42113781 0.12683581 -0.094795957 1.39170551 0.17676181 -0.040287677 1.44303036
		 0.16932215 -0.0223714 1.42574048 0.20633781 0.0065928511 1.50826836 0.19021982 0.031944055 1.49995279
		 0.024851164 -0.18340929 1.34502625 0.04706056 -0.09606421 1.35702443 0.044636235 -0.24292432 1.36211324
		 0.035344686 -0.22773205 1.34070373 0.072569124 -0.056619417 1.36676764 0.076899 0.01750735 1.37734056
		 0.12304112 0.035126697 1.42606401 0.15337673 0.070980005 1.49556327 0.071670987 -0.27647743 1.52738929
		 0.08206097 -0.24462485 1.69469047 0.084341116 -0.22116016 1.85773945 0.12474669 -0.21445467 1.53365088
		 0.14397372 -0.19292913 1.69822836 0.17923981 -0.14647967 1.54484272 0.2132645 -0.13177378 1.70338154
		 0.23003134 0.0024671704 1.57485652 0.20339194 0.070181653 1.56858897 0.19380039 -0.056001626 1.49515343
		 0.247756 0.0066968258 1.71458149 0.16106576 -0.17722706 1.8080883 0.22319561 0.10221867 1.71412015
		 0.13688849 -0.1022005 1.92468429 0.17420682 0.013576842 1.96106815 0.12897527 0.18022266 1.88905334
		 0.12268171 0.19154498 1.71814203 0.21590203 -0.11273295 1.81743073 0.26023433 0.0081771053 1.83535409
		 0.10792814 0.14334682 1.55264831 0.070644148 0.072422624 1.42630291 0.044661559 0.053974077 1.37931943
		 0.091046602 0.09792266 1.48862386 0.20511256 0.12628368 1.82734418 0.037488688 -0.061066948 1.30019188
		 0.061818674 -0.032834925 1.3059051 0.066695489 0.022184188 1.32002401 0.040336806 0.054850038 1.32820249
		 0.084464543 -0.019594032 1.37632394 0.15585846 0.0052753817 1.42718267 0.16761217 0.03751009 1.47854209
		 0.074304022 -0.0034078402 1.31208849 0.39528486 0.053969767 0.61405408 0.37960139 0.10168322 0.61373305
		 0.36136064 0.09788578 0.60917866 0.38429487 0.098127976 0.56209034 0.37607908 0.096417576 0.56003898
		 0.38347822 0.093624011 0.52423233 0.37731159 0.092427701 0.5269379 0.38178909 0.052191794 0.49853569
		 0.37562245 0.050995484 0.50124127 0.37969387 0.017822038 0.5088433 0.37352723 0.016625728 0.51154888
		 0.38664389 0.017502237 0.56271356 0.3793667 0.01602119 0.56259829 0.38702485 0.027844531 0.60923839
		 0.37841296 0.020452008 0.60977483 0.34837428 -0.014453097 0.5785448 0.34143296 -0.010515801 0.57935017
		 0.34378949 0.0082738781 0.6259073 0.35531121 0.0041122944 0.62327254 0.3785888 0.05005208 0.6736477
		 0.39231357 0.049208052 0.55971462 0.3789998 0.054983161 0.55780524 0.37063527 0.057882357 0.61194086
		 0.35044506 0.05821545 0.63622189 0.35429832 -0.0050925268 0.57192034 0.347357 -0.0011552302 0.57272571
		 0.37109205 0.014240139 0.61166722 0.36415073 0.018177435 0.61247259 0 -0.26252198 1.35646939
		 0 -0.1235463 1.9593997 0 0.01237689 1.98801517 0 0.25132808 1.72061133 0 -0.29566991 1.52730703
		 0 -0.25973198 1.69758725 0 -0.26090026 1.86783051 0 0.20033754 1.91393638 0 -0.18263906 1.34230638
		 0 -0.096792832 1.34659886 0 -0.14411613 0.85889614 0 0.043933071 0.86883098 -0.11482757 0.013135077 0.86485702
		 -0.099930763 -0.10239459 0.86088312 0 -0.14292398 0.96551007 0 0.064796239 0.9585557
		 -0.14344184 0.038969964 0.95207739 -0.12851989 -0.09227553 0.9609046 0 -0.14650038 0.7744841
		 0 0.060822297 0.81819737 -0.13059555 0.021080043 0.81402785 -0.12571359 -0.10383112 0.78615695
		 0 -0.13964565 0.69740653 0 0.10751604 0.74708074 -0.17278436 0.061053723 0.67896736
		 -0.16136771 -0.10328058 0.6828326 0 -0.10079334 0.57498735 0 0.099664256 0.58917046
		 -0.026869643 0.11581029 0.58710819 -0.026869643 -0.10079334 0.58214092 -0.078499138 -0.082366213 0.46413374
		 -0.10781256 0.10863194 0.46371138 -0.1735241 0.0060391575 0.46417272 -0.18964612 -0.015054628 0.58132315
		 -0.1070164 0.12154298 0.56506842 -0.070006058 -0.10128538 0.55860823 -0.019409172 -0.0075389892 0.55089241
		 -0.02686964 -0.089206994 0.55089241 -0.075343385 -0.12815556 0.71035761 -0.065224655 -0.13531277 0.77672178
		 -0.14344184 -0.036974665 0.95571941 -0.11482757 -0.055753939 0.86008829 -0.049733188 -0.13163763 0.85975671
		 -0.1505954 -0.054367013 0.80110985 -0.055663496 -0.12098753 0.96351534 -0.18716314 -0.042640522 0.70050651
		 0 -0.0075389929 0.57498735 -0.026869643 -0.0075389892 0.58214092 -0.02686964 0.10526387 0.55207026
		 -0.16332647 -0.085537076 0.57730883 -0.087558605 0.094689511 0.74757218 -0.075297698 0.053617701 0.81730348
		 -0.070006058 -0.12113094 0.61605722 0 -0.13100994 0.63757622 -0.1070164 0.12154298 0.64191979
		 0 0.12837707 0.64414454 -0.057413787 0.041341711 0.866844 -0.071720921 0.05822771 0.95614403
		 -0.15769006 0.048025265 0.74603927 -0.17336749 -0.048412301 0.73846042 -0.18716314 0.064366549 0.57806647
		 -0.15225622 -0.10355023 0.72399944 -0.033546016 0.0079070069 0.46448314 -0.044306584 -0.064861 0.46448314
		 -0.044477649 0.095929071 0.46538618 -0.15276226 -0.055283856 0.4649176 -0.17114744 0.059548557 0.46203649
		 -0.081517845 -0.038437869 0.35449642 -0.10116253 0.098780051 0.35421339 -0.14924271 0.018038504 0.35452256
		 -0.048683036 0.031736895 0.35473058 -0.058603354 -0.017488003 0.35473058 -0.058717996 0.090267092 0.35533577
		 -0.13128603 -0.021699782 0.35502174 -0.14360704 0.061730385 0.35607001 -0.084257737 0.0077714846 0.28428271
		 -0.10033429 0.11105505 0.32835791 -0.13968149 0.050235067 0.30253053 -0.057386827 0.060469549 0.30710822
		 -0.065505281 0.02345087 0.29122052 -0.065599099 0.10429078 0.3264544 -0.12498634 0.020189501 0.2900801
		 -0.13506944 0.082808018 0.31523529 -0.084257737 0.016726471 0.23975348;
	setAttr ".vt[332:497]" -0.10033429 0.12854144 0.25012338 -0.13968149 0.062736437 0.24413776
		 -0.057386827 0.073880613 0.2453655 -0.065505281 0.033776488 0.24156269 -0.065599099 0.12151912 0.25038022
		 -0.12498634 0.030322604 0.24147454 -0.13506944 0.097634301 0.24627006 -0.089090563 0.034122087 0.15161432
		 -0.098873369 0.10242657 0.14964142 -0.1228167 0.062236853 0.15087333 -0.072739236 0.069058821 0.150794
		 -0.077679425 0.044554234 0.15145119 -0.077736519 0.098203734 0.15031384 -0.1138745 0.042461455 0.15165237
		 -0.1200102 0.083473608 0.14959061 -0.091131859 0.039499499 0.095368534 -0.098256305 0.089243069 0.093931749
		 -0.11569332 0.059974417 0.094828904 -0.079223804 0.064942598 0.094771124 -0.082821563 0.047096834 0.095249727
		 -0.082863137 0.086167738 0.094421439 -0.10918106 0.045572743 0.095396243 -0.11364946 0.075440347 0.093894742
		 0 -0.18512684 1.056535721 0 0.093758978 1.042534113 -0.14378145 0.058342971 1.058799267
		 -0.1657577 -0.088137999 1.067652941 -0.16077794 0.0074362475 1.079017878 -0.055663496 -0.16319039 1.054541111
		 -0.071183696 0.092726603 1.042582273 0 -0.11561626 1.1616292 0 0.12272172 1.15881228
		 -0.14318939 0.05379976 1.22763133 -0.12851989 -0.053382706 1.15288615 -0.14757858 -0.012363748 1.15294218
		 -0.055663496 -0.096162334 1.15797949 -0.071720921 0.11780821 1.12909293 -0.080956601 0.035330892 1.26875997
		 -0.073076934 -0.0169724 1.25384212 -0.038285851 -0.045684412 1.24983287 0 -0.071758397 1.24603486
		 0 0.079141676 1.28623891 -0.095873222 0.11026254 1.20245051 0 0.11261854 1.21977186
		 -0.11133642 0.045251153 1.24918795 0 0.095880106 1.25300527 -0.041592345 0.07351891 1.28305793
		 -0.057127982 0.087213919 1.25111485 -0.098599814 -0.033733696 1.20736766 -0.046285562 -0.068921663 1.20754862
		 0 -0.091948137 1.20717907 -0.08600767 0.008853768 1.2600255 -0.11848369 0.0016068034 1.21466422
		 -0.11093635 0.108751 1.12806177 -0.1911433 0.064126186 1.2226944 -0.23595782 0.064126194 1.16753793
		 -0.1926195 0.010136811 1.12120819 -0.17902789 0.0056655146 1.15278506 -0.15577032 0.11955562 1.18340778
		 -0.19347367 0.12095885 1.13612366 -0.069689944 0.10647494 1.088257074 0 0.10781257 1.10599136
		 -0.12845011 0.095145553 1.088210821 -0.20729978 0.057292115 0.97663486 -0.22484927 0.028770728 0.98302555
		 -0.28012079 0.063688643 1.018890858 -0.25618598 0.031242725 1.0026288033 -0.25440055 0.093957141 1.0077037811
		 -0.21841614 0.084672943 0.98784655 -0.24867354 0.05760628 0.9146136 -0.26499909 0.03247216 0.91670334
		 -0.31946838 0.063243151 0.93681407 -0.29573923 0.034650579 0.92747706 -0.29518872 0.089916892 0.93218595
		 -0.26040405 0.081735305 0.92209548 -0.27053571 0.056876123 0.82479668 -0.29441559 0.018089492 0.82812375
		 -0.35553855 0.064218588 0.85152292 -0.34095874 0.023181019 0.84421456 -0.32576147 0.10410824 0.84622204
		 -0.27756566 0.096469142 0.83229113 -0.34663203 0.059074365 0.66448224 -0.35115018 0.038674578 0.6645357
		 -0.38018435 0.061657324 0.6750533 -0.36933663 0.038259983 0.67023766 -0.36397666 0.082730144 0.67117178
		 -0.35066274 0.079958387 0.66784751 -0.091131859 0.014956603 0.073578827 -0.083054438 -0.064259551 0.025898613
		 -0.080977388 -0.093639582 0.018959649 -0.098256305 0.090572603 0.063352443 -0.098256305 0.10852133 0.03576459
		 -0.098256305 0.095890746 0.0036595874 -0.12314246 0.060409609 0.064895622 -0.074222781 0.064942606 0.064187944
		 -0.11458616 0.025250461 0.068816103 -0.11636979 0.078511007 0.064126715 -0.081043489 0.085627601 0.063033722
		 -0.079309851 0.040730231 0.068029553 -0.086516194 -0.021882018 0.045630731 -0.12383699 -0.007590482 0.025995199
		 -0.069842406 -0.009584506 0.026393585 -0.066651657 0.0030453727 0.0019312799 -0.1258312 0.0030453745 0.0027289633
		 -0.084691614 0.0030453745 -6.2936917e-005 -0.12792812 0.060409613 0.034187652 -0.12433888 0.060409617 0.0042772926
		 -0.06824071 0.064942613 0.030688342 -0.068639517 0.064942613 0.0043672267 -0.12692538 -0.061844673 0.015626272
		 -0.059541017 -0.063439891 0.017619878 -0.056350272 -0.055994473 0.0019312799 -0.1289196 -0.055994473 0.0027289633
		 -0.081453651 -0.055994473 -6.2936917e-005 -0.065207064 -0.093466744 0.01415813 -0.062016319 -0.092483275 0.0023928471
		 -0.080977388 -0.093639582 0.0025724266 -0.083054438 -0.10645714 0.017050363 -0.12383699 -0.078585058 0.015626272
		 -0.1258312 -0.072734855 0.0027289633 -0.081453651 -0.098192059 0.002821682 0 -0.084275618 1.29631686
		 0 0.18618011 1.54402614 0 0.078171656 1.42401671 0 0.068054579 1.37818742 0 -0.24460571 1.33669972
		 -0.087376423 -0.18790461 1.38174033 -0.072018899 -0.18363476 1.36017132 -0.14199086 -0.099814706 1.42113781
		 -0.12683581 -0.094795957 1.39170551 -0.17676181 -0.040287677 1.44303036 -0.16932215 -0.0223714 1.42574048
		 -0.20633781 0.0065928511 1.50826836 -0.19021982 0.031944055 1.49995279 -0.024851164 -0.18340929 1.34502625
		 -0.04706056 -0.09606421 1.35702443 -0.044636235 -0.24292432 1.36211324 -0.035344686 -0.22773205 1.34070373
		 -0.072569124 -0.056619417 1.36676764 -0.076899 0.01750735 1.37734056 -0.12304112 0.035126697 1.42606401
		 -0.15337673 0.070980005 1.49556327 -0.071670987 -0.27647743 1.52738929 -0.08206097 -0.24462485 1.69469047
		 -0.084341116 -0.22116016 1.85773945 -0.12474669 -0.21445467 1.53365088 -0.14397372 -0.19292913 1.69822836
		 -0.17923981 -0.14647967 1.54484272 -0.2132645 -0.13177378 1.70338154 -0.23003134 0.0024671704 1.57485652
		 -0.20339194 0.070181653 1.56858897 -0.19380039 -0.056001626 1.49515343 -0.247756 0.0066968258 1.71458149
		 -0.16106576 -0.17722706 1.8080883 -0.22319561 0.10221867 1.71412015 0 0.11630486 1.4760859
		 -0.13688849 -0.1022005 1.92468429 -0.17420682 0.013576842 1.96106815 -0.12897527 0.18022266 1.88905334
		 -0.12268171 0.19154498 1.71814203 -0.21590203 -0.11273295 1.81743073 -0.26023433 0.0081771053 1.83535409
		 -0.10792814 0.14334682 1.55264831 -0.070644148 0.072422624 1.42630291 -0.044661559 0.053974077 1.37931943
		 -0.091046602 0.09792266 1.48862386;
	setAttr ".vt[498:535]" -0.20511256 0.12628368 1.82734418 -0.037488688 -0.061066948 1.30019188
		 -0.061818674 -0.032834925 1.3059051 0 0.068863727 1.33147454 -0.066695489 0.022184188 1.32002401
		 -0.040336806 0.054850038 1.32820249 -0.084464543 -0.019594032 1.37632394 -0.15585846 0.0052753817 1.42718267
		 -0.16761217 0.03751009 1.47854209 -0.074304022 -0.0034078402 1.31208849 -0.39528486 0.053969767 0.61405408
		 -0.37960139 0.10168322 0.61373305 -0.36136064 0.09788578 0.60917866 -0.38429487 0.098127976 0.56209034
		 -0.37607908 0.096417576 0.56003898 -0.38347822 0.093624011 0.52423233 -0.37731159 0.092427701 0.5269379
		 -0.38178909 0.052191794 0.49853569 -0.37562245 0.050995484 0.50124127 -0.37969387 0.017822038 0.5088433
		 -0.37352723 0.016625728 0.51154888 -0.38664389 0.017502237 0.56271356 -0.3793667 0.01602119 0.56259829
		 -0.38702485 0.027844531 0.60923839 -0.37841296 0.020452008 0.60977483 -0.34837428 -0.014453097 0.5785448
		 -0.34143296 -0.010515801 0.57935017 -0.34378949 0.0082738781 0.6259073 -0.35531121 0.0041122944 0.62327254
		 -0.3785888 0.05005208 0.6736477 -0.39231357 0.049208052 0.55971462 -0.3789998 0.054983161 0.55780524
		 -0.37063527 0.057882357 0.61194086 -0.35044506 0.05821545 0.63622189 -0.35429832 -0.0050925268 0.57192034
		 -0.347357 -0.0011552302 0.57272571 -0.37109205 0.014240139 0.61166722 -0.36415073 0.018177435 0.61247259;
	setAttr -s 1070 ".ed";
	setAttr ".ed[0:165]"  7 31 0 31 15 0 15 28 0 28 7 0 34 2 0 2 0 0 0 33 0 33 34 0
		 22 258 0 258 266 0 266 19 0 19 22 0 26 8 0 8 27 0 27 16 0 16 26 0 24 262 0 262 258 0
		 22 24 0 20 3 0 3 1 0 1 21 0 21 20 0 1 22 0 19 5 0 5 1 0 5 23 0 23 21 0 0 4 0 4 30 0
		 30 33 0 8 32 0 32 14 0 14 27 0 31 301 0 301 274 0 274 9 0 9 31 0 36 38 0 38 7 0 7 25 0
		 25 36 0 19 18 0 18 38 0 38 5 0 18 31 0 294 275 0 275 8 0 26 294 0 40 39 0 39 47 0
		 47 48 0 48 40 0 303 32 0 275 303 0 259 33 0 30 267 0 267 259 0 42 50 0 50 46 0 46 12 0
		 12 42 0 14 11 0 11 41 0 41 27 0 41 39 0 39 16 0 42 10 0 10 44 0 44 50 0 4 23 0 23 36 0
		 36 35 0 35 4 0 14 37 0 37 43 0 43 11 0 15 10 0 42 28 0 10 40 0 48 44 0 9 26 0 16 17 0
		 17 9 0 32 6 0 6 37 0 2 20 0 21 0 0 17 15 0 25 6 0 6 35 0 18 270 0 270 301 0 274 294 0
		 30 29 0 29 271 0 271 267 0 40 17 0 11 45 0 45 49 0 49 41 0 37 13 0 13 12 0 12 43 0
		 46 51 0 51 43 0 3 24 0 13 28 0 263 34 0 259 263 0 32 29 0 29 35 0 51 45 0 49 47 0
		 303 271 0 266 270 0 25 13 0 48 56 0 56 52 0 52 44 0 52 58 0 58 50 0 51 59 0 59 53 0
		 53 45 0 49 57 0 57 55 0 55 47 0 55 56 0 58 54 0 54 46 0 53 57 0 54 59 0 56 64 0 64 60 0
		 60 52 0 60 66 0 66 58 0 59 67 0 67 61 0 61 53 0 57 65 0 65 63 0 63 55 0 63 64 0 66 62 0
		 62 54 0 61 65 0 62 67 0 64 72 0 72 68 0 68 60 0 68 74 0 74 66 0 67 75 0 75 69 0 69 61 0
		 65 73 0 73 71 0 71 63 0 71 72 0 74 70 0 70 62 0 69 73 0 70 75 0 72 80 0;
	setAttr ".ed[166:331]" 80 76 0 76 68 0 76 82 0 82 74 0 75 83 0 83 77 0 77 69 0
		 73 81 0 81 79 0 79 71 0 79 80 0 82 78 0 78 70 0 77 81 0 78 83 0 263 356 0 356 88 0
		 88 34 0 2 84 0 84 86 0 86 20 0 3 85 0 85 87 0 87 24 0 87 355 0 355 262 0 86 85 0
		 88 84 0 112 393 0 393 363 0 363 93 0 93 112 0 85 90 0 90 92 0 92 87 0 92 362 0 362 355 0
		 86 91 0 91 90 0 99 100 0 100 377 0 377 373 0 373 99 0 94 98 0 98 100 0 99 94 0 382 102 0
		 102 96 0 96 372 0 372 382 0 102 92 0 90 101 0 101 102 0 382 362 0 101 95 0 95 96 0
		 103 95 0 101 104 0 104 103 0 94 103 0 104 98 0 91 104 0 91 89 0 89 98 0 97 100 0
		 89 97 0 363 375 0 375 97 0 97 93 0 375 377 0 97 110 0 110 105 0 105 93 0 113 84 0
		 88 112 0 112 113 0 356 393 0 105 113 0 89 106 0 106 110 0 91 109 0 109 106 0 110 111 0
		 111 113 0 107 111 0 106 107 0 109 108 0 108 107 0 86 108 0 111 118 0 118 119 0 119 113 0
		 119 114 0 114 84 0 107 116 0 116 118 0 108 117 0 117 116 0 86 115 0 115 117 0 114 115 0
		 118 124 0 124 125 0 125 119 0 125 120 0 120 114 0 116 122 0 122 124 0 117 123 0 123 122 0
		 115 121 0 121 123 0 120 121 0 124 130 0 130 131 0 131 125 0 131 126 0 126 120 0 122 128 0
		 128 130 0 123 129 0 129 128 0 121 127 0 127 129 0 126 127 0 130 136 0 136 137 0 137 131 0
		 137 132 0 132 126 0 128 134 0 134 136 0 128 239 0 239 134 0 127 133 0 133 135 0 135 129 0
		 132 133 0 155 164 0 164 162 0 162 153 0 153 155 0 155 154 0 154 163 0 163 164 0 154 151 0
		 151 160 0 160 163 0 162 161 0 161 152 0 152 153 0 162 166 0 166 165 0 165 161 0 164 171 0
		 171 168 0 168 139 0 139 164 0 160 139 0 168 169 0 169 160 0 163 170 0 170 171 0 169 170 0
		 166 167 0 167 140 0;
	setAttr ".ed[332:497]" 140 165 0 78 144 0 144 147 0 147 83 0 82 146 0 146 144 0
		 76 138 0 138 146 0 80 149 0 149 138 0 79 145 0 145 149 0 81 148 0 148 145 0 77 141 0
		 141 148 0 147 141 0 144 156 0 156 142 0 142 141 0 146 151 0 151 156 0 138 150 0 150 151 0
		 149 152 0 152 150 0 145 158 0 158 152 0 142 158 0 142 143 0 143 159 0 159 158 0 156 157 0
		 157 143 0 154 157 0 155 143 0 153 159 0 161 139 0 139 150 0 140 139 0 167 164 0 182 183 0
		 183 173 0 173 172 0 172 182 0 173 175 0 175 174 0 174 172 0 175 177 0 177 176 0 176 174 0
		 177 179 0 179 178 0 178 176 0 181 175 0 173 180 0 180 181 0 257 181 0 180 256 0 256 257 0
		 248 457 0 457 183 0 182 248 0 183 180 0 457 256 0 210 187 0 187 186 0 186 208 0 208 210 0
		 208 209 0 209 456 0 456 455 0 455 208 0 210 487 0 487 454 0 454 207 0 207 210 0 455 487 0
		 186 185 0 185 209 0 207 196 0 196 187 0 252 248 0 182 188 0 188 252 0 196 179 0 179 218 0
		 218 187 0 196 195 0 195 178 0 197 176 0 178 197 0 195 193 0 193 197 0 193 174 0 193 191 0
		 191 172 0 191 188 0 191 192 0 192 189 0 189 188 0 189 253 0 253 252 0 184 177 0 181 184 0
		 186 217 0 217 216 0 216 185 0 454 251 0 251 204 0 204 207 0 251 255 0 255 203 0 203 204 0
		 255 250 0 250 202 0 202 203 0 254 253 0 189 190 0 190 254 0 250 249 0 249 201 0 201 202 0
		 249 254 0 190 201 0 217 177 0 184 216 0 190 199 0 199 205 0 205 201 0 205 206 0 206 202 0
		 206 211 0 211 203 0 211 200 0 200 204 0 200 196 0 200 198 0 198 195 0 198 194 0 194 193 0
		 194 192 0 194 205 0 199 192 0 198 206 0 217 218 0 213 212 0 212 96 0 95 213 0 181 212 0
		 213 184 0 214 94 0 99 215 0 215 214 0 373 501 0 501 215 0 185 214 0 215 209 0 501 456 0
		 216 219 0 219 214 0 213 219 0 103 219 0 212 453 0 453 372 0 257 453 0;
	setAttr ".ed[498:663]" 136 221 0 221 222 0 222 137 0 221 223 0 223 224 0 224 222 0
		 223 225 0 225 226 0 226 224 0 225 227 0 227 228 0 228 226 0 227 229 0 229 230 0 230 228 0
		 229 231 0 231 232 0 232 230 0 231 233 0 233 234 0 234 232 0 238 237 0 237 236 0 236 235 0
		 235 238 0 133 237 0 238 135 0 236 245 0 245 244 0 244 235 0 245 247 0 247 246 0 246 244 0
		 132 243 0 243 237 0 242 243 0 243 222 0 222 242 0 242 247 0 247 237 0 242 234 0 234 246 0
		 242 241 0 241 232 0 241 228 0 241 224 0 234 135 0 238 246 0 233 239 0 239 135 0 233 220 0
		 220 134 0 220 221 0 220 240 0 240 223 0 240 227 0 240 231 0 273 297 0 297 283 0 283 300 0
		 300 273 0 305 304 0 304 260 0 260 264 0 264 305 0 290 287 0 287 266 0 258 290 0 295 284 0
		 284 296 0 296 276 0 276 295 0 292 290 0 262 292 0 288 289 0 289 261 0 261 265 0 265 288 0
		 261 269 0 269 287 0 290 261 0 289 291 0 291 269 0 304 299 0 299 268 0 268 260 0 296 282 0
		 282 302 0 302 276 0 300 277 0 277 274 0 301 300 0 307 293 0 293 273 0 273 309 0 309 307 0
		 269 309 0 309 286 0 286 287 0 300 286 0 294 295 0 276 275 0 311 319 0 319 318 0 318 310 0
		 310 311 0 302 303 0 267 299 0 304 259 0 313 280 0 280 317 0 317 321 0 321 313 0 296 312 0
		 312 279 0 279 282 0 284 310 0 310 312 0 321 315 0 315 278 0 278 313 0 268 306 0 306 307 0
		 307 291 0 291 268 0 279 314 0 314 308 0 308 282 0 297 313 0 278 283 0 315 319 0 311 278 0
		 277 285 0 285 284 0 295 277 0 308 272 0 272 302 0 260 289 0 288 264 0 283 285 0 306 272 0
		 272 293 0 270 286 0 271 298 0 298 299 0 285 311 0 312 320 0 320 316 0 316 279 0 314 280 0
		 280 281 0 281 308 0 314 322 0 322 317 0 292 265 0 297 281 0 305 263 0 306 298 0 298 302 0
		 316 322 0 318 320 0 281 293 0 315 323 0 323 327 0 327 319 0 321 329 0;
	setAttr ".ed[664:829]" 329 323 0 316 324 0 324 330 0 330 322 0 318 326 0 326 328 0
		 328 320 0 327 326 0 317 325 0 325 329 0 328 324 0 330 325 0 323 331 0 331 335 0 335 327 0
		 329 337 0 337 331 0 324 332 0 332 338 0 338 330 0 326 334 0 334 336 0 336 328 0 335 334 0
		 325 333 0 333 337 0 336 332 0 338 333 0 331 339 0 339 343 0 343 335 0 337 345 0 345 339 0
		 332 340 0 340 346 0 346 338 0 334 342 0 342 344 0 344 336 0 343 342 0 333 341 0 341 345 0
		 344 340 0 346 341 0 339 347 0 347 351 0 351 343 0 345 353 0 353 347 0 340 348 0 348 354 0
		 354 346 0 342 350 0 350 352 0 352 344 0 351 350 0 341 349 0 349 353 0 352 348 0 354 349 0
		 305 361 0 361 356 0 288 359 0 359 357 0 357 264 0 292 360 0 360 358 0 358 265 0 355 360 0
		 358 359 0 357 361 0 392 368 0 368 363 0 393 392 0 360 367 0 367 365 0 365 358 0 362 367 0
		 365 366 0 366 359 0 378 373 0 377 379 0 379 378 0 369 378 0 379 376 0 376 369 0 372 371 0
		 371 381 0 381 382 0 381 380 0 380 365 0 367 381 0 371 370 0 370 380 0 383 384 0 384 380 0
		 370 383 0 376 384 0 383 369 0 384 366 0 376 364 0 364 366 0 374 364 0 379 374 0 368 374 0
		 374 375 0 368 385 0 385 390 0 390 374 0 394 392 0 392 361 0 357 394 0 394 385 0 390 386 0
		 386 364 0 386 389 0 389 366 0 394 391 0 391 390 0 387 386 0 391 387 0 387 388 0 388 389 0
		 388 359 0 394 400 0 400 399 0 399 391 0 357 395 0 395 400 0 399 397 0 397 387 0 397 398 0
		 398 388 0 398 396 0 396 359 0 396 395 0 400 406 0 406 405 0 405 399 0 395 401 0 401 406 0
		 405 403 0 403 397 0 403 404 0 404 398 0 404 402 0 402 396 0 402 401 0 406 412 0 412 411 0
		 411 405 0 401 407 0 407 412 0 411 409 0 409 403 0 409 410 0 410 404 0 410 408 0 408 402 0
		 408 407 0 412 418 0 418 417 0 417 411 0 407 413 0 413 418 0 417 415 0;
	setAttr ".ed[830:995]" 415 409 0 415 527 0 527 409 0 410 416 0 416 414 0 414 408 0
		 414 413 0 436 434 0 434 443 0 443 445 0 445 436 0 445 444 0 444 435 0 435 436 0 444 441 0
		 441 432 0 432 435 0 434 433 0 433 442 0 442 443 0 442 446 0 446 447 0 447 443 0 445 420 0
		 420 449 0 449 452 0 452 445 0 441 450 0 450 449 0 420 441 0 452 451 0 451 444 0 451 450 0
		 446 421 0 421 448 0 448 447 0 354 428 0 428 425 0 425 349 0 425 427 0 427 353 0 427 419 0
		 419 347 0 419 430 0 430 351 0 430 426 0 426 350 0 426 429 0 429 352 0 429 422 0 422 348 0
		 422 428 0 422 423 0 423 437 0 437 425 0 437 432 0 432 427 0 432 431 0 431 419 0 431 433 0
		 433 430 0 433 439 0 439 426 0 439 423 0 439 440 0 440 424 0 424 423 0 424 438 0 438 437 0
		 438 435 0 424 436 0 440 434 0 431 420 0 420 442 0 420 421 0 445 448 0 468 458 0 458 459 0
		 459 469 0 469 468 0 458 460 0 460 461 0 461 459 0 460 462 0 462 463 0 463 461 0 462 464 0
		 464 465 0 465 463 0 467 466 0 466 459 0 461 467 0 256 466 0 467 257 0 248 468 0 469 457 0
		 466 469 0 497 495 0 495 472 0 472 473 0 473 497 0 495 455 0 456 496 0 496 495 0 497 494 0
		 494 454 0 487 497 0 496 471 0 471 472 0 473 482 0 482 494 0 252 474 0 474 468 0 473 506 0
		 506 465 0 465 482 0 464 481 0 481 482 0 483 464 0 462 483 0 483 479 0 479 481 0 460 479 0
		 458 477 0 477 479 0 474 477 0 474 475 0 475 478 0 478 477 0 253 475 0 470 467 0 463 470 0
		 471 504 0 504 505 0 505 472 0 494 491 0 491 251 0 491 490 0 490 255 0 490 489 0 489 250 0
		 254 476 0 476 475 0 489 488 0 488 249 0 488 476 0 504 470 0 463 505 0 488 492 0 492 485 0
		 485 476 0 489 493 0 493 492 0 490 498 0 498 493 0 491 486 0 486 498 0 482 486 0 481 484 0
		 484 486 0 479 480 0 480 484 0 478 480 0 478 485 0 492 480 0 493 484 0;
	setAttr ".ed[996:1069]" 506 505 0 500 370 0 371 499 0 499 500 0 470 500 0 499 467 0
		 502 503 0 503 378 0 369 502 0 503 501 0 496 503 0 502 471 0 502 507 0 507 504 0 507 500 0
		 507 383 0 453 499 0 418 510 0 510 509 0 509 417 0 510 512 0 512 511 0 511 509 0 512 514 0
		 514 513 0 513 511 0 514 516 0 516 515 0 515 513 0 516 518 0 518 517 0 517 515 0 518 520 0
		 520 519 0 519 517 0 520 522 0 522 521 0 521 519 0 526 523 0 523 524 0 524 525 0 525 526 0
		 416 526 0 525 414 0 523 532 0 532 533 0 533 524 0 532 534 0 534 535 0 535 533 0 525 531 0
		 531 413 0 530 510 0 510 531 0 531 530 0 525 535 0 535 530 0 534 522 0 522 530 0 520 529 0
		 529 530 0 516 529 0 512 529 0 534 526 0 416 522 0 416 527 0 527 521 0 415 508 0 508 521 0
		 509 508 0 511 528 0 528 508 0 515 528 0 519 528 0;
	setAttr -s 2140 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:331]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[332:497]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[498:663]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[664:829]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[830:995]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[996:1161]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1162:1327]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1328:1493]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1494:1659]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1660:1825]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1826:1991]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[1992:2139]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 536 -ch 2140 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 9 10 11
		f 4 12 13 14 15
		f 4 16 17 -9 18
		f 4 19 20 21 22
		f 4 23 -12 24 25
		f 4 -22 -26 26 27
		f 4 -7 28 29 30
		f 4 31 32 33 -14
		f 4 34 35 36 37
		f 4 38 39 40 41
		f 4 -25 42 43 44
		f 4 -40 -44 45 -1
		f 4 46 47 -13 48
		f 4 49 50 51 52
		f 4 53 -32 -48 54
		f 4 55 -31 56 57
		f 4 58 59 60 61
		f 4 -34 62 63 64
		f 4 -15 -65 65 66
		f 4 67 68 69 -59
		f 4 70 71 72 73
		f 4 74 75 76 -63
		f 4 -3 77 -68 78
		f 4 79 -53 80 -69
		f 4 81 -16 82 83
		f 4 84 85 -75 -33
		f 4 86 -23 87 -6
		f 4 -88 -28 -71 -29
		f 4 -38 -84 88 -2
		f 4 -73 -42 89 90
		f 4 -46 91 92 -35
		f 4 93 -49 -82 -37
		f 4 -57 94 95 96
		f 4 -83 -67 -50 97
		f 4 -64 98 99 100
		f 4 -27 -45 -39 -72
		f 4 101 102 103 -76
		f 4 -104 -61 104 105
		f 4 106 -19 -24 -21
		f 4 -79 -62 -103 107
		f 4 108 -8 -56 109
		f 4 110 111 -91 -85
		f 4 -89 -98 -80 -78
		f 4 -77 -106 112 -99
		f 4 -30 -74 -112 -95
		f 4 -66 -101 113 -51
		f 4 114 -96 -111 -54
		f 4 -11 115 -92 -43
		f 4 -90 116 -102 -86
		f 4 -41 -4 -108 -117
		f 4 -81 117 118 119
		f 4 -70 -120 120 121
		f 4 -113 122 123 124
		f 4 -114 125 126 127
		f 4 -52 -128 128 -118
		f 4 -122 129 130 -60
		f 4 -100 -125 131 -126
		f 4 -105 -131 132 -123
		f 4 -119 133 134 135
		f 4 -121 -136 136 137
		f 4 -124 138 139 140
		f 4 -127 141 142 143
		f 4 -129 -144 144 -134
		f 4 -138 145 146 -130
		f 4 -132 -141 147 -142
		f 4 -133 -147 148 -139
		f 4 -135 149 150 151
		f 4 -137 -152 152 153
		f 4 -140 154 155 156
		f 4 -143 157 158 159
		f 4 -145 -160 160 -150
		f 4 -154 161 162 -146
		f 4 -148 -157 163 -158
		f 4 -149 -163 164 -155
		f 4 -151 165 166 167
		f 4 -153 -168 168 169
		f 4 -156 170 171 172
		f 4 -159 173 174 175
		f 4 -161 -176 176 -166
		f 4 -170 177 178 -162
		f 4 -164 -173 179 -174
		f 4 -165 -179 180 -171
		f 4 -109 181 182 183
		f 4 -87 184 185 186
		f 4 -107 187 188 189
		f 4 -17 -190 190 191
		f 4 -20 -187 192 -188
		f 4 -5 -184 193 -185
		f 4 194 195 196 197
		f 4 -189 198 199 200
		f 4 -191 -201 201 202
		f 4 -193 203 204 -199
		f 4 205 206 207 208
		f 4 209 210 -206 211
		f 4 212 213 214 215
		f 4 216 -200 217 218
		f 4 -202 -217 -213 219
		f 4 -214 -219 220 221
		f 4 222 -221 223 224
		f 4 225 -225 226 -210
		f 4 -205 227 -224 -218
		f 4 -228 228 229 -227
		f 4 230 -211 -230 231
		f 4 232 233 234 -197
		f 4 235 -207 -231 -234
		f 4 236 237 238 -235
		f 4 239 -194 240 241
		f 4 -183 242 -195 -241
		f 4 243 -242 -198 -239
		f 4 -232 244 245 -237
		f 4 246 247 -245 -229
		f 4 -244 -238 248 249
		f 4 250 -249 -246 251
		f 4 -252 -248 252 253
		f 4 254 -253 -247 -204
		f 4 -250 255 256 257
		f 4 -240 -258 258 259
		f 4 -251 260 261 -256
		f 4 -254 262 263 -261
		f 4 -255 264 265 -263
		f 4 -186 -260 266 -265
		f 4 -257 267 268 269
		f 4 -259 -270 270 271
		f 4 -262 272 273 -268
		f 4 -264 274 275 -273
		f 4 -266 276 277 -275
		f 4 -267 -272 278 -277
		f 4 -269 279 280 281
		f 4 -271 -282 282 283
		f 4 -274 284 285 -280
		f 4 -276 286 287 -285
		f 4 -278 288 289 -287
		f 4 -279 -284 290 -289
		f 4 -281 291 292 293
		f 4 -283 -294 294 295
		f 4 -286 296 297 -292
		f 3 -297 298 299
		f 4 -290 300 301 302
		f 4 -291 -296 303 -301
		f 4 304 305 306 307
		f 4 308 309 310 -305
		f 4 311 312 313 -310
		f 4 -307 314 315 316
		f 4 317 318 319 -315
		f 4 320 321 322 323
		f 4 324 -323 325 326
		f 4 -311 327 328 -321
		f 4 -314 -327 329 -328
		f 4 -330 -326 -322 -329
		f 4 330 331 332 -319
		f 4 -181 333 334 335
		f 4 -334 -178 336 337
		f 4 -337 -169 338 339
		f 4 -339 -167 340 341
		f 4 -341 -177 342 343
		f 4 -343 -175 344 345
		f 4 -345 -180 346 347
		f 4 -347 -172 -336 348
		f 5 -349 -335 349 350 351
		f 4 -350 -338 352 353
		f 4 -353 -340 354 355
		f 4 -355 -342 356 357
		f 4 -357 -344 358 359
		f 5 -359 -346 -348 -352 360
		f 4 -361 361 362 363
		f 4 -362 -351 364 365
		f 4 -365 -354 -312 366
		f 4 -309 367 -366 -367
		f 4 -368 -308 368 -363
		f 4 -369 -317 -360 -364
		f 4 -316 369 370 -358
		f 4 -325 -313 -356 -371
		f 4 -320 -333 371 -370
		f 4 -332 372 -324 -372
		f 4 -373 -331 -318 -306
		f 4 373 374 375 376
		f 4 -376 377 378 379
		f 4 -379 380 381 382
		f 4 -382 383 384 385
		f 4 386 -378 387 388
		f 4 389 -389 390 391
		f 4 392 393 -374 394
		f 3 395 -388 -375
		f 4 -394 396 -391 -396
		f 4 397 398 399 400
		f 4 401 402 403 404
		f 4 405 406 407 408
		f 4 -406 -401 -405 409
		f 4 410 411 -402 -400
		f 4 -398 -409 412 413
		f 4 414 -395 415 416
		f 4 417 418 419 -414
		f 4 420 421 -385 -418
		f 3 422 -386 423
		f 4 -422 424 425 -424
		f 4 426 -383 -423 -426
		f 4 427 428 -380 -427
		f 4 429 -416 -377 -429
		f 4 430 431 432 -430
		f 4 433 434 -417 -433
		f 4 435 -381 -387 436
		f 4 -411 437 438 439
		f 4 440 441 442 -408
		f 4 443 444 445 -442
		f 4 446 447 448 -445
		f 4 449 -434 450 451
		f 4 452 453 454 -448
		f 4 455 -452 456 -454
		f 4 -439 457 -436 458
		f 4 459 460 461 -457
		f 4 462 463 -455 -462
		f 4 464 465 -449 -464
		f 4 466 467 -446 -466
		f 4 468 -413 -443 -468
		f 4 469 470 -421 -469
		f 4 471 472 -425 -471
		f 4 473 -431 -428 -473
		f 4 -474 474 -461 475
		f 4 -475 -472 476 -463
		f 4 -477 -470 -467 -465
		f 4 -460 -451 -432 -476
		f 4 477 -419 -384 -458
		f 4 478 479 -222 480
		f 4 -437 481 -479 482
		f 4 483 -212 484 485
		f 4 -485 -209 486 487
		f 4 488 -486 489 -412
		f 4 -490 -488 490 -403
		f 4 491 492 -489 -440
		f 4 -399 -420 -478 -438
		f 4 -483 493 -492 -459
		f 4 494 -494 -481 -223
		f 4 -495 -226 -484 -493
		f 4 -480 495 496 -215
		f 4 497 -496 -482 -390
		f 4 -293 498 499 500
		f 4 -500 501 502 503
		f 4 -503 504 505 506
		f 4 -506 507 508 509
		f 4 -509 510 511 512
		f 4 -512 513 514 515
		f 4 -515 516 517 518
		f 4 519 520 521 522
		f 4 -302 523 -520 524
		f 4 -522 525 526 527
		f 4 -527 528 529 530
		f 4 531 532 -524 -304
		f 3 533 534 535
		f 4 536 537 -533 -534
		f 4 -529 -526 -521 -538
		f 4 -537 538 539 -530
		f 4 540 541 -519 -539
		f 4 542 -513 -516 -542
		f 4 543 -507 -510 -543
		f 4 -541 -536 -504 -544
		f 4 544 -525 545 -540
		f 4 -523 -528 -531 -546
		f 4 -545 -518 546 547
		f 4 548 549 -300 -547
		f 4 550 -499 -298 -550
		f 4 551 552 -502 -551
		f 4 553 -508 -505 -553
		f 4 554 -514 -511 -554
		f 4 -555 -552 -549 -517
		f 4 -535 -532 -295 -501
		f 4 -288 -303 -548 -299
		f 4 555 556 557 558
		f 4 559 560 561 562
		f 4 563 564 -10 565
		f 4 566 567 568 569
		f 4 570 -566 -18 571
		f 4 572 573 574 575
		f 4 576 577 -564 578
		f 4 579 580 -577 -574
		f 4 581 582 583 -561
		f 4 -569 584 585 586
		f 4 587 588 -36 589
		f 4 590 591 592 593
		f 4 594 595 596 -578
		f 4 -559 597 -596 -593
		f 4 598 -570 599 -47
		f 4 600 601 602 603
		f 4 -55 -600 -587 604
		f 4 -58 605 -582 606
		f 4 607 608 609 610
		f 4 611 612 613 -585
		f 4 614 615 -612 -568
		f 4 -611 616 617 618
		f 4 619 620 621 622
		f 4 -614 623 624 625
		f 4 626 -619 627 -557
		f 4 -618 628 -601 629
		f 4 630 631 -567 632
		f 4 -586 -626 633 634
		f 4 -562 635 -573 636
		f 4 -584 -623 -580 -636
		f 4 -558 637 -631 -588
		f 4 638 639 -591 -621
		f 4 -590 -93 640 -598
		f 4 -589 -633 -599 -94
		f 4 -97 641 642 -606
		f 4 643 -604 -615 -632
		f 4 644 645 646 -613
		f 4 -622 -594 -595 -581
		f 4 -625 647 648 649
		f 4 650 651 -609 -648
		f 4 -575 -579 -571 652
		f 4 653 -649 -608 -627
		f 4 -110 -607 -560 654
		f 4 -635 -639 655 656
		f 4 -628 -630 -644 -638
		f 4 -647 657 -651 -624
		f 4 -643 -656 -620 -583
		f 4 -603 658 -645 -616
		f 4 -605 -657 -642 -115
		f 4 -597 -641 -116 -565
		f 4 -634 -650 659 -640
		f 4 -660 -654 -556 -592
		f 4 660 661 662 -629
		f 4 663 664 -661 -617
		f 4 665 666 667 -658
		f 4 668 669 670 -659
		f 4 -663 671 -669 -602
		f 4 -610 672 673 -664
		f 4 -671 674 -666 -646
		f 4 -668 675 -673 -652
		f 4 676 677 678 -662
		f 4 679 680 -677 -665
		f 4 681 682 683 -667
		f 4 684 685 686 -670
		f 4 -679 687 -685 -672
		f 4 -674 688 689 -680
		f 4 -687 690 -682 -675
		f 4 -684 691 -689 -676
		f 4 692 693 694 -678
		f 4 695 696 -693 -681
		f 4 697 698 699 -683
		f 4 700 701 702 -686
		f 4 -695 703 -701 -688
		f 4 -690 704 705 -696
		f 4 -703 706 -698 -691
		f 4 -700 707 -705 -692
		f 4 708 709 710 -694
		f 4 711 712 -709 -697
		f 4 713 714 715 -699
		f 4 716 717 718 -702
		f 4 -711 719 -717 -704
		f 4 -706 720 721 -712
		f 4 -719 722 -714 -707
		f 4 -716 723 -721 -708
		f 4 724 725 -182 -655
		f 4 726 727 728 -637
		f 4 729 730 731 -653
		f 4 -192 732 -730 -572
		f 4 -732 733 -727 -576
		f 4 -729 734 -725 -563
		f 4 735 736 -196 737
		f 4 738 739 740 -731
		f 4 -203 741 -739 -733
		f 4 -741 742 743 -734
		f 4 744 -208 745 746
		f 4 747 -747 748 749
		f 4 -216 750 751 752
		f 4 753 754 -740 755
		f 4 -220 -753 -756 -742
		f 4 756 757 -754 -752
		f 4 758 759 -758 760
		f 4 -750 761 -759 762
		f 4 -755 -760 763 -743
		f 4 -762 764 765 -764
		f 4 766 -765 -749 767
		f 4 -737 768 769 -233
		f 4 -770 -768 -746 -236
		f 4 -769 770 771 772
		f 4 773 774 -735 775
		f 4 -775 -738 -243 -726
		f 4 -771 -736 -774 776
		f 4 -773 777 778 -767
		f 4 -766 -779 779 780
		f 4 781 782 -772 -777
		f 4 783 -778 -783 784
		f 4 785 786 -780 -784
		f 4 -744 -781 -787 787
		f 4 788 789 790 -782
		f 4 791 792 -789 -776
		f 4 -791 793 794 -785
		f 4 -795 795 796 -786
		f 4 -797 797 798 -788
		f 4 -799 799 -792 -728
		f 4 800 801 802 -790
		f 4 803 804 -801 -793
		f 4 -803 805 806 -794
		f 4 -807 807 808 -796
		f 4 -809 809 810 -798
		f 4 -811 811 -804 -800
		f 4 812 813 814 -802
		f 4 815 816 -813 -805
		f 4 -815 817 818 -806
		f 4 -819 819 820 -808
		f 4 -821 821 822 -810
		f 4 -823 823 -816 -812
		f 4 824 825 826 -814
		f 4 827 828 -825 -817
		f 4 -827 829 830 -818
		f 3 831 832 -831
		f 4 833 834 835 -822
		f 4 -836 836 -828 -824
		f 4 837 838 839 840
		f 4 -841 841 842 843
		f 4 -843 844 845 846
		f 4 847 848 849 -839
		f 4 -850 850 851 852
		f 4 853 854 855 856
		f 4 857 858 -855 859
		f 4 -857 860 861 -842
		f 4 -862 862 -858 -845
		f 4 -861 -856 -859 -863
		f 4 -852 863 864 865
		f 4 866 867 868 -724
		f 4 869 870 -722 -869
		f 4 871 872 -713 -871
		f 4 873 874 -710 -873
		f 4 875 876 -720 -875
		f 4 877 878 -718 -877
		f 4 879 880 -723 -879
		f 4 881 -867 -715 -881
		f 5 882 883 884 -868 -882
		f 4 885 886 -870 -885
		f 4 887 888 -872 -887
		f 4 889 890 -874 -889
		f 4 891 892 -876 -891
		f 5 893 -883 -880 -878 -893
		f 4 894 895 896 -894
		f 4 897 898 -884 -897
		f 4 899 -847 -886 -899
		f 4 -900 -898 900 -844
		f 4 -896 901 -838 -901
		f 4 -895 -892 -848 -902
		f 4 -890 902 903 -849
		f 4 -903 -888 -846 -860
		f 4 -904 904 -864 -851
		f 4 -905 -854 905 -865
		f 4 -840 -853 -866 -906
		f 4 906 907 908 909
		f 4 910 911 912 -908
		f 4 913 914 915 -912
		f 4 916 917 918 -915
		f 4 919 920 -913 921
		f 4 -392 922 -920 923
		f 4 924 -910 925 -393
		f 3 -909 -921 926
		f 4 -927 -923 -397 -926
		f 4 927 928 929 930
		f 4 931 -404 932 933
		f 4 934 935 -407 936
		f 4 -410 -932 -928 -937
		f 4 -929 -934 937 938
		f 4 939 940 -935 -931
		f 4 941 942 -925 -415
		f 4 -940 943 944 945
		f 4 -946 -918 946 947
		f 3 948 -917 949
		f 4 -949 950 951 -947
		f 4 -951 -950 -914 952
		f 4 -953 -911 953 954
		f 4 -954 -907 -943 955
		f 4 -956 956 957 958
		f 4 -957 -942 -435 959
		f 4 960 -922 -916 961
		f 4 962 963 964 -939
		f 4 -936 965 966 -441
		f 4 -967 967 968 -444
		f 4 -969 969 970 -447
		f 4 971 972 -960 -450
		f 4 -971 973 974 -453
		f 4 -975 975 -972 -456
		f 4 976 -962 977 -964
		f 4 -976 978 979 980
		f 4 -979 -974 981 982
		f 4 -982 -970 983 984
		f 4 -984 -968 985 986
		f 4 -986 -966 -941 987
		f 4 -988 -948 988 989
		f 4 -989 -952 990 991
		f 4 -991 -955 -959 992
		f 4 993 -980 994 -993
		f 4 -983 995 -992 -995
		f 4 -985 -987 -990 -996
		f 4 -994 -958 -973 -981
		f 4 -978 -919 -945 996
		f 4 997 -757 998 999
		f 4 1000 -1000 1001 -961
		f 4 1002 1003 -748 1004
		f 4 1005 -487 -745 -1004
		f 4 -938 1006 -1003 1007
		f 4 -933 -491 -1006 -1007
		f 4 -963 -1008 1008 1009
		f 4 -965 -997 -944 -930;
	setAttr ".fc[500:535]"
		f 4 -977 -1010 1010 -1001
		f 4 -761 -998 -1011 1011
		f 4 -1009 -1005 -763 -1012
		f 4 -751 -497 1012 -999
		f 4 -924 -1002 -1013 -498
		f 4 1013 1014 1015 -826
		f 4 1016 1017 1018 -1015
		f 4 1019 1020 1021 -1018
		f 4 1022 1023 1024 -1021
		f 4 1025 1026 1027 -1024
		f 4 1028 1029 1030 -1027
		f 4 1031 1032 1033 -1030
		f 4 1034 1035 1036 1037
		f 4 1038 -1038 1039 -835
		f 4 1040 1041 1042 -1036
		f 4 1043 1044 1045 -1042
		f 4 -837 -1040 1046 1047
		f 3 1048 1049 1050
		f 4 -1051 -1047 1051 1052
		f 4 -1052 -1037 -1043 -1046
		f 4 -1045 1053 1054 -1053
		f 4 -1055 -1032 1055 1056
		f 4 -1056 -1029 -1026 1057
		f 4 -1058 -1023 -1020 1058
		f 4 -1059 -1017 -1049 -1057
		f 4 -1054 1059 -1039 1060
		f 4 -1060 -1044 -1041 -1035
		f 4 1061 1062 -1033 -1061
		f 4 -1063 -832 1063 1064
		f 4 -1064 -830 -1016 1065
		f 4 -1066 -1019 1066 1067
		f 4 -1067 -1022 -1025 1068
		f 4 -1069 -1028 -1031 1069
		f 4 -1034 -1065 -1068 -1070
		f 4 -1014 -829 -1048 -1050
		f 4 -833 -1062 -834 -820;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "imagePlane1";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	setAttr -k off ".v";
	setAttr ".imn" -type "string" "C:/Users/Mike/Desktop/Projects/GGJ2015/wall.jpg";
	setAttr ".cov" -type "short2" 508 293 ;
	setAttr ".dlc" no;
	setAttr ".w" 5.08;
	setAttr ".h" 2.9299999999999997;
createNode transform -n "imagePlane2";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	setAttr -k off ".v";
	setAttr ".imn" -type "string" "C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg";
	setAttr ".cov" -type "short2" 1600 715 ;
	setAttr ".dlc" no;
	setAttr ".w" 16;
	setAttr ".h" 7.15;
createNode transform -n "imagePlane3";
	setAttr ".t" -type "double3" -1671174.7543014844 0 -6.3108872417680944e-030 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	setAttr -k off ".v";
	setAttr ".imn" -type "string" "C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg";
	setAttr ".cov" -type "short2" 1600 715 ;
	setAttr ".dlc" no;
	setAttr ".s" -type "double2" 500 500 ;
	setAttr ".w" 50.000000000000007;
	setAttr ".h" 22.34375;
createNode transform -n "imagePlane4";
	setAttr ".t" -type "double3" -11659.417710336218 8135.1297488614628 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".s" -type "double3" 0.1 0.1 0.1 ;
createNode imagePlane -n "imagePlaneShape4" -p "imagePlane4";
	setAttr -k off ".v";
	setAttr ".imn" -type "string" "C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg";
	setAttr ".cov" -type "short2" 1600 715 ;
	setAttr ".dlc" no;
	setAttr ".w" 50000;
	setAttr ".h" 25000;
createNode transform -n "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -136.96995544433594 12013.6845703125 511.95303344726562 ;
	setAttr -l on ".ra";
createNode locator -n "amazonprincess_Ctrl_ReferenceShape" -p "amazonprincess_Ctrl_Reference";
	setAttr -k off ".v";
createNode hikIKEffector -n "amazonprincess_Ctrl_HipsEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 1621.973369891826;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 2;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftAnkleEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 1;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightAnkleEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 2;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftWristEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".dh" yes;
	setAttr ".dsp" yes;
	setAttr ".ei" 3;
	setAttr ".radi" 540.65778996394204;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightWristEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr ".ei" 4;
	setAttr ".radi" 540.65778996394204;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftKneeEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 81.338885834637665 269.59170132966506 -4.3255543667903831e-013 ;
	setAttr -l on ".ra";
	setAttr ".ei" 5;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" -90.062194359641992 8.6608925610439442 -90.413008325692047 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 108131.55799278841 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightKneeEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 81.338877296838021 -89.591723569790901 4.4634930765717227e-013 ;
	setAttr -l on ".ra";
	setAttr ".ei" 6;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" -89.937808965790168 8.6609011227612207 -89.58701416157831 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 108131.55799278841 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftElbowEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -97.179675571111886 70.682212196599849 -7.6031477580242921 ;
	setAttr -l on ".ra";
	setAttr ".ei" 7;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" 92.369798928582554 -0.82312298772239323 -70.856643742060427 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -108131.55799278841 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightElbowEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 82.82018560762252 70.6822131577714 -7.6032945354551176 ;
	setAttr -l on ".ra";
	setAttr ".ei" 8;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" -87.630155568974402 0.82313845563099874 70.856651417908722 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -108131.55799278841 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_ChestOriginEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -88.338068467340705 -89.999999999997385 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 9;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" 89.999999999999929 1.6619315326593116 89.999999999997385 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_ChestEndEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -81.095000375199021 -89.999999999998963 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 10;
	setAttr ".radi" 1621.973369891826;
	setAttr -l on ".jo" -type "double3" 89.999999999999829 8.9049996248009666 89.99999999999892 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftShoulderEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 101.59223591750167 -63.654659537728747 -12.893127220797181 ;
	setAttr -l on ".ra";
	setAttr ".ei" 13;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" -95.120938403260894 2.4672166980123156 -64.342330319802599 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightShoulderEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -78.407814475961388 -63.654681808593061 -12.893069139140151 ;
	setAttr -l on ".ra";
	setAttr ".ei" 14;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" 84.879087698072226 -2.4672023349773777 64.342345833347935 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_HeadEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 15;
	setAttr ".radi" 1081.3155799278841;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftHipEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 85.790347278432364 -85.486684433405898 -4.0418391780200726e-014 ;
	setAttr -l on ".ra";
	setAttr ".ei" 16;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" -89.668145506203601 4.1965754652178093 -85.474525778279343 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightHipEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 85.790337236536587 265.48666069715989 7.6333312355124402e-014 ;
	setAttr -l on ".ra";
	setAttr ".ei" 17;
	setAttr ".radi" 865.05246394230721;
	setAttr -l on ".jo" -type "double3" -90.331857029884944 4.1965853383274485 -94.52549807951668 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftHandThumbEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 2812.8796234130864 -7158.03222656253 -1311.7392883300793 ;
	setAttr ".r" -type "double3" 9.6818865221481492 -6.0337857998562097 -0.1694289134776765 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.44421519301541 22.369357487234275 -77.875398122827519 ;
	setAttr -l on ".ra";
	setAttr ".ei" 20;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" -27.949377733320393 24.267653899389437 77.698270616062558 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftHandIndexEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 2993.4599456787114 -7687.1938476562818 -2046.220367431642 ;
	setAttr ".r" -type "double3" 7.6910731691011076 8.0388443839005301 7.9620157290493312 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.88513986429524 0.016830397638485168 81.663813570528404 ;
	setAttr -l on ".ra";
	setAttr ".ei" 21;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" 180 0.11608666021265143 81.663796700678347 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightHandThumbEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -3357.618911743165 -6235.7934570312154 -460.34489440917821 ;
	setAttr ".r" -type "double3" 2.8624992133171654e-014 7.1629423143045223e-030 -2.8674688300069518e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.444219474701239 -22.369442873908021 -102.12464653745563 ;
	setAttr -l on ".ra";
	setAttr ".ei" 26;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" 27.949476212398672 24.267621308185266 102.30176384985359 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightHandIndexEffector" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -3731.225845336915 -6841.2392578124618 -1052.5125427246078 ;
	setAttr ".r" -type "double3" 4.9696166897867437e-017 4.9696166897867462e-017 -2.5444413186001642e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0.11486807567154377 0.016831541711620331 -98.336176971206356 ;
	setAttr -l on ".ra";
	setAttr ".ei" 27;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo" -type "double3" 1.242406722874509e-017 0.11609468215777076 98.336193843369415 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_LeftFootExtraFingerEffector" -p
		 "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 1148.0341033935549 -11864.160644531263 -15.181060791016137 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr ".ei" 37;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "amazonprincess_Ctrl_RightFootExtraFingerEffector" -p
		 "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -874.09693908691429 -11864.16244506835 -15.182189941405852 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr ".ei" 43;
	setAttr ".radi" 216.2631159855768;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_Hips" -p "amazonprincess_Ctrl_Reference";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftUpLeg" -p "amazonprincess_Ctrl_Hips";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 733.50024414062523 464.80029296875 320.34492492675781 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 85.790347278432364 -85.486684433405898 -4.0418391780200726e-014 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.668145506203601 4.1965754652178093 -85.474525778279343 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftLeg" -p "amazonprincess_Ctrl_LeftUpLeg";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 296.69262695312489 -3748.52880859375 -275.90968322753906 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 81.338885834637665 269.59170132966506 -4.3255543667903831e-013 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90.062194359641992 8.6608925610439442 -90.413008325692047 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftFoot" -p "amazonprincess_Ctrl_LeftLeg";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -19.128906250000114 -2653.6671142578125 -404.22514343261719 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftFootExtraFinger1" -p "amazonprincess_Ctrl_LeftFoot";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.00018310546875 -592.4168701171875 1047.2047119140625 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightUpLeg" -p "amazonprincess_Ctrl_Hips";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -733.50030517578102 464.80029296875 320.34492492675781 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 85.790337236536587 265.48666069715989 7.6333312355124402e-014 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90.331857029884944 4.1965853383274485 -94.52549807951668 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightLeg" -p "amazonprincess_Ctrl_RightUpLeg";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -296.69427490234386 -3748.5297851562491 -275.91041564941406 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 81.338877296838021 -89.591723569790901 4.4634930765717227e-013 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.937808965790168 8.6609011227612207 -89.58701416157831 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightFoot" -p "amazonprincess_Ctrl_RightLeg";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 19.127868652343523 -2653.6676635742187 -404.22563171386719 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightFootExtraFinger1" -p "amazonprincess_Ctrl_RightFoot";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.00018310546886368684 -592.41714477539062 1047.2048034667969 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_Spine" -p "amazonprincess_Ctrl_Hips";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.664011752146961e-010 1704.22119140625 584.51344299316406 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -88.338068467340705 -89.999999999997385 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999929 1.6619315326593116 89.999999999997385 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_Spine1" -p "amazonprincess_Ctrl_Spine";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 5.4953264161383686e-011 1189.4931640625 -34.5123291015625 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -81.095000375199021 -89.999999999998948 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999829 8.9049996248009666 89.99999999999892 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftArm" -p "amazonprincess_Ctrl_Spine1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1497.0797119138413 2324.7216796875 -896.43170166015625 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 101.59223591750167 -63.654659537728747 -12.893127220797181 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -95.120938403260894 2.4672166980123156 -64.342330319802599 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftForeArm" -p "amazonprincess_Ctrl_LeftArm";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1259.3848876953125 -2621.763671875 -125.32293701171886 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -97.179675571111886 70.682212196599849 -7.6031477580242921 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 92.369798928582554 -0.82312298772239323 -70.856643742060427 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHand" -p "amazonprincess_Ctrl_LeftForeArm";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 909.7919921875 -2620.90673828125 39.8592529296875 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandThumb1" -p "amazonprincess_Ctrl_LeftHand";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -11.881591796875909 -216.88916015625091 225.23959350585949 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -0.0070217257466941747 0.0065771075440940576 -0.041082159197994253 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 46.851090727791394 10.793033321663783 101.297278360354 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 21.78604391158342 -43.658135979256492 -105.42561065527606 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandThumb2" -p "amazonprincess_Ctrl_LeftHandThumb1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -75.2978515625 -272.890625 270.12972259521484 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 8.6603890527719242e-007 1.3530153127933044e-005 7.395702882555752 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.444215193015395 22.369357487234279 102.12460187717249 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 27.949377733320386 -24.267653899389437 -102.30172938393744 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandThumb3" -p "amazonprincess_Ctrl_LeftHandThumb2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -84.486328125000455 -387.43310546875 178.77431869506836 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0.0063162983368549221 2.3760958486101356e-005 -0.037418307739159724 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.44421519301541 22.369357487234275 -77.875398122827519 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -27.949377733320393 24.267653899389437 77.698270616062558 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandIndex1" -p "amazonprincess_Ctrl_LeftHand";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 130.78271484374909 -467.79736328125182 30.257324218750114 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.9756933518293928e-015 8.3489560388417351e-015 4.4527765540489241e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -175.31568890108366 -1.0566079956283201 -77.317020138684924 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -4.8017395099851576 -77.27380247512653 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandIndex2" -p "amazonprincess_Ctrl_LeftHandIndex1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 133.34741210937545 -590.4501953125 50.848693847656136 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -7.4544250346801174e-017 0 3.8166656177562201e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0.11486013570475111 179.98316960236153 81.663813570528362 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 180.11608666021266 81.663796700678347 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_LeftHandIndex3" -p "amazonprincess_Ctrl_LeftHandIndex2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -62.188720703124545 -424.41064453124909 0.86907958984375 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.5538173684758519e-015 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.88513986429524 0.016830397638485168 81.663813570528404 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0.11608666021265143 81.663796700678347 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightArm" -p "amazonprincess_Ctrl_Spine1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1497.0793457033462 2324.720703125 -896.4312744140625 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -78.407814475961388 -63.654681808593061 -12.893069139140151 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 84.879087698072226 -2.4672023349773777 64.342345833347935 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightForeArm" -p "amazonprincess_Ctrl_RightArm";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1259.383544921875 -2621.7626953125 -125.32214355468761 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 82.82018560762252 70.6822131577714 -7.6032945354551176 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -87.630155568974402 0.82313845563099874 70.856651417908722 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHand" -p "amazonprincess_Ctrl_RightForeArm";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -909.791259765625 -2620.90576171875 39.859985351562386 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandThumb1" -p "amazonprincess_Ctrl_RightHand";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 11.881103515625 -216.88867187499909 225.2396240234375 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.5444437451708134e-014 -3.1805546814635195e-015 -1.4312496066585827e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 46.851117458535732 -10.792998666268725 78.702746270602105 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -21.786000334891625 -43.658177192712195 -74.574410691273584 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandThumb2" -p "amazonprincess_Ctrl_RightHandThumb1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 75.297607421875909 -272.89013671875091 270.1296005249024 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.5803381073521849e-014 6.3611093629270304e-015 -2.2363275104040352e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.444219474701246 -22.369442873908032 77.875353462544368 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -27.949476212398682 -24.267621308185259 -77.698236150146428 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandThumb3" -p "amazonprincess_Ctrl_RightHandThumb2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 84.486572265625455 -387.43310546875091 178.77407073974607 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 2.8624992133171654e-014 7.1629423143045223e-030 -2.8674688300069518e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 29.444219474701239 -22.369442873908021 -102.12464653745563 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 27.949476212398672 24.267621308185266 102.30176384985359 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandIndex1" -p "amazonprincess_Ctrl_RightHand";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -130.783203125 -467.79687499999909 30.257568359375 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 4.6843378006147018 -1.0566129432677507 102.68296705257055 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -3.9896960732112931e-016 -4.8017666420135159 
		-102.72618516513693 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandIndex2" -p "amazonprincess_Ctrl_RightHandIndex1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -133.34716796874955 -590.44970703125 50.848937988281364 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.7272125173400581e-017 -4.9696166897867449e-017 -1.2722194460147575e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0.11486807567154379 0.016831541711620331 81.663823028793644 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 1.242406722874509e-017 -0.11609468215777079 
		-81.663806156630599 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_RightHandIndex3" -p "amazonprincess_Ctrl_RightHandIndex2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 62.188720703125 -424.4111328125 0.869140625 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 4.9696166897867437e-017 4.9696166897867462e-017 -2.5444413186001642e-014 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0.11486807567154377 0.016831541711620331 -98.336176971206356 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 1.242406722874509e-017 0.11609468215777076 98.336193843369415 ;
	setAttr -l on ".jo";
	setAttr ".radi" 216.2631159855768;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_Neck" -p "amazonprincess_Ctrl_Spine1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 5.3987356252171992e-011 2838.072265625 -444.68398284912109 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -105.5869350791628 -89.999999999999105 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999758 -15.586935079162812 90.000000000000924 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode hikFKJoint -n "amazonprincess_Ctrl_Head" -p "amazonprincess_Ctrl_Neck";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.0498241992683575e-011 1296.7646484374982 361.74446868896484 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 432.52623197115361;
instanceable -a 0;
createNode transform -n "pCube1";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "pCube1Shape" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 8 ".vt[0:7]"  -50 -50 50 50 -50 50 -50 50 50 50 50 50 -50 50 -50
		 50 50 -50 -50 -50 -50 50 -50 -50;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 3 0 3 2 0 2 0 0 3 5 0 5 4 0 4 2 0
		 5 7 0 7 6 0 6 4 0 7 1 0 0 6 0;
	setAttr -s 24 ".n[0:23]" -type "float3"  0 0 1 0 0 1 0 0 1 0 0 1 0 1
		 0 0 1 0 0 1 0 0 1 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0
		 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 3 2
		f 4 -3 4 5 6
		mu 0 4 2 3 5 4
		f 4 -6 7 8 9
		mu 0 4 4 5 7 6
		f 4 -9 10 -1 11
		mu 0 4 6 7 9 8
		f 4 -11 -8 -5 -2
		mu 0 4 1 10 11 3
		f 4 -12 -4 -7 -10
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 0\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 0\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 0\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 440 -ast 1 -aet 500 ";
	setAttr ".st" 6;
createNode HIKCharacterNode -n "amazonprincess";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".HipsTx" -1.9527894655046315e-013;
	setAttr ".HipsTy" 6679.33642578125;
	setAttr ".HipsTz" -190.64283752441403;
	setAttr ".HipsRx" 18.930927585771165;
	setAttr ".HipsSx" 10000.001953125;
	setAttr ".HipsSy" 10000.002857848387;
	setAttr ".HipsSz" 10000.002857848387;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 733.50024414062489;
	setAttr ".LeftUpLegTy" 7144.1367187500009;
	setAttr ".LeftUpLegTz" 129.70208740234389;
	setAttr ".LeftUpLegRx" -175.80339347119357;
	setAttr ".LeftUpLegRy" 0.21755012049206299;
	setAttr ".LeftUpLegRz" 4.54143681645066;
	setAttr ".LeftUpLegSx" 10000.005678444792;
	setAttr ".LeftUpLegSy" 10000.000098042847;
	setAttr ".LeftUpLegSz" 10000.000955858488;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 1030.19287109375;
	setAttr ".LeftLegTy" 3395.60791015625;
	setAttr ".LeftLegTz" -146.2075958251954;
	setAttr ".LeftLegRx" -171.33873047433468;
	setAttr ".LeftLegRy" 0.53025331376590945;
	setAttr ".LeftLegRz" -0.33223665728835705;
	setAttr ".LeftLegSx" 10000.007486939952;
	setAttr ".LeftLegSy" 9999.998860974194;
	setAttr ".LeftLegSz" 9999.9994364382819;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 1011.0639648437498;
	setAttr ".LeftFootTy" 741.9407958984375;
	setAttr ".LeftFootTz" -550.43273925781261;
	setAttr ".LeftFootRx" 119.49739144630769;
	setAttr ".LeftFootRy" -1.2448750214332917e-005;
	setAttr ".LeftFootRz" 3.9842583284156485e-005;
	setAttr ".LeftFootSx" 9999.9951171901539;
	setAttr ".LeftFootSy" 9999.9976810931184;
	setAttr ".LeftFootSz" 9999.9987714960225;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -733.50030517578125;
	setAttr ".RightUpLegTy" 7144.1367187500009;
	setAttr ".RightUpLegTz" 129.70208740234389;
	setAttr ".RightUpLegRx" -175.8033830574048;
	setAttr ".RightUpLegRy" -0.21755240951895674;
	setAttr ".RightUpLegRz" -4.5414599844613841;
	setAttr ".RightUpLegSx" 10000.007960432751;
	setAttr ".RightUpLegSy" 10000.002514523238;
	setAttr ".RightUpLegSz" 10000.002062056537;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -1030.194580078125;
	setAttr ".RightLegTy" 3395.6069335937491;
	setAttr ".RightLegTz" -146.2083282470704;
	setAttr ".RightLegRx" -171.33872466442028;
	setAttr ".RightLegRy" -0.53024712884898473;
	setAttr ".RightLegRz" 0.332213660824068;
	setAttr ".RightLegSx" 9999.9996407106028;
	setAttr ".RightLegSy" 10000.000982787316;
	setAttr ".RightLegSz" 10000.00253083013;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -1011.0667114257811;
	setAttr ".RightFootTy" 741.93927001953125;
	setAttr ".RightFootTz" -550.4339599609375;
	setAttr ".RightFootRx" 119.49740081581326;
	setAttr ".RightFootRy" 1.8841534900591195e-005;
	setAttr ".RightFootRz" -6.2788280984967684e-005;
	setAttr ".RightFootSx" 9999.9990234440447;
	setAttr ".RightFootSy" 9999.9994927593671;
	setAttr ".RightFootSz" 10000.000823587652;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTx" 1.6620589626814564e-010;
	setAttr ".SpineTy" 8383.5576171875;
	setAttr ".SpineTz" 393.87060546875023;
	setAttr ".SpineRx" -1.6619326316642877;
	setAttr ".SpineSx" 10000.001953125;
	setAttr ".SpineSy" 9999.9994723501623;
	setAttr ".SpineSz" 10000.001426423729;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 1497.0797119140625;
	setAttr ".LeftArmTy" 11897.772460937498;
	setAttr ".LeftArmTz" -537.07342529296932;
	setAttr ".LeftArmRx" -2.4810385059708038;
	setAttr ".LeftArmRy" -6.0478495967957269;
	setAttr ".LeftArmRz" -154.08077724359623;
	setAttr ".LeftArmSx" 9999.9998567241764;
	setAttr ".LeftArmSy" 9999.9976401151725;
	setAttr ".LeftArmSz" 10000.002698901544;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 2756.4645994483908;
	setAttr ".LeftForeArmTy" 9276.0087889164224;
	setAttr ".LeftForeArmTz" -662.39636086649739;
	setAttr ".LeftForeArmRx" 0.82643242494948566;
	setAttr ".LeftForeArmRy" 5.1300167516773385;
	setAttr ".LeftForeArmRz" -160.78275126276773;
	setAttr ".LeftForeArmSx" 10000.001419697994;
	setAttr ".LeftForeArmSy" 9999.9971601626876;
	setAttr ".LeftForeArmSz" 10000.003635492554;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 3666.2565912744321;
	setAttr ".LeftHandTy" 6655.102050525119;
	setAttr ".LeftHandTz" -622.53710692308937;
	setAttr ".LeftHandRx" 127.52654367191569;
	setAttr ".LeftHandRy" 82.770761911361575;
	setAttr ".LeftHandRz" -38.145149933434112;
	setAttr ".LeftHandSx" 10000.001679911236;
	setAttr ".LeftHandSy" 9999.9951111077498;
	setAttr ".LeftHandSz" 10000.000208772604;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -1497.079345703125;
	setAttr ".RightArmTy" 11897.771484374998;
	setAttr ".RightArmTz" -537.07299804687466;
	setAttr ".RightArmRx" -2.4810244711550902;
	setAttr ".RightArmRy" 6.0478486387047052;
	setAttr ".RightArmRz" 154.08078763861926;
	setAttr ".RightArmSx" 9999.9945878538183;
	setAttr ".RightArmSy" 9999.9932002743844;
	setAttr ".RightArmSz" 10000.001574864969;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -2756.4628906249991;
	setAttr ".RightForeArmTy" 9276.0087890625018;
	setAttr ".RightForeArmTz" -662.39514160156239;
	setAttr ".RightForeArmRx" 0.82644482576104006;
	setAttr ".RightForeArmRy" -5.1300236616714381;
	setAttr ".RightForeArmRz" 160.78276138222543;
	setAttr ".RightForeArmSx" 9999.9946829656601;
	setAttr ".RightForeArmSy" 9999.9922203582537;
	setAttr ".RightForeArmSz" 9999.9998618533791;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -3666.2541503906245;
	setAttr ".RightHandTy" 6655.1030273437518;
	setAttr ".RightHandTz" -622.53515624999989;
	setAttr ".RightHandRx" 127.52641751181275;
	setAttr ".RightHandRy" -82.770765626046384;
	setAttr ".RightHandRz" 38.145274043163141;
	setAttr ".RightHandSx" 9999.9996300799612;
	setAttr ".RightHandSy" 9999.9918772358687;
	setAttr ".RightHandSz" 9999.9938383314147;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" 2.5464827468901779e-010;
	setAttr ".HeadTy" 13707.887695312496;
	setAttr ".HeadTz" 276.41876455755244;
	setAttr ".HeadRx" 1.6308341118930151e-005;
	setAttr ".HeadSx" 10000;
	setAttr ".HeadSy" 9999.9961593508961;
	setAttr ".HeadSz" 9999.9990890386398;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 1011.0638427734374;
	setAttr ".LeftToeBaseTy" 741.94091796875;
	setAttr ".LeftToeBaseTz" -550.4327392578125;
	setAttr ".LeftToeBaseRx" -40.20016379442535;
	setAttr ".LeftToeBaseRy" -0.00030631473587672031;
	setAttr ".LeftToeBaseRz" -179.99972216552521;
	setAttr ".LeftToeBaseSx" 10000.001953385477;
	setAttr ".LeftToeBaseSy" 9999.997641508744;
	setAttr ".LeftToeBaseSz" 10000.002374510108;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -1011.0665893554686;
	setAttr ".RightToeBaseTy" 741.93908691406295;
	setAttr ".RightToeBaseTz" -550.43395996093761;
	setAttr ".RightToeBaseRx" -40.200186524033128;
	setAttr ".RightToeBaseRy" 0.0002996820630341421;
	setAttr ".RightToeBaseRz" 179.99969893014924;
	setAttr ".RightToeBaseSx" 10000.000000274844;
	setAttr ".RightToeBaseSy" 9999.9992173410719;
	setAttr ".RightToeBaseSz" 10000.00065161668;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".NeckTx" 2.7514651668170137e-010;
	setAttr ".NeckTy" 12411.123046875;
	setAttr ".NeckTz" -85.325706481933537;
	setAttr ".NeckRx" 15.586945337150489;
	setAttr ".NeckSx" 10000;
	setAttr ".NeckSy" 9999.9971962023046;
	setAttr ".NeckSz" 9999.9992087003993;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".Spine1Tx" 2.2115916042952932e-010;
	setAttr ".Spine1Ty" 9573.05078125;
	setAttr ".Spine1Tz" 359.35827636718756;
	setAttr ".Spine1Rx" -8.9049887984045064;
	setAttr ".Spine1Sx" 10000;
	setAttr ".Spine1Sy" 9999.998048964424;
	setAttr ".Spine1Sz" 10000.001018922829;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Tx" 2.2115916287698057e-010;
	setAttr ".Spine2Ty" 9573.0507639688331;
	setAttr ".Spine2Tz" 359.3582790374669;
	setAttr ".Spine2Rx" -8.904993969362728;
	setAttr ".Spine2Ry" 1.1383109223170955e-005;
	setAttr ".Spine2Rz" -1.7835680145044701e-006;
	setAttr ".Spine2Sx" 10000;
	setAttr ".Spine2Sy" 9999.9976347634602;
	setAttr ".Spine2Sz" 10000.000577097013;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Neck8Tx" 2.2115916287698057e-010;
	setAttr ".Neck8Ty" 9573.0507639688331;
	setAttr ".Neck8Tz" 359.3582790374669;
	setAttr ".Neck8Rx" -8.904993969362728;
	setAttr ".Neck8Ry" 1.1383109223170955e-005;
	setAttr ".Neck8Rz" -1.7835680145044701e-006;
	setAttr ".Neck8Sx" 10000;
	setAttr ".Neck8Sy" 9999.9976347634602;
	setAttr ".Neck8Sz" 10000.000577097013;
	setAttr ".Neck8MinRLimitx" -45;
	setAttr ".Neck8MinRLimity" -45;
	setAttr ".Neck8MinRLimitz" -45;
	setAttr ".Neck8MaxRLimitx" 45;
	setAttr ".Neck8MaxRLimity" 45;
	setAttr ".Neck8MaxRLimitz" 45;
	setAttr ".Neck9Tx" 2.7514652073264031e-010;
	setAttr ".Neck9Ty" 12411.123415542486;
	setAttr ".Neck9Tz" -85.325704458929351;
	setAttr ".Neck9Rx" 15.586947658374971;
	setAttr ".Neck9Ry" 1.5797319730431162e-005;
	setAttr ".Neck9Rz" 4.4068067523549862e-006;
	setAttr ".Neck9Sx" 9999.9999999999982;
	setAttr ".Neck9Sy" 9999.9968358546594;
	setAttr ".Neck9Sz" 9999.9989918203373;
	setAttr ".Neck9MinRLimitx" -45;
	setAttr ".Neck9MinRLimity" -45;
	setAttr ".Neck9MinRLimitz" -45;
	setAttr ".Neck9MaxRLimitx" 45;
	setAttr ".Neck9MaxRLimity" 45;
	setAttr ".Neck9MaxRLimitz" 45;
	setAttr ".LeftHandThumb1Tx" 3654.3749991781533;
	setAttr ".LeftHandThumb1Ty" 6438.2128903624671;
	setAttr ".LeftHandThumb1Tz" -397.29751343918849;
	setAttr ".LeftHandThumb1Rx" 130.99439898345338;
	setAttr ".LeftHandThumb1Ry" -23.844084542083177;
	setAttr ".LeftHandThumb1Rz" 9.5188590072832984;
	setAttr ".LeftHandThumb1Sx" 10000.000741203497;
	setAttr ".LeftHandThumb1Sy" 9999.9972213449946;
	setAttr ".LeftHandThumb1Sz" 9999.9978124699774;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 3579.0771472550455;
	setAttr ".LeftHandThumb2Ty" 6165.3222653620796;
	setAttr ".LeftHandThumb2Tz" -127.16779094488176;
	setAttr ".LeftHandThumb2Rx" 153.8921283670098;
	setAttr ".LeftHandThumb2Ry" -20.940098527693298;
	setAttr ".LeftHandThumb2Rz" -2.3673642680655616;
	setAttr ".LeftHandThumb2Sx" 10000.003656639068;
	setAttr ".LeftHandThumb2Sy" 9999.9985801464081;
	setAttr ".LeftHandThumb2Sz" 10000.002141232608;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 3494.590818866689;
	setAttr ".LeftHandThumb3Ty" 5777.8891598972141;
	setAttr ".LeftHandThumb3Tz" 51.606523819447148;
	setAttr ".LeftHandThumb3Rx" 154.89336018686913;
	setAttr ".LeftHandThumb3Ry" -22.246709773215446;
	setAttr ".LeftHandThumb3Rz" -3.7927586147915737;
	setAttr ".LeftHandThumb3Sx" 10000.000454890122;
	setAttr ".LeftHandThumb3Sy" 9999.9982673102058;
	setAttr ".LeftHandThumb3Sz" 10000.000967649577;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 3797.0393060255683;
	setAttr ".LeftHandIndex1Ty" 6187.3046872271962;
	setAttr ".LeftHandIndex1Tz" -592.27978256177789;
	setAttr ".LeftHandIndex1Rx" 144.18409667092288;
	setAttr ".LeftHandIndex1Ry" 81.775825731837415;
	setAttr ".LeftHandIndex1Rz" -22.809062593510507;
	setAttr ".LeftHandIndex1Sx" 10000.000512644596;
	setAttr ".LeftHandIndex1Sy" 9999.9948619810439;
	setAttr ".LeftHandIndex1Sz" 9999.9963061538529;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 3930.38671800267;
	setAttr ".LeftHandIndex2Ty" 5596.8544918970038;
	setAttr ".LeftHandIndex2Tz" -541.43108857270568;
	setAttr ".LeftHandIndex2Rx" 179.17394634929664;
	setAttr ".LeftHandIndex2Ry" 81.921989491019019;
	setAttr ".LeftHandIndex2Rz" -9.1540591556024573;
	setAttr ".LeftHandIndex2Sx" 10000.003696957647;
	setAttr ".LeftHandIndex2Sy" 9999.9927677742544;
	setAttr ".LeftHandIndex2Sz" 9999.9988093198044;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 3868.1979972477952;
	setAttr ".LeftHandIndex3Ty" 5172.4438473731525;
	setAttr ".LeftHandIndex3Tz" -540.56200907311279;
	setAttr ".LeftHandIndex3Rx" 177.99745616956588;
	setAttr ".LeftHandIndex3Ry" 86.698614476247243;
	setAttr ".LeftHandIndex3Rz" -25.154140863728664;
	setAttr ".LeftHandIndex3Sx" 10000.000053222562;
	setAttr ".LeftHandIndex3Sy" 9999.9905638938544;
	setAttr ".LeftHandIndex3Sz" 9999.9951171890152;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandThumb1Tx" -3654.373046875;
	setAttr ".RightHandThumb1Ty" 6438.2143554687491;
	setAttr ".RightHandThumb1Tz" -397.29553222656261;
	setAttr ".RightHandThumb1Rx" 130.99437445270394;
	setAttr ".RightHandThumb1Ry" 23.844097794695841;
	setAttr ".RightHandThumb1Rz" -9.5188497393348896;
	setAttr ".RightHandThumb1Sx" 9999.9960845135756;
	setAttr ".RightHandThumb1Sy" 9999.9933519358128;
	setAttr ".RightHandThumb1Sz" 9999.9917476802166;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -3579.0754394531241;
	setAttr ".RightHandThumb2Ty" 6165.32421875;
	setAttr ".RightHandThumb2Tz" -127.16593170166055;
	setAttr ".RightHandThumb2Rx" 153.89211247507131;
	setAttr ".RightHandThumb2Ry" 20.940118347967246;
	setAttr ".RightHandThumb2Rz" 2.3673732810564578;
	setAttr ".RightHandThumb2Sx" 9999.9945849800697;
	setAttr ".RightHandThumb2Sy" 9999.9924456344252;
	setAttr ".RightHandThumb2Sz" 9999.9972268359688;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -3494.5888671874995;
	setAttr ".RightHandThumb3Ty" 5777.89111328125;
	setAttr ".RightHandThumb3Tz" 51.608139038086328;
	setAttr ".RightHandThumb3Rx" 154.893340448901;
	setAttr ".RightHandThumb3Ry" 22.246724359796804;
	setAttr ".RightHandThumb3Rz" 3.7927674364853492;
	setAttr ".RightHandThumb3Sx" 9999.9942014511998;
	setAttr ".RightHandThumb3Sy" 9999.9914759858821;
	setAttr ".RightHandThumb3Sz" 9999.9939599110839;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -3797.0373535156255;
	setAttr ".RightHandIndex1Ty" 6187.30615234375;
	setAttr ".RightHandIndex1Tz" -592.27758789062511;
	setAttr ".RightHandIndex1Rx" 144.18412754257173;
	setAttr ".RightHandIndex1Ry" -81.775834072984921;
	setAttr ".RightHandIndex1Rz" 22.809174344934064;
	setAttr ".RightHandIndex1Sx" 9999.9983304116231;
	setAttr ".RightHandIndex1Sy" 9999.9912737170707;
	setAttr ".RightHandIndex1Sz" 9999.9914861690049;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -3930.3845214843755;
	setAttr ".RightHandIndex2Ty" 5596.8564453124991;
	setAttr ".RightHandIndex2Tz" -541.42864990234375;
	setAttr ".RightHandIndex2Rx" 179.17392517629034;
	setAttr ".RightHandIndex2Ry" -81.921988123704352;
	setAttr ".RightHandIndex2Rz" 9.1541469946053198;
	setAttr ".RightHandIndex2Sx" 10000.00175982275;
	setAttr ".RightHandIndex2Sy" 9999.9907564972145;
	setAttr ".RightHandIndex2Sz" 9999.9947966421059;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -3868.1958007812495;
	setAttr ".RightHandIndex3Ty" 5172.4453125;
	setAttr ".RightHandIndex3Tz" -540.55950927734375;
	setAttr ".RightHandIndex3Rx" 177.99757583119347;
	setAttr ".RightHandIndex3Ry" -86.698615589837075;
	setAttr ".RightHandIndex3Rz" 25.154380950121777;
	setAttr ".RightHandIndex3Sx" 9999.9971080791129;
	setAttr ".RightHandIndex3Sy" 9999.986141869902;
	setAttr ".RightHandIndex3Sz" 9999.9909109558394;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".LeftFootExtraFinger1Tx" 1011.064147949219;
	setAttr ".LeftFootExtraFinger1Ty" 149.52392578124989;
	setAttr ".LeftFootExtraFinger1Tz" 496.77197265624989;
	setAttr ".LeftFootExtraFinger1Rx" 90.000020543015012;
	setAttr ".LeftFootExtraFinger1Ry" 1.2448750210878002e-005;
	setAttr ".LeftFootExtraFinger1Rz" -179.99996015741675;
	setAttr ".LeftFootExtraFinger1Sx" 9999.9960937510386;
	setAttr ".LeftFootExtraFinger1Sy" 10000.001953126166;
	setAttr ".LeftFootExtraFinger1Sz" 9999.9980468761842;
	setAttr ".LeftFootExtraFinger1MinRLimitx" -45;
	setAttr ".LeftFootExtraFinger1MinRLimity" -45;
	setAttr ".LeftFootExtraFinger1MinRLimitz" -45;
	setAttr ".LeftFootExtraFinger1MaxRLimitx" 45;
	setAttr ".LeftFootExtraFinger1MaxRLimity" 45;
	setAttr ".LeftFootExtraFinger1MaxRLimitz" 45;
	setAttr ".RightFootExtraFinger1Tx" -1011.0668945312501;
	setAttr ".RightFootExtraFinger1Ty" 149.52212524414051;
	setAttr ".RightFootExtraFinger1Tz" 496.77084350585937;
	setAttr ".RightFootExtraFinger1Rx" 90.000013372867159;
	setAttr ".RightFootExtraFinger1Ry" -1.8841534904046107e-005;
	setAttr ".RightFootExtraFinger1Rz" 179.99993721171901;
	setAttr ".RightFootExtraFinger1Sx" 9999.9990234409925;
	setAttr ".RightFootExtraFinger1Sy" 10000.004882813217;
	setAttr ".RightFootExtraFinger1Sz" 10000.001953128729;
	setAttr ".RightFootExtraFinger1MinRLimitx" -45;
	setAttr ".RightFootExtraFinger1MinRLimity" -45;
	setAttr ".RightFootExtraFinger1MinRLimitz" -45;
	setAttr ".RightFootExtraFinger1MaxRLimitx" 45;
	setAttr ".RightFootExtraFinger1MaxRLimity" 45;
	setAttr ".RightFootExtraFinger1MaxRLimitz" 45;
	setAttr ".LeftShoulderExtraTx" -136.96995544433594;
	setAttr ".LeftShoulderExtraTy" 12013.6845703125;
	setAttr ".LeftShoulderExtraTz" 511.95303344726551;
	setAttr ".LeftShoulderExtraRx" -88.696976385798166;
	setAttr ".LeftShoulderExtraRy" 49.315948784440643;
	setAttr ".LeftShoulderExtraRz" -0.08804297689701035;
	setAttr ".LeftShoulderExtraSx" 9999.9999493535488;
	setAttr ".LeftShoulderExtraSy" 9999.9990414311505;
	setAttr ".LeftShoulderExtraSz" 9999.9954743249218;
	setAttr ".LeftShoulderExtraMinRLimitx" -45;
	setAttr ".LeftShoulderExtraMinRLimity" -45;
	setAttr ".LeftShoulderExtraMinRLimitz" -45;
	setAttr ".LeftShoulderExtraMaxRLimitx" 45;
	setAttr ".LeftShoulderExtraMaxRLimity" 45;
	setAttr ".LeftShoulderExtraMaxRLimitz" 45;
	setAttr ".RightShoulderExtraTx" -136.96995544433594;
	setAttr ".RightShoulderExtraTy" 12013.6845703125;
	setAttr ".RightShoulderExtraTz" 511.95303344726551;
	setAttr ".RightShoulderExtraRx" -88.696976385798166;
	setAttr ".RightShoulderExtraRy" 49.315948784440643;
	setAttr ".RightShoulderExtraRz" -0.08804297689701035;
	setAttr ".RightShoulderExtraSx" 9999.9999493535488;
	setAttr ".RightShoulderExtraSy" 9999.9990414311505;
	setAttr ".RightShoulderExtraSz" 9999.9954743249218;
	setAttr ".RightShoulderExtraMinRLimitx" -45;
	setAttr ".RightShoulderExtraMinRLimity" -45;
	setAttr ".RightShoulderExtraMinRLimitz" -45;
	setAttr ".RightShoulderExtraMaxRLimitx" 45;
	setAttr ".RightShoulderExtraMaxRLimity" 45;
	setAttr ".RightShoulderExtraMaxRLimitz" 45;
createNode HIKProperty2State -n "HIKproperties1";
	setAttr ".OutputPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 7.4194079589843751;
	setAttr ".FootBackToAnkle" 5.3701682181949337;
	setAttr ".FootMiddleToAnkle" 10.740336436389867;
	setAttr ".FootFrontToMiddle" 5.3701682181949337;
	setAttr ".FootInToAnkle" 5.3701682181949337;
	setAttr ".FootOutToAnkle" 5.3701682181949337;
	setAttr ".HandBottomToWrist" 2.5776807447335681;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 7.0886220480173128;
	setAttr ".HandFrontToMiddle" 7.0886220480173128;
	setAttr ".HandInToWrist" 7.0886220480173128;
	setAttr ".HandOutToWrist" 7.0886220480173128;
	setAttr ".LeftHandThumbTip" 0.80552523272924015;
	setAttr ".LeftHandIndexTip" 0.80552523272924015;
	setAttr ".LeftHandMiddleTip" 0.80552523272924015;
	setAttr ".LeftHandRingTip" 0.80552523272924015;
	setAttr ".LeftHandPinkyTip" 0.80552523272924015;
	setAttr ".LeftHandExtraFingerTip" 0.80552523272924015;
	setAttr ".RightHandThumbTip" 0.80552523272924015;
	setAttr ".RightHandIndexTip" 0.80552523272924015;
	setAttr ".RightHandMiddleTip" 0.80552523272924015;
	setAttr ".RightHandRingTip" 0.80552523272924015;
	setAttr ".RightHandPinkyTip" 0.80552523272924015;
	setAttr ".RightHandExtraFingerTip" 0.80552523272924015;
	setAttr ".LeftFootThumbTip" 0.80552523272924015;
	setAttr ".LeftFootIndexTip" 0.80552523272924015;
	setAttr ".LeftFootMiddleTip" 0.80552523272924015;
	setAttr ".LeftFootRingTip" 0.80552523272924015;
	setAttr ".LeftFootPinkyTip" 0.80552523272924015;
	setAttr ".LeftFootExtraFingerTip" 0.80552523272924015;
	setAttr ".RightFootThumbTip" 0.80552523272924015;
	setAttr ".RightFootIndexTip" 0.80552523272924015;
	setAttr ".RightFootMiddleTip" 0.80552523272924015;
	setAttr ".RightFootRingTip" 0.80552523272924015;
	setAttr ".RightFootPinkyTip" 0.80552523272924015;
	setAttr ".RightFootExtraFingerTip" 0.80552523272924015;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
createNode HIKSolverNode -n "HIKSolverNode1";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	setAttr ".ihi" 0;
	setAttr ".HipsTy" 0.020894975506435057;
	setAttr ".HipsTz" 0.66358506199798239;
	setAttr ".HipsRx" 109.16430443648106;
	setAttr ".HipsSx" 1.0000002929687501;
	setAttr ".HipsSy" 1.000000441393688;
	setAttr ".HipsSz" 1.000000441393688;
	setAttr ".LeftUpLegTx" 0.073350063959942174;
	setAttr ".LeftUpLegTy" 0.054358817319888453;
	setAttr ".LeftUpLegTz" 0.015222348822493431;
	setAttr ".LeftUpLegRx" 161.59541200095714;
	setAttr ".LeftUpLegRy" 1.7928190314477925;
	setAttr ".LeftUpLegRz" 4.1485067838277141;
	setAttr ".LeftUpLegSx" 1.000000718582899;
	setAttr ".LeftUpLegSy" 0.99999946769652559;
	setAttr ".LeftUpLegSz" 0.99999962053450897;
	setAttr ".LeftLegTx" -4.5017046756967716e-009;
	setAttr ".LeftLegTy" 0.37703635617887199;
	setAttr ".LeftLegTz" -5.7262533343510613e-009;
	setAttr ".LeftLegRx" 12.644156048243472;
	setAttr ".LeftLegRy" -0.12683343583774304;
	setAttr ".LeftLegRz" 4.7763122624037848;
	setAttr ".LeftLegSx" 0.99999999932051331;
	setAttr ".LeftLegSy" 1.0000000018373718;
	setAttr ".LeftLegSz" 0.99999977930087325;
	setAttr ".LeftFootTx" 5.5078168789690629e-008;
	setAttr ".LeftFootTy" 0.26843473766849696;
	setAttr ".LeftFootTz" -2.0036108716592338e-008;
	setAttr ".LeftFootRx" -73.827137035519385;
	setAttr ".LeftFootRy" 0.44206526428326781;
	setAttr ".LeftFootRz" -0.38026554453552847;
	setAttr ".LeftFootSx" 0.99999841096207576;
	setAttr ".LeftFootSy" 0.99999994272662363;
	setAttr ".LeftFootSz" 0.99999994260587444;
	setAttr ".RightUpLegTx" -0.073350070063456022;
	setAttr ".RightUpLegTy" 0.054358817319888453;
	setAttr ".RightUpLegTz" 0.015222348822493431;
	setAttr ".RightUpLegRx" 161.59550631711863;
	setAttr ".RightUpLegRy" -1.7928281611661985;
	setAttr ".RightUpLegRz" -4.1485367614102229;
	setAttr ".RightUpLegSx" 1.0000004676377394;
	setAttr ".RightUpLegSy" 0.99999982117831565;
	setAttr ".RightUpLegSz" 0.99999973825040467;
	setAttr ".RightLegTx" -2.1331557631398823e-009;
	setAttr ".RightLegTy" 0.37703629592377164;
	setAttr ".RightLegTz" -8.8832002535094157e-009;
	setAttr ".RightLegRx" 12.643988191648544;
	setAttr ".RightLegRy" 0.12725193792258388;
	setAttr ".RightLegRz" -4.7762162319836143;
	setAttr ".RightLegSx" 0.99999942344010717;
	setAttr ".RightLegSy" 0.9999998429413488;
	setAttr ".RightLegSz" 1.0000000939999618;
	setAttr ".RightFootTx" -2.7434778074320043e-008;
	setAttr ".RightFootTy" 0.26843476299339059;
	setAttr ".RightFootTz" 2.1897631138911855e-008;
	setAttr ".RightFootRx" -73.827057342988951;
	setAttr ".RightFootRy" -0.44251920610486334;
	setAttr ".RightFootRz" 0.38026726549808143;
	setAttr ".RightFootSx" 0.99999972225609257;
	setAttr ".RightFootSy" 0.9999996746284544;
	setAttr ".RightFootSz" 0.99999997389138429;
	setAttr ".SpineTx" 1.6586910315252518e-014;
	setAttr ".SpineTy" 0.18016730828032723;
	setAttr ".SpineTz" -2.9990427424797517e-007;
	setAttr ".SpineRx" -20.592780301210887;
	setAttr ".SpineSx" 0.999999804687557;
	setAttr ".SpineSy" 0.99999930385214797;
	setAttr ".SpineSz" 0.99999949921797915;
	setAttr ".LeftArmTx" 0.18586287805859381;
	setAttr ".LeftArmTy" -0.056077816787319594;
	setAttr ".LeftArmTz" -0.014279806630029146;
	setAttr ".LeftArmRx" -90.829620728513845;
	setAttr ".LeftArmRy" 27.009653826038974;
	setAttr ".LeftArmRz" 137.95326734488316;
	setAttr ".LeftArmSx" 1.0000002031054582;
	setAttr ".LeftArmSy" 1.0000000328883116;
	setAttr ".LeftArmSz" 1.0000003948722811;
	setAttr ".LeftForeArmTx" 1.3810541710235213e-007;
	setAttr ".LeftForeArmTy" 0.29112588992963861;
	setAttr ".LeftForeArmTz" 4.7016952234302245e-008;
	setAttr ".LeftForeArmRx" 3.4781710208931487;
	setAttr ".LeftForeArmRy" 12.401947544008282;
	setAttr ".LeftForeArmRz" -6.1982140386566087;
	setAttr ".LeftForeArmSx" 0.99999990669865746;
	setAttr ".LeftForeArmSy" 1.0000000417242774;
	setAttr ".LeftForeArmSz" 1.0000000727764673;
	setAttr ".LeftHandTx" -4.2522373733255847e-008;
	setAttr ".LeftHandTy" 0.27746106498224155;
	setAttr ".LeftHandTz" 1.2519528663768043e-008;
	setAttr ".LeftHandRx" 42.851298340133127;
	setAttr ".LeftHandRy" 79.02017102062841;
	setAttr ".LeftHandRz" 36.640282456427386;
	setAttr ".LeftHandSx" 0.99999979058032751;
	setAttr ".LeftHandSy" 0.99999973126002173;
	setAttr ".LeftHandSz" 1.0000000921456582;
	setAttr ".RightArmTx" -0.009322443173459885;
	setAttr ".RightArmTy" 0.17090463401835371;
	setAttr ".RightArmTz" -0.019902966856825355;
	setAttr ".RightArmRx" -94.699637546459073;
	setAttr ".RightArmRy" -24.885036625769377;
	setAttr ".RightArmRz" 123.70976621576311;
	setAttr ".RightArmSx" 0.9999995547872812;
	setAttr ".RightArmSy" 0.99999955714104605;
	setAttr ".RightArmSz" 1.0000003319288144;
	setAttr ".RightForeArmTx" -1.6695492233154141e-007;
	setAttr ".RightForeArmTy" 0.29112569075243255;
	setAttr ".RightForeArmTz" 5.0011951135964239e-008;
	setAttr ".RightForeArmRx" 3.4339836161766981;
	setAttr ".RightForeArmRy" -12.390318961617414;
	setAttr ".RightForeArmRz" 6.213629965405028;
	setAttr ".RightForeArmSx" 0.99999992447748776;
	setAttr ".RightForeArmSy" 1.0000000821660135;
	setAttr ".RightForeArmSz" 1.0000000339206867;
	setAttr ".RightHandTx" -8.7734482567825012e-008;
	setAttr ".RightHandTy" 0.2774615180617187;
	setAttr ".RightHandTz" 1.9347619228948787e-008;
	setAttr ".RightHandRx" 72.665804996510985;
	setAttr ".RightHandRy" -84.134870835745431;
	setAttr ".RightHandRz" -65.808596577774722;
	setAttr ".RightHandSx" 0.99999977620240543;
	setAttr ".RightHandSy" 0.99999990331380217;
	setAttr ".RightHandSz" 1.0000000476061228;
	setAttr ".HeadTx" -2.6256877650833427e-014;
	setAttr ".HeadTy" 0.13462872629272504;
	setAttr ".HeadTz" -1.1914072051144586e-007;
	setAttr ".HeadRx" -11.403928842437887;
	setAttr ".HeadSx" 1.0000001953124618;
	setAttr ".HeadSy" 0.99999999773281234;
	setAttr ".HeadSz" 1.0000000157219389;
	setAttr ".LeftToeBaseTx" -0.10117942679196161;
	setAttr ".LeftToeBaseTy" 0.33421250196869973;
	setAttr ".LeftToeBaseTz" -0.064753356186743341;
	setAttr ".LeftToeBaseRx" 171.33550348005269;
	setAttr ".LeftToeBaseRy" 0.47416365369747121;
	setAttr ".LeftToeBaseRz" -0.40831348644229504;
	setAttr ".LeftToeBaseSx" 9.9999925029996723e-005;
	setAttr ".LeftToeBaseSy" 0.00010000001154200983;
	setAttr ".LeftToeBaseSz" 0.00010000000559103463;
	setAttr ".LeftToeBasePGX" -type "matrix" 9999.4111328124982 -57.98347091674782 -92.545410156250028 0
		 -71.262780787111538 -9885.7109273992828 -1505.861311683484 0 -82.755986114932014 1506.430978500493 -9885.5351840436851 0
		 1030.1928710937502 3395.6079101562509 -146.20759582519528 1;
	setAttr ".LeftToeBaseISx" 0.9999997985991268;
	setAttr ".LeftToeBaseISy" 0.99999986819194842;
	setAttr ".LeftToeBaseISz" 0.99999984805442432;
	setAttr ".RightToeBaseTx" 0.10117981960944919;
	setAttr ".RightToeBaseTy" 0.33421227480344512;
	setAttr ".RightToeBaseTz" -0.064753424135370857;
	setAttr ".RightToeBaseRx" 171.33549929651281;
	setAttr ".RightToeBaseRy" -0.47416039382182007;
	setAttr ".RightToeBaseRz" 0.40828950103441619;
	setAttr ".RightToeBaseSx" 0.00010000000349137886;
	setAttr ".RightToeBaseSy" 9.9999989522748153e-005;
	setAttr ".RightToeBaseSz" 9.9999965971188688e-005;
	setAttr ".RightToeBasePGX" -type "matrix" 9999.4033203125 57.979415893554595 92.544258117675724 0
		 71.258489247317669 -9885.7128821551451 -1505.8626526004805 0 82.755559805157361 1506.4329236427748 -9885.5389984285048 0
		 -1030.1945800781255 3395.6069335937491 -146.2083282470704 1;
	setAttr ".RightToeBaseISx" 0.99999878497651451;
	setAttr ".RightToeBaseISy" 0.99999974117630652;
	setAttr ".RightToeBaseISz" 1.0000001416132018;
	setAttr ".NeckTx" -3.3792071224558742e-014;
	setAttr ".NeckTy" 0.28726986024471346;
	setAttr ".NeckTz" -4.5843613777352132e-007;
	setAttr ".NeckRx" 28.675532415786098;
	setAttr ".NeckSx" 1.0000001953125;
	setAttr ".NeckSy" 1.0000000814998686;
	setAttr ".NeckSz" 1.0000000887173619;
	setAttr ".Spine1Tx" -1.1524597511065251e-014;
	setAttr ".Spine1Ty" 0.11899941529147451;
	setAttr ".Spine1Tz" 2.1620021883883567e-009;
	setAttr ".Spine1Rx" -7.2430549407062985;
	setAttr ".Spine1Sx" 0.99999990234375957;
	setAttr ".Spine1Sy" 1.0000001046538343;
	setAttr ".Spine1Sz" 1.0000002124805201;
	setAttr ".LeftHandThumb1Tx" -0.020776695897089751;
	setAttr ".LeftHandThumb1Ty" 0.02288957153977289;
	setAttr ".LeftHandThumb1Tz" 0.0048525982561772874;
	setAttr ".LeftHandThumb1Rx" 116.14672666607156;
	setAttr ".LeftHandThumb1Ry" 69.922239639059512;
	setAttr ".LeftHandThumb1Rz" 160.65140652374151;
	setAttr ".LeftHandThumb1Sx" 0.99999977440202703;
	setAttr ".LeftHandThumb1Sy" 0.99999973227460348;
	setAttr ".LeftHandThumb1Sz" 1.0000000162202012;
	setAttr ".LeftHandThumb2Tx" 2.9510825561018805e-008;
	setAttr ".LeftHandThumb2Ty" 0.039129185428678326;
	setAttr ".LeftHandThumb2Tz" -4.6859416236166851e-008;
	setAttr ".LeftHandThumb2Rx" 18.336214838679137;
	setAttr ".LeftHandThumb2Ry" -7.6759743408911332;
	setAttr ".LeftHandThumb2Rz" -1.6073629253925417;
	setAttr ".LeftHandThumb2Sx" 1.0000005339840294;
	setAttr ".LeftHandThumb2Sy" 1.0000004909163056;
	setAttr ".LeftHandThumb2Sz" 1.0000001212072867;
	setAttr ".LeftHandThumb3Tx" -1.2666399429317465e-008;
	setAttr ".LeftHandThumb3Ty" 0.043497429720104619;
	setAttr ".LeftHandThumb3Tz" -8.0603594271311252e-008;
	setAttr ".LeftHandThumb3Rx" 0.48875714744861171;
	setAttr ".LeftHandThumb3Ry" 0.5915458729019254;
	setAttr ".LeftHandThumb3Rz" 1.7997673525587201;
	setAttr ".LeftHandThumb3Sx" 0.99999968544563456;
	setAttr ".LeftHandThumb3Sy" 0.99999994455764152;
	setAttr ".LeftHandThumb3Sz" 0.99999990790689763;
	setAttr ".LeftHandIndex1Tx" 0.0019286250759645109;
	setAttr ".LeftHandIndex1Ty" 0.048616184219184011;
	setAttr ".LeftHandIndex1Tz" -0.0011366406901021087;
	setAttr ".LeftHandIndex1Rx" 1.4442912472388958;
	setAttr ".LeftHandIndex1Ry" 2.1492792500025408;
	setAttr ".LeftHandIndex1Rz" -0.76155151383512154;
	setAttr ".LeftHandIndex1Sx" 0.99999987912440158;
	setAttr ".LeftHandIndex1Sy" 1.0000000382627741;
	setAttr ".LeftHandIndex1Sz" 0.99999965019685466;
	setAttr ".LeftHandIndex2Tx" 2.3016732741965029e-008;
	setAttr ".LeftHandIndex2Ty" 0.06074527887695147;
	setAttr ".LeftHandIndex2Tz" 3.9892421310749882e-008;
	setAttr ".LeftHandIndex2Rx" 21.459043727628188;
	setAttr ".LeftHandIndex2Ry" 0.81112003763618101;
	setAttr ".LeftHandIndex2Rz" -1.7590729368459888;
	setAttr ".LeftHandIndex2Sx" 1.0000002842663973;
	setAttr ".LeftHandIndex2Sy" 0.99999975408305308;
	setAttr ".LeftHandIndex2Sz" 1.00000026252499;
	setAttr ".LeftHandIndex3Tx" -1.0637590690254495e-008;
	setAttr ".LeftHandIndex3Ty" 0.042894393593625457;
	setAttr ".LeftHandIndex3Tz" -6.7557364702430789e-009;
	setAttr ".LeftHandIndex3Rx" 14.723293607623035;
	setAttr ".LeftHandIndex3Ry" -4.9162810432181274;
	setAttr ".LeftHandIndex3Rz" 0.84191239110315774;
	setAttr ".LeftHandIndex3Sx" 0.99999961718276931;
	setAttr ".LeftHandIndex3Sy" 0.99999961134298265;
	setAttr ".LeftHandIndex3Sz" 0.99999972062163311;
	setAttr ".RightHandThumb1Tx" 0.020776705805251067;
	setAttr ".RightHandThumb1Ty" 0.022889516236329843;
	setAttr ".RightHandThumb1Tz" 0.0048526478748566748;
	setAttr ".RightHandThumb1Rx" 116.21558756610008;
	setAttr ".RightHandThumb1Ry" -69.95634584102784;
	setAttr ".RightHandThumb1Rz" -160.72243472576497;
	setAttr ".RightHandThumb1Sx" 0.99999988383863159;
	setAttr ".RightHandThumb1Sy" 0.99999966803532925;
	setAttr ".RightHandThumb1Sz" 0.99999960220907824;
	setAttr ".RightHandThumb2Tx" -2.4966910483481541e-008;
	setAttr ".RightHandThumb2Ty" 0.039129142171835052;
	setAttr ".RightHandThumb2Tz" -3.7253599066700005e-008;
	setAttr ".RightHandThumb2Rx" 18.332796386526187;
	setAttr ".RightHandThumb2Ry" 7.700737974445957;
	setAttr ".RightHandThumb2Rz" 1.5319212557263475;
	setAttr ".RightHandThumb2Sx" 1.0000001126326992;
	setAttr ".RightHandThumb2Sy" 1.0000002044461125;
	setAttr ".RightHandThumb2Sz" 1.0000001057566097;
	setAttr ".RightHandThumb3Tx" 4.2760135543495892e-008;
	setAttr ".RightHandThumb3Ty" 0.043497436558774583;
	setAttr ".RightHandThumb3Tz" -3.7975786557065128e-008;
	setAttr ".RightHandThumb3Rx" 0.4858131967794373;
	setAttr ".RightHandThumb3Ry" -0.59795559117437314;
	setAttr ".RightHandThumb3Rz" -1.7624534945373351;
	setAttr ".RightHandThumb3Sx" 0.9999996857798642;
	setAttr ".RightHandThumb3Sy" 0.99999989846575965;
	setAttr ".RightHandThumb3Sz" 0.99999973962740107;
	setAttr ".RightHandIndex1Tx" -0.001928594900317826;
	setAttr ".RightHandIndex1Ty" 0.048616134231635688;
	setAttr ".RightHandIndex1Tz" -0.0011364975663558652;
	setAttr ".RightHandIndex1Rx" 1.4447183106203938;
	setAttr ".RightHandIndex1Ry" -2.1492824010958547;
	setAttr ".RightHandIndex1Rz" 0.76153616597740514;
	setAttr ".RightHandIndex1Sx" 0.99999986471907598;
	setAttr ".RightHandIndex1Sy" 0.99999992777102165;
	setAttr ".RightHandIndex1Sz" 0.9999996676546673;
	setAttr ".RightHandIndex2Tx" -4.3867393051399972e-010;
	setAttr ".RightHandIndex2Ty" 0.060745277006948928;
	setAttr ".RightHandIndex2Tz" -6.4943840749620563e-008;
	setAttr ".RightHandIndex2Rx" 21.458970006732521;
	setAttr ".RightHandIndex2Ry" -0.81112742302116725;
	setAttr ".RightHandIndex2Rz" 1.759071998742529;
	setAttr ".RightHandIndex2Sx" 1.0000002828066104;
	setAttr ".RightHandIndex2Sy" 1.00000008559306;
	setAttr ".RightHandIndex2Sz" 1.0000002880957746;
	setAttr ".RightHandIndex3Tx" 1.4398544467830732e-008;
	setAttr ".RightHandIndex3Ty" 0.042894496515196501;
	setAttr ".RightHandIndex3Tz" -7.6970207762983023e-008;
	setAttr ".RightHandIndex3Rx" 14.72359133730958;
	setAttr ".RightHandIndex3Ry" 4.9162867078567283;
	setAttr ".RightHandIndex3Rz" -0.84191713157382875;
	setAttr ".RightHandIndex3Sx" 0.99999951668774667;
	setAttr ".RightHandIndex3Sy" 0.99999945219177544;
	setAttr ".RightHandIndex3Sz" 0.99999973073301196;
	setAttr ".LeftFootExtraFinger1Tx" 1.1541003069881484e-008;
	setAttr ".LeftFootExtraFinger1Ty" 0.12031607540310932;
	setAttr ".LeftFootExtraFinger1Tz" -3.6949752910131473e-009;
	setAttr ".LeftFootExtraFinger1Rx" 29.497408052490936;
	setAttr ".LeftFootExtraFinger1Ry" 180;
	setAttr ".LeftFootExtraFinger1Sx" 1.0000001953126147;
	setAttr ".LeftFootExtraFinger1Sy" 1.0000003018840005;
	setAttr ".LeftFootExtraFinger1Sz" 0.99999985754503762;
	setAttr ".RightFootExtraFinger1Tx" 3.1084519402924116e-009;
	setAttr ".RightFootExtraFinger1Ty" 0.12031609288695896;
	setAttr ".RightFootExtraFinger1Tz" 3.0938044556783062e-009;
	setAttr ".RightFootExtraFinger1Rx" 29.497412699480019;
	setAttr ".RightFootExtraFinger1Ry" 180;
	setAttr ".RightFootExtraFinger1Sx" 0.99999999999999978;
	setAttr ".RightFootExtraFinger1Sy" 1.0000004808010554;
	setAttr ".RightFootExtraFinger1Sz" 1.0000001711587261;
	setAttr ".LeftShoulderExtraTx" -0.013696995544438656;
	setAttr ".LeftShoulderExtraTy" 0.24339692990068307;
	setAttr ".LeftShoulderExtraTz" 0.053217454908966344;
	setAttr ".LeftShoulderExtraRx" -75.525654239909386;
	setAttr ".LeftShoulderExtraRy" 48.572921367590169;
	setAttr ".LeftShoulderExtraRz" 9.8631841853193976;
	setAttr ".LeftShoulderExtraSx" 0.99999994540549053;
	setAttr ".LeftShoulderExtraSy" 0.99999985202892971;
	setAttr ".LeftShoulderExtraSz" 0.99999969474430839;
	setAttr ".RightShoulderExtraTx" -0.013696995544438656;
	setAttr ".RightShoulderExtraTy" 0.24339692990068307;
	setAttr ".RightShoulderExtraTz" 0.053217454908966344;
	setAttr ".RightShoulderExtraRx" -75.525654239909386;
	setAttr ".RightShoulderExtraRy" 48.572921367590169;
	setAttr ".RightShoulderExtraRz" 9.8631841853193976;
	setAttr ".RightShoulderExtraSx" 0.99999994540549053;
	setAttr ".RightShoulderExtraSy" 0.99999985202892971;
	setAttr ".RightShoulderExtraSz" 0.99999969474430839;
createNode skinCluster -n "skinCluster1";
	setAttr -s 536 ".wl";
	setAttr -s 2 ".wl[0].w[1:2]"  0.80392149090766907 0.19607850909233093;
	setAttr ".wl[1].w[1]"  1;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.0015911963654768411;
	setAttr ".wl[2].w[1]" 0.00195725263407602;
	setAttr ".wl[2].w[2]" 0.99411565065383911;
	setAttr ".wl[2].w[6]" 2.6414033237686005e-005;
	setAttr ".wl[2].w[7]" 0.0023094863133703413;
	setAttr ".wl[3].w[1]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[25]"  1;
	setAttr ".wl[7].w[25]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[25]"  1;
	setAttr ".wl[10].w[25]"  1;
	setAttr ".wl[11].w[25]"  1;
	setAttr ".wl[12].w[25]"  1;
	setAttr ".wl[13].w[25]"  1;
	setAttr ".wl[14].w[25]"  1;
	setAttr ".wl[15].w[25]"  1;
	setAttr ".wl[16].w[25]"  1;
	setAttr ".wl[17].w[25]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[1]"  1;
	setAttr ".wl[21].w[1]"  1;
	setAttr ".wl[22].w[1]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[2]"  1;
	setAttr ".wl[25].w[25]"  1;
	setAttr ".wl[26].w[25]"  1;
	setAttr ".wl[27].w[25]"  1;
	setAttr ".wl[28].w[25]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[25]"  1;
	setAttr ".wl[32].w[25]"  1;
	setAttr ".wl[33].w[1]"  1;
	setAttr ".wl[34].w[2]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[25]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[25]"  1;
	setAttr ".wl[40].w[25]"  1;
	setAttr ".wl[41].w[25]"  1;
	setAttr ".wl[42].w[25]"  1;
	setAttr ".wl[43].w[25]"  1;
	setAttr ".wl[44].w[25]"  1;
	setAttr ".wl[45].w[25]"  1;
	setAttr ".wl[46].w[25]"  1;
	setAttr ".wl[47].w[25]"  1;
	setAttr ".wl[48].w[25]"  1;
	setAttr ".wl[49].w[25]"  1;
	setAttr ".wl[50].w[25]"  1;
	setAttr ".wl[51].w[25]"  1;
	setAttr -s 4 ".wl[52].w";
	setAttr ".wl[52].w[25]" 0.026099417098248812;
	setAttr ".wl[52].w[26]" 0.97343484489893151;
	setAttr ".wl[52].w[31]" 0.0002137246191470201;
	setAttr ".wl[52].w[32]" 0.00025201338367268991;
	setAttr ".wl[53].w[26]"  1;
	setAttr ".wl[54].w[26]"  1;
	setAttr ".wl[55].w[26]"  1;
	setAttr ".wl[56].w[26]"  1;
	setAttr ".wl[57].w[26]"  1;
	setAttr -s 4 ".wl[58].w";
	setAttr ".wl[58].w[25]" 0.027919647668407873;
	setAttr ".wl[58].w[26]" 0.97188456729647132;
	setAttr ".wl[58].w[27]" 0.00010459412951434838;
	setAttr ".wl[58].w[32]" 9.1190905606534464e-005;
	setAttr ".wl[59].w[26]"  1;
	setAttr -s 4 ".wl[60].w";
	setAttr ".wl[60].w[25]" 0.0022828487674933944;
	setAttr ".wl[60].w[26]" 0.9972326962119652;
	setAttr ".wl[60].w[27]" 0.00028577773254570918;
	setAttr ".wl[60].w[32]" 0.00019867728799570733;
	setAttr ".wl[61].w[26]"  1;
	setAttr ".wl[62].w[26]"  1;
	setAttr ".wl[63].w[26]"  1;
	setAttr ".wl[64].w[26]"  1;
	setAttr ".wl[65].w[26]"  1;
	setAttr -s 4 ".wl[66].w";
	setAttr ".wl[66].w[25]" 0.0024658228987387686;
	setAttr ".wl[66].w[26]" 0.99712464848482263;
	setAttr ".wl[66].w[27]" 0.00031056033993803804;
	setAttr ".wl[66].w[32]" 9.8968276500559067e-005;
	setAttr ".wl[67].w[26]"  1;
	setAttr -s 3 ".wl[68].w[26:28]"  0.9985864504872296 0.0013275904292986054 
		8.5959083471739525e-005;
	setAttr ".wl[69].w[26]"  1;
	setAttr -s 3 ".wl[70].w[26:28]"  0.98413514256354317 0.015234262532878724 
		0.00063059490357810465;
	setAttr ".wl[71].w[26]"  1;
	setAttr -s 3 ".wl[72].w[26:28]"  0.99206836485634842 0.0075125498278279324 
		0.00041908531582375108;
	setAttr ".wl[73].w[26]"  1;
	setAttr -s 3 ".wl[74].w[26:28]"  0.99940990878485014 0.00056014719777296629 
		2.994401737689229e-005;
	setAttr ".wl[75].w[26]"  1;
	setAttr -s 3 ".wl[76].w[26:28]"  0.90579912287150666 0.093929891923020786 
		0.00027098520547252361;
	setAttr -s 3 ".wl[77].w[26:28]"  0.56895915467482383 0.4294242445365562 
		0.0016166007886200338;
	setAttr -s 3 ".wl[78].w[26:28]"  0.8553603814774362 0.14445646129839687 
		0.00018315722416696337;
	setAttr -s 3 ".wl[79].w[26:28]"  0.70209338069235361 0.29716240374498631 
		0.00074421556266011002;
	setAttr -s 3 ".wl[80].w[26:28]"  0.84324927546693196 0.15632684154167029 
		0.00042388299139768426;
	setAttr -s 3 ".wl[81].w[26:28]"  0.57069753660329881 0.42731783272897017 
		0.0019846306677310487;
	setAttr -s 3 ".wl[82].w[26:28]"  0.97294703828198892 0.027012457731550268 
		4.0503986460838702e-005;
	setAttr -s 3 ".wl[83].w[26:28]"  0.65999198890025101 0.3393623823113821 
		0.00064562878836698083;
	setAttr -s 4 ".wl[84].w";
	setAttr ".wl[84].w[1]" 0.019290939057099058;
	setAttr ".wl[84].w[2]" 0.9539278596915407;
	setAttr ".wl[84].w[6]" 0.0060941421842205653;
	setAttr ".wl[84].w[7]" 0.020687059067139742;
	setAttr -s 2 ".wl[85].w";
	setAttr ".wl[85].w[2]" 0.95845383033156395;
	setAttr ".wl[85].w[6]" 0.04154616966843605;
	setAttr -s 4 ".wl[86].w";
	setAttr ".wl[86].w[1]" 0.0011746252223084725;
	setAttr ".wl[86].w[2]" 0.28215892976738638;
	setAttr ".wl[86].w[6]" 0.71544861793518066;
	setAttr ".wl[86].w[7]" 0.001217827075124479;
	setAttr ".wl[87].w[2]"  1;
	setAttr ".wl[88].w[2]"  1;
	setAttr -s 3 ".wl[89].w";
	setAttr ".wl[89].w[2]" 0.51874282106755087;
	setAttr ".wl[89].w[3]" 0.00066081538798502023;
	setAttr ".wl[89].w[6]" 0.48059636354446411;
	setAttr -s 3 ".wl[90].w";
	setAttr ".wl[90].w[2]" 0.93945587236107631;
	setAttr ".wl[90].w[3]" 1.1648138203431212e-005;
	setAttr ".wl[90].w[6]" 0.060532479500720306;
	setAttr -s 3 ".wl[91].w";
	setAttr ".wl[91].w[2]" 0.18032316913840876;
	setAttr ".wl[91].w[3]" 0.00024654217573848283;
	setAttr ".wl[91].w[6]" 0.81943028868585277;
	setAttr ".wl[92].w[2]"  1;
	setAttr -s 3 ".wl[93].w";
	setAttr ".wl[93].w[2]" 0.99999786523461986;
	setAttr ".wl[93].w[3]" 2.0961950062089607e-006;
	setAttr ".wl[93].w[6]" 3.8570373944700092e-008;
	setAttr -s 3 ".wl[94].w";
	setAttr ".wl[94].w[2]" 0.99985591497869131;
	setAttr ".wl[94].w[3]" 7.9029562098594753e-005;
	setAttr ".wl[94].w[6]" 6.5055459210066924e-005;
	setAttr ".wl[95].w[2]"  1;
	setAttr ".wl[96].w[2]"  1;
	setAttr ".wl[97].w[2]"  1;
	setAttr -s 3 ".wl[98].w";
	setAttr ".wl[98].w[2]" 0.97438746930436737;
	setAttr ".wl[98].w[3]" 0.0096658412875089278;
	setAttr ".wl[98].w[6]" 0.01594668940812374;
	setAttr -s 2 ".wl[99].w[2:3]"  0.88235294818878174 0.11764705181121826;
	setAttr -s 3 ".wl[100].w";
	setAttr ".wl[100].w[2]" 0.99388173807350755;
	setAttr ".wl[100].w[3]" 0.004889157995045512;
	setAttr ".wl[100].w[6]" 0.0012291039314469977;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[2]" 0.99999999369827042;
	setAttr ".wl[101].w[3]" 3.2135460953069035e-009;
	setAttr ".wl[101].w[6]" 3.0881834890435104e-009;
	setAttr ".wl[102].w[2]"  1;
	setAttr ".wl[103].w[2]"  1;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[2]" 0.63897340418506932;
	setAttr ".wl[104].w[3]" 9.936169236796957e-005;
	setAttr ".wl[104].w[6]" 0.36092723412256278;
	setAttr -s 3 ".wl[105].w";
	setAttr ".wl[105].w[2]" 0.69970506253935938;
	setAttr ".wl[105].w[3]" 0.0083372023032851576;
	setAttr ".wl[105].w[6]" 0.29195773515735546;
	setAttr -s 3 ".wl[106].w";
	setAttr ".wl[106].w[2]" 0.19881399782079356;
	setAttr ".wl[106].w[3]" 0.016494688022122381;
	setAttr ".wl[106].w[6]" 0.78469131415708404;
	setAttr -s 2 ".wl[107].w";
	setAttr ".wl[107].w[2]" 0.50458607077598572;
	setAttr ".wl[107].w[6]" 0.49541392922401428;
	setAttr -s 2 ".wl[108].w";
	setAttr ".wl[108].w[2]" 0.037504613399505615;
	setAttr ".wl[108].w[6]" 0.96249538660049438;
	setAttr -s 3 ".wl[109].w";
	setAttr ".wl[109].w[2]" 0.011270152738012828;
	setAttr ".wl[109].w[3]" 0.00028960093535167143;
	setAttr ".wl[109].w[6]" 0.98844024632663552;
	setAttr -s 2 ".wl[110].w";
	setAttr ".wl[110].w[2]" 0.064674675464630127;
	setAttr ".wl[110].w[6]" 0.93532532453536987;
	setAttr -s 4 ".wl[111].w";
	setAttr ".wl[111].w[2]" 0.0034664171209173853;
	setAttr ".wl[111].w[3]" 1.1256273765294177e-005;
	setAttr ".wl[111].w[6]" 0.99651026725769043;
	setAttr ".wl[111].w[7]" 1.2059347626890656e-005;
	setAttr ".wl[112].w[2]"  1;
	setAttr -s 4 ".wl[113].w";
	setAttr ".wl[113].w[2]" 0.64699302493840971;
	setAttr ".wl[113].w[3]" 0.012736416509144807;
	setAttr ".wl[113].w[6]" 0.32765573263168335;
	setAttr ".wl[113].w[7]" 0.012614825920762168;
	setAttr ".wl[114].w[6]"  1;
	setAttr -s 2 ".wl[115].w";
	setAttr ".wl[115].w[2]" 3.24249267578125e-005;
	setAttr ".wl[115].w[6]" 0.99996757507324219;
	setAttr -s 2 ".wl[116].w";
	setAttr ".wl[116].w[2]" 0.00072878599166870117;
	setAttr ".wl[116].w[6]" 0.9992712140083313;
	setAttr -s 2 ".wl[117].w";
	setAttr ".wl[117].w[2]" 8.4638595581054688e-005;
	setAttr ".wl[117].w[6]" 0.99991536140441895;
	setAttr ".wl[118].w[6]"  1;
	setAttr ".wl[119].w[6]"  1;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[0]" 8.0905211898604578e-005;
	setAttr ".wl[120].w[1]" 9.2696883787265046e-005;
	setAttr ".wl[120].w[2]" 8.865356514606152e-005;
	setAttr ".wl[120].w[6]" 0.49340765645301021;
	setAttr ".wl[120].w[7]" 0.50633008788615796;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[1]" 0.0001604628478956698;
	setAttr ".wl[121].w[2]" 0.0001542771769989702;
	setAttr ".wl[121].w[6]" 0.48004615724563449;
	setAttr ".wl[121].w[7]" 0.51947538562369711;
	setAttr ".wl[121].w[8]" 0.0001637171057738167;
	setAttr ".wl[122].w[7]"  1;
	setAttr -s 4 ".wl[123].w[6:9]"  0.48123736667756323 0.5184621085899549 
		0.00017072877580840066 0.00012979595667349039;
	setAttr -s 4 ".wl[124].w[6:9]"  0.49836545513808256 0.50150011854237819 
		7.8068784341411195e-005 5.6357535197866523e-005;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[1]" 1.8811533136611037e-005;
	setAttr ".wl[125].w[2]" 1.8355886011572096e-005;
	setAttr ".wl[125].w[6]" 0.50090503633698535;
	setAttr ".wl[125].w[7]" 0.49903679426475073;
	setAttr ".wl[125].w[8]" 2.1001979115761248e-005;
	setAttr ".wl[126].w[7]"  1;
	setAttr ".wl[127].w[7]"  1;
	setAttr ".wl[128].w[7]"  1;
	setAttr ".wl[129].w[7]"  1;
	setAttr ".wl[130].w[7]"  1;
	setAttr ".wl[131].w[7]"  1;
	setAttr -s 5 ".wl[132].w";
	setAttr ".wl[132].w[7]" 0.48830229520572621;
	setAttr ".wl[132].w[8]" 0.44843165528868933;
	setAttr ".wl[132].w[9]" 0.052943340714084484;
	setAttr ".wl[132].w[10]" 0.0033722755099616481;
	setAttr ".wl[132].w[12]" 0.0069504332815382933;
	setAttr -s 5 ".wl[133].w";
	setAttr ".wl[133].w[7]" 0.18241736394296496;
	setAttr ".wl[133].w[8]" 0.51822718052734063;
	setAttr ".wl[133].w[9]" 0.27713863651718335;
	setAttr ".wl[133].w[10]" 0.012195981332288932;
	setAttr ".wl[133].w[12]" 0.010020837680222147;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[7]" 0.53028594430198328;
	setAttr ".wl[134].w[8]" 0.45319619488801494;
	setAttr ".wl[134].w[9]" 0.012257942429881126;
	setAttr ".wl[134].w[10]" 0.00086076160045576967;
	setAttr ".wl[134].w[12]" 0.0033991567796649979;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[7]" 0.26083174390687131;
	setAttr ".wl[135].w[8]" 0.54278562955941689;
	setAttr ".wl[135].w[9]" 0.18050248013698519;
	setAttr ".wl[135].w[10]" 0.0068646640092246795;
	setAttr ".wl[135].w[12]" 0.009015482387501975;
	setAttr -s 5 ".wl[136].w";
	setAttr ".wl[136].w[7]" 0.53599536988467833;
	setAttr ".wl[136].w[8]" 0.44144032242989412;
	setAttr ".wl[136].w[9]" 0.013727477815478999;
	setAttr ".wl[136].w[10]" 0.001476953426795338;
	setAttr ".wl[136].w[12]" 0.0073598764431532229;
	setAttr -s 5 ".wl[137].w";
	setAttr ".wl[137].w[7]" 0.53356572172113137;
	setAttr ".wl[137].w[8]" 0.429078265128296;
	setAttr ".wl[137].w[9]" 0.024239274928739011;
	setAttr ".wl[137].w[10]" 0.0027191038374488109;
	setAttr ".wl[137].w[12]" 0.010397634384384881;
	setAttr -s 3 ".wl[138].w[26:28]"  0.071983475847759257 0.9246100404494485 
		0.0034064837027923582;
	setAttr -s 3 ".wl[139].w[26:28]"  0.00075893240697012766 0.499620533796515 
		0.49962053379651489;
	setAttr ".wl[140].w[27]"  1;
	setAttr ".wl[141].w[27]"  1;
	setAttr ".wl[142].w[27]"  1;
	setAttr ".wl[143].w[27]"  1;
	setAttr ".wl[144].w[27]"  1;
	setAttr ".wl[145].w[27]"  1;
	setAttr -s 3 ".wl[146].w[26:28]"  0.06157922689641996 0.93743886048063341 
		0.00098191262294670652;
	setAttr ".wl[147].w[27]"  1;
	setAttr ".wl[148].w[27]"  1;
	setAttr -s 3 ".wl[149].w[26:28]"  0.3066847844566496 0.69211273531960515 
		0.0012024802237452755;
	setAttr -s 3 ".wl[150].w[26:28]"  0.0029056574286944856 0.95932341386245035 
		0.037770928708855164;
	setAttr -s 3 ".wl[151].w[26:28]"  0.0082998489801076759 0.92633894344940748 
		0.0653612075704849;
	setAttr -s 3 ".wl[152].w[26:28]"  0.017681376414664902 0.84964941996131915 
		0.13266920362401594;
	setAttr ".wl[153].w[27]"  1;
	setAttr ".wl[154].w[27]"  1;
	setAttr -s 3 ".wl[155].w[26:28]"  0.033186713332773489 0.74386889548703916 
		0.22294439118018736;
	setAttr ".wl[156].w[27]"  1;
	setAttr ".wl[157].w[27]"  1;
	setAttr ".wl[158].w[27]"  1;
	setAttr ".wl[159].w[27]"  1;
	setAttr -s 3 ".wl[160].w[26:28]"  0.0010521800668372365 0.49947390996658125 
		0.49947390996658148;
	setAttr ".wl[161].w[27]"  1;
	setAttr ".wl[162].w[27]"  1;
	setAttr -s 3 ".wl[163].w[26:28]"  0.0013960132546845879 0.49930199337265768 
		0.49930199337265768;
	setAttr -s 3 ".wl[164].w[26:28]"  0.00063840157476415145 0.49968079921261771 
		0.4996807992126181;
	setAttr ".wl[165].w[27]"  1;
	setAttr ".wl[166].w[27]"  1;
	setAttr ".wl[167].w[27]"  1;
	setAttr ".wl[168].w[27]"  1;
	setAttr -s 3 ".wl[169].w[26:28]"  0.0019211090719345322 0.49903944546403273 
		0.49903944546403273;
	setAttr -s 3 ".wl[170].w[26:28]"  0.0017153546567572431 0.49914232267162134 
		0.49914232267162134;
	setAttr ".wl[171].w[27]"  1;
	setAttr ".wl[172].w[3]"  1;
	setAttr ".wl[173].w[3]"  1;
	setAttr ".wl[174].w[3]"  1;
	setAttr ".wl[175].w[3]"  1;
	setAttr ".wl[176].w[3]"  1;
	setAttr ".wl[177].w[3]"  1;
	setAttr ".wl[178].w[3]"  1;
	setAttr ".wl[179].w[3]"  1;
	setAttr ".wl[180].w[3]"  1;
	setAttr ".wl[181].w[3]"  1;
	setAttr ".wl[182].w[3]"  1;
	setAttr ".wl[183].w[3]"  1;
	setAttr ".wl[184].w[3]"  1;
	setAttr -s 2 ".wl[185].w[2:3]"  0.09518934041261673 0.90481065958738327;
	setAttr ".wl[186].w[3]"  1;
	setAttr ".wl[187].w[3]"  1;
	setAttr ".wl[188].w[3]"  1;
	setAttr ".wl[189].w[3]"  1;
	setAttr ".wl[190].w[3]"  1;
	setAttr ".wl[191].w[3]"  1;
	setAttr ".wl[192].w[3]"  1;
	setAttr ".wl[193].w[3]"  1;
	setAttr ".wl[194].w[3]"  1;
	setAttr ".wl[195].w[3]"  1;
	setAttr ".wl[196].w[3]"  1;
	setAttr ".wl[197].w[3]"  1;
	setAttr ".wl[198].w[3]"  1;
	setAttr ".wl[199].w[3]"  1;
	setAttr ".wl[200].w[3]"  1;
	setAttr ".wl[201].w[3]"  1;
	setAttr ".wl[202].w[3]"  1;
	setAttr ".wl[203].w[3]"  1;
	setAttr ".wl[204].w[3]"  1;
	setAttr ".wl[205].w[3]"  1;
	setAttr ".wl[206].w[3]"  1;
	setAttr ".wl[207].w[3]"  1;
	setAttr ".wl[208].w[3]"  1;
	setAttr ".wl[209].w[3]"  1;
	setAttr ".wl[210].w[3]"  1;
	setAttr ".wl[211].w[3]"  1;
	setAttr -s 2 ".wl[212].w[2:3]"  0.98299491405487061 0.017005085945129395;
	setAttr -s 2 ".wl[213].w[2:3]"  0.98514944314956665 0.01485055685043335;
	setAttr -s 2 ".wl[214].w[2:3]"  0.92388319969177246 0.076116800308227539;
	setAttr -s 2 ".wl[215].w[2:3]"  0.32156863808631897 0.67843136191368103;
	setAttr -s 2 ".wl[216].w[2:3]"  0.15298287570476532 0.84701712429523468;
	setAttr ".wl[217].w[3]"  1;
	setAttr ".wl[218].w[3]"  1;
	setAttr -s 2 ".wl[219].w[2:3]"  0.96826815605163574 0.031731843948364258;
	setAttr -s 5 ".wl[220].w";
	setAttr ".wl[220].w[8]" 0.359670614182589;
	setAttr ".wl[220].w[9]" 0.008057097983850417;
	setAttr ".wl[220].w[10]" 0.00318704217352571;
	setAttr ".wl[220].w[12]" 0.62558073357205113;
	setAttr ".wl[220].w[13]" 0.003504512087983701;
	setAttr ".wl[221].w[12]"  1;
	setAttr ".wl[222].w[12]"  1;
	setAttr ".wl[223].w[12]"  1;
	setAttr ".wl[224].w[12]"  1;
	setAttr ".wl[225].w[13]"  1;
	setAttr ".wl[226].w[13]"  1;
	setAttr -s 5 ".wl[227].w[10:14]"  0.00063280922161006528 0.00063280922161006528 
		0.0047623160008089674 0.49698603277798542 0.49698603277798542;
	setAttr -s 5 ".wl[228].w[10:14]"  0.00080645502645662463 0.00080645502645662463 
		0.0054542158602379417 0.49646643704342452 0.4964664370434243;
	setAttr -s 5 ".wl[229].w[10:14]"  0.02402352250682686 0.02402352250682686 
		0.055340504980089113 0.44830622500312861 0.44830622500312861;
	setAttr ".wl[230].w[13]"  1;
	setAttr -s 5 ".wl[231].w[10:14]"  0.14305357855191939 0.14175403370199613 
		0.33039484530615837 0.3296178917095034 0.055179650730422747;
	setAttr -s 5 ".wl[232].w[9:13]"  0.053549789784302228 0.24731358199756631 
		0.24700911572513168 0.22702248809643852 0.22510502439656127;
	setAttr -s 5 ".wl[233].w";
	setAttr ".wl[233].w[8]" 0.20868624661760915;
	setAttr ".wl[233].w[9]" 0.26071654353582752;
	setAttr ".wl[233].w[10]" 0.20822832884485137;
	setAttr ".wl[233].w[12]" 0.29613647341424904;
	setAttr ".wl[233].w[13]" 0.026232407587462918;
	setAttr -s 5 ".wl[234].w[8:12]"  0.046437316816189469 0.45762247133445128 
		0.42195134013185898 0.018418481704912112 0.055570390012588088;
	setAttr -s 5 ".wl[235].w[9:13]"  0.00075098628041756475 0.49954044913011386 
		0.49954044913011375 9.0243736886075064e-005 7.7871722468804942e-005;
	setAttr -s 5 ".wl[236].w[9:13]"  0.0009472059387917555 0.49943054965272088 
		0.49943054965272077 0.0001045106326251697 8.718412314141396e-005;
	setAttr -s 5 ".wl[237].w[8:12]"  0.014491876262503476 0.48859138151454373 
		0.48678192717051755 0.0071767594538615191 0.0029580555985736496;
	setAttr -s 5 ".wl[238].w[8:12]"  0.0024646701388965978 0.49764354405567751 
		0.49764354405567751 0.0016543284441855575 0.00059391330556290349;
	setAttr -s 5 ".wl[239].w";
	setAttr ".wl[239].w[7]" 0.48255159876698039;
	setAttr ".wl[239].w[8]" 0.46713604729002406;
	setAttr ".wl[239].w[9]" 0.042102581074750449;
	setAttr ".wl[239].w[10]" 0.0022266391408577854;
	setAttr ".wl[239].w[12]" 0.005983133727387382;
	setAttr -s 5 ".wl[240].w";
	setAttr ".wl[240].w[8]" 2.2093521562811274e-005;
	setAttr ".wl[240].w[10]" 1.2850824694016828e-005;
	setAttr ".wl[240].w[12]" 0.49978813175269182;
	setAttr ".wl[240].w[13]" 0.50008723846858971;
	setAttr ".wl[240].w[14]" 8.9685432461646659e-005;
	setAttr -s 5 ".wl[241].w";
	setAttr ".wl[241].w[8]" 0.0013205022175449743;
	setAttr ".wl[241].w[10]" 0.000821670503754691;
	setAttr ".wl[241].w[12]" 0.46135048713774796;
	setAttr ".wl[241].w[13]" 0.53020236564346368;
	setAttr ".wl[241].w[14]" 0.0063049744974886272;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[7]" 0.0008122001665186152;
	setAttr ".wl[242].w[8]" 0.4045990454388374;
	setAttr ".wl[242].w[9]" 0.0040730205579447877;
	setAttr ".wl[242].w[10]" 0.0013868655872640899;
	setAttr ".wl[242].w[12]" 0.58912886824943511;
	setAttr -s 5 ".wl[243].w";
	setAttr ".wl[243].w[7]" 0.10390466149519194;
	setAttr ".wl[243].w[8]" 0.43170852983425445;
	setAttr ".wl[243].w[9]" 0.34405183273471307;
	setAttr ".wl[243].w[10]" 0.02122147158496045;
	setAttr ".wl[243].w[12]" 0.099113504350880177;
	setAttr -s 5 ".wl[244].w[9:13]"  0.00031077671277952428 0.49977863128025296 
		0.49977863128025318 6.9098653550662097e-005 6.2862073163587218e-005;
	setAttr -s 5 ".wl[245].w[9:13]"  0.00021499254792710126 0.49985235575256265 
		0.49985235575256243 4.2691433905785727e-005 3.760451304212134e-005;
	setAttr -s 5 ".wl[246].w[8:12]"  0.0066283461616884198 0.4888032957361077 
		0.49510648077961444 0.0049158379333659793 0.0045460393892233393;
	setAttr -s 5 ".wl[247].w[8:12]"  0.0016303610649425462 0.52560896959881964 
		0.47095301594416772 0.00088779374265865647 0.00091985964941146382;
	setAttr ".wl[248].w[3]"  1;
	setAttr ".wl[249].w[3]"  1;
	setAttr ".wl[250].w[3]"  1;
	setAttr ".wl[251].w[3]"  1;
	setAttr ".wl[252].w[3]"  1;
	setAttr ".wl[253].w[3]"  1;
	setAttr ".wl[254].w[3]"  1;
	setAttr ".wl[255].w[3]"  1;
	setAttr ".wl[256].w[3]"  1;
	setAttr -s 2 ".wl[257].w[2:3]"  0.074509799480438232 0.92549020051956177;
	setAttr ".wl[258].w[1]"  1;
	setAttr ".wl[259].w[1]"  1;
	setAttr ".wl[260].w[1]"  1;
	setAttr ".wl[261].w[1]"  1;
	setAttr ".wl[262].w[2]"  1;
	setAttr ".wl[263].w[2]"  1;
	setAttr ".wl[264].w[2]"  1;
	setAttr ".wl[265].w[2]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr ".wl[270].w[0]"  1;
	setAttr ".wl[271].w[0]"  1;
	setAttr ".wl[272].w[31]"  1;
	setAttr ".wl[273].w[31]"  1;
	setAttr ".wl[274].w[25]"  1;
	setAttr ".wl[275].w[0]"  1;
	setAttr ".wl[276].w[0]"  1;
	setAttr ".wl[277].w[31]"  1;
	setAttr ".wl[278].w[31]"  1;
	setAttr ".wl[279].w[31]"  1;
	setAttr ".wl[280].w[31]"  1;
	setAttr ".wl[281].w[31]"  1;
	setAttr ".wl[282].w[31]"  1;
	setAttr ".wl[283].w[31]"  1;
	setAttr ".wl[284].w[31]"  1;
	setAttr ".wl[285].w[31]"  1;
	setAttr ".wl[286].w[0]"  1;
	setAttr ".wl[287].w[0]"  1;
	setAttr ".wl[288].w[2]"  1;
	setAttr ".wl[289].w[1]"  1;
	setAttr ".wl[290].w[1]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[2]"  1;
	setAttr ".wl[293].w[31]"  1;
	setAttr ".wl[294].w[25]"  1;
	setAttr ".wl[295].w[31]"  1;
	setAttr ".wl[296].w[31]"  1;
	setAttr ".wl[297].w[31]"  1;
	setAttr ".wl[298].w[0]"  1;
	setAttr ".wl[299].w[0]"  1;
	setAttr ".wl[300].w[31]"  1;
	setAttr ".wl[301].w[25]"  1;
	setAttr ".wl[302].w[31]"  1;
	setAttr ".wl[303].w[0]"  1;
	setAttr ".wl[304].w[1]"  1;
	setAttr ".wl[305].w[2]"  1;
	setAttr ".wl[306].w[0]"  1;
	setAttr ".wl[307].w[0]"  1;
	setAttr ".wl[308].w[31]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[31]"  1;
	setAttr ".wl[311].w[31]"  1;
	setAttr ".wl[312].w[31]"  1;
	setAttr ".wl[313].w[31]"  1;
	setAttr ".wl[314].w[31]"  1;
	setAttr ".wl[315].w[31]"  1;
	setAttr ".wl[316].w[31]"  1;
	setAttr ".wl[317].w[31]"  1;
	setAttr ".wl[318].w[31]"  1;
	setAttr ".wl[319].w[31]"  1;
	setAttr ".wl[320].w[31]"  1;
	setAttr ".wl[321].w[31]"  1;
	setAttr ".wl[322].w[31]"  1;
	setAttr -s 5 ".wl[323].w";
	setAttr ".wl[323].w[25]" 0.00021370128128464353;
	setAttr ".wl[323].w[26]" 0.00025198621151794969;
	setAttr ".wl[323].w[31]" 0.026096544095677261;
	setAttr ".wl[323].w[32]" 0.97329469479645381;
	setAttr ".wl[323].w[33]" 0.00014307361506644029;
	setAttr ".wl[324].w[32]"  1;
	setAttr ".wl[325].w[32]"  1;
	setAttr ".wl[326].w[32]"  1;
	setAttr ".wl[327].w[32]"  1;
	setAttr ".wl[328].w[32]"  1;
	setAttr -s 4 ".wl[329].w";
	setAttr ".wl[329].w[26]" 9.1188262855263714e-005;
	setAttr ".wl[329].w[31]" 0.027919083381197581;
	setAttr ".wl[329].w[32]" 0.97188513787567521;
	setAttr ".wl[329].w[33]" 0.00010459048027189494;
	setAttr ".wl[330].w[32]"  1;
	setAttr -s 4 ".wl[331].w";
	setAttr ".wl[331].w[26]" 0.00019868576540779719;
	setAttr ".wl[331].w[31]" 0.0022829415975937385;
	setAttr ".wl[331].w[32]" 0.99723258538031412;
	setAttr ".wl[331].w[33]" 0.00028578725668432459;
	setAttr ".wl[332].w[32]"  1;
	setAttr ".wl[333].w[32]"  1;
	setAttr ".wl[334].w[32]"  1;
	setAttr ".wl[335].w[32]"  1;
	setAttr ".wl[336].w[32]"  1;
	setAttr -s 4 ".wl[337].w";
	setAttr ".wl[337].w[26]" 9.8964945830591619e-005;
	setAttr ".wl[337].w[31]" 0.0024657445729301423;
	setAttr ".wl[337].w[32]" 0.99712474268070439;
	setAttr ".wl[337].w[33]" 0.00031054780053485796;
	setAttr ".wl[338].w[32]"  1;
	setAttr -s 4 ".wl[339].w";
	setAttr ".wl[339].w[6]" 0.00017998969997279346;
	setAttr ".wl[339].w[32]" 0.99840663953233288;
	setAttr ".wl[339].w[33]" 0.0013274219168087171;
	setAttr ".wl[339].w[34]" 8.594885088567397e-005;
	setAttr ".wl[340].w[32]"  1;
	setAttr -s 4 ".wl[341].w";
	setAttr ".wl[341].w[6]" 0.0018191849812865257;
	setAttr ".wl[341].w[32]" 0.98234539992954883;
	setAttr ".wl[341].w[33]" 0.015205989073686884;
	setAttr ".wl[341].w[34]" 0.00062942601547780208;
	setAttr ".wl[342].w[32]"  1;
	setAttr -s 4 ".wl[343].w";
	setAttr ".wl[343].w[6]" 8.826686826068908e-005;
	setAttr ".wl[343].w[32]" 0.99198057103715509;
	setAttr ".wl[343].w[33]" 0.0075120982537815809;
	setAttr ".wl[343].w[34]" 0.00041906384080254945;
	setAttr ".wl[344].w[32]"  1;
	setAttr -s 4 ".wl[345].w";
	setAttr ".wl[345].w[6]" 0.0016661047702655196;
	setAttr ".wl[345].w[32]" 0.99774483679034109;
	setAttr ".wl[345].w[33]" 0.00055916669754097533;
	setAttr ".wl[345].w[34]" 2.9891741852391274e-005;
	setAttr ".wl[346].w[32]"  1;
	setAttr -s 4 ".wl[347].w";
	setAttr ".wl[347].w[6]" 2.4925311663537286e-005;
	setAttr ".wl[347].w[32]" 0.90577477257947747;
	setAttr ".wl[347].w[33]" 0.093929308300570558;
	setAttr ".wl[347].w[34]" 0.00027099380828838097;
	setAttr -s 4 ".wl[348].w";
	setAttr ".wl[348].w[6]" 0.00053024169756099582;
	setAttr ".wl[348].w[32]" 0.56865911732274987;
	setAttr ".wl[348].w[33]" 0.42919490495266777;
	setAttr ".wl[348].w[34]" 0.0016157360270213704;
	setAttr -s 4 ".wl[349].w";
	setAttr ".wl[349].w[6]" 3.6260560591472313e-005;
	setAttr ".wl[349].w[32]" 0.85533668907258531;
	setAttr ".wl[349].w[33]" 0.14444391058995934;
	setAttr ".wl[349].w[34]" 0.0001831397768639467;
	setAttr -s 3 ".wl[350].w[32:34]"  0.70209390038232444 0.29716186288229962 
		0.0007442367353759033;
	setAttr -s 4 ".wl[351].w";
	setAttr ".wl[351].w[6]" 1.3381480130192358e-005;
	setAttr ".wl[351].w[32]" 0.84323594156810511;
	setAttr ".wl[351].w[33]" 0.1563267764726719;
	setAttr ".wl[351].w[34]" 0.00042390047909284461;
	setAttr -s 4 ".wl[352].w";
	setAttr ".wl[352].w[6]" 0.0024356700014322996;
	setAttr ".wl[352].w[32]" 0.56930871125569682;
	setAttr ".wl[352].w[33]" 0.42627580900005557;
	setAttr ".wl[352].w[34]" 0.001979809742815297;
	setAttr -s 4 ".wl[353].w";
	setAttr ".wl[353].w[6]" 4.3346749407646712e-006;
	setAttr ".wl[353].w[32]" 0.9729448007015199;
	setAttr ".wl[353].w[33]" 0.02701036321082825;
	setAttr ".wl[353].w[34]" 4.0501412711042042e-005;
	setAttr -s 3 ".wl[354].w[32:34]"  0.65999648688267254 0.339357900328843 
		0.00064561278848442819;
	setAttr -s 5 ".wl[355].w";
	setAttr ".wl[355].w[0]" 0.070491842659079262;
	setAttr ".wl[355].w[1]" 0.10322461240914814;
	setAttr ".wl[355].w[2]" 0.63921570777893066;
	setAttr ".wl[355].w[5]" 0.093533918576420988;
	setAttr ".wl[355].w[15]" 0.093533918576420988;
	setAttr ".wl[356].w[2]"  1;
	setAttr -s 2 ".wl[357].w";
	setAttr ".wl[357].w[2]" 0.47105318307876587;
	setAttr ".wl[357].w[16]" 0.52894681692123413;
	setAttr ".wl[358].w[2]"  1;
	setAttr -s 2 ".wl[359].w";
	setAttr ".wl[359].w[2]" 0.85372947156429291;
	setAttr ".wl[359].w[16]" 0.14627052843570709;
	setAttr -s 5 ".wl[360].w";
	setAttr ".wl[360].w[0]" 0.18094368670022454;
	setAttr ".wl[360].w[1]" 0.27242297047308828;
	setAttr ".wl[360].w[2]" 0.058823525905609131;
	setAttr ".wl[360].w[5]" 0.243904908460539;
	setAttr ".wl[360].w[15]" 0.243904908460539;
	setAttr ".wl[361].w[2]"  1;
	setAttr ".wl[362].w[2]"  1;
	setAttr ".wl[363].w[2]"  1;
	setAttr -s 2 ".wl[364].w";
	setAttr ".wl[364].w[2]" 0.84614711999893188;
	setAttr ".wl[364].w[16]" 0.15385288000106812;
	setAttr -s 2 ".wl[365].w";
	setAttr ".wl[365].w[2]" 0.99999409911697512;
	setAttr ".wl[365].w[16]" 5.9008830248785671e-006;
	setAttr -s 3 ".wl[366].w";
	setAttr ".wl[366].w[2]" 0.96350580951287301;
	setAttr ".wl[366].w[3]" 1.470619724239229e-005;
	setAttr ".wl[366].w[16]" 0.036479484289884567;
	setAttr -s 5 ".wl[367].w";
	setAttr ".wl[367].w[2]" 0.59607839584350586;
	setAttr ".wl[367].w[3]" 0.071286446472757337;
	setAttr ".wl[367].w[5]" 0.13714499662511562;
	setAttr ".wl[367].w[15]" 0.13806525270297418;
	setAttr ".wl[367].w[16]" 0.057424908355647022;
	setAttr -s 2 ".wl[368].w";
	setAttr ".wl[368].w[2]" 0.99999990471035027;
	setAttr ".wl[368].w[16]" 9.5289649740199142e-008;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[2]" 0.88409179449081421;
	setAttr ".wl[369].w[3]" 0.11589352057079028;
	setAttr ".wl[369].w[16]" 1.468493839552051e-005;
	setAttr -s 5 ".wl[370].w";
	setAttr ".wl[370].w[2]" 0.41960781812667847;
	setAttr ".wl[370].w[3]" 0.15183890249670054;
	setAttr ".wl[370].w[5]" 0.13382203492555245;
	setAttr ".wl[370].w[15]" 0.20032912950049328;
	setAttr ".wl[370].w[16]" 0.09440211495057528;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[2]" 0.61568307876586914;
	setAttr ".wl[371].w[3]" 0.38154216870756952;
	setAttr ".wl[371].w[16]" 0.0027747525265613554;
	setAttr ".wl[372].w[2]"  1;
	setAttr ".wl[373].w[3]"  1;
	setAttr -s 3 ".wl[374].w";
	setAttr ".wl[374].w[2]" 0.99839334848355976;
	setAttr ".wl[374].w[3]" 0.0016050071467890764;
	setAttr ".wl[374].w[16]" 1.6443696510157156e-006;
	setAttr ".wl[375].w[2]"  1;
	setAttr -s 3 ".wl[376].w";
	setAttr ".wl[376].w[2]" 0.99470422269020231;
	setAttr ".wl[376].w[3]" 0.0052730456993547968;
	setAttr ".wl[376].w[16]" 2.2731610442860983e-005;
	setAttr ".wl[377].w[2]"  1;
	setAttr ".wl[378].w[3]"  1;
	setAttr ".wl[379].w[2]"  1;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[2]" 0.99999999085727387;
	setAttr ".wl[380].w[3]" 9.1142905284546323e-009;
	setAttr ".wl[380].w[16]" 2.843555772791273e-011;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[2]" 0.99999979453276233;
	setAttr ".wl[381].w[3]" 2.0539260915164002e-007;
	setAttr ".wl[381].w[16]" 7.462847700923092e-011;
	setAttr ".wl[382].w[2]"  1;
	setAttr -s 3 ".wl[383].w";
	setAttr ".wl[383].w[2]" 0.59571611881256104;
	setAttr ".wl[383].w[3]" 0.40428249399797667;
	setAttr ".wl[383].w[16]" 1.3871894622882213e-006;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[2]" 0.99963128051743;
	setAttr ".wl[384].w[3]" 0.00032851881266952307;
	setAttr ".wl[384].w[16]" 4.0200669900514185e-005;
	setAttr -s 2 ".wl[385].w";
	setAttr ".wl[385].w[2]" 0.99955221655545756;
	setAttr ".wl[385].w[16]" 0.00044778344454243779;
	setAttr -s 3 ".wl[386].w";
	setAttr ".wl[386].w[2]" 0.69202366456163689;
	setAttr ".wl[386].w[3]" 0.00051662340985964667;
	setAttr ".wl[386].w[16]" 0.30745971202850342;
	setAttr -s 2 ".wl[387].w";
	setAttr ".wl[387].w[2]" 0.30251425504684448;
	setAttr ".wl[387].w[16]" 0.69748574495315552;
	setAttr ".wl[388].w[16]"  1;
	setAttr ".wl[389].w[16]"  1;
	setAttr -s 2 ".wl[390].w";
	setAttr ".wl[390].w[2]" 0.98179784664385517;
	setAttr ".wl[390].w[16]" 0.018202153356144841;
	setAttr -s 2 ".wl[391].w";
	setAttr ".wl[391].w[2]" 0.97488040669068698;
	setAttr ".wl[391].w[16]" 0.025119593309312963;
	setAttr ".wl[392].w[2]"  1;
	setAttr ".wl[393].w[2]"  1;
	setAttr -s 3 ".wl[394].w";
	setAttr ".wl[394].w[2]" 0.99658960719235201;
	setAttr ".wl[394].w[3]" 0.0017479227565605098;
	setAttr ".wl[394].w[16]" 0.0016624700510874391;
	setAttr -s 2 ".wl[395].w";
	setAttr ".wl[395].w[2]" 0.033485591411590576;
	setAttr ".wl[395].w[16]" 0.96651440858840942;
	setAttr -s 2 ".wl[396].w";
	setAttr ".wl[396].w[2]" 0.00035208463668823242;
	setAttr ".wl[396].w[16]" 0.99964791536331177;
	setAttr ".wl[397].w[16]"  1;
	setAttr ".wl[398].w[16]"  1;
	setAttr ".wl[399].w[16]"  1;
	setAttr ".wl[400].w[16]"  1;
	setAttr -s 5 ".wl[401].w";
	setAttr ".wl[401].w[0]" 8.090328454941129e-005;
	setAttr ".wl[401].w[1]" 9.2694670298704295e-005;
	setAttr ".wl[401].w[2]" 8.8651448207016669e-005;
	setAttr ".wl[401].w[16]" 0.49340732775343937;
	setAttr ".wl[401].w[17]" 0.50633042284350549;
	setAttr -s 5 ".wl[402].w";
	setAttr ".wl[402].w[1]" 0.00016045989208680983;
	setAttr ".wl[402].w[2]" 0.00015427433513336974;
	setAttr ".wl[402].w[16]" 0.48004562786796534;
	setAttr ".wl[402].w[17]" 0.51947592332872927;
	setAttr ".wl[402].w[18]" 0.0001637145760851939;
	setAttr ".wl[403].w[17]"  1;
	setAttr -s 4 ".wl[404].w[16:19]"  0.48123703628047049 0.51846243877071729 
		0.00017072889594341493 0.00012979605286891444;
	setAttr -s 4 ".wl[405].w[16:19]"  0.49836539184888334 0.5015001781029812 
		7.8070948027836995e-005 5.6359100107607988e-005;
	setAttr -s 5 ".wl[406].w";
	setAttr ".wl[406].w[1]" 1.8811432076204944e-005;
	setAttr ".wl[406].w[2]" 1.8355787399019277e-005;
	setAttr ".wl[406].w[16]" 0.50090488538160316;
	setAttr ".wl[406].w[17]" 0.49903694548148581;
	setAttr ".wl[406].w[18]" 2.1001917435885448e-005;
	setAttr ".wl[407].w[17]"  1;
	setAttr ".wl[408].w[17]"  1;
	setAttr ".wl[409].w[17]"  1;
	setAttr ".wl[410].w[17]"  1;
	setAttr ".wl[411].w[17]"  1;
	setAttr ".wl[412].w[17]"  1;
	setAttr -s 5 ".wl[413].w";
	setAttr ".wl[413].w[17]" 0.48830265344871959;
	setAttr ".wl[413].w[18]" 0.44843356038104804;
	setAttr ".wl[413].w[19]" 0.052941429423655512;
	setAttr ".wl[413].w[20]" 0.0033721281846816062;
	setAttr ".wl[413].w[22]" 0.0069502285618953013;
	setAttr -s 5 ".wl[414].w";
	setAttr ".wl[414].w[17]" 0.18241571524310052;
	setAttr ".wl[414].w[18]" 0.51823235001058376;
	setAttr ".wl[414].w[19]" 0.27713588761952596;
	setAttr ".wl[414].w[20]" 0.012195488238064683;
	setAttr ".wl[414].w[22]" 0.010020558888725091;
	setAttr -s 5 ".wl[415].w";
	setAttr ".wl[415].w[17]" 0.53028202076251552;
	setAttr ".wl[415].w[18]" 0.4531995009887243;
	setAttr ".wl[415].w[19]" 0.012258356975257113;
	setAttr ".wl[415].w[20]" 0.00086079536076174136;
	setAttr ".wl[415].w[22]" 0.0033993259127412211;
	setAttr -s 5 ".wl[416].w";
	setAttr ".wl[416].w[17]" 0.26083073752280844;
	setAttr ".wl[416].w[18]" 0.54278894805482414;
	setAttr ".wl[416].w[19]" 0.18050045964746125;
	setAttr ".wl[416].w[20]" 0.0068644849591378643;
	setAttr ".wl[416].w[22]" 0.0090153698157683718;
	setAttr -s 5 ".wl[417].w";
	setAttr ".wl[417].w[17]" 0.53599192488830394;
	setAttr ".wl[417].w[18]" 0.44144311887703142;
	setAttr ".wl[417].w[19]" 0.013727810649918772;
	setAttr ".wl[417].w[20]" 0.0014769963356720003;
	setAttr ".wl[417].w[22]" 0.007360149249073876;
	setAttr -s 5 ".wl[418].w";
	setAttr ".wl[418].w[17]" 0.53356345069641542;
	setAttr ".wl[418].w[18]" 0.42908048782949609;
	setAttr ".wl[418].w[19]" 0.024239224442950062;
	setAttr ".wl[418].w[20]" 0.0027191033729859065;
	setAttr ".wl[418].w[22]" 0.010397733658152584;
	setAttr -s 3 ".wl[419].w[32:34]"  0.071986181295760912 0.92460716548510569 
		0.0034066532191334574;
	setAttr -s 3 ".wl[420].w[32:34]"  0.00075896993747943866 0.49962051503126026 
		0.49962051503126026;
	setAttr ".wl[421].w[33]"  1;
	setAttr -s 2 ".wl[422].w";
	setAttr ".wl[422].w[27]" 0.00035123733687214553;
	setAttr ".wl[422].w[33]" 0.99964876266312785;
	setAttr ".wl[423].w[33]"  1;
	setAttr -s 2 ".wl[424].w";
	setAttr ".wl[424].w[27]" 0.038894843310117722;
	setAttr ".wl[424].w[33]" 0.96110515668988228;
	setAttr ".wl[425].w[33]"  1;
	setAttr -s 2 ".wl[426].w";
	setAttr ".wl[426].w[27]" 0.03362615779042244;
	setAttr ".wl[426].w[33]" 0.96637384220957756;
	setAttr -s 3 ".wl[427].w[32:34]"  0.061577994711612738 0.93744011436917163 
		0.00098189091921566649;
	setAttr -s 2 ".wl[428].w";
	setAttr ".wl[428].w[27]" 0.0088581228628754616;
	setAttr ".wl[428].w[33]" 0.99114187713712454;
	setAttr -s 2 ".wl[429].w";
	setAttr ".wl[429].w[27]" 0.0064922827295958996;
	setAttr ".wl[429].w[33]" 0.9935077172704041;
	setAttr -s 4 ".wl[430].w";
	setAttr ".wl[430].w[6]" 0.00049797992687672377;
	setAttr ".wl[430].w[32]" 0.30653545532680559;
	setAttr ".wl[430].w[33]" 0.69176462803452843;
	setAttr ".wl[430].w[34]" 0.0012019367117892638;
	setAttr -s 3 ".wl[431].w[32:34]"  0.002905840050072263 0.95932117729504496 
		0.037772982654882811;
	setAttr -s 3 ".wl[432].w[32:34]"  0.0082994631478780084 0.92634164407635045 
		0.065358892775771574;
	setAttr -s 3 ".wl[433].w[32:34]"  0.017681691655059409 0.84964736987769096 
		0.13267093846724962;
	setAttr ".wl[434].w[33]"  1;
	setAttr ".wl[435].w[33]"  1;
	setAttr -s 3 ".wl[436].w[32:34]"  0.033186511864742592 0.74386953450328142 
		0.22294395363197606;
	setAttr -s 2 ".wl[437].w";
	setAttr ".wl[437].w[27]" 0.00030757256899960339;
	setAttr ".wl[437].w[33]" 0.9996924274310004;
	setAttr -s 2 ".wl[438].w";
	setAttr ".wl[438].w[27]" 0.018454410135746002;
	setAttr ".wl[438].w[33]" 0.981545589864254;
	setAttr -s 2 ".wl[439].w";
	setAttr ".wl[439].w[27]" 0.00018453598022460938;
	setAttr ".wl[439].w[33]" 0.99981546401977539;
	setAttr ".wl[440].w[33]"  1;
	setAttr -s 3 ".wl[441].w[32:34]"  0.0010521517987974573 0.49947392410060126 
		0.49947392410060126;
	setAttr ".wl[442].w[33]"  1;
	setAttr ".wl[443].w[33]"  1;
	setAttr -s 3 ".wl[444].w[32:34]"  0.0013959622260959425 0.49930201888695208 
		0.49930201888695197;
	setAttr -s 3 ".wl[445].w[32:34]"  0.00063841407761726636 0.49968079296119139 
		0.49968079296119139;
	setAttr ".wl[446].w[33]"  1;
	setAttr ".wl[447].w[33]"  1;
	setAttr ".wl[448].w[33]"  1;
	setAttr ".wl[449].w[33]"  1;
	setAttr -s 3 ".wl[450].w[32:34]"  0.0019210927521210539 0.49903945362393931 
		0.49903945362393959;
	setAttr -s 3 ".wl[451].w[32:34]"  0.0017153217642835168 0.49914233911785816 
		0.49914233911785838;
	setAttr ".wl[452].w[33]"  1;
	setAttr -s 2 ".wl[453].w[2:3]"  0.99316096305847168 0.0068390369415283203;
	setAttr ".wl[454].w[3]"  1;
	setAttr ".wl[455].w[3]"  1;
	setAttr ".wl[456].w[3]"  1;
	setAttr ".wl[457].w[3]"  1;
	setAttr ".wl[458].w[3]"  1;
	setAttr ".wl[459].w[3]"  1;
	setAttr ".wl[460].w[3]"  1;
	setAttr ".wl[461].w[3]"  1;
	setAttr ".wl[462].w[3]"  1;
	setAttr ".wl[463].w[3]"  1;
	setAttr ".wl[464].w[3]"  1;
	setAttr ".wl[465].w[3]"  1;
	setAttr ".wl[466].w[3]"  1;
	setAttr ".wl[467].w[3]"  1;
	setAttr ".wl[468].w[3]"  1;
	setAttr ".wl[469].w[3]"  1;
	setAttr ".wl[470].w[3]"  1;
	setAttr ".wl[471].w[3]"  1;
	setAttr ".wl[472].w[3]"  1;
	setAttr ".wl[473].w[3]"  1;
	setAttr ".wl[474].w[3]"  1;
	setAttr ".wl[475].w[3]"  1;
	setAttr ".wl[476].w[3]"  1;
	setAttr ".wl[477].w[3]"  1;
	setAttr ".wl[478].w[3]"  1;
	setAttr ".wl[479].w[3]"  1;
	setAttr ".wl[480].w[3]"  1;
	setAttr ".wl[481].w[3]"  1;
	setAttr ".wl[482].w[3]"  1;
	setAttr ".wl[483].w[3]"  1;
	setAttr ".wl[484].w[3]"  1;
	setAttr ".wl[485].w[3]"  1;
	setAttr ".wl[486].w[3]"  1;
	setAttr ".wl[487].w[3]"  1;
	setAttr ".wl[488].w[3]"  1;
	setAttr ".wl[489].w[3]"  1;
	setAttr ".wl[490].w[3]"  1;
	setAttr ".wl[491].w[3]"  1;
	setAttr ".wl[492].w[3]"  1;
	setAttr ".wl[493].w[3]"  1;
	setAttr ".wl[494].w[3]"  1;
	setAttr ".wl[495].w[3]"  1;
	setAttr ".wl[496].w[3]"  1;
	setAttr ".wl[497].w[3]"  1;
	setAttr ".wl[498].w[3]"  1;
	setAttr -s 2 ".wl[499].w[2:3]"  0.32076528668403625 0.67923471331596375;
	setAttr -s 2 ".wl[500].w[2:3]"  0.011626296676695347 0.98837370332330465;
	setAttr ".wl[501].w[3]"  1;
	setAttr -s 2 ".wl[502].w[2:3]"  0.19450978934764862 0.80549021065235138;
	setAttr ".wl[503].w[3]"  1;
	setAttr ".wl[504].w[3]"  1;
	setAttr ".wl[505].w[3]"  1;
	setAttr ".wl[506].w[3]"  1;
	setAttr -s 2 ".wl[507].w[2:3]"  0.099653974175453186 0.90034602582454681;
	setAttr -s 5 ".wl[508].w";
	setAttr ".wl[508].w[18]" 0.35966737104134983;
	setAttr ".wl[508].w[19]" 0.0080570873759122658;
	setAttr ".wl[508].w[20]" 0.0031870659094193868;
	setAttr ".wl[508].w[22]" 0.62558382365298471;
	setAttr ".wl[508].w[23]" 0.0035046520203339229;
	setAttr ".wl[509].w[22]"  1;
	setAttr ".wl[510].w[22]"  1;
	setAttr ".wl[511].w[22]"  1;
	setAttr ".wl[512].w[22]"  1;
	setAttr ".wl[513].w[23]"  1;
	setAttr ".wl[514].w[23]"  1;
	setAttr -s 5 ".wl[515].w[20:24]"  0.00063280961273614147 0.00063280961273614147 
		0.0047623304173718545 0.49698602517857793 0.49698602517857793;
	setAttr -s 5 ".wl[516].w[20:24]"  0.00080643815194796228 0.00080643815194796228 
		0.0054541273994898349 0.49646649814830707 0.49646649814830707;
	setAttr -s 5 ".wl[517].w[20:24]"  0.024022614378781417 0.024022614378781417 
		0.055339339257984677 0.4483077159922263 0.4483077159922263;
	setAttr ".wl[518].w[23]"  1;
	setAttr -s 5 ".wl[519].w[20:24]"  0.14304777145711156 0.14174834719109519 
		0.33040033337647406 0.32962364135645089 0.05517990661886836;
	setAttr -s 5 ".wl[520].w[19:23]"  0.053548987078848913 0.24730647656241586 
		0.2470020636732326 0.22702984136401633 0.22511263132148646;
	setAttr -s 5 ".wl[521].w";
	setAttr ".wl[521].w[18]" 0.2086901621594594;
	setAttr ".wl[521].w[19]" 0.26070842911937459;
	setAttr ".wl[521].w[20]" 0.20822243373205845;
	setAttr ".wl[521].w[22]" 0.29614587988285962;
	setAttr ".wl[521].w[23]" 0.026233095106247932;
	setAttr -s 5 ".wl[522].w[18:22]"  0.046440055944158232 0.45761854335155377 
		0.42194818506168569 0.018419117523918543 0.05557409811868369;
	setAttr -s 5 ".wl[523].w[19:23]"  0.00075092186518578281 0.4995404870991399 
		0.49954048709913978 9.0237458018091807e-005 7.7866478516538639e-005;
	setAttr -s 5 ".wl[524].w[19:23]"  0.00094709723941396331 0.49943061345910422 
		0.49943061345910411 0.000104500211613118 8.7175630764570137e-005;
	setAttr -s 5 ".wl[525].w[18:22]"  0.014491189310012094 0.48859206840234226 
		0.48678243388854803 0.0071763873092341307 0.0029579210898634774;
	setAttr -s 5 ".wl[526].w[18:22]"  0.002464441777310109 0.49764376238127161 
		0.49764376238127161 0.0016541717693747064 0.00059386169077202747;
	setAttr -s 5 ".wl[527].w";
	setAttr ".wl[527].w[17]" 0.4825502088685597;
	setAttr ".wl[527].w[18]" 0.46713732954807058;
	setAttr ".wl[527].w[19]" 0.042102597983238225;
	setAttr ".wl[527].w[20]" 0.002226643092888178;
	setAttr ".wl[527].w[22]" 0.005983220507243342;
	setAttr -s 5 ".wl[528].w";
	setAttr ".wl[528].w[18]" 2.2088421395239394e-005;
	setAttr ".wl[528].w[20]" 1.2847752392067e-005;
	setAttr ".wl[528].w[22]" 0.49978756816806374;
	setAttr ".wl[528].w[23]" 0.50008782887302539;
	setAttr ".wl[528].w[24]" 8.9666785123621557e-005;
	setAttr -s 5 ".wl[529].w";
	setAttr ".wl[529].w[18]" 0.0013204167939024488;
	setAttr ".wl[529].w[20]" 0.00082161003764986756;
	setAttr ".wl[529].w[22]" 0.46134505922707369;
	setAttr ".wl[529].w[23]" 0.53020818449328344;
	setAttr ".wl[529].w[24]" 0.0063047294480906447;
	setAttr -s 5 ".wl[530].w";
	setAttr ".wl[530].w[17]" 0.0008121502455262098;
	setAttr ".wl[530].w[18]" 0.40459049441884992;
	setAttr ".wl[530].w[19]" 0.0040726734982378882;
	setAttr ".wl[530].w[20]" 0.0013867619282934734;
	setAttr ".wl[530].w[22]" 0.58913791990909248;
	setAttr -s 5 ".wl[531].w";
	setAttr ".wl[531].w[17]" 0.10390388039537235;
	setAttr ".wl[531].w[18]" 0.43171717288565759;
	setAttr ".wl[531].w[19]" 0.34404288743649897;
	setAttr ".wl[531].w[20]" 0.021221058554048339;
	setAttr ".wl[531].w[22]" 0.099115000728422775;
	setAttr -s 5 ".wl[532].w[19:23]"  0.0003108193006775054 0.49977859918023126 
		0.49977859918023149 6.9109896768175701e-005 6.2872442091402078e-005;
	setAttr -s 5 ".wl[533].w[19:23]"  0.00021501380395215971 0.49985234011656776 
		0.49985234011656776 4.2696711365192628e-005 3.760925154724662e-005;
	setAttr -s 5 ".wl[534].w[18:22]"  0.0066287859949825051 0.48880251111183404 
		0.49510608130816197 0.0049161654554275951 0.0045464561295939536;
	setAttr -s 5 ".wl[535].w[18:22]"  0.0016305837088891838 0.5256074167560959 
		0.47095407526165001 0.00088791537651853626 0.00092000889684645934;
	setAttr -s 37 ".pm";
	setAttr ".pm[0]" -type "matrix" 9.999998046875381e-005 0 0 0 0 9.4591010387764016e-005 -3.2442796398084949e-005 0
		 0 3.2442796398084949e-005 9.4591010387764016e-005 0 1.9527890841005133e-017 -0.62562019447188699 0.2347294503605582 0.99999999999999989;
	setAttr ".pm[1]" -type "matrix" 9.9999980468753823e-005 0 0 0 0 9.9957940235901335e-005 2.9002130626048386e-006 0
		 0 -2.9002136293278352e-006 9.9957920703387247e-005 0 -1.6620586380606288e-014 -0.83686084236489156 -0.063684590061307944 1;
	setAttr ".pm[2]" -type "matrix" 9.9999999999999991e-005 0 0 0 0 9.8794658434910113e-005 1.547964385816186e-005 0
		 0 -1.5479643626445785e-005 9.8794628336661852e-005 0 -2.2115916042952932e-014 -0.94020354406126527 -0.18369008408324788 0.99999999999999989;
	setAttr ".pm[3]" -type "matrix" 0.0001 0 0 0 0 9.6322411827147149e-005 -2.6870044486772964e-005 0
		 0 2.6870031399303989e-005 9.6322387282908438e-005 0 -2.7514651668170141e-014 -1.1931766009461535 0.34170620414528502 1;
	setAttr ".pm[4]" -type "matrix" 9.9999999999999991e-005 0 0 0 0 0.00010000003906251069 -2.4809824794529559e-011 0
		 0 1.8798702137677821e-011 0.00010000000976561977 0 -2.5464827468901776e-014 -1.370789310192073 -0.027641535778053526 1;
	setAttr ".pm[5]" -type "matrix" 6.5188665557254816e-005 -7.580839666387883e-005 1.8780348033124717e-006 0
		 -1.0016825849543875e-007 2.3904993457574515e-006 9.997141864054776e-005 0 -7.5831576209896813e-005 -6.51718837020078e-005 1.4823938849772404e-006 0
		 0.048954483950118796 -0.0057372342621111565 -1.201526771297045 1;
	setAttr ".pm[6]" -type "matrix" -8.9440518434689503e-005 4.3259184892137984e-005 1.1359385847168715e-005 0
		 -4.3467102106374614e-005 -9.0056185514454743e-005 7.0752289994535691e-007 0 1.0535890240529316e-005 -4.3047755837111501e-006 9.9350180506732854e-005 0
		 0.65671982262962347 1.0043935753271376 0.027934489182173294 1;
	setAttr ".pm[7]" -type "matrix" -9.4049468407662274e-005 3.2789895799567114e-005 -8.9172274810120321e-006 0
		 -3.2783262764929797e-005 -9.4460386761752291e-005 -1.5808582723869033e-006 0 -8.9416069767561742e-006 1.4365743806826977e-006 9.9589038905862552e-005 0
		 0.5574189758848741 0.78678277246781458 0.10521149420365997 1;
	setAttr ".pm[8]" -type "matrix" 9.8966276969163134e-006 2.4251955420597403e-005 -9.6508543265201086e-005 0
		 -7.7725546274741468e-006 -9.6500013469336284e-005 -2.5046848937680513e-005 0 -9.9205044201239995e-005 9.9799717678554126e-006 -7.6652473917562848e-006 0
		 -0.046315253741725508 0.55951644889147389 0.5157425176876147 1;
	setAttr ".pm[9]" -type "matrix" 9.0205526727232449e-005 -1.9243376312691371e-005 3.8634888829489145e-005 0
		 1.5125755588242642e-005 -6.9741133384479292e-005 -7.0052816836786808e-005 0 4.0424905483384159e-005 6.9035297780578155e-005 -5.999960494395263e-005 0
		 -0.41096694181470383 0.54675832959095383 0.28599088251956634 0.99999999999999989;
	setAttr ".pm[10]" -type "matrix" 9.3315714743312221e-005 -1.9423237536386228e-005 3.0247451909524521e-005 0
		 -3.8578627671239947e-006 -8.9070445277678986e-005 -4.5294348103390978e-005 0 3.5739151690284294e-005 4.1099835295914692e-005 -8.3866020535187157e-005 0
		 -0.30565430595809023 0.62389184045326407 0.16033123217883891 1;
	setAttr ".pm[11]" -type "matrix" 9.2353508447031942e-005 -2.2018598724057415e-005 3.1400789488638741e-005 0
		 -6.1224128287713518e-006 -8.9291066989813554e-005 -4.4605243319604493e-005 0 3.7859538149566682e-005 3.9272001877068609e-005 -8.3811459554124099e-005 0
		 -0.28931689919881687 0.59083318962306752 0.15231645906326016 1;
	setAttr ".pm[12]" -type "matrix" 1.3186056032494258e-005 2.1951983817877351e-005 -9.666563635851834e-005 0
		 -5.5453654233369691e-006 -9.7201078968357806e-005 -2.2830020323822601e-005 0 -9.8971590991256094e-005 8.3708380639400864e-006 -1.1599668405306183e-005 0
		 -0.074375980226106572 0.52301802428584687 0.5014292635090527 0.99999999999999989;
	setAttr ".pm[13]" -type "matrix" 1.3873157202983196e-005 -1.4498114990360069e-005 -9.7966027999360755e-005 0
		 -2.2355469065881112e-006 -9.8943307425195968e-005 1.4326147024734597e-005 0 -9.9007729220190535e-005 2.0258814539829121e-007 -1.4050667272943593e-005 0
		 -0.095620704950776014 0.61086418076026749 0.29725554689104988 1;
	setAttr ".pm[14]" -type "matrix" 5.2126875227182961e-006 -3.9321858471816012e-005 -9.1796667529524657e-005 0
		 -2.4478155459621566e-006 -9.1944384406493872e-005 3.9246121936157464e-005 0 -9.9834042197030002e-005 2.0123288339628477e-007 -5.7553026919773213e-006 0
		 -0.061469009666954649 0.62779067852234438 0.14897822561081153 1;
	setAttr ".pm[15]" -type "matrix" 6.5188665557254816e-005 -7.580839666387883e-005 1.8780348033124717e-006 0
		 -1.0016825849543875e-007 2.3904993457574515e-006 9.997141864054776e-005 0 -7.5831576209896813e-005 -6.51718837020078e-005 1.4823938849772404e-006 0
		 0.048954483950118796 -0.0057372342621111565 -1.201526771297045 1;
	setAttr ".pm[16]" -type "matrix" -8.9440572928209633e-005 -4.3259189722919877e-005 -1.135937571340621e-005 0
		 4.3467107129206631e-005 -9.0056233201366834e-005 7.0754084762611039e-007 0 -1.0535907003840941e-005 -4.3047608020970697e-006 9.9350192851455809e-005 0
		 -0.65671989327052038 1.004394073137554 0.027934259849727947 1;
	setAttr ".pm[17]" -type "matrix" -9.404953832833561e-005 -3.2789893851257836e-005 8.9172496849910931e-006 0
		 3.2783270488576667e-005 -9.4460439503605927e-005 -1.5808408041822073e-006 0 8.9415966347386792e-006 1.4365894719976485e-006 9.9589075087087303e-005 0
		 -0.55741909729970951 0.78678333135235756 0.10521128053109802 1;
	setAttr ".pm[18]" -type "matrix" 9.8966363802847298e-006 -2.4252083546297675e-005 9.6508574884555208e-005 0
		 7.7725736652670547e-006 -9.6500012270970225e-005 -2.5046991755479197e-005 0 9.9205062505980233e-005 9.9799960378105462e-006 -7.6652137023642545e-006 0
		 0.046314944762106069 0.55951612023878206 0.5157434088666375 0.99999999999999989;
	setAttr ".pm[19]" -type "matrix" 9.0205579813412351e-005 1.9243421404462871e-005 -3.8634909422387619e-005 0
		 -1.5125760192035973e-005 -6.974114081545841e-005 -7.0052882336213559e-005 0 -4.0424900496106438e-005 6.9035333754225854e-005 -5.9999616290252995e-005 0
		 0.41096709359580308 0.5467584841413019 0.28599152154991736 1;
	setAttr ".pm[20]" -type "matrix" 9.3315805391434558e-005 1.9423283252740616e-005 -3.0247482835138625e-005 0
		 3.8578693623003388e-006 -8.9070488002961838e-005 -4.5294403364390429e-005 0 -3.5739168123832365e-005 4.1099870356852921e-005 -8.3866038134270752e-005 0
		 0.30565448716439747 0.62389233621071372 0.16033175623831167 1;
	setAttr ".pm[21]" -type "matrix" 9.2353576732171408e-005 2.2018643648366757e-005 -3.1400819419001596e-005 0
		 6.1224181388399462e-006 -8.9291114786963893e-005 -4.4605307563089191e-005 0 -3.7859535892818549e-005 3.927204094570272e-005 -8.3811497762615483e-005 0
		 0.28931697592927141 0.59083368863729069 0.15231701164126529 1;
	setAttr ".pm[22]" -type "matrix" 1.3186066246664222e-005 -2.1951829987285244e-005 9.6665720948091601e-005 0
		 5.5453852885942159e-006 -9.7201150814161188e-005 -2.2829877884334866e-005 0 9.8971610566456469e-005 8.3708358723164846e-006 -1.1599659350912477e-005 0
		 0.074375656347231256 0.52301921848668953 0.50142857887471204 1;
	setAttr ".pm[23]" -type "matrix" 1.387319094205433e-005 1.4498194008501922e-005 9.7966058212134335e-005 0
		 2.2355663108424029e-006 -9.8943316151983097e-005 1.4326212734723166e-005 0 9.900774361993994e-005 2.0259904239915432e-007 -1.4050675207312251e-005 0
		 0.095620460184507233 0.61086470697230988 0.29725508463884526 1;
	setAttr ".pm[24]" -type "matrix" 5.2127050921087077e-006 3.9322258215684302e-005 9.1796552507275554e-005 0
		 2.447835354391639e-006 -9.1944261541445632e-005 3.9246498068451449e-005 0 9.9834070294390175e-005 2.0123303710505312e-007 -5.7553032288130119e-006 0
		 0.061468725490906533 0.62779163716025832 0.14897559007952729 1;
	setAttr ".pm[25]" -type "matrix" 9.9685257995615382e-005 7.8690771657437608e-006 -9.5692141892275672e-007 0
		 7.9179424648289157e-006 -9.9420955254016886e-005 7.2649532718052424e-006 0 -3.7969539284579152e-007 -7.3178606745861207e-006 -9.9731152824179226e-005 0
		 -0.12963677729191006 0.70545406882600159 -0.038264578634365332 1;
	setAttr ".pm[26]" -type "matrix" 9.999396153032589e-005 -7.1261050222781401e-007 -8.2756162816165598e-007 0
		 -5.7984469507336604e-007 -9.8857132085093194e-005 1.50643127030459e-005 0 -9.2545326101827414e-007 -1.5058615481998035e-005 -9.8855362786547793e-005 0
		 -0.10117944938405321 0.33421250197668634 -0.064753356213255703 0.99999999999999989;
	setAttr ".pm[27]" -type "matrix" 0.0001000000488281024 1.5328753438804533e-011 7.1222842572621944e-011 0
		 5.9691196421710281e-011 -4.9238401772798257e-005 -8.7037826172958348e-005 0 2.2674628331094996e-011 8.7037833317906623e-005 -4.9238392257356559e-005 0
		 -0.1011064776591858 0.084440436513967002 0.037474418886317529 1;
	setAttr ".pm[28]" -type "matrix" -0.00010000003906248498 -2.1727188582759758e-011 -6.9538429297948328e-011 0
		 -5.9691190581840179e-011 3.5854319048849568e-011 0.00010000001953120762 0 -2.2674626110748656e-011 9.9999980468734064e-005 -4.765442439441381e-011 0
		 0.10110647447897984 -0.049677170956536607 -0.014952301517312649 1;
	setAttr ".pm[29]" -type "matrix" -9.999998046359706e-005 2.5297511926241769e-011 7.2133118177232774e-010 0
		 -4.7506599907271012e-010 -7.6379423458867887e-005 -6.4545991442583074e-005 0 5.3367340846294123e-010 -6.4546017608172897e-005 7.6379383600257185e-005 0
		 0.10110701074701266 0.021140752697347099 0.089930296168149432 1;
	setAttr ".pm[30]" -type "matrix" -2.2204243103999979e-011 0.0001000000043080571 -1.5576963295924825e-011 0
		 2.9198506336073541e-011 5.7304229494808329e-012 0.00010000000669719912 0 0.00010000001102396416 2.3150719864895742e-011 1.6511225241733969e-011 0
		 0.042918076165061214 -0.072664534308404305 -0.010424455328698123 1;
	setAttr ".pm[31]" -type "matrix" 9.9685232030765199e-005 -7.8691150096383879e-006 9.5692957756438942e-007 0
		 -7.9179809652856124e-006 -9.942092681939225e-005 7.2649688852306831e-006 0 3.7969930127273153e-007 -7.3178760780406547e-006 -9.9731140516733351e-005 0
		 0.12963703887658506 0.70545383944421736 -0.038264685732340778 1;
	setAttr ".pm[32]" -type "matrix" 9.9994040322133482e-005 7.1256916027002733e-007 8.2755666515169911e-007 0
		 5.7980479036354469e-007 -9.8857109358117701e-005 1.5064319055263307e-005 0 9.2544315847145486e-007 -1.5058625733272023e-005 -9.8855330557885739e-005 0
		 0.10117983671077389 0.33421227436414092 -0.06475343446195371 1;
	setAttr ".pm[33]" -type "matrix" 0.00010000000976550715 -2.5336404126828694e-011 -1.1157332959718926e-010 0
		 -9.8847958566581209e-011 -4.9238407228335294e-005 -8.7037802604944257e-005 0 -3.1879457486828827e-011 8.703780941692773e-005 -4.9238392241373996e-005 0
		 0.10110673680780349 0.08444044840280561 0.037474167697207579 1;
	setAttr ".pm[34]" -type "matrix" -0.00010000000976553767 3.2884691540999967e-011 1.0958618902467302e-010 0
		 9.8847958577270451e-011 2.3340019176080304e-011 9.9999980468650512e-005 0 3.1879457492868531e-011 9.9999951171884897e-005 -3.9738456374655028e-011 0
		 -0.10110672994347869 -0.049677030335428328 -0.014952079064170851 1;
	setAttr ".pm[35]" -type "matrix" -9.9999999994554261e-005 -6.3743775956320236e-011 -7.3866507946227976e-010 0
		 5.1472759796312409e-010 -7.6379399226811855e-005 -6.4546022903519808e-005 0 -5.2404876049857693e-010 -6.4546021868628966e-005 7.6379379570402732e-005 0
		 -0.10110732928079937 0.021140474855308601 0.089930274813685443 0.99999999999999989;
	setAttr ".pm[36]" -type "matrix" -2.6085869318074837e-011 -0.00010000002979962198 4.1526939142176361e-011 0
		 1.0472130740483055e-011 3.0788497626835707e-011 0.00010000002041680253 0 -0.00010000000473542268 2.5080853891537975e-011 2.2366411270670659e-011 0
		 -0.042918242424458339 -0.072664851502946298 -0.010424250804897681 0.99999999999999989;
	setAttr ".gm" -type "matrix" 10000 0 0 0 0 2.2204460492503131e-012 -10000.000000000002 0
		 0 10000.000000000002 2.2204460492503131e-012 0 0 0 0 1;
	setAttr -s 32 ".ma";
	setAttr -s 37 ".dpf[0:36]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 32 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 33 ".ifcl";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak1";
	setAttr -s 10 ".vl[0].vt";
	setAttr ".vl[0].vt[423]" -type "float3" -4.6566129e-010 -5.8207661e-011 2.3283064e-010 ;
	setAttr ".vl[0].vt[424]" -type "float3" -1.8626451e-009 5.8207661e-011 1.1641532e-010 ;
	setAttr ".vl[0].vt[426]" -type "float3" 0 0 4.6566129e-010 ;
	setAttr ".vl[0].vt[428]" -type "float3" 9.3132257e-010 0 -2.3283064e-010 ;
	setAttr ".vl[0].vt[429]" -type "float3" 0 2.3283064e-010 0 ;
	setAttr ".vl[0].vt[437]" -type "float3" -4.6566129e-010 9.3132257e-010 0 ;
	setAttr ".vl[0].vt[438]" -type "float3" -8.7311491e-011 2.3283064e-010 0 ;
	setAttr ".vl[0].vt[439]" -type "float3" 0 -1.8626451e-009 -4.6566129e-010 ;
	setAttr ".vl[0].vt[440]" -type "float3" -2.3283064e-010 0 -9.3132257e-010 ;
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 36 ".wm";
	setAttr ".wm[0]" -type "matrix" 10000 0 0 0 0 -0.0016292067961387602 -9999.9999999998672 0
		 0 9999.9999999998672 -0.0016292067961387602 0 0 0 0 1;
	setAttr -s 38 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 10000 10000 10000 -1.5707964897155762 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000001953125 1.0000002857848385 1.0000002857848385 1.9012035065439041
		 0 0 0 -1.9527894655046315e-017 0.019064174932238165 0.6679336456840822 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.0001 0.0001 0.0001 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 0.99999966145027441 0.9999998568575752 -0.3594132188620498
		 0 0 0 1.6640114271447291e-014 0.18016725504232711 1.6027859373046738e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999980468753824 0.99999971421524325
		 0.99999971421524325 no;
	setAttr ".xm[3]" -type "matrix" "xform" 0.99999980468753813 0.99999985455525198 0.99999996235608168 -0.12641519450253905
		 0 0 0 5.4953253428326364e-015 0.11899937973161279 2.9566700199268325e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000003385498402 1.0000001431424452 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 0.99999988212147539 0.99999985158005267 0.42746488294233703
		 0 0 0 5.3987356252172024e-015 0.28726992967690623 -4.0897243896997892e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001953125 1.0000001454447691 1.0000000376439198 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 0.99999992492082679 0.99999994630769817 -0.27204326836349724
		 0 0 0 -2.0498241992683582e-015 0.13462758292187127 -3.5921407681716033e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000001178785385 1.0000001484199694 no;
	setAttr ".xm[6]" -type "matrix" "xform" 0.99999993610321292 0.99999986151519471 0.99999974210378584 -1.312109341804933
		 0.84705032847500616 0.17668897787413076 0 -0.01369699554445571 0.23875946909626655
		 0.052855684154733157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001953125
		 1.0000001454447691 1.0000000376439198 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1.0000001534006169 1.0000001468703741 1.0000002727921997 -1.5439952713562879
		 0.46652107893450612 2.4065144694579952 0 0.18608245783566302 -0.055784742803863377
		 -0.010074166273812857 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000638967912
		 1.0000001384848245 1.0000002578962808 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1.0000001335449027 0.99999998422846836 1.0000000841878445 0.045757832531798222
		 0.19930587247170709 -0.11016697992403757 0 4.3250916070824985e-008 0.29112548643593605
		 2.4619579805373881e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999984659940666
		 0.99999985312964745 0.99999972720787467 no;
	setAttr ".xm[9]" -type "matrix" "xform" 0.99999980472639505 0.99999980908388908 0.99999986463359303 1.4247660686560066
		 1.4766377262503223 1.344349203018202 0 1.5282582643827425e-008 0.27746110956923009
		 4.6344006826570805e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999986645511518
		 1.0000000157715319 0.99999991581216263 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000294847518 0.99999988436464493 0.99999996367316146 2.0283627527191426
		 1.2209704928350709 2.8051525091568434 0 -0.020776708674657085 0.022889539826039251
		 0.0048525479400007843 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.000000195273643
		 1.0000001909161473 1.0000001353664254 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1.0000003122638623 1.0000003195747791 1.0000002284614971 0.31199580136435062
		 -0.17399258982333804 0.095648198913502736 0 9.2464670364833523e-009 0.039129172209399044
		 -4.3793947634984676e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999997051524914
		 1.0000001156353684 1.0000000363268398 no;
	setAttr ".xm[12]" -type "matrix" "xform" 0.99999968320061783 0.99999996751307751
		 0.99999988046962174 0.0084788685515290087 0.010436339344797147 0.030760629997921604 0 4.0151530433796268e-009
		 0.043497432135887637 -5.6564015138427237e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999968773623515 0.99999968042532306 0.99999977153855513 no;
	setAttr ".xm[13]" -type "matrix" "xform" 0.9999998824704166 0.99999997914301431 0.99999960648538044 0.025206480093360024
		 0.037511940609849102 -0.013291607924346621 0 0.0019286092121600928 0.048616155669209959
		 -0.0011367292778373672 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.000000195273643
		 1.0000001909161473 1.0000001353664254 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1.0000003178581016 0.99999981195211329 1.000000229516973 0.37453084658509228
		 0.01415677373782076 -0.030701595890087283 0 1.2415220976280672e-008 0.060745282476194873
		 4.9523399492379383e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001175295972
		 1.0000000208569861 1.0000003935147743 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999963753370547 0.99999973656029861
		 0.99999967193124462 0.25697072958063061 -0.085805308086142534 0.014694125928314343 0 -9.5917640358100797e-009
		 0.04289438816546054 1.5130791064521532e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999968214199941 1.0000001880479221 0.99999977048307964 no;
	setAttr ".xm[16]" -type "matrix" "xform" 0.99999993610321292 0.99999986151519471
		 0.99999974210378584 -1.312109341804933 0.84705032847500616 0.17668897787413076 0 -0.01369699554445571
		 0.23875946909626655 0.052855684154733157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001953125
		 1.0000001454447691 1.0000000376439198 no;
	setAttr ".xm[17]" -type "matrix" "xform" 0.99999963686196136 0.99999970920468906
		 1.0000001437215094 -1.5491646386759363 -0.42924807296620987 2.1577599328389994 0 -0.0091028078974932508
		 0.17119762453182122 -0.015697398185662736 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000000638967912 1.0000001384848245 1.0000002578962808 no;
	setAttr ".xm[18]" -type "matrix" "xform" 0.99999994506640477 0.99999993054951031
		 0.99999986460242019 0.045757808445796411 -0.199305875737877 0.11016699879283248 0 -7.1700319570489057e-008
		 0.29112546624261393 2.7523616979302501e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000003631381704 1.0000002907953955 0.99999985627851129 no;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999997884644742 0.9999999770426139 0.99999990215786705 1.424763563013582
		 -1.4766377570325966 -1.3443481568914801 0 -2.6445026168886443e-009 0.27746113141931328
		 1.8021635531106917e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000549335983
		 1.0000000694504945 1.0000001353975982 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1.0000000567544614 0.99999983985583585 0.99999968723756205 2.0283586931405329
		 -1.2209699442627584 -2.805148829914379 0 0.020776710762048858 0.022889508537600856
		 0.0048525272922790297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000211535531
		 1.0000000229573867 1.0000000978421426 no;
	setAttr ".xm[21]" -type "matrix" "xform" 0.9999998749550062 1.0000001641973402 1.0000002681800046 0.311995830108447
		 0.17399253917647517 -0.095648212548758355 0 -2.7119439416356528e-008 0.039129140171551224
		 -4.7984328399586218e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999994324554187
		 1.0000001601441899 1.0000003127625359 no;
	setAttr ".xm[22]" -type "matrix" "xform" 0.99999995006530984 0.99999991327297399
		 0.9999996746513049 0.0084788606505984566 -0.010436246279248152 -0.030760578183388419 0 2.9657849898168109e-008
		 0.043497453527343355 -2.7822662618248728e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000001250450095 0.99999983580268681 0.99999973182006729 no;
	setAttr ".xm[23]" -type "matrix" "xform" 0.99999987931161116 0.99999994673745751
		 0.99999974841577288 0.025209390349108771 -0.037511945058231404 0.01329154288915857 0 -0.0019285955169255423
		 0.048616139758801968 -0.0011367268086556193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000000211535531 1.0000000229573867 1.0000000978421426 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1.0000003452167503 1.0000000148903139 1.0000002621596551 0.37452991494326454
		 -0.014156951043358066 0.0307015562850665 0 5.5786272268321113e-009 0.060745253496039375
		 -3.5778740414826871e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001206884035
		 1.0000000532625453 1.0000002515842905 no;
	setAttr ".xm[25]" -type "matrix" "xform" 0.99999951038192303 0.99999954793928436
		 0.99999962647256813 0.25697406240972676 0.085805428111372484 -0.014694201242149313 0 8.4184641341300548e-009
		 0.042894445117241164 -3.2355747525691925e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999965478336883 0.99999998510968635 0.99999973784041363 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1.0000003719633956 0.99999972457975095 0.99999980980934933 2.8853602884129024
		 0.029283809406471982 0.073763319064809943 0 0.073350010087888662 0.054358814517001419
		 0.015222328850859057 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999980468753824
		 0.99999971421524325 0.99999971421524325 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1.0000001860989149 0.99999987055715189 0.99999984854447221 0.078510913945992022
		 0.00076023738463278643 0.08523130762590729 0 7.2645831850071119e-009 0.37703608074422218
		 -7.3783806772698135e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999962803674269
		 1.000000275420325 1.0000001901906868 no;
	setAttr ".xm[28]" -type "matrix" "xform" 0.99999876244426333 0.99999983562669126
		 0.9999999804726466 -1.2071937848311152 0.0082758269795545694 -0.0071271349183348346 0 3.1160188609935524e-008
		 0.26843462288664988 -1.7668692231520566e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999981390111969 1.0000001294428649 1.0000001514555508 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1.0000000976561361 1.000000380350853 0.99999997439053057 0.51482696003107709
		 3.1415926535897931 0 0 6.6934617154457143e-009 0.12031608903311911 1.8422417757957277e-010 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000012375572682 1.0000001643733358
		 1.0000000195273537 no;
	setAttr ".xm[30]" -type "matrix" "xform" 0.99999944606282198 0.99999985754545095
		 1.0000003148973431 2.5911912345593744 -0.0082697012416468544 3.13446225034716 0 1.8883112656853385e-008
		 0.26843461090611742 -1.5728766164513353e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999981390111969 1.0000001294428649 1.0000001514555508 no;
	setAttr ".xm[31]" -type "matrix" "xform" 0.99999982118606567 0.9999997615814209 1 -1.1282440027571283e-005
		 -2.2724218368530273 1.5708049535751341 0 0.028442205861210823 0.040880516171455383
		 0.050421692430973053 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000005539374848
		 1.0000001424545693 0.99999968510275605 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000006001621411 0.99999996622772624 0.99999992042912245 2.8853604698983841
		 -0.029283978036984896 -0.073763688902827737 0 -0.073350016191403064 0.054358814517001419
		 0.015222328850859057 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999980468753824
		 0.99999971421524325 0.99999971421524325 no;
	setAttr ".xm[33]" -type "matrix" "xform" 0.99999917318055243 0.99999984199318281
		 1.0000000465584991 0.078510871426573134 -0.00076039971158006888 -0.085231298583505005 0 -1.3141202376276695e-008
		 0.37703610505260265 -7.3485066504064278e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999939983821906 1.000000033772275 1.0000000795708839 no;
	setAttr ".xm[34]" -type "matrix" "xform" 0.99999993758361261 0.99999971288693834
		 0.99999996807581781 -1.207193769250436 -0.0082758208253911562 0.0071271286094104049 0 -2.419942261855379e-008
		 0.26843462684713504 -8.5124792353896694e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000008268201313 1.0000001580068421 0.99999995344150316 no;
	setAttr ".xm[35]" -type "matrix" "xform" 0.99999999999969469 1.0000004652119405 1.0000001867475354 0.51482699841703017
		 3.1415926535897931 0 0 6.8643556949687934e-009 0.12031608872813732 5.6366164652432715e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000624163914 1.0000002871131441
		 1.0000000319241833 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1.0000000352663052 0.99999978555660352 0.99999985066760411 2.5911911319325172
		 0.0082696984712097073 -3.1344622510310987 0 -1.2099284296684942e-008 0.26843464503539594
		 -1.1169818334155757e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000008268201313
		 1.0000001580068421 0.99999995344150316 no;
	setAttr ".xm[37]" -type "matrix" "xform" 0.99999988079071045 0.99999970197677612
		 0.99999988079071045 -1.1337421710777562e-005 2.2724218368530273 -1.5708048343658447 0 -0.02844221331179142
		 0.040880516171455383 0.050421677529811859 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999996473369601 1.0000002144434426 1.0000001493324182 no;
	setAttr -s 33 ".m";
	setAttr -s 35 ".p";
	setAttr -s 38 ".g[0:37]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no yes no no no no no yes no;
	setAttr ".bp" yes;
createNode HIKControlSetNode -n "amazonprincess_ControlRig";
	setAttr ".ihi" 0;
createNode keyingGroup -n "amazonprincess_FullBodyKG";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dnsm";
	setAttr -s 53 ".act";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_HipsBPKG";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_ChestBPKG";
	setAttr ".ihi" 0;
	setAttr -s 18 ".dnsm";
	setAttr -s 4 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_LeftArmBPKG";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dnsm";
	setAttr -s 6 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_RightArmBPKG";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dnsm";
	setAttr -s 6 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_LeftLegBPKG";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dnsm";
	setAttr -s 6 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_RightLegBPKG";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dnsm";
	setAttr -s 6 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_HeadBPKG";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 3 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_LeftHandBPKG";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_RightHandBPKG";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_LeftFootBPKG";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "amazonprincess_RightFootBPKG";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode HIKFK2State -n "HIKFK2State1";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
	setAttr ".LeftShoulderExtraGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -136.96995544433594 12013.6845703125 511.95303344726562 1;
	setAttr ".RightShoulderExtraGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -136.96995544433594 12013.6845703125 511.95303344726562 1;
createNode HIKEffector2State -n "HIKEffector2State1";
	setAttr ".ihi" 0;
	setAttr ".EFF" -type "HIKEffectorState" ;
createNode HIKPinning2State -n "HIKPinning2State1";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKState2FK -n "HIKState2FK1";
	setAttr ".ihi" 0;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -136.96995544433594 12013.6845703125 511.95303344726562 1;
	setAttr ".HipsGX" -type "matrix" 1.0000002384185791 2.2159195845895249e-016 2.2249636465349347e-016 0
		 -2.2249636465349347e-016 0.99999189376831055 0.0040730368345975876 0 -2.2159195845895249e-016 -0.0040730368345975876 0.99999189376831055 0
		 0 6635.8505859375 -208.95083618164062 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.99999618530273438 -0.00023302622139453888 0.0027993896510452032 0
		 0.00040285655995830894 0.99814873933792114 -0.060820456594228745 0 -0.002780034439638257 0.060821343213319778 0.99814492464065552 0
		 733.5008544921875 7099.34228515625 113.28482055664062 1;
	setAttr ".LeftLegGX" -type "matrix" 0.9999997615814209 0.00034787581535056233 0.0006580789340659976 0
		 -0.00040019274456426501 0.99669390916824341 0.081246979534626007 0 -0.00062763935420662165 -0.081247217953205109 0.99669378995895386 0
		 1029.44921875 3340.900634765625 66.704742431640625 1;
	setAttr ".LeftFootGX" -type "matrix" 1 -4.1152816265821457e-008 -9.7122210718225688e-008 0
		 4.1152816265821457e-008 1 1.4901159417490817e-008 0 9.7122210718225688e-008 -1.4901162970204496e-008 1 0
		 1011.635986328125 728.841064453125 -551.79931640625 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.99999606609344482 0.00023290098761208355 -0.0027993600815534592 0
		 -0.000402725680032745 0.99814873933792114 -0.060818996280431747 0 0.0027800127863883972 0.060819882899522781 0.99814492464065552 0
		 -733.50091552734375 7099.34228515625 113.28482055664062 1;
	setAttr ".RightLegGX" -type "matrix" 1.0000001192092896 -0.00034976174356415868 -0.00065053172875195742 0
		 0.00040145841194316745 0.99669438600540161 0.081245645880699158 0 0.00061996444128453732 -0.081245884299278259 0.99669426679611206 0
		 -1029.451416015625 3340.900146484375 66.6986083984375 1;
	setAttr ".RightFootGX" -type "matrix" 1 -4.1036397391280843e-008 -1.1179325554167008e-007 0
		 4.1036397391280843e-008 1 1.4901156752955558e-008 0 1.1179325554167008e-007 -1.4901161193847656e-008 1 0
		 -1011.6395263671875 728.839111328125 -551.802490234375 1;
	setAttr ".SpineGX" -type "matrix" 1.0000002384185791 1.440469515586254e-013 3.868063706250098e-014 0
		 -1.4420334772200644e-013 0.99999189376831055 0.0040744161233305931 0 -3.8093406060828519e-014 -0.0040744161233305931 0.99999189376831055 0
		 1.6586915174698902e-010 8337.6787109375 382.49636840820312 1;
	setAttr ".LeftArmGX" -type "matrix" 0.99981623888015747 0.00085901812417432666 -0.019159998744726181 0
		 -0.00013981403026264161 0.99929648637771606 0.037506543099880219 0 0.019178736954927444 -0.037496965378522873 0.99911284446716309 0
		 1497.0802001953125 11855.66015625 -534.121826171875 1;
	setAttr ".LeftForeArmGX" -type "matrix" 0.99999821186065674 0.00012795938528142869 0.0018820191035047174 0
		 -0.000183229407412 0.99956786632537842 0.029396602883934975 0 -0.0018774443306028843 -0.029396897181868553 0.99956607818603516 0
		 2754.197265625 9241.5185546875 -781.796875 1;
	setAttr ".LeftHandGX" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775780349969864 0.99879002571105957 -0.035746306180953979 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3664.393310546875 6620.68994140625 -817.28839111328125 1;
	setAttr ".RightArmGX" -type "matrix" 0.99902248382568359 0.003772263415157795 0.044041313230991364 0
		 -0.0078574605286121368 0.99563890695571899 0.092957451939582825 0 -0.043498590588569641 -0.093212656676769257 0.99469542503356934 0
		 -1497.079833984375 11855.66015625 -534.1214599609375 1;
	setAttr ".RightForeArmGX" -type "matrix" 0.99970585107803345 0.0058252927847206593 0.023542018607258797 0
		 -0.0078187780454754829 0.99630802869796753 0.085493616759777069 0 -0.022957079112529755 -0.085652537643909454 0.99606055021286011 0
		 -2729.180908203125 9252.259765625 -957.95648193359375 1;
	setAttr ".RightHandGX" -type "matrix" 0.99808764457702637 0.044701557606458664 0.042699012905359268 0
		 -0.04799177497625351 0.9956851601600647 0.079423926770687103 0 -0.038964390754699707 -0.08132123202085495 0.9959261417388916 0
		 -3619.1279296875 6632.3125 -1163.7430419921875 1;
	setAttr ".HeadGX" -type "matrix" 1.0000002384185791 1.7362845915799147e-013 4.8773715643525561e-014 0
		 -1.7896967274052406e-013 0.98875653743743896 0.14953626692295074 0 -2.226156914787291e-014 -0.14953626692295074 0.98875653743743896 0
		 -5.4986637465503918e-010 13632.2265625 380.25460815429687 1;
	setAttr ".NeckGX" -type "matrix" 1.0000002384185791 1.7365361264839313e-013 4.8553097442083706e-014 0
		 -1.7687718965268134e-013 0.99703013896942139 0.077015817165374756 0 -3.5034817522138287e-014 -0.077015817165374756 0.99703013896942139 0
		 -2.8729754686374065e-010 12367.162109375 -80.2899169921875 1;
	setAttr ".Spine1GX" -type "matrix" 1.0000002384185791 1.4393502123684343e-013 3.8902227657766283e-014 0
		 -1.4409233897207108e-013 0.99999189376831055 0.0040744161233305931 0 -3.831545066575355e-014 -0.0040744161233305931 0.99999189376831055 0
		 5.0623165381846746e-011 9527.302734375 352.830810546875 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" 0.99298465251922607 -0.038121610879898071 -0.11193232983350754 0
		 0.034337885677814484 0.99877852201461792 -0.035539761185646057 0 0.11315039545297623 0.0314469113945961 0.99308043718338013 0
		 3670.853515625 6411.6494140625 -584.5322265625 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" 0.9825209379196167 0.062325019389390945 -0.17541070282459259 0
		 -0.075448907911777496 0.99474835395812988 -0.069165788590908051 0 0.17017869651317596 0.081191353499889374 0.98206305503845215 0
		 3617.27880859375 6150.45751953125 -298.14480590820312 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" 0.98259729146957397 0.061772726476192474 -0.17517606914043427 0
		 -0.074841633439064026 0.99480533599853516 -0.069001153111457825 0 0.17000371217727661 0.080910816788673401 0.9821162223815918 0
		 3593.924072265625 5774.30859375 -80.960235595703125 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775780349969864 0.99879002571105957 -0.035746306180953979 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3781.890869140625 6149.5 -785.2171630859375 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775780349969864 0.99879002571105957 -0.035746306180953979 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3900.131591796875 5556.3623046875 -728.60205078125 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775780349969864 0.99879002571105957 -0.035746306180953979 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3824.14501953125 5134.8310546875 -705.57928466796875 1;
	setAttr ".RightHandThumb1GX" -type "matrix" 0.99808740615844727 0.044701553881168365 0.04269900918006897 0
		 -0.047991771250963211 0.9956849217414856 0.079423911869525909 0 -0.038964387029409409 -0.081321217119693756 0.9959259033203125 0
		 -3605.636962890625 6398.57373046875 -956.139892578125 1;
	setAttr ".RightHandThumb2GX" -type "matrix" 0.99363899230957031 -0.061233371496200562 0.094510242342948914 0
		 0.057858426123857498 0.99759954214096069 0.038048695772886276 0 -0.096613205969333649 -0.032338451594114304 0.99479657411575317 0
		 -3527.912353515625 6108.259765625 -705.5697021484375 1;
	setAttr ".RightHandThumb3GX" -type "matrix" 0.99363923072814941 -0.061233378946781158 0.094510257244110107 0
		 0.057858433574438095 0.99759978055953979 0.038048695772886276 0 -0.096613220870494843 -0.032338451594114304 0.99479681253433228 0
		 -3483.6513671875 5710.80224609375 -534.482421875 1;
	setAttr ".RightHandIndex1GX" -type "matrix" 0.99808740615844727 0.044701553881168365 0.04269900918006897 0
		 -0.047991771250963211 0.9956849217414856 0.079423911869525909 0 -0.038964387029409409 -0.081321217119693756 0.9959259033203125 0
		 -3728.3896484375 6158.2275390625 -1176.3472900390625 1;
	setAttr ".RightHandIndex2GX" -type "matrix" 0.99808740615844727 0.044701553881168365 0.04269900918006897 0
		 -0.047991771250963211 0.9956849217414856 0.079423904418945313 0 -0.038964387029409409 -0.081321209669113159 0.9959259033203125 0
		 -3835.126220703125 5560.2294921875 -1178.295166015625 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.99808764457702637 0.044701553881168365 0.04269900918006897 0
		 -0.047991771250963211 0.9956851601600647 0.079423911869525909 0 -0.038964387029409409 -0.081321217119693756 0.9959261417388916 0
		 -3752.72216796875 5140.3583984375 -1208.4825439453125 1;
	setAttr ".LeftFootExtraFinger1GX" -type "matrix" 1 -4.1152816265821457e-008 -9.712220361279833e-008 0
		 4.1152816265821457e-008 1 1.4901159417490817e-008 0 9.712220361279833e-008 -1.4901162970204496e-008 1 0
		 1011.63623046875 136.42425537109375 495.4052734375 1;
	setAttr ".RightFootExtraFinger1GX" -type "matrix" 1 -4.1036397391280843e-008 -1.1179338343936251e-007 0
		 4.1036397391280843e-008 1 1.4901156752955558e-008 0 1.1179338343936251e-007 -1.4901161193847656e-008 1 0
		 -1011.6396484375 136.42193603515625 495.40234375 1;
	setAttr ".LeftShoulderExtraGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -136.96995544433594 12013.6845703125 511.95303344726562 1;
	setAttr ".RightShoulderExtraGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -136.96995544433594 12013.6845703125 511.95303344726562 1;
createNode HIKState2FK -n "HIKState2FK2";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter1";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter2";
	setAttr ".ihi" 0;
createNode HIKState2Effector -n "HIKState2Effector1";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 1.0000002384185791 2.2159195845895249e-016 2.2249636465349347e-016 0
		 -2.2249636465349347e-016 0.99999189376831055 0.0040730368345975876 0 -2.2159195845895249e-016 -0.0040730368345975876 0.99999189376831055 0
		 -3.0517578125e-005 7099.34228515625 113.28482055664062 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 1 -4.1152816265821457e-008 -9.7122210718225688e-008 0
		 4.1152816265821457e-008 1 1.4901159417490817e-008 0 9.7122210718225688e-008 -1.4901162970204496e-008 1 0
		 1011.635986328125 728.841064453125 -551.79931640625 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 1 -4.1036397391280843e-008 -1.1179325554167008e-007 0
		 4.1036397391280843e-008 1 1.4901156752955558e-008 0 1.1179325554167008e-007 -1.4901161193847656e-008 1 0
		 -1011.6395263671875 728.839111328125 -551.802490234375 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775784075260162 0.99879008531570435 -0.035746309906244278 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3664.393310546875 6620.68994140625 -817.28839111328125 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 0.99808764457702637 0.044701557606458664 0.042699012905359268 0
		 -0.047991778701543808 0.99568521976470947 0.0794239342212677 0 -0.038964394479990005 -0.081321239471435547 0.99592620134353638 0
		 -3619.1279296875 6632.3125 -1163.7430419921875 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 0.9999997615814209 0.00034787581535056233 0.0006580789340659976 0
		 -0.00040019274456426501 0.99669390916824341 0.081246979534626007 0 -0.00062763935420662165 -0.081247217953205109 0.99669378995895386 0
		 1029.44921875 3340.900634765625 66.704742431640625 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 1.0000001192092896 -0.00034976174356415868 -0.00065053172875195742 0
		 0.00040145841194316745 0.99669438600540161 0.081245645880699158 0 0.00061996444128453732 -0.081245884299278259 0.99669426679611206 0
		 -1029.451416015625 3340.900146484375 66.6986083984375 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" 0.99999827146530151 0.00012795939983334392 0.0018820192199200392 0
		 -0.000183229407412 0.99956786632537842 0.029396602883934975 0 -0.0018774443306028843 -0.029396897181868553 0.99956607818603516 0
		 2754.197265625 9241.5185546875 -781.796875 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 0.99970591068267822 0.0058252932503819466 0.023542020469903946 0
		 -0.0078187780454754829 0.99630802869796753 0.085493616759777069 0 -0.022957079112529755 -0.085652537643909454 0.99606055021286011 0
		 -2729.180908203125 9252.259765625 -957.95648193359375 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 1.0000002384185791 1.440469515586254e-013 3.868063706250098e-014 0
		 -1.4420334772200644e-013 0.99999189376831055 0.0040744161233305931 0 -3.8093406060828519e-014 -0.0040744161233305931 0.99999189376831055 0
		 1.6586915174698902e-010 8337.6787109375 382.49636840820312 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 1.0000002384185791 1.4393502123684343e-013 3.8902227657766283e-014 0
		 -1.4409233897207108e-013 0.99999189376831055 0.0040744161233305931 0 -3.831545066575355e-014 -0.0040744161233305931 0.99999189376831055 0
		 0.00018310546875 11855.66015625 -534.12164306640625 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 0.99981623888015747 0.00085901812417432666 -0.019159998744726181 0
		 -0.00013981404481455684 0.99929654598236084 0.037506546825170517 0 0.019178736954927444 -0.037496965378522873 0.99911284446716309 0
		 1497.0802001953125 11855.66015625 -534.121826171875 1;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 0.99902248382568359 0.003772263415157795 0.044041313230991364 0
		 -0.0078574614599347115 0.99563896656036377 0.092957459390163422 0 -0.043498590588569641 -0.093212656676769257 0.99469542503356934 0
		 -1497.079833984375 11855.66015625 -534.1214599609375 1;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 1.0000002384185791 1.7362845915799147e-013 4.8773715643525561e-014 0
		 -1.7896967274052406e-013 0.98875653743743896 0.14953626692295074 0 -2.226156914787291e-014 -0.14953626692295074 0.98875653743743896 0
		 -5.4986637465503918e-010 13632.2265625 380.25460815429687 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 0.99999618530273438 -0.00023302622139453888 0.0027993896510452032 0
		 0.00040285655995830894 0.99814873933792114 -0.060820456594228745 0 -0.002780034439638257 0.060821343213319778 0.99814492464065552 0
		 733.5008544921875 7099.34228515625 113.28482055664062 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 0.99999606609344482 0.00023290098761208355 -0.0027993600815534592 0
		 -0.000402725680032745 0.99814873933792114 -0.060818996280431747 0 0.0027800127863883972 0.060819882899522781 0.99814492464065552 0
		 -733.50091552734375 7099.34228515625 113.28482055664062 1;
	setAttr ".LeftHandThumbEffectorGXM[0]" -type "matrix" 0.98259735107421875 0.061772730201482773 -0.17517608404159546 0
		 -0.074841633439064026 0.99480533599853516 -0.069001153111457825 0 0.17000371217727661 0.080910816788673401 0.9821162223815918 0
		 3593.924072265625 5774.30859375 -80.960235595703125 1;
	setAttr ".LeftHandIndexEffectorGXM[0]" -type "matrix" 0.99295413494110107 -0.037600353360176086 -0.11237683147192001 0
		 0.033775784075260162 0.99879008531570435 -0.035746309906244278 0 0.11358492821455002 0.03169882670044899 0.993022620677948 0
		 3824.14501953125 5134.8310546875 -705.57928466796875 1;
	setAttr ".RightHandThumbEffectorGXM[0]" -type "matrix" 0.99363923072814941 -0.061233378946781158 0.094510257244110107 0
		 0.057858437299728394 0.99759984016418457 0.038048699498176575 0 -0.096613228321075439 -0.032338455319404602 0.99479687213897705 0
		 -3483.6513671875 5710.80224609375 -534.482421875 1;
	setAttr ".RightHandIndexEffectorGXM[0]" -type "matrix" 0.99808764457702637 0.044701553881168365 0.04269900918006897 0
		 -0.04799177497625351 0.99568521976470947 0.079423919320106506 0 -0.038964390754699707 -0.081321224570274353 0.99592620134353638 0
		 -3752.72216796875 5140.3583984375 -1208.4825439453125 1;
	setAttr ".LeftFootExtraFingerEffectorGXM[0]" -type "matrix" 1 -4.1152816265821457e-008 -9.712220361279833e-008 0
		 4.1152816265821457e-008 1 1.4901159417490817e-008 0 9.712220361279833e-008 -1.4901162970204496e-008 1 0
		 1011.63623046875 136.42425537109375 495.4052734375 1;
	setAttr ".RightFootExtraFingerEffectorGXM[0]" -type "matrix" 1 -4.1036397391280843e-008 -1.1179338343936251e-007 0
		 4.1036397391280843e-008 1 1.4901156752955558e-008 0 1.1179338343936251e-007 -1.4901161193847656e-008 1 0
		 -1011.6396484375 136.42193603515625 495.40234375 1;
createNode HIKState2Effector -n "HIKState2Effector2";
	setAttr ".ihi" 0;
createNode animCurveTL -n "amazonprincess_Ctrl_HipsEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 136.96992492675781 150 136.96992492675781
		 300 136.96992492675781 301 136.96903991699219 320 136.96992492675781 340 136.96916198730469
		 360 135.71595764160156 380 136.96885681152344 381 136.96992492675781 390 136.96992492675781
		 400 136.96998596191406 401 136.96992492675781 415 136.96998596191406 440 136.96998596191406;
createNode animCurveTL -n "amazonprincess_Ctrl_HipsEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -4869.5478515625018 150 -5755.5664062500018
		 300 -4869.5478515625018 301 -5482.6416015625018 320 -5194.0834960937518 340 -5482.6406250000018
		 360 -5482.6533203125018 380 -5482.6416015625018 381 -4869.5478515625018 390 -6323.7216796875018
		 400 -6323.7221679687518 401 -4869.5478515625018 415 -7942.5117187500018 440 -5895.8701171875018;
createNode animCurveTL -n "amazonprincess_Ctrl_HipsEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -382.25091552734381 150 -382.25091552734381
		 300 -382.25091552734381 301 -382.25094604492193 320 -382.25091552734381 340 -382.25057983398443
		 360 -382.25489807128912 380 -382.25079345703131 381 -382.25091552734381 390 -1505.5773620605469
		 400 -1505.5802917480469 401 -382.25091552734381 415 -1508.5191955566406 440 -650.125;
createNode animCurveTA -n "amazonprincess_Ctrl_Hips_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 6.3611093629270335e-015 150 6.3611093629270335e-015
		 300 6.3611093629270335e-015 301 5.2532922172440192e-015 320 6.3611093629270335e-015
		 340 -1.6178478225745143e-015 360 -2.2696734359302071 380 5.1684013573782151e-015
		 381 6.3611093629270335e-015 390 6.3611093629270335e-015 400 20.278836530745913 401 6.3611093629270335e-015
		 415 19.15279261273227 440 4.7046612605595746;
createNode animCurveTA -n "amazonprincess_Ctrl_Hips_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -6.3611093629270335e-015 150 -6.3611093629270335e-015
		 300 -6.3611093629270335e-015 301 10.314279384084237 320 -6.3611093629270335e-015
		 340 -10.592772884032422 360 0.63857138485428533 380 10.314279384084237 381 -6.3611093629270335e-015
		 390 -6.3611093629270335e-015 400 -1.8225372792840653e-014 401 -6.3611093629270335e-015
		 415 -2.19921462668167e-014 440 -1.2711498021479836e-014;
createNode animCurveTA -n "amazonprincess_Ctrl_Hips_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 6.3611093629270335e-015 150 6.3611093629270335e-015
		 300 6.3611093629270335e-015 301 7.9290492209179044 320 6.3611093629270335e-015 340 -11.501172671495532
		 360 -11.303300753668987 380 7.9290492209179044 381 6.3611093629270335e-015 390 6.3611093629270335e-015
		 400 -6.4903871677909116e-015 401 6.3611093629270335e-015 415 1.5642644420527625e-014
		 440 -5.2217560110187237e-016;
createNode animCurveTL -n "amazonprincess_Ctrl_Hips_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -702.5958251953125 150 -702.5958251953125
		 300 -702.5958251953125 301 -699.53332519531261 320 -702.5958251953125 340 -696.163330078125
		 360 -677.76147460937511 380 -699.53332519531261 381 -702.5958251953125 390 -1825.9222717285156
		 400 -1967.1642150878906 401 -702.5958251953125 415 -1963.6278381347656 440 -1007.513671875;
createNode animCurveTL -n "amazonprincess_Ctrl_Hips_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -5334.3481445312518 150 -6220.3666992187518
		 300 -5334.3481445312518 301 -5947.8432617187518 320 -5658.8837890625018 340 -5951.2617187500018
		 360 -5958.8022460937527 380 -5947.8432617187518 381 -5334.3481445312518 390 -6788.5219726562518
		 400 -6648.6845703125018 401 -5334.3481445312518 415 -8276.4824218750018 440 -6332.8300781250018;
createNode animCurveTL -n "amazonprincess_Ctrl_Hips_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 136.96995544433594 150 136.96995544433594
		 300 136.96995544433594 301 176.71417236328125 320 136.96995544433594 340 114.31053161621094
		 360 203.680908203125 380 176.71392822265625 381 136.96995544433594 390 136.96995544433594
		 400 136.96995544433594 401 136.96995544433594 415 136.97001647949219 440 136.97001647949219;
createNode animCurveTA -n "amazonprincess_Ctrl_HipsEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 150 0 300 0 301 7.9290491514817907 320 0
		 340 -11.501172758555292 360 -11.303300629464863 380 7.9290491859751562 381 0 390 0
		 400 0 401 0 415 0 440 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_HipsEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 150 0 300 0 301 10.314279295121318 320 0
		 340 -10.592772962809171 360 0.63857138032588789 380 10.314279339314899 381 0 390 0
		 400 0 401 0 415 0 440 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_HipsEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 0 150 0 300 0 301 -3.113127307939514e-009
		 320 0 340 3.9975737855364553e-009 360 -2.2696734104043585 380 -3.1536853555145131e-009
		 381 0 390 0 400 20.278837069117269 401 0 415 19.152792295227368 440 4.7046613300902278;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftAnkleEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1148.0341033935549 300 1148.0342254638674
		 301 1148.8217620849612 320 1148.8220672607424 340 1148.0336151123049 360 1138.7075042724612
		 380 1148.8227386474612 381 1148.0341033935549 401 1148.0341033935549;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftAnkleEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -11271.743652343763 300 -11271.748046875013
		 301 -10874.735839843763 320 -9221.6076660156377 340 -11276.763427734388 360 -11566.266357421888
		 380 -10874.761718750013 381 -11271.743896484388 401 -11271.743896484388;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftAnkleEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1062.3845520019536 300 -1062.3857116699223
		 301 -2040.1471252441411 320 -2040.1511535644536 340 2160.7872009277339 360 -913.62448120117233
		 380 -2040.1549377441411 381 -1062.3845520019536 401 -1062.3846130371098;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.0887804138744805e-005 300 0.00085851918131824034
		 301 -5.9991717233044675 320 -19.280958180661148 340 -37.103964755732186 360 -10.356901470793551
		 380 -10.236345071632202 381 -1.0124161854146583e-005 401 -1.0053342637781732e-005;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.5406193406888531e-006 300 -4.0226497573873086e-006
		 301 1.1333992321209085 320 1.7382947401415236 340 -0.11822341714834503 360 2.5076698703820131
		 380 8.1258822685940295 381 -1.4695953948563595e-006 401 -1.4033532947032749e-006;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -9.7318423208533373e-007 300 3.0774844409587853e-005
		 301 -0.38525153012390417 320 -1.0216802519439616 340 -1.2286490866802677 360 -0.8005410698311205
		 380 -3.3830963156094231 381 -9.076617782560902e-007 401 -8.971807379116539e-007;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -2.2000170259385751e-008 300 -0.0020755240095536001
		 301 38.81097181461076 320 90.289443584175416 340 17.83251544028737 360 31.719083706652654
		 380 50.679311604428051 381 2.7499234803667638e-008 401 5.6683872467937798e-008;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 4.70278698089567e-007 300 -1.2709547396003117e-008
		 301 -2.3339368234520177 320 -1.7690445939531452 340 -1.2666977061646281 360 -0.40396270367850529
		 380 -2.0881544154307203 381 -5.878166815651127e-007 401 2.1472204543372169e-008;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -3.0872188107810996e-006 300 4.0526234451664921e-005
		 301 -1.1782199037091594 320 -2.3606263057696113 340 -1.8419848970812671 360 2.5807456121385988
		 380 4.3154040167541448 381 3.858815422505785e-006 401 7.954179561457429e-006;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftFoot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 300 0.0012174813239787441 301 -9.0665215189518253
		 320 -0.25600148453768112 340 -12.219680841265781 360 -21.391939182002382 380 -15.238142544429031
		 381 0 401 1.965689420609955e-021;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftFoot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.0720058059012083e-005 300 5.4227250234840256e-006
		 301 -0.43718738046814892 320 -0.43118569608078716 340 -0.36825253540107578 360 -2.9391904249105267
		 380 4.3152696734543952 381 -1.4646344356364157e-005 401 -1.7726767473151833e-005;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftFoot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -4.3755891737062947e-006 300 -5.2031115902834622e-006
		 301 -1.5817321938475635 320 -2.775831588628928 340 -1.0546140585516819 360 -7.8933405831868049
		 380 2.0767905335224781 381 -3.2283299205559676e-006 401 -2.5346367974215512e-006;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftAnkleEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -2.3465643906638747e-006 300 -2.3465641871083748e-006
		 301 2.3421608726670322e-015 320 6.4089214228225258e-014 340 1.1448224160639156e-014
		 360 -10.804764451035673 380 -6.3611093629270335e-015 381 -2.3465652048858704e-006
		 401 -2.346566019107869e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftAnkleEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -5.6171738826003957e-006 300 -5.6171726612673973e-006
		 301 -6.0770602608419576e-006 320 -6.5010062160401974e-006 340 -6.4212940912341577e-006
		 360 11.302565912918691 380 -6.4150989287838614e-006 381 -5.6171742833502957e-006
		 401 -5.6171751166556223e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftAnkleEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1.1502644977600499e-013 300 1.1502641478788763e-013
		 301 23.701576232298599 320 70.677003161958822 340 -31.504058252105182 360 -2.1420735901534327
		 380 23.701572514522724 381 0 401 -1.8079360196813486e-028;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftKneeEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -2.6666085545352909e-006 300 -2.6680185207091016e-006
		 301 -0.28642942144490857 320 -0.39094118189028798 340 0.10297250990284766 360 13.662661345919092
		 380 -3.3639937809493072 381 4.8670042813273519e-006 401 8.82095112081802e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftKneeEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.6351027553015441e-006 300 -2.8347604582834213e-011
		 301 -1.5747140167153888 320 -2.5340458831349268 340 -1.0936915479132672 360 -4.5815648088864807
		 380 3.7361073502957116 381 0 401 -1.3325799966642164e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftKneeEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.0264547490647392e-005 300 -0.0012175313546206646
		 301 32.780016264933721 320 70.960163012268907 340 -19.283024716954014 360 19.015611389277659
		 380 38.879464829368501 381 -1.0210860032840695e-005 401 -1.0182684005426465e-005;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftKneeEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -658.1598510742192 300 -658.21691894531295
		 301 -264.11070251464889 320 597.81930541992142 340 1666.1248474121089 360 329.44473266601523
		 380 -64.166046142578693 381 -658.15994262695358 401 -658.15991210937545;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftKneeEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -8618.0766601562627 300 -8618.0722656250127
		 301 -8862.7470703125109 320 -8737.6701660156359 340 -8638.5974121093859 360 -9195.2031250000109
		 380 -9067.7834472656396 381 -8618.0766601562627 401 -8618.0766601562627;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftKneeEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1167.1629486083987 300 1167.1630706787112
		 301 1091.1331024169924 320 1036.3760833740237 340 1114.8503265380862 360 942.31895446777366
		 380 1338.5937347412112 381 1167.1629486083987 401 1167.1629486083987;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHipEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1.4638037196306375e-013 300 3.0774844442848716e-005
		 301 -0.38525151132748087 320 -1.0216802919842773 340 -1.2286490477384937 360 10.313422829661643
		 380 -10.158307752300706 381 0 401 -5.1978160565838262e-028;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHipEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.5406187332341534e-006 300 -4.022649165578298e-006
		 301 1.1333992007681752 320 1.7382947876963069 340 -0.11822339977062875 360 3.0718058763134195
		 380 -2.9834283696227129 381 -1.469594797707218e-006 401 -1.4033527190228677e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHipEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -1.0887804147924694e-005 300 0.00085851918126044694
		 301 -5.9991715540498731 320 -19.280958772916083 340 -37.103963496237981 360 -12.897399648789156
		 380 -10.573625816683988 381 -1.0124161828702145e-005 401 -1.0053342612337257e-005;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftHipEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -382.25091552734409 300 -382.25091552734409
		 301 -382.25091552734409 320 -382.25091552734409 340 -382.25091552734409 360 -238.91696166992227
		 380 -483.43478393554727 381 -382.25091552734409 401 -382.25091552734409;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftHipEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -4869.5478515625091 300 -4869.5478515625091
		 301 -5100.6992187500091 320 -5100.6992187500091 340 -5482.6416015625091 360 -5468.9497070312591
		 380 -5352.5659179687591 381 -4869.5478515625091 401 -4869.5478515625091;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftHipEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 870.47019958496105 300 870.47019958496105
		 301 870.47019958496105 320 870.47019958496105 340 870.47019958496105 360 854.94456481933605
		 380 851.7167205810548 381 870.47019958496105 401 870.47019958496105;
createNode animCurveTL -n "amazonprincess_Ctrl_RightAnkleEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -874.09761047363304 300 -874.09712219238304
		 301 -874.88459777832054 320 -874.09754943847679 340 -874.70460510253929 344 -874.70863342285179
		 360 -741.47505187988304 380 -874.95558166503929 381 -874.09761047363304 390 -874.15290832519554
		 401 -874.09761047363304;
createNode animCurveTL -n "amazonprincess_Ctrl_RightAnkleEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -11271.746337890616 300 -11271.747802734366
		 301 -11289.261230468741 320 -11502.896240234366 340 -10854.150390624991 344 -11484.994140624991
		 360 -9647.4865722656177 380 -11290.613281249991 381 -11271.746093749991 390 -11272.732177734366
		 401 -11271.746093749991;
createNode animCurveTL -n "amazonprincess_Ctrl_RightAnkleEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -1062.3875427246089 300 -1062.3873596191402
		 301 1105.8959655761723 320 -1062.3874206542964 340 -3279.3675842285152 344 -3279.3959045410152
		 360 -2820.2057189941402 380 1106.2264099121098 381 -1062.3874206542964 390 -3082.7677307128902
		 401 -1062.3872375488277;
createNode animCurveTA -n "amazonprincess_Ctrl_RightUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.00018629317595837314 300 0.00042230216018586316
		 301 -25.370410732542627 320 -5.246227549902227e-005 340 8.39799154949044 344 9.9286908350845664
		 360 -8.6137744817078339 380 -37.242261318804637 381 0.00018560377528639235 390 -16.247649776714983
		 401 0.00018422666594663251;
createNode animCurveTA -n "amazonprincess_Ctrl_RightUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 8.074478800719046e-006 300 3.8560018529456873e-006
		 301 -0.36449160607805281 320 6.9278491447290238e-006 340 -0.11361100081996918 344 -4.5626373513631941
		 360 5.5628834172296262 380 11.01076306810363 381 8.076061342950793e-006 390 -0.31106363291337019
		 401 8.0776436307381643e-006;
createNode animCurveTA -n "amazonprincess_Ctrl_RightUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -6.9101926605823135e-006 300 -1.5183066165229141e-005
		 301 0.93121615624469367 320 1.6386860025954421e-006 340 -0.22592141088099027 344 0.82487098257758118
		 360 0.42674335728562279 380 -2.8852651470736448 381 -6.8773411325021871e-006 390 0.69916933821184368
		 401 -6.7902039139161465e-006;
createNode animCurveTA -n "amazonprincess_Ctrl_RightLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -0.00043721721976768891 300 -0.0010111703115796805
		 301 14.015114505816214 320 0.00013693381225574275 340 33.574129501802716 344 24.052312185583961
		 360 82.419234482670888 380 46.157088679923618 381 -0.00043825330289415696 390 69.319890231279189
		 401 -0.0004393343580810295;
createNode animCurveTA -n "amazonprincess_Ctrl_RightLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 8.6396000554936236e-007 300 -1.2295607062858936e-008
		 301 1.567009475808061 320 -3.1749385116788485e-007 340 0.56631778080794948 344 1.0581016304966957
		 360 0.021995167782948338 380 1.1514469065326769 381 -8.3226528516260275e-009 390 0.021335309172330695
		 401 3.4736462933493275e-008;
createNode animCurveTA -n "amazonprincess_Ctrl_RightLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -8.7878143471384175e-006 300 -2.0569066939600987e-005
		 301 1.3837779134891659 320 3.060076143788293e-006 340 -0.12061313344547284 344 -9.7626469308636725
		 360 3.2180069811854426 380 5.5659364435422471 381 0.00023343528080678946 390 0.94846625670113172
		 401 0.00033910404018808302;
createNode animCurveTA -n "amazonprincess_Ctrl_RightFoot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 300 0.00058910381581182207 301 -28.006245742233656
		 320 0 340 -20.635138423786469 344 -29.586020329271662 360 3.7938608003962435 380 -46.87753451787156
		 381 0 390 -53.071249154002082 401 0;
createNode animCurveTA -n "amazonprincess_Ctrl_RightFoot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -0.00025113117873399178 300 -1.0952271800277559e-005
		 301 0.61534449120201407 320 -8.4702977328997045e-005 340 0.20889252377517761 344 -5.9614885175619605
		 360 2.9933623233030304 380 4.2906789300287898 381 -0.00035243040033051493 390 0.63732669044333168
		 401 -0.0004331861995200885;
createNode animCurveTA -n "amazonprincess_Ctrl_RightFoot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 5.4161978637222882e-006 300 -6.7478648121929973e-010
		 301 0.96072806241400366 320 4.6690705568284129e-006 340 0.15794477029401202 344 0.32785308473515606
		 360 -0.83539629478028343 380 1.6424001474685028 381 4.1888372976301505e-005 390 0.27119811742540473
		 401 5.7844358081217473e-005;
createNode animCurveTA -n "amazonprincess_Ctrl_RightAnkleEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -2.3490046139932435e-006 300 -2.3490037997712457e-006
		 301 -2.6157786662580702e-014 320 -2.3490050211042428e-006 340 -5.1777986292776055e-006
		 344 1.6878335219183784e-006 360 8.9627899815684593 380 5.0888874903416268e-014 381 -2.3490050211042395e-006
		 390 -1.8142708302841137e-006 401 -2.3490050211042395e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightAnkleEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -6.397739194165818e-006 300 -6.3977371586108226e-006
		 301 -5.4127385368745368e-006 320 -6.3977379664717106e-006 340 -6.6642332635274844e-006
		 344 -1.1349624766843628e-005 360 12.805536550739657 380 -5.4556071149055783e-006
		 381 -6.3977339017228433e-006 390 -1.6901013018783039e-005 401 -6.3977241501421884e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightAnkleEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1.3114682280210123e-013 300 1.3114673561674053e-013
		 301 -39.373790997287948 320 1.3358329662146771e-013 340 21.325587697896776 344 2.3578307063020638
		 360 77.531445583490907 380 -39.373798532713714 381 0 390 -2.9378960319822484e-027
		 401 -2.4859120270618558e-028;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightKneeEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -1.6347916963200389e-011 300 -1.2481755633430725e-011
		 301 -0.00025659657409242366 320 1.6591274816578663e-006 340 0.16809422338737107 344 5.1083703190128409
		 360 9.5582831610899159 380 -1.0197143834830273 381 0.00024311013377035172 390 0.26341810420826373
		 401 0.00034874775056769919;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightKneeEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 7.4628418606060001e-006 300 2.4278471998536827e-006
		 301 1.1300604772678884 320 6.938049553331959e-006 340 0.13528481456578492 344 -3.487901661094734
		 360 -10.635355263018814 380 4.4632423644624524 381 7.441962382612095e-006 390 0.52677740707740306
		 401 7.4882680646027725e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightKneeEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -0.00025102143749409399 300 -0.00058912432277123433
		 301 -11.363467338568389 320 8.451392164580821e-005 340 41.961461724136505 344 31.731689594804294
		 360 71.41190781231262 380 7.5350412132082276 381 -0.00025274811981896081 390 53.075113911834997
		 401 -0.00025520868403911424;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_RightKneeEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -658.1735229492183 300 -658.1890258789058
		 301 979.40707397460983 320 -658.1578979492183 340 -1204.4148254394527 344 -1543.2782287597652
		 360 -222.00598144531193 380 1852.9073181152348 381 -658.17355346679642 390 -718.53549194335892
		 401 -658.1734008789058;
createNode animCurveTL -n "amazonprincess_Ctrl_RightKneeEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -8618.0766601562409 300 -8618.0756835937409
		 301 -8608.1108398437427 320 -8849.2290039062409 340 -9151.1386718749909 344 -9445.5344238281141
		 360 -9196.1867675781123 380 -8719.2111816406177 381 -8618.0766601562409 390 -10001.529785156241
		 401 -8618.0766601562409;
createNode animCurveTL -n "amazonprincess_Ctrl_RightKneeEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -893.22511291503929 300 -893.22486877441429
		 301 -840.69441223144554 320 -893.22511291503929 340 -882.58992004394554 344 -1054.2529449462893
		 360 -1242.8728179931643 380 -684.97077941894554 381 -893.22511291503929 390 -860.96492004394554
		 401 -893.22511291503929;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHipEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -6.9101926414358868e-006 300 -1.5183066126853817e-005
		 301 0.9312160872823958 320 1.6386860089565513e-006 340 -0.22592140281079057 344 14.542097583316767
		 360 11.939883494003091 380 -3.6715760093402059 381 -6.8773411197799682e-006 390 0.69916933686147797
		 401 -6.7902039202772555e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHipEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 8.0744794113641423e-006 300 3.8560024635597432e-006
		 301 -0.36449159910790696 320 6.927849755395523e-006 340 -0.11361100326310214 344 2.9368047234161714
		 360 5.6120266265908576 380 -1.8938054933449127 381 8.0760619027284167e-006 390 -0.31106364412501508
		 401 8.077644292293539e-006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHipEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.00018629317595767324 300 0.00042230216016421712
		 301 -25.370409571709665 320 -5.2462275492661161e-005 340 8.3979914909848059 344 9.6332670457277825
		 360 -8.8049267088789609 380 -38.702625057384068 381 0.00018560377531183679 390 -16.247650033004867
		 401 0.00018422666597843807;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_RightHipEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -382.25091552734352 300 -382.25091552734352
		 301 -382.25091552734352 320 -382.25091552734352 340 -382.25091552734352 344 -644.32235717773415
		 360 -525.59274291992165 380 -281.0668029785154 381 -382.25091552734352 390 -1505.5773620605466
		 401 -382.25091552734352;
createNode animCurveTL -n "amazonprincess_Ctrl_RightHipEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -4869.5478515624945 300 -4869.5478515624945
		 301 -5100.6992187499945 320 -5100.6992187499945 340 -5482.6416015624945 344 -5816.1293945312445
		 360 -5496.3569335937445 380 -5612.7172851562445 381 -4869.5478515624945 390 -6323.7216796874945
		 401 -4869.5478515624945;
createNode animCurveTL -n "amazonprincess_Ctrl_RightHipEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -596.53034973144543 300 -596.53034973144543
		 301 -596.53034973144543 320 -596.53034973144543 340 -596.53034973144543 344 -569.55281066894543
		 360 -583.51289367675793 380 -577.77900695800793 381 -596.53034973144543 390 -596.53034973144543
		 401 -596.53034973144543;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestEndEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 6.3238125717434679 320 2.3854160110976376e-015
		 340 -9.7254067007700247 360 -9.069200212869017 380 6.3238123381143945 381 0 401 0
		 420 0 425 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestEndEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 -6.9519298277670512 320 -1.6190770796953777e-006
		 340 7.518732960736096 360 1.4364680958894878 380 -6.9519329926431839 381 0 401 0
		 420 0 425 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestEndEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 9.1202750934993091 320 5.1396500577860573
		 340 8.6002466915152507 360 9.2571855114349901 380 9.120276796713302 381 0 401 0 420 13.125721737386653
		 425 21.424928831225788;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 1.2722218725854067e-014 301 6.2332982446242244
		 320 2.8542700919181643 340 6.5307278652541623 360 6.2982029983311323 380 6.2332991581266368
		 381 0 401 -3.5311250384401269e-031 420 1.662936285485575e-006 425 5.57354977834704;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 1.2722218725854067e-014 301 -5.2391973278875632
		 320 -1.5804602812040252e-006 340 5.3028199476535711 360 -0.53674141787279928 380 -5.2391977525999796
		 381 6.3611093629270335e-015 401 6.3611093629270335e-015 420 1.2722218587386802e-014
		 425 -5.7080287988577428e-015;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 1.4124500153760508e-030 301 -1.7843929623123322
		 320 -3.2894367368700006e-008 340 1.9541723021262052 360 1.7464562114417204 380 -1.784392646656537
		 381 -6.3611093629270335e-015 401 -6.3611093629270335e-015 420 9.5416642290135639e-015
		 425 2.4809915068195002e-013;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 -2.8624992133171654e-014 301 5.0197044392954782
		 320 2.2853802611295504 340 5.3990614640400247 360 5.3098854737706978 380 5.0197057380579571
		 381 -1.2722218725854067e-014 401 -1.2722218725854062e-014 420 -1.2722218725854062e-014
		 425 11.146781473162562;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 3.49861014960987e-014 301 -11.765280573278835
		 320 2.3854160110976374e-014 340 12.442033008017239 360 0.74737680566623077 380 -11.765283099736445
		 381 5.0888874903416268e-014 401 5.0888874903416268e-014 420 5.0888874903416268e-014
		 425 3.7904229253002608e-014;
createNode animCurveTA -n "amazonprincess_Ctrl_Spine1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 1.9083328088781094e-014 301 -0.36824987250293056
		 320 5.4566391253858457e-014 340 0.43977241379400567 360 0.42948772572536753 380 -0.36825073343376102
		 381 1.2722218725854067e-014 401 1.2722218725854062e-014 420 1.2722218725854062e-014
		 425 2.3378642094485111e-013;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestOriginEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 6.8432787471887906 320 7.9513867036587919e-016
		 340 -10.256671288183826 360 -9.4678110206890125 380 6.84327920887839 381 0 401 0
		 420 0 425 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestOriginEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 4.4725339687077161 320 -1.5804608743774734e-006
		 340 -4.4044399489413681 360 1.0178364341425232 380 4.4725334107281354 381 0 401 0
		 420 0 425 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_ChestOriginEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 0 301 5.4585035981363266 320 2.8542700306378013
		 340 5.3645244409954929 360 4.044440808662026 380 5.4585044341396776 381 0 401 0 420 13.125722557993328
		 425 10.278147314381966;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestOriginEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 -118.08239746093756 301 -120.60760498046875
		 320 -118.08239746093756 340 -123.38488769531261 360 -172.47479248046847 380 -120.60760498046875
		 381 -118.08239746093756 401 -118.08239746093756 420 1498.5538024902344 425 2666.8421325683594;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestOriginEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 -3630.1269531250018 301 -4256.724609375
		 320 -3954.6625976562518 340 -4254.6591796875036 360 -4234.5986328124945 380 -4256.724609375
		 381 -3630.1269531250018 401 -3630.1269531250018 420 -5312.8984375000018 425 -4910.1855468750018;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestOriginEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 136.9699554445022 301 -49.093917846679716
		 320 136.9699554445022 340 313.03375244140625 360 -601.22065734863293 380 -49.093917846679716
		 381 136.96995544450184 401 136.96995544450184 420 136.96995544450292 425 136.97001647965953;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestEndEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 -1049.0262145996094 301 -555.50848388671875
		 320 -777.89077758789062 340 -577.87380981445324 360 -627.22106933593727 380 -555.50836181640625
		 381 -1049.0262145996094 401 -1049.0262145996094 420 1389.9695739746094 425 2859.8143005371094;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestEndEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 -115.91308593750182 301 -646.43945312500182
		 320 -369.24707031250182 340 -647.29980468750182 360 -605.89746093749454 380 -646.43945312500182
		 381 -115.91308593750182 401 -115.91308593750182 420 -1679.0888671875018 425 -1242.0966796875018;
createNode animCurveTL -n "amazonprincess_Ctrl_ChestEndEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  300 136.97013854980469 301 95.404037475585938
		 320 136.97013854980469 340 173.79161071777344 360 -600.56373596191418 380 95.404281616210937
		 381 136.97013854980469 401 136.97013854980469 420 136.97013854980469 425 136.97026062011719;
createNode animCurveTA -n "amazonprincess_Ctrl_HeadEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 5.1709412690535093 301 22.33049882182285
		 340 -15.756550619945681 380 22.330451834092226 381 0 401 0 405 0 425 0 450 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_HeadEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 -7.8455372975188782 301 -3.2207560473484227
		 340 6.4563144156000867 380 -3.2207736545247259 381 0 401 0 405 0 425 0 450 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_HeadEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 9.1499508480793832 301 -2.4408848541722343
		 340 -0.61859579356031558 380 -2.4405156011320068 381 -1.3390721512411387e-006 401 -1.3390721512411385e-006
		 405 57.124114094694036 425 46.888881036512075 450 -23.031169264988094;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_Head_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 6.3611093629270335e-015 301 -6.1545867390987423
		 340 -4.7163530880509006 380 -6.154587504970471 381 6.3611093629270335e-015 401 6.3611093629270335e-015
		 405 26.771731327612642 425 14.353460708220993 450 -27.425271608328242;
createNode animCurveTA -n "amazonprincess_Ctrl_Head_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 -6.3611093629270335e-015 301 0.86501268552536081
		 340 -0.24969169232475985 380 0.86501242697204717 381 -6.3611093629270335e-015 401 -6.3611093629270335e-015
		 405 -9.5722068531774946e-015 425 -2.1317905946056716e-014 450 -2.7809090116392063e-014;
createNode animCurveTA -n "amazonprincess_Ctrl_Head_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 6.3611093629270335e-015 301 7.9723059442951909
		 340 -3.0249404031543965 380 7.9723077538100648 381 6.3611093629270335e-015 401 6.3611093629270335e-015
		 405 4.0223931953262797e-014 425 1.6549734377421381e-014 450 6.7856231491679642e-015;
createNode animCurveTA -n "amazonprincess_Ctrl_Neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 -1.3390721735050209e-006 301 -6.1233408810592094
		 340 -4.7164318910304672 380 -6.1229706549012972 381 -1.3390721830466855e-006 401 -1.3390721830466851e-006
		 405 26.774486544394723 425 14.352899674809631 450 -27.425490172732832;
createNode animCurveTA -n "amazonprincess_Ctrl_Neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 -1.7874717309081624e-012 301 -0.47252737344009094
		 340 0.32910262098725329 380 -0.47250182803395929 381 -1.7811106216195693e-012 401 -1.7811106216939023e-012
		 405 -1.6569813700875677e-012 425 -1.7419125287145099e-012 450 -1.6715604865180206e-012;
createNode animCurveTA -n "amazonprincess_Ctrl_Neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 6.3611302506230897e-015 301 8.0973249484224574
		 340 -3.0379555381904941 380 8.097329168067894 381 -6.3611093629270335e-015 401 -6.3610885495642629e-015
		 405 -4.008975892643603e-013 425 -2.1932736386041737e-013 450 3.9478098156806717e-013;
createNode animCurveTL -n "amazonprincess_Ctrl_HeadEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 -235.53427124023443 301 393.83206176757795
		 340 379.09255981445318 380 393.8421325683592 381 -235.53427124023443 401 -235.53427124023443
		 405 475.98886108398432 425 1022.4032897949219 450 1337.7268981933594;
createNode animCurveTL -n "amazonprincess_Ctrl_HeadEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 1694.2031249999982 301 1038.3124999999945
		 340 1024.5732421875018 380 1038.3076171874945 381 1694.2031249999982 401 1694.2031249999982
		 405 727.64648437499818 425 -1759.8720703125018 450 -1057.9433593750018;
createNode animCurveTL -n "amazonprincess_Ctrl_HeadEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  300 136.96995544458963 301 417.79808044433599
		 340 -221.08277893066412 380 417.79853820800787 381 136.96995544454737 401 136.96995544454737
		 405 136.96997070277757 425 136.97001647959405 450 136.97001647973229;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftWristEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 3803.2265472412118 301 2397.7028656005864
		 320 3778.9360198974618 344 4583.9836273193368 380 2397.7028656005864 381 3803.2265472412118
		 400 3803.2236175537118 401 3803.2265472412118 415 4007.9255218505868 420 4007.9247894287118
		 425 4192.8420257568368 440 4192.8420257568368;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftWristEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -5358.58251953129 301 -6198.9248046875255
		 320 -5236.56884765629 344 -5010.4990234375482 380 -6198.9238281250255 381 -5358.58251953129
		 400 -4791.79882812504 401 -5358.58251953129 415 -5077.7158203125418 420 -3948.1328125000418
		 425 -4555.6938476562937 440 -1030.9365234375437;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftWristEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1134.490081787111 301 323.27078247070204
		 320 -1802.2628479003922 344 -1378.3800354003927 380 323.27090454101454 381 -1134.490081787111
		 400 1109.6850280761703 401 -1134.490081787111 415 -4073.6971740722674 420 -2704.3526916503924
		 425 5767.1397399902326 440 4239.6270446777326;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1.5902773407317593e-014 301 -10.84434465557592
		 320 20.382452514602321 344 28.817080671813368 380 -10.844346357186076 381 1.2722218725854067e-014
		 400 -0.47552194477118925 401 1.2722218725854067e-014 415 66.028606892779692 420 66.028604452716991
		 425 -31.203546049997907 440 -67.406358102859102;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 4.4527765540489235e-014 301 7.7711324482265614
		 320 -3.3571001649459067 344 -6.9354260418275322 380 7.7711326390963045 381 2.8624992133171654e-014
		 400 -14.694686925885835 401 2.8624992133171654e-014 415 -14.599995864904418 420 -14.599995099849666
		 425 -20.76652518061853 440 -46.743911887582698;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1.9083328088781107e-014 301 0.66852304714496347
		 320 0.44256268355943201 344 -0.76310115240563792 380 0.66852265372182551 381 3.1805546814635168e-014
		 400 -9.1800475591361632 401 3.1805546814635168e-014 415 -11.379000146519813 420 -11.379005692902622
		 425 10.201112133686415 440 18.160646535398044;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftForeArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -3.8842375422841392e-030 301 22.318874994790182
		 320 31.334266753805903 344 47.006076058220827 380 22.318872782453905 381 -3.1805546814635168e-015
		 400 82.301669132107079 401 0 415 57.276193131898403 420 57.276203535961599 425 49.354155423610791
		 440 52.24547890050124;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftForeArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 1.2722218725854067e-014 301 0.7841447481572682
		 320 1.8405967657810855e-005 344 -1.7937418801494398 380 0.78414402522996385 381 1.5902773407317584e-014
		 400 -3.4947274656288601 401 1.5902773407317584e-014 415 0.058314669074375207 420 0.058312514675530364
		 425 5.5089381236321007 440 4.8098892501045949;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftForeArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -3.4986101496098681e-014 301 46.376281944779791
		 320 56.250791427279886 344 65.98077807228043 380 46.376281802781953 381 -1.9083328088781101e-014
		 400 71.133223124546049 401 -2.5444437451708134e-014 415 67.724467310269972 420 67.724463385464929
		 425 61.822937306939224 440 63.455079715810847;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -40.206572032299469 320 -52.395211405158101
		 344 -62.847302987538107 380 -40.206555452042757 381 0 400 34.431301727280541 401 0
		 415 -62.720899703095235 420 -62.720889348261089 425 -56.875990820101933 440 -96.298109949946635;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -16.959949791640607 320 -8.6039450848017758
		 344 -11.848887723191492 380 -16.959950351331521 381 0 400 137.81042267209926 401 0
		 415 -11.807730789238432 420 -11.807729707870397 425 -9.952948127068721 440 -18.966018091234766;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftHand_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -14.007977616926379 320 -15.643075828740317
		 344 2.1576791171068699 380 -14.007983689208915 381 0 400 75.114569278601365 401 0
		 415 -17.517089128723342 420 -17.517092813340028 425 -16.525856824724915 440 -7.6123923971984855;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftWristEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -25.31290626764185 320 -5.3321464793799818
		 344 12.680244891745161 380 -25.312913305149657 381 0 400 -141.69495115105411 401 0
		 415 6.4535952018302307 420 19.960942531990352 425 -38.592772166005894 440 -77.616093103980006;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftWristEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -22.753696437862793 320 0.3840665962492173
		 344 8.2605098508463364 380 -22.753695425935103 381 0 400 7.2271575777098054 401 0
		 415 13.532611518337649 420 13.989816132149251 425 28.734822222659155 440 31.022962377837903;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftWristEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 11.627162205865975 320 2.5299077238148762
		 344 13.68965026931029 380 11.627176445814662 381 0 400 -67.222810451362761 401 0
		 415 -3.6002312501683176 420 -0.3730118373856402 425 35.19007565927776 440 10.132241374093883;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftElbowEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 39.438487709467289 320 56.933021308309733
		 344 79.306398919568494 380 39.438487498693377 381 0 400 86.227773021454496 401 0
		 415 64.866531994814849 420 69.28385172047696 425 90.814738530933312 440 116.36335785603551;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftElbowEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -11.482227667960931 320 0.46494547116596641
		 344 6.4920940690027535 380 -11.482228730365927 381 0 400 0.029511583165913551 401 0
		 415 12.825740678807094 420 13.344080454117806 425 2.461308908248288 440 7.6039097605556929;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftElbowEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 24.308201974284039 320 5.8666009292899579
		 344 12.564114127806587 380 24.308201979313857 381 0 400 64.269911593562853 401 0
		 415 -8.7729831653590651 420 -20.165172117619278 425 58.294565504793702 440 95.204033393745789;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftElbowEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1174.3493347167982 301 -807.71505737304778
		 320 -2126.162994384767 344 -2029.127838134767 380 -807.71493530273528 381 -1174.3493347167982
		 400 -1404.7879943847672 401 -1174.3493347167982 415 -3725.3426818847665 420 -1837.4647521972668
		 425 3385.189300537108 440 1491.7803649902326;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftElbowEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -2737.6757812500309 301 -3676.8974609375236
		 320 -2636.8642578125309 344 -2571.7255859375364 380 -3676.8974609375236 381 -2737.6757812500309
		 400 -3654.4482421875364 401 -2737.6757812500309 415 -2754.2529296875273 420 -1764.4814453125273
		 425 -3218.6503906250382 440 -1387.0722656250418;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftElbowEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 2893.4345550537114 301 2155.3821868896489
		 320 2865.1039886474614 344 3431.8691253662118 380 2155.3821868896489 381 2893.4345550537114
		 400 3516.3071136474618 401 2893.4345550537114 415 2531.9011077880864 420 2531.9011077880864
		 425 3705.9177093505868 440 4048.0388031005868;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftShoulderEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -0.70842239042108879 320 2.3031832761623701
		 344 5.0753401754492131 380 -0.70842296216197576 381 0 400 -0.42534934496750731 401 0
		 415 -11.378999973753002 420 -10.818594370009048 425 20.102653242644973 440 26.869239486419154;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftShoulderEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 14.10105782366522 320 -4.6818081369668523
		 344 -20.753154720465936 380 14.101057626741188 381 0 400 -17.809321791744416 401 0
		 415 -14.599995806968527 420 -20.390155322431674 425 -19.057162892155752 440 -39.707487660340654;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_LeftShoulderEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 0.57793833976838072 320 24.858443334917339
		 344 30.990592480647827 380 0.57793658488447963 381 0 400 15.278906947354878 401 0
		 415 66.028606266840711 420 77.632552521332556 425 -15.339961797251053 440 -54.144370797829588;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftShoulderEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1049.0263977050788 301 -721.08444213867256
		 320 -777.89230346679756 344 -441.82583618164136 380 -721.08444213867256 381 -1049.0263977050788
		 400 -483.46859741211011 401 -1049.0263977050788 415 -1049.0263977050788 420 930.56234741210869
		 425 2859.8164978027339 440 -92.213256835938239;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftShoulderEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -115.91210937501819 301 -825.91894531251637
		 320 -369.24511718751819 344 -918.49804687501819 380 -825.91894531251637 381 -115.91210937501819
		 400 -1633.6318359375182 401 -115.91210937501819 415 -2042.4960937500182 420 -1679.0869140625182
		 425 -1242.0947265625182 440 -1014.2001953125182;
createNode animCurveTL -n "amazonprincess_Ctrl_LeftShoulderEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 1634.0496673583987 301 1572.4362640380862
		 320 1634.0530853271487 344 1636.6747894287112 380 1572.4362640380862 381 1634.0496673583987
		 400 1634.0497894287112 401 1634.0496673583987 415 1634.0496673583987 420 1634.0499114990237
		 425 1634.0499114990237 440 1634.0502777099612;
createNode animCurveTL -n "amazonprincess_Ctrl_RightWristEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -3529.28419494629 301 -2523.1833648681645
		 320 -3438.071548461915 344 -2369.3916168212895 380 -2523.1838531494145 381 -3529.28419494629
		 400 -3529.288833618165 401 -3529.28419494629 415 -3047.862075805665 420 -3047.860610961915
		 425 -3286.26271057129 440 -3286.265396118165;
createNode animCurveTL -n "amazonprincess_Ctrl_RightWristEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -5358.5815429687136 301 -4382.4765624999745
		 320 -5147.0883789062145 344 -5528.4594726562254 380 -4382.4765624999745 381 -5358.5815429687136
		 400 -5375.7573242187136 401 -5358.5815429687136 415 -5059.3110351562191 420 -3806.6708984374691
		 425 -4788.2861328124663 440 -1453.5537109374654;
createNode animCurveTL -n "amazonprincess_Ctrl_RightWristEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1134.488189697264 301 -3790.0252990722643
		 320 -2501.1553039550768 344 -3275.3290100097647 380 -3790.0245666503893 381 -1134.488189697264
		 400 1309.145355224611 401 -1134.488189697264 415 -4617.7015686035138 420 -3229.9613342285143
		 425 6235.3311462402362 440 4457.4913024902362;
createNode animCurveTA -n "amazonprincess_Ctrl_RightArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -2.2263882770244624e-014 301 51.932101244571989
		 320 25.253108774682492 344 41.766661387718322 380 51.932101785776524 381 -2.5444437451708134e-014
		 400 -9.6968298812485738 401 -2.2263882770244617e-014 415 71.378729443200115 420 71.37873021431858
		 425 -40.286873237623666 440 -65.776451912710883;
createNode animCurveTA -n "amazonprincess_Ctrl_RightArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 2.2263882770244617e-014 301 8.8371457063894159
		 320 -3.3357092769304675 344 -8.7024393362301939 380 8.837146288432173 381 2.2263882770244617e-014
		 400 -12.351760850988271 401 2.2263882770244617e-014 415 -11.431341270546802 420 -11.431339495372121
		 425 -10.332414358123144 440 -31.83653363898814;
createNode animCurveTA -n "amazonprincess_Ctrl_RightArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1.2722218725854075e-014 301 7.6227538364233167
		 320 0.7468796459345044 344 -1.1408838383403448 380 7.6227552922920427 381 -1.2722218725854067e-014
		 400 -5.090402731194323 401 -1.2722218725854067e-014 415 -3.1022106757896108 420 -3.1022103880965459
		 425 4.4524767366547522 440 3.6783091405667618;
createNode animCurveTA -n "amazonprincess_Ctrl_RightForeArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 1.5902773407317581e-014 301 37.946920544494638
		 320 26.16183677197245 344 54.967072622399705 380 37.946921441393769 381 4.4527765540489235e-014
		 400 64.92684593093675 401 3.8166656177562201e-014 415 54.413758786716564 420 54.413770774677111
		 425 41.11714382146446 440 55.083368966391859;
createNode animCurveTA -n "amazonprincess_Ctrl_RightForeArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1.5902773407317578e-014 301 -1.8473308988665279e-005
		 320 -4.2918150457513444e-005 344 -3.8810768828331716 380 -1.0457205258444725e-005
		 381 -2.8624992133171654e-014 400 -3.9123182593184769 401 -2.8624992133171654e-014
		 415 -9.7453204175270227e-005 420 -0.00011396630097275957 425 3.6884523268630782 440 2.7988736179877867;
createNode animCurveTA -n "amazonprincess_Ctrl_RightForeArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1.9083328088781101e-014 301 60.394641421009936
		 320 51.759497111886851 344 69.405835830970503 380 60.394642422909548 381 -1.2722218725854067e-014
		 400 71.966598028827107 401 -1.2722218725854067e-014 415 66.865605153694986 420 66.865605421810088
		 425 58.57681550138858 440 65.006337174567705;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -53.367812683588006 320 -48.277870796581091
		 344 -67.96257600718495 380 -53.367831682700398 381 0 400 -110.31663950016586 401 0
		 415 -62.112675058080058 420 -62.112677598317937 425 -56.872134485301061 440 -88.462402160407152;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 18.840192872979763 320 7.4293162468621752
		 344 13.544955280079542 380 18.840198973960362 381 0 400 -33.784326141077571 401 0
		 415 11.610293469474302 420 11.610287796300266 425 9.9516733139060829 440 18.644992741006806;
createNode animCurveTA -n "amazonprincess_Ctrl_RightHand_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 17.096115687763437 320 14.744170920703482
		 344 29.414432524681928 380 17.096112544257867 381 0 400 100.06715336148811 401 0
		 415 17.422718897448256 420 17.42271654436907 425 16.525105709311298 440 11.651710164816427;
createNode animCurveTA -n "amazonprincess_Ctrl_RightWristEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -18.836865312631616 320 -4.0214951806599135
		 344 14.524107734316569 380 -18.836868307859422 381 0 400 144.07047215892274 401 0
		 415 -15.401945559541165 420 -28.518631043410494 425 49.073223006119406 440 86.90759753419681;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightWristEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 14.03550480891659 320 -0.10776401402934908
		 344 8.482866774489759 380 14.035492895167808 381 0 400 -25.95822058449491 401 0 415 -5.0671327125419721
		 420 -6.4803656543295709 425 -18.778080052661803 440 -22.521796659346116;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightWristEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -12.291486665868824 320 -1.077820955406664
		 344 -9.5499206207092673 380 -12.291505709465868 381 0 400 -40.036936517850798 401 0
		 415 -6.8163979103545058 420 -5.4910133661825391 425 27.252491464640332 440 16.530798544798035;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightElbowEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 59.531617662924887 320 52.061759024837883
		 344 62.432637351916334 380 59.531618337626078 381 0 400 85.08646029724207 401 0 415 64.534770148694548
		 420 68.710462158431497 425 76.973268515577757 440 98.734342663887105;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightElbowEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -7.4403990894082561 320 -0.095346988158211368
		 344 -7.8621018885544354 380 -7.4403926857308189 381 0 400 -1.5315304343392562 401 0
		 415 3.0946044892386348 420 4.2850444564452346 425 -0.34144082107799345 440 3.8198333297450877;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightElbowEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -19.305901777480823 320 -4.1538970754925346
		 344 1.6956589343878981 380 -19.30590252674094 381 0 400 55.08443873447267 401 0 415 -17.478216619063904
		 420 -29.602084155534175 425 60.294426756264414 440 100.64569163781734;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_RightElbowEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1174.348175048827 301 -2903.7484436035147
		 320 -2339.9313049316397 344 -3380.3573303222647 380 -2903.7477111816397 381 -1174.348175048827
		 400 -982.77383422851426 401 -1174.348175048827 415 -3830.5348205566397 420 -1907.6512756347647
		 425 3808.6363220214862 440 1739.0076599121107;
createNode animCurveTL -n "amazonprincess_Ctrl_RightElbowEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -2737.6757812499727 301 -1811.85156249998
		 320 -2531.5556640624745 344 -2808.7558593749818 380 -1811.85156249998 381 -2737.6757812499727
		 400 -3851.8281249999673 401 -2737.6757812499727 415 -2612.21386718748 420 -1602.26660156248
		 425 -3484.1103515624691 440 -1997.3193359374654;
createNode animCurveTL -n "amazonprincess_Ctrl_RightElbowEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -2619.4929351806645 301 -1971.0368804931645
		 320 -2526.2314605712895 344 -1830.2744293212895 380 -1971.0368804931645 381 -2619.4929351806645
		 400 -3178.27052307129 401 -2619.4929351806645 415 -2003.5637359619145 420 -2003.5637359619145
		 425 -2956.516860961915 440 -3398.61720275879;
createNode animCurveTA -n "amazonprincess_Ctrl_RightShoulderEffector_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 6.0600995084757532 320 2.4880553030592374
		 344 1.7389617843851699 380 6.0601004853201301 381 0 400 3.9382199439666459 401 0
		 415 -3.1022108421514289 420 -3.1189845385318304 425 13.535245529477319 440 11.277776288885853;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightShoulderEffector_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 -3.3022843396079749 320 -4.813334786954985
		 344 -0.97214362199301751 380 -3.3022834713266382 381 0 400 -14.106251056478589 401 0
		 415 -11.431341403404161 420 -17.246062061878227 425 -7.327829471751933 440 -25.124718709883116;
	setAttr ".roti" 5;
createNode animCurveTA -n "amazonprincess_Ctrl_RightShoulderEffector_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 0 301 57.202090665797115 320 29.7358041987486
		 344 54.482691712069681 380 57.202089315033525 381 0 400 6.4425767188959613 401 0
		 415 71.378730655127356 420 83.155529135888301 425 -22.440858379767121 440 -50.1670496987185;
	setAttr ".roti" 5;
createNode animCurveTL -n "amazonprincess_Ctrl_RightShoulderEffector_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1049.0260314941399 301 -389.93276977539
		 320 -777.89120483398369 344 -945.55593872070256 380 -389.93276977539 381 -1049.0260314941399
		 400 -483.46871948242125 401 -1049.0260314941399 415 -1049.0260314941399 420 930.56234741211006
		 425 2859.8164978027348 440 -92.213256835936875;
createNode animCurveTL -n "amazonprincess_Ctrl_RightShoulderEffector_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -115.91308593748545 301 -466.96386718748545
		 320 -369.24316406248545 344 -1307.3378906249873 380 -466.96386718748545 381 -115.91308593748545
		 400 -1633.6337890624854 401 -115.91308593748545 415 -2042.4970703124854 420 -1679.0869140624854
		 425 -1242.0966796874854 440 -1014.2011718749854;
createNode animCurveTL -n "amazonprincess_Ctrl_RightShoulderEffector_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  300 -1360.1093902587893 301 -1381.6279449462893
		 320 -1360.1095123291018 344 -1289.0854644775393 380 -1381.6279449462893 381 -1360.1093902587893
		 400 -1360.1092681884768 401 -1360.1093902587893 415 -1360.1093902587893 420 -1360.1096343994143
		 425 -1360.1096343994143 440 -1360.1102447509768;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert3";
createNode shadingEngine -n "pCube1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
select -ne :time1;
	setAttr ".o" 402;
	setAttr ".unw" 402;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "metarig.s" "hips.is";
connectAttr "HIKState2SK1.HipsSx" "hips.sx";
connectAttr "HIKState2SK1.HipsSy" "hips.sy";
connectAttr "HIKState2SK1.HipsSz" "hips.sz";
connectAttr "HIKState2SK1.HipsTx" "hips.tx";
connectAttr "HIKState2SK1.HipsTy" "hips.ty";
connectAttr "HIKState2SK1.HipsTz" "hips.tz";
connectAttr "HIKState2SK1.HipsRx" "hips.rx";
connectAttr "HIKState2SK1.HipsRy" "hips.ry";
connectAttr "HIKState2SK1.HipsRz" "hips.rz";
connectAttr "hips.s" "spine.is";
connectAttr "HIKState2SK1.SpineSx" "spine.sx";
connectAttr "HIKState2SK1.SpineSy" "spine.sy";
connectAttr "HIKState2SK1.SpineSz" "spine.sz";
connectAttr "HIKState2SK1.SpineTx" "spine.tx";
connectAttr "HIKState2SK1.SpineTy" "spine.ty";
connectAttr "HIKState2SK1.SpineTz" "spine.tz";
connectAttr "HIKState2SK1.SpineRx" "spine.rx";
connectAttr "HIKState2SK1.SpineRy" "spine.ry";
connectAttr "HIKState2SK1.SpineRz" "spine.rz";
connectAttr "spine.s" "chest.is";
connectAttr "HIKState2SK1.Spine1Sx" "chest.sx";
connectAttr "HIKState2SK1.Spine1Sy" "chest.sy";
connectAttr "HIKState2SK1.Spine1Sz" "chest.sz";
connectAttr "HIKState2SK1.Spine1Tx" "chest.tx";
connectAttr "HIKState2SK1.Spine1Ty" "chest.ty";
connectAttr "HIKState2SK1.Spine1Tz" "chest.tz";
connectAttr "HIKState2SK1.Spine1Rx" "chest.rx";
connectAttr "HIKState2SK1.Spine1Ry" "chest.ry";
connectAttr "HIKState2SK1.Spine1Rz" "chest.rz";
connectAttr "chest.s" "neck.is";
connectAttr "HIKState2SK1.NeckSx" "neck.sx";
connectAttr "HIKState2SK1.NeckSy" "neck.sy";
connectAttr "HIKState2SK1.NeckSz" "neck.sz";
connectAttr "HIKState2SK1.NeckTx" "neck.tx";
connectAttr "HIKState2SK1.NeckTy" "neck.ty";
connectAttr "HIKState2SK1.NeckTz" "neck.tz";
connectAttr "HIKState2SK1.NeckRx" "neck.rx";
connectAttr "HIKState2SK1.NeckRy" "neck.ry";
connectAttr "HIKState2SK1.NeckRz" "neck.rz";
connectAttr "neck.s" "head.is";
connectAttr "HIKState2SK1.HeadTx" "head.tx";
connectAttr "HIKState2SK1.HeadTy" "head.ty";
connectAttr "HIKState2SK1.HeadTz" "head.tz";
connectAttr "HIKState2SK1.HeadRx" "head.rx";
connectAttr "HIKState2SK1.HeadRy" "head.ry";
connectAttr "HIKState2SK1.HeadRz" "head.rz";
connectAttr "HIKState2SK1.HeadSx" "head.sx";
connectAttr "HIKState2SK1.HeadSy" "head.sy";
connectAttr "HIKState2SK1.HeadSz" "head.sz";
connectAttr "chest.s" "shoulderFBXASC046L.is";
connectAttr "HIKState2SK1.LeftShoulderExtraSx" "shoulderFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftShoulderExtraSy" "shoulderFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftShoulderExtraSz" "shoulderFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftShoulderExtraTx" "shoulderFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftShoulderExtraTy" "shoulderFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftShoulderExtraTz" "shoulderFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftShoulderExtraRx" "shoulderFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftShoulderExtraRy" "shoulderFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftShoulderExtraRz" "shoulderFBXASC046L.rz";
connectAttr "shoulderFBXASC046L.s" "upper_armFBXASC046L.is";
connectAttr "HIKState2SK1.LeftArmSx" "upper_armFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftArmSy" "upper_armFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftArmSz" "upper_armFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftArmTx" "upper_armFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftArmTy" "upper_armFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftArmTz" "upper_armFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftArmRx" "upper_armFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftArmRy" "upper_armFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftArmRz" "upper_armFBXASC046L.rz";
connectAttr "upper_armFBXASC046L.s" "forearmFBXASC046L.is";
connectAttr "HIKState2SK1.LeftForeArmSx" "forearmFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftForeArmSy" "forearmFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftForeArmSz" "forearmFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftForeArmTx" "forearmFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftForeArmTy" "forearmFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftForeArmTz" "forearmFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftForeArmRx" "forearmFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftForeArmRy" "forearmFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftForeArmRz" "forearmFBXASC046L.rz";
connectAttr "forearmFBXASC046L.s" "handFBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandSx" "handFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandSy" "handFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandSz" "handFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftHandTx" "handFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandTy" "handFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandTz" "handFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandRx" "handFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandRy" "handFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandRz" "handFBXASC046L.rz";
connectAttr "handFBXASC046L.s" "thumbFBXASC04601FBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandThumb1Sx" "thumbFBXASC04601FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandThumb1Sy" "thumbFBXASC04601FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandThumb1Sz" "thumbFBXASC04601FBXASC046L.sz";
connectAttr "HIKState2SK1.LeftHandThumb1Tx" "thumbFBXASC04601FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandThumb1Ty" "thumbFBXASC04601FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandThumb1Tz" "thumbFBXASC04601FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandThumb1Rx" "thumbFBXASC04601FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandThumb1Ry" "thumbFBXASC04601FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandThumb1Rz" "thumbFBXASC04601FBXASC046L.rz";
connectAttr "thumbFBXASC04601FBXASC046L.s" "thumbFBXASC04602FBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandThumb2Sx" "thumbFBXASC04602FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandThumb2Sy" "thumbFBXASC04602FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandThumb2Sz" "thumbFBXASC04602FBXASC046L.sz";
connectAttr "HIKState2SK1.LeftHandThumb2Tx" "thumbFBXASC04602FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandThumb2Ty" "thumbFBXASC04602FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandThumb2Tz" "thumbFBXASC04602FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandThumb2Rx" "thumbFBXASC04602FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandThumb2Ry" "thumbFBXASC04602FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandThumb2Rz" "thumbFBXASC04602FBXASC046L.rz";
connectAttr "thumbFBXASC04602FBXASC046L.s" "thumbFBXASC04603FBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandThumb3Tx" "thumbFBXASC04603FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandThumb3Ty" "thumbFBXASC04603FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandThumb3Tz" "thumbFBXASC04603FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandThumb3Rx" "thumbFBXASC04603FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandThumb3Ry" "thumbFBXASC04603FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandThumb3Rz" "thumbFBXASC04603FBXASC046L.rz";
connectAttr "HIKState2SK1.LeftHandThumb3Sx" "thumbFBXASC04603FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandThumb3Sy" "thumbFBXASC04603FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandThumb3Sz" "thumbFBXASC04603FBXASC046L.sz";
connectAttr "handFBXASC046L.s" "palmFBXASC04602FBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandIndex1Sx" "palmFBXASC04602FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandIndex1Sy" "palmFBXASC04602FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandIndex1Sz" "palmFBXASC04602FBXASC046L.sz";
connectAttr "HIKState2SK1.LeftHandIndex1Tx" "palmFBXASC04602FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandIndex1Ty" "palmFBXASC04602FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandIndex1Tz" "palmFBXASC04602FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandIndex1Rx" "palmFBXASC04602FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandIndex1Ry" "palmFBXASC04602FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandIndex1Rz" "palmFBXASC04602FBXASC046L.rz";
connectAttr "palmFBXASC04602FBXASC046L.s" "f_middleFBXASC04601FBXASC046L.is";
connectAttr "HIKState2SK1.LeftHandIndex2Sx" "f_middleFBXASC04601FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandIndex2Sy" "f_middleFBXASC04601FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandIndex2Sz" "f_middleFBXASC04601FBXASC046L.sz";
connectAttr "HIKState2SK1.LeftHandIndex2Tx" "f_middleFBXASC04601FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandIndex2Ty" "f_middleFBXASC04601FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandIndex2Tz" "f_middleFBXASC04601FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandIndex2Rx" "f_middleFBXASC04601FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandIndex2Ry" "f_middleFBXASC04601FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandIndex2Rz" "f_middleFBXASC04601FBXASC046L.rz";
connectAttr "f_middleFBXASC04601FBXASC046L.s" "f_middleFBXASC04602FBXASC046L.is"
		;
connectAttr "HIKState2SK1.LeftHandIndex3Tx" "f_middleFBXASC04602FBXASC046L.tx";
connectAttr "HIKState2SK1.LeftHandIndex3Ty" "f_middleFBXASC04602FBXASC046L.ty";
connectAttr "HIKState2SK1.LeftHandIndex3Tz" "f_middleFBXASC04602FBXASC046L.tz";
connectAttr "HIKState2SK1.LeftHandIndex3Rx" "f_middleFBXASC04602FBXASC046L.rx";
connectAttr "HIKState2SK1.LeftHandIndex3Ry" "f_middleFBXASC04602FBXASC046L.ry";
connectAttr "HIKState2SK1.LeftHandIndex3Rz" "f_middleFBXASC04602FBXASC046L.rz";
connectAttr "HIKState2SK1.LeftHandIndex3Sx" "f_middleFBXASC04602FBXASC046L.sx";
connectAttr "HIKState2SK1.LeftHandIndex3Sy" "f_middleFBXASC04602FBXASC046L.sy";
connectAttr "HIKState2SK1.LeftHandIndex3Sz" "f_middleFBXASC04602FBXASC046L.sz";
connectAttr "chest.s" "shoulderFBXASC046R.is";
connectAttr "HIKState2SK1.RightShoulderExtraSx" "shoulderFBXASC046R.sx";
connectAttr "HIKState2SK1.RightShoulderExtraSy" "shoulderFBXASC046R.sy";
connectAttr "HIKState2SK1.RightShoulderExtraSz" "shoulderFBXASC046R.sz";
connectAttr "HIKState2SK1.RightShoulderExtraTx" "shoulderFBXASC046R.tx";
connectAttr "HIKState2SK1.RightShoulderExtraTy" "shoulderFBXASC046R.ty";
connectAttr "HIKState2SK1.RightShoulderExtraTz" "shoulderFBXASC046R.tz";
connectAttr "HIKState2SK1.RightShoulderExtraRx" "shoulderFBXASC046R.rx";
connectAttr "HIKState2SK1.RightShoulderExtraRy" "shoulderFBXASC046R.ry";
connectAttr "HIKState2SK1.RightShoulderExtraRz" "shoulderFBXASC046R.rz";
connectAttr "shoulderFBXASC046R.s" "upper_armFBXASC046R.is";
connectAttr "HIKState2SK1.RightArmSx" "upper_armFBXASC046R.sx";
connectAttr "HIKState2SK1.RightArmSy" "upper_armFBXASC046R.sy";
connectAttr "HIKState2SK1.RightArmSz" "upper_armFBXASC046R.sz";
connectAttr "HIKState2SK1.RightArmTx" "upper_armFBXASC046R.tx";
connectAttr "HIKState2SK1.RightArmTy" "upper_armFBXASC046R.ty";
connectAttr "HIKState2SK1.RightArmTz" "upper_armFBXASC046R.tz";
connectAttr "HIKState2SK1.RightArmRx" "upper_armFBXASC046R.rx";
connectAttr "HIKState2SK1.RightArmRy" "upper_armFBXASC046R.ry";
connectAttr "HIKState2SK1.RightArmRz" "upper_armFBXASC046R.rz";
connectAttr "upper_armFBXASC046R.s" "forearmFBXASC046R.is";
connectAttr "HIKState2SK1.RightForeArmSx" "forearmFBXASC046R.sx";
connectAttr "HIKState2SK1.RightForeArmSy" "forearmFBXASC046R.sy";
connectAttr "HIKState2SK1.RightForeArmSz" "forearmFBXASC046R.sz";
connectAttr "HIKState2SK1.RightForeArmTx" "forearmFBXASC046R.tx";
connectAttr "HIKState2SK1.RightForeArmTy" "forearmFBXASC046R.ty";
connectAttr "HIKState2SK1.RightForeArmTz" "forearmFBXASC046R.tz";
connectAttr "HIKState2SK1.RightForeArmRx" "forearmFBXASC046R.rx";
connectAttr "HIKState2SK1.RightForeArmRy" "forearmFBXASC046R.ry";
connectAttr "HIKState2SK1.RightForeArmRz" "forearmFBXASC046R.rz";
connectAttr "forearmFBXASC046R.s" "handFBXASC046R.is";
connectAttr "HIKState2SK1.RightHandSx" "handFBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandSy" "handFBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandSz" "handFBXASC046R.sz";
connectAttr "HIKState2SK1.RightHandTx" "handFBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandTy" "handFBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandTz" "handFBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandRx" "handFBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandRy" "handFBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandRz" "handFBXASC046R.rz";
connectAttr "handFBXASC046R.s" "thumbFBXASC04601FBXASC046R.is";
connectAttr "HIKState2SK1.RightHandThumb1Sx" "thumbFBXASC04601FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandThumb1Sy" "thumbFBXASC04601FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandThumb1Sz" "thumbFBXASC04601FBXASC046R.sz";
connectAttr "HIKState2SK1.RightHandThumb1Tx" "thumbFBXASC04601FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandThumb1Ty" "thumbFBXASC04601FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandThumb1Tz" "thumbFBXASC04601FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandThumb1Rx" "thumbFBXASC04601FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandThumb1Ry" "thumbFBXASC04601FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandThumb1Rz" "thumbFBXASC04601FBXASC046R.rz";
connectAttr "thumbFBXASC04601FBXASC046R.s" "thumbFBXASC04602FBXASC046R.is";
connectAttr "HIKState2SK1.RightHandThumb2Sx" "thumbFBXASC04602FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandThumb2Sy" "thumbFBXASC04602FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandThumb2Sz" "thumbFBXASC04602FBXASC046R.sz";
connectAttr "HIKState2SK1.RightHandThumb2Tx" "thumbFBXASC04602FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandThumb2Ty" "thumbFBXASC04602FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandThumb2Tz" "thumbFBXASC04602FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandThumb2Rx" "thumbFBXASC04602FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandThumb2Ry" "thumbFBXASC04602FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandThumb2Rz" "thumbFBXASC04602FBXASC046R.rz";
connectAttr "thumbFBXASC04602FBXASC046R.s" "thumbFBXASC04603FBXASC046R.is";
connectAttr "HIKState2SK1.RightHandThumb3Tx" "thumbFBXASC04603FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandThumb3Ty" "thumbFBXASC04603FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandThumb3Tz" "thumbFBXASC04603FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandThumb3Rx" "thumbFBXASC04603FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandThumb3Ry" "thumbFBXASC04603FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandThumb3Rz" "thumbFBXASC04603FBXASC046R.rz";
connectAttr "HIKState2SK1.RightHandThumb3Sx" "thumbFBXASC04603FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandThumb3Sy" "thumbFBXASC04603FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandThumb3Sz" "thumbFBXASC04603FBXASC046R.sz";
connectAttr "handFBXASC046R.s" "palmFBXASC04602FBXASC046R.is";
connectAttr "HIKState2SK1.RightHandIndex1Sx" "palmFBXASC04602FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandIndex1Sy" "palmFBXASC04602FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandIndex1Sz" "palmFBXASC04602FBXASC046R.sz";
connectAttr "HIKState2SK1.RightHandIndex1Tx" "palmFBXASC04602FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandIndex1Ty" "palmFBXASC04602FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandIndex1Tz" "palmFBXASC04602FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandIndex1Rx" "palmFBXASC04602FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandIndex1Ry" "palmFBXASC04602FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandIndex1Rz" "palmFBXASC04602FBXASC046R.rz";
connectAttr "palmFBXASC04602FBXASC046R.s" "f_middleFBXASC04601FBXASC046R.is";
connectAttr "HIKState2SK1.RightHandIndex2Sx" "f_middleFBXASC04601FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandIndex2Sy" "f_middleFBXASC04601FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandIndex2Sz" "f_middleFBXASC04601FBXASC046R.sz";
connectAttr "HIKState2SK1.RightHandIndex2Tx" "f_middleFBXASC04601FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandIndex2Ty" "f_middleFBXASC04601FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandIndex2Tz" "f_middleFBXASC04601FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandIndex2Rx" "f_middleFBXASC04601FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandIndex2Ry" "f_middleFBXASC04601FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandIndex2Rz" "f_middleFBXASC04601FBXASC046R.rz";
connectAttr "f_middleFBXASC04601FBXASC046R.s" "f_middleFBXASC04602FBXASC046R.is"
		;
connectAttr "HIKState2SK1.RightHandIndex3Tx" "f_middleFBXASC04602FBXASC046R.tx";
connectAttr "HIKState2SK1.RightHandIndex3Ty" "f_middleFBXASC04602FBXASC046R.ty";
connectAttr "HIKState2SK1.RightHandIndex3Tz" "f_middleFBXASC04602FBXASC046R.tz";
connectAttr "HIKState2SK1.RightHandIndex3Rx" "f_middleFBXASC04602FBXASC046R.rx";
connectAttr "HIKState2SK1.RightHandIndex3Ry" "f_middleFBXASC04602FBXASC046R.ry";
connectAttr "HIKState2SK1.RightHandIndex3Rz" "f_middleFBXASC04602FBXASC046R.rz";
connectAttr "HIKState2SK1.RightHandIndex3Sx" "f_middleFBXASC04602FBXASC046R.sx";
connectAttr "HIKState2SK1.RightHandIndex3Sy" "f_middleFBXASC04602FBXASC046R.sy";
connectAttr "HIKState2SK1.RightHandIndex3Sz" "f_middleFBXASC04602FBXASC046R.sz";
connectAttr "hips.s" "thighFBXASC046L.is";
connectAttr "HIKState2SK1.LeftUpLegSx" "thighFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftUpLegSy" "thighFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftUpLegSz" "thighFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftUpLegTx" "thighFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftUpLegTy" "thighFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftUpLegTz" "thighFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftUpLegRx" "thighFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftUpLegRy" "thighFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftUpLegRz" "thighFBXASC046L.rz";
connectAttr "thighFBXASC046L.s" "shinFBXASC046L.is";
connectAttr "HIKState2SK1.LeftLegSx" "shinFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftLegSy" "shinFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftLegSz" "shinFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftLegTx" "shinFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftLegTy" "shinFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftLegTz" "shinFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftLegRx" "shinFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftLegRy" "shinFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftLegRz" "shinFBXASC046L.rz";
connectAttr "shinFBXASC046L.s" "footFBXASC046L.is";
connectAttr "HIKState2SK1.LeftFootSx" "footFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftFootSy" "footFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftFootSz" "footFBXASC046L.sz";
connectAttr "HIKState2SK1.LeftFootTx" "footFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftFootTy" "footFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftFootTz" "footFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftFootRx" "footFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftFootRy" "footFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftFootRz" "footFBXASC046L.rz";
connectAttr "footFBXASC046L.s" "toeFBXASC046L.is";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Tx" "toeFBXASC046L.tx";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Ty" "toeFBXASC046L.ty";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Tz" "toeFBXASC046L.tz";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Rx" "toeFBXASC046L.rx";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Ry" "toeFBXASC046L.ry";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Rz" "toeFBXASC046L.rz";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Sx" "toeFBXASC046L.sx";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Sy" "toeFBXASC046L.sy";
connectAttr "HIKState2SK1.LeftFootExtraFinger1Sz" "toeFBXASC046L.sz";
connectAttr "hips.s" "thighFBXASC046R.is";
connectAttr "HIKState2SK1.RightUpLegSx" "thighFBXASC046R.sx";
connectAttr "HIKState2SK1.RightUpLegSy" "thighFBXASC046R.sy";
connectAttr "HIKState2SK1.RightUpLegSz" "thighFBXASC046R.sz";
connectAttr "HIKState2SK1.RightUpLegTx" "thighFBXASC046R.tx";
connectAttr "HIKState2SK1.RightUpLegTy" "thighFBXASC046R.ty";
connectAttr "HIKState2SK1.RightUpLegTz" "thighFBXASC046R.tz";
connectAttr "HIKState2SK1.RightUpLegRx" "thighFBXASC046R.rx";
connectAttr "HIKState2SK1.RightUpLegRy" "thighFBXASC046R.ry";
connectAttr "HIKState2SK1.RightUpLegRz" "thighFBXASC046R.rz";
connectAttr "thighFBXASC046R.s" "shinFBXASC046R.is";
connectAttr "HIKState2SK1.RightLegSx" "shinFBXASC046R.sx";
connectAttr "HIKState2SK1.RightLegSy" "shinFBXASC046R.sy";
connectAttr "HIKState2SK1.RightLegSz" "shinFBXASC046R.sz";
connectAttr "HIKState2SK1.RightLegTx" "shinFBXASC046R.tx";
connectAttr "HIKState2SK1.RightLegTy" "shinFBXASC046R.ty";
connectAttr "HIKState2SK1.RightLegTz" "shinFBXASC046R.tz";
connectAttr "HIKState2SK1.RightLegRx" "shinFBXASC046R.rx";
connectAttr "HIKState2SK1.RightLegRy" "shinFBXASC046R.ry";
connectAttr "HIKState2SK1.RightLegRz" "shinFBXASC046R.rz";
connectAttr "shinFBXASC046R.s" "footFBXASC046R.is";
connectAttr "HIKState2SK1.RightFootSx" "footFBXASC046R.sx";
connectAttr "HIKState2SK1.RightFootSy" "footFBXASC046R.sy";
connectAttr "HIKState2SK1.RightFootSz" "footFBXASC046R.sz";
connectAttr "HIKState2SK1.RightFootTx" "footFBXASC046R.tx";
connectAttr "HIKState2SK1.RightFootTy" "footFBXASC046R.ty";
connectAttr "HIKState2SK1.RightFootTz" "footFBXASC046R.tz";
connectAttr "HIKState2SK1.RightFootRx" "footFBXASC046R.rx";
connectAttr "HIKState2SK1.RightFootRy" "footFBXASC046R.ry";
connectAttr "HIKState2SK1.RightFootRz" "footFBXASC046R.rz";
connectAttr "footFBXASC046R.s" "toeFBXASC046R.is";
connectAttr "HIKState2SK1.RightFootExtraFinger1Tx" "toeFBXASC046R.tx";
connectAttr "HIKState2SK1.RightFootExtraFinger1Ty" "toeFBXASC046R.ty";
connectAttr "HIKState2SK1.RightFootExtraFinger1Tz" "toeFBXASC046R.tz";
connectAttr "HIKState2SK1.RightFootExtraFinger1Rx" "toeFBXASC046R.rx";
connectAttr "HIKState2SK1.RightFootExtraFinger1Ry" "toeFBXASC046R.ry";
connectAttr "HIKState2SK1.RightFootExtraFinger1Rz" "toeFBXASC046R.rz";
connectAttr "HIKState2SK1.RightFootExtraFinger1Sx" "toeFBXASC046R.sx";
connectAttr "HIKState2SK1.RightFootExtraFinger1Sy" "toeFBXASC046R.sy";
connectAttr "HIKState2SK1.RightFootExtraFinger1Sz" "toeFBXASC046R.sz";
connectAttr "skinCluster1.og[0]" "AmazonShape.i";
connectAttr "skinCluster1GroupId.id" "AmazonShape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "AmazonShape.iog.og[2].gco";
connectAttr "groupId2.id" "AmazonShape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "AmazonShape.iog.og[3].gco";
connectAttr "tweak1.vl[0].vt[0]" "AmazonShape.twl";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr ":sideShape.msg" "imagePlaneShape2.ltc";
connectAttr ":sideShape.msg" "imagePlaneShape3.ltc";
connectAttr ":sideShape.msg" "imagePlaneShape4.ltc";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_HipsEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_rotateZ.o" "amazonprincess_Ctrl_HipsEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_rotateY.o" "amazonprincess_Ctrl_HipsEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_rotateX.o" "amazonprincess_Ctrl_HipsEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_translateZ.o" "amazonprincess_Ctrl_HipsEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_translateY.o" "amazonprincess_Ctrl_HipsEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector_translateX.o" "amazonprincess_Ctrl_HipsEffector.tx"
		;
connectAttr "HIKState2Effector1.HipsEffectorGXM[0]" "amazonprincess_Ctrl_HipsEffector.agx"
		;
connectAttr "HIKState2Effector2.HipsEffectorGXM[0]" "amazonprincess_Ctrl_HipsEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftAnkleEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_rotateZ.o" "amazonprincess_Ctrl_LeftAnkleEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_rotateY.o" "amazonprincess_Ctrl_LeftAnkleEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_rotateX.o" "amazonprincess_Ctrl_LeftAnkleEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_translateZ.o" "amazonprincess_Ctrl_LeftAnkleEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_translateY.o" "amazonprincess_Ctrl_LeftAnkleEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector_translateX.o" "amazonprincess_Ctrl_LeftAnkleEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftAnkleEffectorGXM[0]" "amazonprincess_Ctrl_LeftAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftAnkleEffectorGXM[0]" "amazonprincess_Ctrl_LeftAnkleEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightAnkleEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_rotateZ.o" "amazonprincess_Ctrl_RightAnkleEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_rotateY.o" "amazonprincess_Ctrl_RightAnkleEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_rotateX.o" "amazonprincess_Ctrl_RightAnkleEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_translateZ.o" "amazonprincess_Ctrl_RightAnkleEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_translateY.o" "amazonprincess_Ctrl_RightAnkleEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector_translateX.o" "amazonprincess_Ctrl_RightAnkleEffector.tx"
		;
connectAttr "HIKState2Effector1.RightAnkleEffectorGXM[0]" "amazonprincess_Ctrl_RightAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightAnkleEffectorGXM[0]" "amazonprincess_Ctrl_RightAnkleEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftWristEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_rotateZ.o" "amazonprincess_Ctrl_LeftWristEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_rotateY.o" "amazonprincess_Ctrl_LeftWristEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_rotateX.o" "amazonprincess_Ctrl_LeftWristEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_translateZ.o" "amazonprincess_Ctrl_LeftWristEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_translateY.o" "amazonprincess_Ctrl_LeftWristEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector_translateX.o" "amazonprincess_Ctrl_LeftWristEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftWristEffectorGXM[0]" "amazonprincess_Ctrl_LeftWristEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftWristEffectorGXM[0]" "amazonprincess_Ctrl_LeftWristEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightWristEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_rotateZ.o" "amazonprincess_Ctrl_RightWristEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_rotateY.o" "amazonprincess_Ctrl_RightWristEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_rotateX.o" "amazonprincess_Ctrl_RightWristEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_translateZ.o" "amazonprincess_Ctrl_RightWristEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_translateY.o" "amazonprincess_Ctrl_RightWristEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector_translateX.o" "amazonprincess_Ctrl_RightWristEffector.tx"
		;
connectAttr "HIKState2Effector1.RightWristEffectorGXM[0]" "amazonprincess_Ctrl_RightWristEffector.agx"
		;
connectAttr "HIKState2Effector2.RightWristEffectorGXM[0]" "amazonprincess_Ctrl_RightWristEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftKneeEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_rotateZ.o" "amazonprincess_Ctrl_LeftKneeEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_rotateY.o" "amazonprincess_Ctrl_LeftKneeEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_rotateX.o" "amazonprincess_Ctrl_LeftKneeEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_translateZ.o" "amazonprincess_Ctrl_LeftKneeEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_translateY.o" "amazonprincess_Ctrl_LeftKneeEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector_translateX.o" "amazonprincess_Ctrl_LeftKneeEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftKneeEffectorGXM[0]" "amazonprincess_Ctrl_LeftKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftKneeEffectorGXM[0]" "amazonprincess_Ctrl_LeftKneeEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightKneeEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_rotateZ.o" "amazonprincess_Ctrl_RightKneeEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_rotateY.o" "amazonprincess_Ctrl_RightKneeEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_rotateX.o" "amazonprincess_Ctrl_RightKneeEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_translateZ.o" "amazonprincess_Ctrl_RightKneeEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_translateY.o" "amazonprincess_Ctrl_RightKneeEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector_translateX.o" "amazonprincess_Ctrl_RightKneeEffector.tx"
		;
connectAttr "HIKState2Effector1.RightKneeEffectorGXM[0]" "amazonprincess_Ctrl_RightKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.RightKneeEffectorGXM[0]" "amazonprincess_Ctrl_RightKneeEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftElbowEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_rotateZ.o" "amazonprincess_Ctrl_LeftElbowEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_rotateY.o" "amazonprincess_Ctrl_LeftElbowEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_rotateX.o" "amazonprincess_Ctrl_LeftElbowEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_translateZ.o" "amazonprincess_Ctrl_LeftElbowEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_translateY.o" "amazonprincess_Ctrl_LeftElbowEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector_translateX.o" "amazonprincess_Ctrl_LeftElbowEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftElbowEffectorGXM[0]" "amazonprincess_Ctrl_LeftElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftElbowEffectorGXM[0]" "amazonprincess_Ctrl_LeftElbowEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightElbowEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_rotateZ.o" "amazonprincess_Ctrl_RightElbowEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_rotateY.o" "amazonprincess_Ctrl_RightElbowEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_rotateX.o" "amazonprincess_Ctrl_RightElbowEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_translateZ.o" "amazonprincess_Ctrl_RightElbowEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_translateY.o" "amazonprincess_Ctrl_RightElbowEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector_translateX.o" "amazonprincess_Ctrl_RightElbowEffector.tx"
		;
connectAttr "HIKState2Effector1.RightElbowEffectorGXM[0]" "amazonprincess_Ctrl_RightElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.RightElbowEffectorGXM[0]" "amazonprincess_Ctrl_RightElbowEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_ChestOriginEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_rotateZ.o" "amazonprincess_Ctrl_ChestOriginEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_rotateY.o" "amazonprincess_Ctrl_ChestOriginEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_rotateX.o" "amazonprincess_Ctrl_ChestOriginEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_translateZ.o" "amazonprincess_Ctrl_ChestOriginEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_translateY.o" "amazonprincess_Ctrl_ChestOriginEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector_translateX.o" "amazonprincess_Ctrl_ChestOriginEffector.tx"
		;
connectAttr "HIKState2Effector1.ChestOriginEffectorGXM[0]" "amazonprincess_Ctrl_ChestOriginEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestOriginEffectorGXM[0]" "amazonprincess_Ctrl_ChestOriginEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_ChestEndEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_rotateZ.o" "amazonprincess_Ctrl_ChestEndEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_rotateY.o" "amazonprincess_Ctrl_ChestEndEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_rotateX.o" "amazonprincess_Ctrl_ChestEndEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_translateZ.o" "amazonprincess_Ctrl_ChestEndEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_translateY.o" "amazonprincess_Ctrl_ChestEndEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector_translateX.o" "amazonprincess_Ctrl_ChestEndEffector.tx"
		;
connectAttr "HIKState2Effector1.ChestEndEffectorGXM[0]" "amazonprincess_Ctrl_ChestEndEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestEndEffectorGXM[0]" "amazonprincess_Ctrl_ChestEndEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftShoulderEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_rotateZ.o" "amazonprincess_Ctrl_LeftShoulderEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_rotateY.o" "amazonprincess_Ctrl_LeftShoulderEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_rotateX.o" "amazonprincess_Ctrl_LeftShoulderEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_translateZ.o" "amazonprincess_Ctrl_LeftShoulderEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_translateY.o" "amazonprincess_Ctrl_LeftShoulderEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector_translateX.o" "amazonprincess_Ctrl_LeftShoulderEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftShoulderEffectorGXM[0]" "amazonprincess_Ctrl_LeftShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftShoulderEffectorGXM[0]" "amazonprincess_Ctrl_LeftShoulderEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightShoulderEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_rotateZ.o" "amazonprincess_Ctrl_RightShoulderEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_rotateY.o" "amazonprincess_Ctrl_RightShoulderEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_rotateX.o" "amazonprincess_Ctrl_RightShoulderEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_translateZ.o" "amazonprincess_Ctrl_RightShoulderEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_translateY.o" "amazonprincess_Ctrl_RightShoulderEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector_translateX.o" "amazonprincess_Ctrl_RightShoulderEffector.tx"
		;
connectAttr "HIKState2Effector1.RightShoulderEffectorGXM[0]" "amazonprincess_Ctrl_RightShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.RightShoulderEffectorGXM[0]" "amazonprincess_Ctrl_RightShoulderEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_HeadEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_rotateZ.o" "amazonprincess_Ctrl_HeadEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_rotateY.o" "amazonprincess_Ctrl_HeadEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_rotateX.o" "amazonprincess_Ctrl_HeadEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_translateZ.o" "amazonprincess_Ctrl_HeadEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_translateY.o" "amazonprincess_Ctrl_HeadEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector_translateX.o" "amazonprincess_Ctrl_HeadEffector.tx"
		;
connectAttr "HIKState2Effector1.HeadEffectorGXM[0]" "amazonprincess_Ctrl_HeadEffector.agx"
		;
connectAttr "HIKState2Effector2.HeadEffectorGXM[0]" "amazonprincess_Ctrl_HeadEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHipEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_rotateZ.o" "amazonprincess_Ctrl_LeftHipEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_rotateY.o" "amazonprincess_Ctrl_LeftHipEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_rotateX.o" "amazonprincess_Ctrl_LeftHipEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_translateZ.o" "amazonprincess_Ctrl_LeftHipEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_translateY.o" "amazonprincess_Ctrl_LeftHipEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector_translateX.o" "amazonprincess_Ctrl_LeftHipEffector.tx"
		;
connectAttr "HIKState2Effector1.LeftHipEffectorGXM[0]" "amazonprincess_Ctrl_LeftHipEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHipEffectorGXM[0]" "amazonprincess_Ctrl_LeftHipEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHipEffector.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_rotateZ.o" "amazonprincess_Ctrl_RightHipEffector.rz"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_rotateY.o" "amazonprincess_Ctrl_RightHipEffector.ry"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_rotateX.o" "amazonprincess_Ctrl_RightHipEffector.rx"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_translateZ.o" "amazonprincess_Ctrl_RightHipEffector.tz"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_translateY.o" "amazonprincess_Ctrl_RightHipEffector.ty"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector_translateX.o" "amazonprincess_Ctrl_RightHipEffector.tx"
		;
connectAttr "HIKState2Effector1.RightHipEffectorGXM[0]" "amazonprincess_Ctrl_RightHipEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHipEffectorGXM[0]" "amazonprincess_Ctrl_RightHipEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandThumbEffectorGXM[0]" "amazonprincess_Ctrl_LeftHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandThumbEffectorGXM[0]" "amazonprincess_Ctrl_LeftHandThumbEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandIndexEffectorGXM[0]" "amazonprincess_Ctrl_LeftHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandIndexEffectorGXM[0]" "amazonprincess_Ctrl_LeftHandIndexEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandThumbEffectorGXM[0]" "amazonprincess_Ctrl_RightHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandThumbEffectorGXM[0]" "amazonprincess_Ctrl_RightHandThumbEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandIndexEffectorGXM[0]" "amazonprincess_Ctrl_RightHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandIndexEffectorGXM[0]" "amazonprincess_Ctrl_RightHandIndexEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftFootExtraFingerEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftFootExtraFingerEffectorGXM[0]" "amazonprincess_Ctrl_LeftFootExtraFingerEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftFootExtraFingerEffectorGXM[0]" "amazonprincess_Ctrl_LeftFootExtraFingerEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightFootExtraFingerEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightFootExtraFingerEffectorGXM[0]" "amazonprincess_Ctrl_RightFootExtraFingerEffector.agx"
		;
connectAttr "HIKState2Effector2.RightFootExtraFingerEffectorGXM[0]" "amazonprincess_Ctrl_RightFootExtraFingerEffector.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_Hips.uagx";
connectAttr "amazonprincess_Ctrl_Hips_rotateZ.o" "amazonprincess_Ctrl_Hips.rz";
connectAttr "amazonprincess_Ctrl_Hips_rotateY.o" "amazonprincess_Ctrl_Hips.ry";
connectAttr "amazonprincess_Ctrl_Hips_rotateX.o" "amazonprincess_Ctrl_Hips.rx";
connectAttr "amazonprincess_Ctrl_Hips_translateZ.o" "amazonprincess_Ctrl_Hips.tz"
		;
connectAttr "amazonprincess_Ctrl_Hips_translateY.o" "amazonprincess_Ctrl_Hips.ty"
		;
connectAttr "amazonprincess_Ctrl_Hips_translateX.o" "amazonprincess_Ctrl_Hips.tx"
		;
connectAttr "HIKState2FK1.HipsGX" "amazonprincess_Ctrl_Hips.agx";
connectAttr "HIKState2FK2.HipsGX" "amazonprincess_Ctrl_Hips.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftUpLeg.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftUpLeg_rotateZ.o" "amazonprincess_Ctrl_LeftUpLeg.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftUpLeg_rotateY.o" "amazonprincess_Ctrl_LeftUpLeg.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftUpLeg_rotateX.o" "amazonprincess_Ctrl_LeftUpLeg.rx"
		;
connectAttr "amazonprincess_Ctrl_Hips.s" "amazonprincess_Ctrl_LeftUpLeg.is";
connectAttr "HIKState2FK1.LeftUpLegGX" "amazonprincess_Ctrl_LeftUpLeg.agx";
connectAttr "HIKState2FK2.LeftUpLegGX" "amazonprincess_Ctrl_LeftUpLeg.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftLeg.uagx";
connectAttr "amazonprincess_Ctrl_LeftLeg_rotateZ.o" "amazonprincess_Ctrl_LeftLeg.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg_rotateY.o" "amazonprincess_Ctrl_LeftLeg.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg_rotateX.o" "amazonprincess_Ctrl_LeftLeg.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftUpLeg.s" "amazonprincess_Ctrl_LeftLeg.is";
connectAttr "HIKState2FK1.LeftLegGX" "amazonprincess_Ctrl_LeftLeg.agx";
connectAttr "HIKState2FK2.LeftLegGX" "amazonprincess_Ctrl_LeftLeg.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftFoot.uagx";
connectAttr "amazonprincess_Ctrl_LeftFoot_rotateZ.o" "amazonprincess_Ctrl_LeftFoot.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot_rotateY.o" "amazonprincess_Ctrl_LeftFoot.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot_rotateX.o" "amazonprincess_Ctrl_LeftFoot.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.s" "amazonprincess_Ctrl_LeftFoot.is";
connectAttr "HIKState2FK1.LeftFootGX" "amazonprincess_Ctrl_LeftFoot.agx";
connectAttr "HIKState2FK2.LeftFootGX" "amazonprincess_Ctrl_LeftFoot.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftFootExtraFinger1.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot.s" "amazonprincess_Ctrl_LeftFootExtraFinger1.is"
		;
connectAttr "HIKState2FK1.LeftFootExtraFinger1GX" "amazonprincess_Ctrl_LeftFootExtraFinger1.agx"
		;
connectAttr "HIKState2FK2.LeftFootExtraFinger1GX" "amazonprincess_Ctrl_LeftFootExtraFinger1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightUpLeg.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg_rotateZ.o" "amazonprincess_Ctrl_RightUpLeg.rz"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg_rotateY.o" "amazonprincess_Ctrl_RightUpLeg.ry"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg_rotateX.o" "amazonprincess_Ctrl_RightUpLeg.rx"
		;
connectAttr "amazonprincess_Ctrl_Hips.s" "amazonprincess_Ctrl_RightUpLeg.is";
connectAttr "HIKState2FK1.RightUpLegGX" "amazonprincess_Ctrl_RightUpLeg.agx";
connectAttr "HIKState2FK2.RightUpLegGX" "amazonprincess_Ctrl_RightUpLeg.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightLeg.uagx";
connectAttr "amazonprincess_Ctrl_RightLeg_rotateZ.o" "amazonprincess_Ctrl_RightLeg.rz"
		;
connectAttr "amazonprincess_Ctrl_RightLeg_rotateY.o" "amazonprincess_Ctrl_RightLeg.ry"
		;
connectAttr "amazonprincess_Ctrl_RightLeg_rotateX.o" "amazonprincess_Ctrl_RightLeg.rx"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg.s" "amazonprincess_Ctrl_RightLeg.is"
		;
connectAttr "HIKState2FK1.RightLegGX" "amazonprincess_Ctrl_RightLeg.agx";
connectAttr "HIKState2FK2.RightLegGX" "amazonprincess_Ctrl_RightLeg.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightFoot.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightFoot_rotateZ.o" "amazonprincess_Ctrl_RightFoot.rz"
		;
connectAttr "amazonprincess_Ctrl_RightFoot_rotateY.o" "amazonprincess_Ctrl_RightFoot.ry"
		;
connectAttr "amazonprincess_Ctrl_RightFoot_rotateX.o" "amazonprincess_Ctrl_RightFoot.rx"
		;
connectAttr "amazonprincess_Ctrl_RightLeg.s" "amazonprincess_Ctrl_RightFoot.is";
connectAttr "HIKState2FK1.RightFootGX" "amazonprincess_Ctrl_RightFoot.agx";
connectAttr "HIKState2FK2.RightFootGX" "amazonprincess_Ctrl_RightFoot.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightFootExtraFinger1.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightFoot.s" "amazonprincess_Ctrl_RightFootExtraFinger1.is"
		;
connectAttr "HIKState2FK1.RightFootExtraFinger1GX" "amazonprincess_Ctrl_RightFootExtraFinger1.agx"
		;
connectAttr "HIKState2FK2.RightFootExtraFinger1GX" "amazonprincess_Ctrl_RightFootExtraFinger1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_Spine.uagx";
connectAttr "amazonprincess_Ctrl_Spine_rotateZ.o" "amazonprincess_Ctrl_Spine.rz"
		;
connectAttr "amazonprincess_Ctrl_Spine_rotateY.o" "amazonprincess_Ctrl_Spine.ry"
		;
connectAttr "amazonprincess_Ctrl_Spine_rotateX.o" "amazonprincess_Ctrl_Spine.rx"
		;
connectAttr "amazonprincess_Ctrl_Hips.s" "amazonprincess_Ctrl_Spine.is";
connectAttr "HIKState2FK1.SpineGX" "amazonprincess_Ctrl_Spine.agx";
connectAttr "HIKState2FK2.SpineGX" "amazonprincess_Ctrl_Spine.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_Spine1.uagx";
connectAttr "amazonprincess_Ctrl_Spine1_rotateZ.o" "amazonprincess_Ctrl_Spine1.rz"
		;
connectAttr "amazonprincess_Ctrl_Spine1_rotateY.o" "amazonprincess_Ctrl_Spine1.ry"
		;
connectAttr "amazonprincess_Ctrl_Spine1_rotateX.o" "amazonprincess_Ctrl_Spine1.rx"
		;
connectAttr "amazonprincess_Ctrl_Spine.s" "amazonprincess_Ctrl_Spine1.is";
connectAttr "HIKState2FK1.Spine1GX" "amazonprincess_Ctrl_Spine1.agx";
connectAttr "HIKState2FK2.Spine1GX" "amazonprincess_Ctrl_Spine1.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftArm.uagx";
connectAttr "amazonprincess_Ctrl_LeftArm_rotateZ.o" "amazonprincess_Ctrl_LeftArm.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftArm_rotateY.o" "amazonprincess_Ctrl_LeftArm.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftArm_rotateX.o" "amazonprincess_Ctrl_LeftArm.rx"
		;
connectAttr "amazonprincess_Ctrl_Spine1.s" "amazonprincess_Ctrl_LeftArm.is";
connectAttr "HIKState2FK1.LeftArmGX" "amazonprincess_Ctrl_LeftArm.agx";
connectAttr "HIKState2FK2.LeftArmGX" "amazonprincess_Ctrl_LeftArm.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftForeArm.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm_rotateZ.o" "amazonprincess_Ctrl_LeftForeArm.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm_rotateY.o" "amazonprincess_Ctrl_LeftForeArm.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm_rotateX.o" "amazonprincess_Ctrl_LeftForeArm.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftArm.s" "amazonprincess_Ctrl_LeftForeArm.is"
		;
connectAttr "HIKState2FK1.LeftForeArmGX" "amazonprincess_Ctrl_LeftForeArm.agx";
connectAttr "HIKState2FK2.LeftForeArmGX" "amazonprincess_Ctrl_LeftForeArm.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHand.uagx";
connectAttr "amazonprincess_Ctrl_LeftHand_rotateZ.o" "amazonprincess_Ctrl_LeftHand.rz"
		;
connectAttr "amazonprincess_Ctrl_LeftHand_rotateY.o" "amazonprincess_Ctrl_LeftHand.ry"
		;
connectAttr "amazonprincess_Ctrl_LeftHand_rotateX.o" "amazonprincess_Ctrl_LeftHand.rx"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm.s" "amazonprincess_Ctrl_LeftHand.is"
		;
connectAttr "HIKState2FK1.LeftHandGX" "amazonprincess_Ctrl_LeftHand.agx";
connectAttr "HIKState2FK2.LeftHandGX" "amazonprincess_Ctrl_LeftHand.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandThumb1.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHand.s" "amazonprincess_Ctrl_LeftHandThumb1.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb1GX" "amazonprincess_Ctrl_LeftHandThumb1.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb1GX" "amazonprincess_Ctrl_LeftHandThumb1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandThumb2.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.s" "amazonprincess_Ctrl_LeftHandThumb2.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb2GX" "amazonprincess_Ctrl_LeftHandThumb2.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb2GX" "amazonprincess_Ctrl_LeftHandThumb2.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandThumb3.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.s" "amazonprincess_Ctrl_LeftHandThumb3.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb3GX" "amazonprincess_Ctrl_LeftHandThumb3.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb3GX" "amazonprincess_Ctrl_LeftHandThumb3.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandIndex1.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHand.s" "amazonprincess_Ctrl_LeftHandIndex1.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex1GX" "amazonprincess_Ctrl_LeftHandIndex1.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex1GX" "amazonprincess_Ctrl_LeftHandIndex1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandIndex2.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.s" "amazonprincess_Ctrl_LeftHandIndex2.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex2GX" "amazonprincess_Ctrl_LeftHandIndex2.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex2GX" "amazonprincess_Ctrl_LeftHandIndex2.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_LeftHandIndex3.uagx"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.s" "amazonprincess_Ctrl_LeftHandIndex3.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex3GX" "amazonprincess_Ctrl_LeftHandIndex3.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex3GX" "amazonprincess_Ctrl_LeftHandIndex3.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightArm.uagx";
connectAttr "amazonprincess_Ctrl_RightArm_rotateZ.o" "amazonprincess_Ctrl_RightArm.rz"
		;
connectAttr "amazonprincess_Ctrl_RightArm_rotateY.o" "amazonprincess_Ctrl_RightArm.ry"
		;
connectAttr "amazonprincess_Ctrl_RightArm_rotateX.o" "amazonprincess_Ctrl_RightArm.rx"
		;
connectAttr "amazonprincess_Ctrl_Spine1.s" "amazonprincess_Ctrl_RightArm.is";
connectAttr "HIKState2FK1.RightArmGX" "amazonprincess_Ctrl_RightArm.agx";
connectAttr "HIKState2FK2.RightArmGX" "amazonprincess_Ctrl_RightArm.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightForeArm.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm_rotateZ.o" "amazonprincess_Ctrl_RightForeArm.rz"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm_rotateY.o" "amazonprincess_Ctrl_RightForeArm.ry"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm_rotateX.o" "amazonprincess_Ctrl_RightForeArm.rx"
		;
connectAttr "amazonprincess_Ctrl_RightArm.s" "amazonprincess_Ctrl_RightForeArm.is"
		;
connectAttr "HIKState2FK1.RightForeArmGX" "amazonprincess_Ctrl_RightForeArm.agx"
		;
connectAttr "HIKState2FK2.RightForeArmGX" "amazonprincess_Ctrl_RightForeArm.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHand.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHand_rotateZ.o" "amazonprincess_Ctrl_RightHand.rz"
		;
connectAttr "amazonprincess_Ctrl_RightHand_rotateY.o" "amazonprincess_Ctrl_RightHand.ry"
		;
connectAttr "amazonprincess_Ctrl_RightHand_rotateX.o" "amazonprincess_Ctrl_RightHand.rx"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm.s" "amazonprincess_Ctrl_RightHand.is"
		;
connectAttr "HIKState2FK1.RightHandGX" "amazonprincess_Ctrl_RightHand.agx";
connectAttr "HIKState2FK2.RightHandGX" "amazonprincess_Ctrl_RightHand.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandThumb1.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHand.s" "amazonprincess_Ctrl_RightHandThumb1.is"
		;
connectAttr "HIKState2FK1.RightHandThumb1GX" "amazonprincess_Ctrl_RightHandThumb1.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb1GX" "amazonprincess_Ctrl_RightHandThumb1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandThumb2.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.s" "amazonprincess_Ctrl_RightHandThumb2.is"
		;
connectAttr "HIKState2FK1.RightHandThumb2GX" "amazonprincess_Ctrl_RightHandThumb2.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb2GX" "amazonprincess_Ctrl_RightHandThumb2.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandThumb3.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.s" "amazonprincess_Ctrl_RightHandThumb3.is"
		;
connectAttr "HIKState2FK1.RightHandThumb3GX" "amazonprincess_Ctrl_RightHandThumb3.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb3GX" "amazonprincess_Ctrl_RightHandThumb3.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandIndex1.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHand.s" "amazonprincess_Ctrl_RightHandIndex1.is"
		;
connectAttr "HIKState2FK1.RightHandIndex1GX" "amazonprincess_Ctrl_RightHandIndex1.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex1GX" "amazonprincess_Ctrl_RightHandIndex1.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandIndex2.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.s" "amazonprincess_Ctrl_RightHandIndex2.is"
		;
connectAttr "HIKState2FK1.RightHandIndex2GX" "amazonprincess_Ctrl_RightHandIndex2.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex2GX" "amazonprincess_Ctrl_RightHandIndex2.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_RightHandIndex3.uagx"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.s" "amazonprincess_Ctrl_RightHandIndex3.is"
		;
connectAttr "HIKState2FK1.RightHandIndex3GX" "amazonprincess_Ctrl_RightHandIndex3.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex3GX" "amazonprincess_Ctrl_RightHandIndex3.atx"
		;
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_Neck.uagx";
connectAttr "amazonprincess_Ctrl_Neck_rotateZ.o" "amazonprincess_Ctrl_Neck.rz";
connectAttr "amazonprincess_Ctrl_Neck_rotateY.o" "amazonprincess_Ctrl_Neck.ry";
connectAttr "amazonprincess_Ctrl_Neck_rotateX.o" "amazonprincess_Ctrl_Neck.rx";
connectAttr "amazonprincess_Ctrl_Spine1.s" "amazonprincess_Ctrl_Neck.is";
connectAttr "HIKState2FK1.NeckGX" "amazonprincess_Ctrl_Neck.agx";
connectAttr "HIKState2FK2.NeckGX" "amazonprincess_Ctrl_Neck.atx";
connectAttr "amazonprincess_ControlRig.rao" "amazonprincess_Ctrl_Head.uagx";
connectAttr "amazonprincess_Ctrl_Head_rotateZ.o" "amazonprincess_Ctrl_Head.rz";
connectAttr "amazonprincess_Ctrl_Head_rotateY.o" "amazonprincess_Ctrl_Head.ry";
connectAttr "amazonprincess_Ctrl_Head_rotateX.o" "amazonprincess_Ctrl_Head.rx";
connectAttr "amazonprincess_Ctrl_Neck.s" "amazonprincess_Ctrl_Head.is";
connectAttr "HIKState2FK1.HeadGX" "amazonprincess_Ctrl_Head.agx";
connectAttr "HIKState2FK2.HeadGX" "amazonprincess_Ctrl_Head.atx";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HIKproperties1.msg" "amazonprincess.propertyState";
connectAttr "thighFBXASC046R.ch" "amazonprincess.RightUpLeg";
connectAttr "thighFBXASC046L.ch" "amazonprincess.LeftUpLeg";
connectAttr "shinFBXASC046R.ch" "amazonprincess.RightLeg";
connectAttr "shinFBXASC046L.ch" "amazonprincess.LeftLeg";
connectAttr "footFBXASC046R.ch" "amazonprincess.RightFoot";
connectAttr "footFBXASC046L.ch" "amazonprincess.LeftFoot";
connectAttr "hips.ch" "amazonprincess.Hips";
connectAttr "spine.ch" "amazonprincess.Spine";
connectAttr "chest.ch" "amazonprincess.Spine1";
connectAttr "upper_armFBXASC046R.ch" "amazonprincess.RightArm";
connectAttr "forearmFBXASC046R.ch" "amazonprincess.RightForeArm";
connectAttr "handFBXASC046R.ch" "amazonprincess.RightHand";
connectAttr "upper_armFBXASC046L.ch" "amazonprincess.LeftArm";
connectAttr "forearmFBXASC046L.ch" "amazonprincess.LeftForeArm";
connectAttr "handFBXASC046L.ch" "amazonprincess.LeftHand";
connectAttr "head.ch" "amazonprincess.Head";
connectAttr "neck.ch" "amazonprincess.Neck";
connectAttr "shoulderFBXASC046R.ch" "amazonprincess.RightShoulderExtra";
connectAttr "shoulderFBXASC046L.ch" "amazonprincess.LeftShoulderExtra";
connectAttr "thumbFBXASC04601FBXASC046L.ch" "amazonprincess.LeftHandThumb1";
connectAttr "thumbFBXASC04601FBXASC046R.ch" "amazonprincess.RightHandThumb1";
connectAttr "thumbFBXASC04602FBXASC046R.ch" "amazonprincess.RightHandThumb2";
connectAttr "thumbFBXASC04603FBXASC046R.ch" "amazonprincess.RightHandThumb3";
connectAttr "palmFBXASC04602FBXASC046R.ch" "amazonprincess.RightHandIndex1";
connectAttr "f_middleFBXASC04601FBXASC046R.ch" "amazonprincess.RightHandIndex2";
connectAttr "f_middleFBXASC04602FBXASC046R.ch" "amazonprincess.RightHandIndex3";
connectAttr "thumbFBXASC04602FBXASC046L.ch" "amazonprincess.LeftHandThumb2";
connectAttr "thumbFBXASC04603FBXASC046L.ch" "amazonprincess.LeftHandThumb3";
connectAttr "palmFBXASC04602FBXASC046L.ch" "amazonprincess.LeftHandIndex1";
connectAttr "f_middleFBXASC04601FBXASC046L.ch" "amazonprincess.LeftHandIndex2";
connectAttr "f_middleFBXASC04602FBXASC046L.ch" "amazonprincess.LeftHandIndex3";
connectAttr "toeFBXASC046L.ch" "amazonprincess.LeftFootExtraFinger1";
connectAttr "toeFBXASC046R.ch" "amazonprincess.RightFootExtraFinger1";
connectAttr "amazonprincess_Ctrl_HipsEffector.pull" "HIKproperties1.CtrlResistHipsPosition"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.stiffness" "HIKproperties1.CtrlResistHipsOrientation"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.pull" "HIKproperties1.CtrlPullLeftFoot"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.pull" "HIKproperties1.CtrlPullRightFoot"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.pull" "HIKproperties1.CtrlChestPullLeftHand"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.pull" "HIKproperties1.CtrlChestPullRightHand"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.pull" "HIKproperties1.CtrlPullLeftKnee"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.stiffness" "HIKproperties1.CtrlResistLeftKnee"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.pull" "HIKproperties1.CtrlPullRightKnee"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.stiffness" "HIKproperties1.CtrlResistRightKnee"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.pull" "HIKproperties1.CtrlPullLeftElbow"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.stiffness" "HIKproperties1.CtrlResistLeftElbow"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.pull" "HIKproperties1.CtrlPullRightElbow"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.stiffness" "HIKproperties1.CtrlResistRightElbow"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.stiffness" "HIKproperties1.ParamCtrlSpineStiffness"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.pull" "HIKproperties1.CtrlResistChestPosition"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.stiffness" "HIKproperties1.CtrlResistChestOrientation"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.stiffness" "HIKproperties1.CtrlResistLeftCollar"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.stiffness" "HIKproperties1.CtrlResistRightCollar"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.pull" "HIKproperties1.CtrlPullHead"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.stiffness" "HIKproperties1.ParamCtrlNeckStiffness"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "HIKFK2State1.OutputCharacterState" "HIKSolverNode1.InputCharacterState"
		;
connectAttr "HIKPinning2State1.OutputEffectorState" "HIKSolverNode1.InputEffectorState"
		;
connectAttr "HIKPinning2State1.OutputEffectorStateNoAux" "HIKSolverNode1.InputEffectorStateNoAux"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "hips.is" "HIKState2SK1.HipsIS";
connectAttr "hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "thighFBXASC046L.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "thighFBXASC046L.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "thighFBXASC046L.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "thighFBXASC046L.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "thighFBXASC046L.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "thighFBXASC046L.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "shinFBXASC046L.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "shinFBXASC046L.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "shinFBXASC046L.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "shinFBXASC046L.is" "HIKState2SK1.LeftLegIS";
connectAttr "shinFBXASC046L.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "shinFBXASC046L.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "footFBXASC046L.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "footFBXASC046L.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "footFBXASC046L.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "footFBXASC046L.is" "HIKState2SK1.LeftFootIS";
connectAttr "footFBXASC046L.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "footFBXASC046L.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "thighFBXASC046R.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "thighFBXASC046R.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "thighFBXASC046R.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "thighFBXASC046R.is" "HIKState2SK1.RightUpLegIS";
connectAttr "thighFBXASC046R.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "thighFBXASC046R.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "shinFBXASC046R.pm" "HIKState2SK1.RightLegPGX";
connectAttr "shinFBXASC046R.jo" "HIKState2SK1.RightLegPreR";
connectAttr "shinFBXASC046R.ssc" "HIKState2SK1.RightLegSC";
connectAttr "shinFBXASC046R.is" "HIKState2SK1.RightLegIS";
connectAttr "shinFBXASC046R.ro" "HIKState2SK1.RightLegROrder";
connectAttr "shinFBXASC046R.ra" "HIKState2SK1.RightLegPostR";
connectAttr "footFBXASC046R.pm" "HIKState2SK1.RightFootPGX";
connectAttr "footFBXASC046R.jo" "HIKState2SK1.RightFootPreR";
connectAttr "footFBXASC046R.ssc" "HIKState2SK1.RightFootSC";
connectAttr "footFBXASC046R.is" "HIKState2SK1.RightFootIS";
connectAttr "footFBXASC046R.ro" "HIKState2SK1.RightFootROrder";
connectAttr "footFBXASC046R.ra" "HIKState2SK1.RightFootPostR";
connectAttr "spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "spine.is" "HIKState2SK1.SpineIS";
connectAttr "spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "upper_armFBXASC046L.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "upper_armFBXASC046L.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "upper_armFBXASC046L.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "upper_armFBXASC046L.is" "HIKState2SK1.LeftArmIS";
connectAttr "upper_armFBXASC046L.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "upper_armFBXASC046L.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "forearmFBXASC046L.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "forearmFBXASC046L.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "forearmFBXASC046L.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "forearmFBXASC046L.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "forearmFBXASC046L.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "forearmFBXASC046L.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "handFBXASC046L.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "handFBXASC046L.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "handFBXASC046L.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "handFBXASC046L.is" "HIKState2SK1.LeftHandIS";
connectAttr "handFBXASC046L.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "handFBXASC046L.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "upper_armFBXASC046R.pm" "HIKState2SK1.RightArmPGX";
connectAttr "upper_armFBXASC046R.jo" "HIKState2SK1.RightArmPreR";
connectAttr "upper_armFBXASC046R.ssc" "HIKState2SK1.RightArmSC";
connectAttr "upper_armFBXASC046R.is" "HIKState2SK1.RightArmIS";
connectAttr "upper_armFBXASC046R.ro" "HIKState2SK1.RightArmROrder";
connectAttr "upper_armFBXASC046R.ra" "HIKState2SK1.RightArmPostR";
connectAttr "forearmFBXASC046R.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "forearmFBXASC046R.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "forearmFBXASC046R.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "forearmFBXASC046R.is" "HIKState2SK1.RightForeArmIS";
connectAttr "forearmFBXASC046R.ro" "HIKState2SK1.RightForeArmROrder";
connectAttr "forearmFBXASC046R.ra" "HIKState2SK1.RightForeArmPostR";
connectAttr "handFBXASC046R.pm" "HIKState2SK1.RightHandPGX";
connectAttr "handFBXASC046R.jo" "HIKState2SK1.RightHandPreR";
connectAttr "handFBXASC046R.ssc" "HIKState2SK1.RightHandSC";
connectAttr "handFBXASC046R.is" "HIKState2SK1.RightHandIS";
connectAttr "handFBXASC046R.ro" "HIKState2SK1.RightHandROrder";
connectAttr "handFBXASC046R.ra" "HIKState2SK1.RightHandPostR";
connectAttr "head.pm" "HIKState2SK1.HeadPGX";
connectAttr "head.jo" "HIKState2SK1.HeadPreR";
connectAttr "head.ssc" "HIKState2SK1.HeadSC";
connectAttr "head.is" "HIKState2SK1.HeadIS";
connectAttr "head.ro" "HIKState2SK1.HeadROrder";
connectAttr "head.ra" "HIKState2SK1.HeadPostR";
connectAttr "neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "neck.is" "HIKState2SK1.NeckIS";
connectAttr "neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "chest.pm" "HIKState2SK1.Spine1PGX";
connectAttr "chest.jo" "HIKState2SK1.Spine1PreR";
connectAttr "chest.ssc" "HIKState2SK1.Spine1SC";
connectAttr "chest.is" "HIKState2SK1.Spine1IS";
connectAttr "chest.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "chest.ra" "HIKState2SK1.Spine1PostR";
connectAttr "thumbFBXASC04601FBXASC046L.pm" "HIKState2SK1.LeftHandThumb1PGX";
connectAttr "thumbFBXASC04601FBXASC046L.jo" "HIKState2SK1.LeftHandThumb1PreR";
connectAttr "thumbFBXASC04601FBXASC046L.ssc" "HIKState2SK1.LeftHandThumb1SC";
connectAttr "thumbFBXASC04601FBXASC046L.is" "HIKState2SK1.LeftHandThumb1IS";
connectAttr "thumbFBXASC04601FBXASC046L.ro" "HIKState2SK1.LeftHandThumb1ROrder";
connectAttr "thumbFBXASC04601FBXASC046L.ra" "HIKState2SK1.LeftHandThumb1PostR";
connectAttr "thumbFBXASC04602FBXASC046L.pm" "HIKState2SK1.LeftHandThumb2PGX";
connectAttr "thumbFBXASC04602FBXASC046L.jo" "HIKState2SK1.LeftHandThumb2PreR";
connectAttr "thumbFBXASC04602FBXASC046L.ssc" "HIKState2SK1.LeftHandThumb2SC";
connectAttr "thumbFBXASC04602FBXASC046L.is" "HIKState2SK1.LeftHandThumb2IS";
connectAttr "thumbFBXASC04602FBXASC046L.ro" "HIKState2SK1.LeftHandThumb2ROrder";
connectAttr "thumbFBXASC04602FBXASC046L.ra" "HIKState2SK1.LeftHandThumb2PostR";
connectAttr "thumbFBXASC04603FBXASC046L.pm" "HIKState2SK1.LeftHandThumb3PGX";
connectAttr "thumbFBXASC04603FBXASC046L.jo" "HIKState2SK1.LeftHandThumb3PreR";
connectAttr "thumbFBXASC04603FBXASC046L.ssc" "HIKState2SK1.LeftHandThumb3SC";
connectAttr "thumbFBXASC04603FBXASC046L.is" "HIKState2SK1.LeftHandThumb3IS";
connectAttr "thumbFBXASC04603FBXASC046L.ro" "HIKState2SK1.LeftHandThumb3ROrder";
connectAttr "thumbFBXASC04603FBXASC046L.ra" "HIKState2SK1.LeftHandThumb3PostR";
connectAttr "palmFBXASC04602FBXASC046L.pm" "HIKState2SK1.LeftHandIndex1PGX";
connectAttr "palmFBXASC04602FBXASC046L.jo" "HIKState2SK1.LeftHandIndex1PreR";
connectAttr "palmFBXASC04602FBXASC046L.ssc" "HIKState2SK1.LeftHandIndex1SC";
connectAttr "palmFBXASC04602FBXASC046L.is" "HIKState2SK1.LeftHandIndex1IS";
connectAttr "palmFBXASC04602FBXASC046L.ro" "HIKState2SK1.LeftHandIndex1ROrder";
connectAttr "palmFBXASC04602FBXASC046L.ra" "HIKState2SK1.LeftHandIndex1PostR";
connectAttr "f_middleFBXASC04601FBXASC046L.pm" "HIKState2SK1.LeftHandIndex2PGX";
connectAttr "f_middleFBXASC04601FBXASC046L.jo" "HIKState2SK1.LeftHandIndex2PreR"
		;
connectAttr "f_middleFBXASC04601FBXASC046L.ssc" "HIKState2SK1.LeftHandIndex2SC";
connectAttr "f_middleFBXASC04601FBXASC046L.is" "HIKState2SK1.LeftHandIndex2IS";
connectAttr "f_middleFBXASC04601FBXASC046L.ro" "HIKState2SK1.LeftHandIndex2ROrder"
		;
connectAttr "f_middleFBXASC04601FBXASC046L.ra" "HIKState2SK1.LeftHandIndex2PostR"
		;
connectAttr "f_middleFBXASC04602FBXASC046L.pm" "HIKState2SK1.LeftHandIndex3PGX";
connectAttr "f_middleFBXASC04602FBXASC046L.jo" "HIKState2SK1.LeftHandIndex3PreR"
		;
connectAttr "f_middleFBXASC04602FBXASC046L.ssc" "HIKState2SK1.LeftHandIndex3SC";
connectAttr "f_middleFBXASC04602FBXASC046L.is" "HIKState2SK1.LeftHandIndex3IS";
connectAttr "f_middleFBXASC04602FBXASC046L.ro" "HIKState2SK1.LeftHandIndex3ROrder"
		;
connectAttr "f_middleFBXASC04602FBXASC046L.ra" "HIKState2SK1.LeftHandIndex3PostR"
		;
connectAttr "thumbFBXASC04601FBXASC046R.pm" "HIKState2SK1.RightHandThumb1PGX";
connectAttr "thumbFBXASC04601FBXASC046R.jo" "HIKState2SK1.RightHandThumb1PreR";
connectAttr "thumbFBXASC04601FBXASC046R.ssc" "HIKState2SK1.RightHandThumb1SC";
connectAttr "thumbFBXASC04601FBXASC046R.is" "HIKState2SK1.RightHandThumb1IS";
connectAttr "thumbFBXASC04601FBXASC046R.ro" "HIKState2SK1.RightHandThumb1ROrder"
		;
connectAttr "thumbFBXASC04601FBXASC046R.ra" "HIKState2SK1.RightHandThumb1PostR";
connectAttr "thumbFBXASC04602FBXASC046R.pm" "HIKState2SK1.RightHandThumb2PGX";
connectAttr "thumbFBXASC04602FBXASC046R.jo" "HIKState2SK1.RightHandThumb2PreR";
connectAttr "thumbFBXASC04602FBXASC046R.ssc" "HIKState2SK1.RightHandThumb2SC";
connectAttr "thumbFBXASC04602FBXASC046R.is" "HIKState2SK1.RightHandThumb2IS";
connectAttr "thumbFBXASC04602FBXASC046R.ro" "HIKState2SK1.RightHandThumb2ROrder"
		;
connectAttr "thumbFBXASC04602FBXASC046R.ra" "HIKState2SK1.RightHandThumb2PostR";
connectAttr "thumbFBXASC04603FBXASC046R.pm" "HIKState2SK1.RightHandThumb3PGX";
connectAttr "thumbFBXASC04603FBXASC046R.jo" "HIKState2SK1.RightHandThumb3PreR";
connectAttr "thumbFBXASC04603FBXASC046R.ssc" "HIKState2SK1.RightHandThumb3SC";
connectAttr "thumbFBXASC04603FBXASC046R.is" "HIKState2SK1.RightHandThumb3IS";
connectAttr "thumbFBXASC04603FBXASC046R.ro" "HIKState2SK1.RightHandThumb3ROrder"
		;
connectAttr "thumbFBXASC04603FBXASC046R.ra" "HIKState2SK1.RightHandThumb3PostR";
connectAttr "palmFBXASC04602FBXASC046R.pm" "HIKState2SK1.RightHandIndex1PGX";
connectAttr "palmFBXASC04602FBXASC046R.jo" "HIKState2SK1.RightHandIndex1PreR";
connectAttr "palmFBXASC04602FBXASC046R.ssc" "HIKState2SK1.RightHandIndex1SC";
connectAttr "palmFBXASC04602FBXASC046R.is" "HIKState2SK1.RightHandIndex1IS";
connectAttr "palmFBXASC04602FBXASC046R.ro" "HIKState2SK1.RightHandIndex1ROrder";
connectAttr "palmFBXASC04602FBXASC046R.ra" "HIKState2SK1.RightHandIndex1PostR";
connectAttr "f_middleFBXASC04601FBXASC046R.pm" "HIKState2SK1.RightHandIndex2PGX"
		;
connectAttr "f_middleFBXASC04601FBXASC046R.jo" "HIKState2SK1.RightHandIndex2PreR"
		;
connectAttr "f_middleFBXASC04601FBXASC046R.ssc" "HIKState2SK1.RightHandIndex2SC"
		;
connectAttr "f_middleFBXASC04601FBXASC046R.is" "HIKState2SK1.RightHandIndex2IS";
connectAttr "f_middleFBXASC04601FBXASC046R.ro" "HIKState2SK1.RightHandIndex2ROrder"
		;
connectAttr "f_middleFBXASC04601FBXASC046R.ra" "HIKState2SK1.RightHandIndex2PostR"
		;
connectAttr "f_middleFBXASC04602FBXASC046R.pm" "HIKState2SK1.RightHandIndex3PGX"
		;
connectAttr "f_middleFBXASC04602FBXASC046R.jo" "HIKState2SK1.RightHandIndex3PreR"
		;
connectAttr "f_middleFBXASC04602FBXASC046R.ssc" "HIKState2SK1.RightHandIndex3SC"
		;
connectAttr "f_middleFBXASC04602FBXASC046R.is" "HIKState2SK1.RightHandIndex3IS";
connectAttr "f_middleFBXASC04602FBXASC046R.ro" "HIKState2SK1.RightHandIndex3ROrder"
		;
connectAttr "f_middleFBXASC04602FBXASC046R.ra" "HIKState2SK1.RightHandIndex3PostR"
		;
connectAttr "shoulderFBXASC046L.pm" "HIKState2SK1.LeftShoulderExtraPGX";
connectAttr "shoulderFBXASC046L.jo" "HIKState2SK1.LeftShoulderExtraPreR";
connectAttr "shoulderFBXASC046L.ssc" "HIKState2SK1.LeftShoulderExtraSC";
connectAttr "shoulderFBXASC046L.is" "HIKState2SK1.LeftShoulderExtraIS";
connectAttr "shoulderFBXASC046L.ro" "HIKState2SK1.LeftShoulderExtraROrder";
connectAttr "shoulderFBXASC046L.ra" "HIKState2SK1.LeftShoulderExtraPostR";
connectAttr "shoulderFBXASC046R.pm" "HIKState2SK1.RightShoulderExtraPGX";
connectAttr "shoulderFBXASC046R.jo" "HIKState2SK1.RightShoulderExtraPreR";
connectAttr "shoulderFBXASC046R.ssc" "HIKState2SK1.RightShoulderExtraSC";
connectAttr "shoulderFBXASC046R.is" "HIKState2SK1.RightShoulderExtraIS";
connectAttr "shoulderFBXASC046R.ro" "HIKState2SK1.RightShoulderExtraROrder";
connectAttr "shoulderFBXASC046R.ra" "HIKState2SK1.RightShoulderExtraPostR";
connectAttr "toeFBXASC046L.pm" "HIKState2SK1.LeftFootExtraFinger1PGX";
connectAttr "toeFBXASC046L.jo" "HIKState2SK1.LeftFootExtraFinger1PreR";
connectAttr "toeFBXASC046L.ssc" "HIKState2SK1.LeftFootExtraFinger1SC";
connectAttr "toeFBXASC046L.is" "HIKState2SK1.LeftFootExtraFinger1IS";
connectAttr "toeFBXASC046L.ro" "HIKState2SK1.LeftFootExtraFinger1ROrder";
connectAttr "toeFBXASC046L.ra" "HIKState2SK1.LeftFootExtraFinger1PostR";
connectAttr "toeFBXASC046R.pm" "HIKState2SK1.RightFootExtraFinger1PGX";
connectAttr "toeFBXASC046R.jo" "HIKState2SK1.RightFootExtraFinger1PreR";
connectAttr "toeFBXASC046R.ssc" "HIKState2SK1.RightFootExtraFinger1SC";
connectAttr "toeFBXASC046R.is" "HIKState2SK1.RightFootExtraFinger1IS";
connectAttr "toeFBXASC046R.ro" "HIKState2SK1.RightFootExtraFinger1ROrder";
connectAttr "toeFBXASC046R.ra" "HIKState2SK1.RightFootExtraFinger1PostR";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "hips.wm" "skinCluster1.ma[0]";
connectAttr "spine.wm" "skinCluster1.ma[1]";
connectAttr "chest.wm" "skinCluster1.ma[2]";
connectAttr "neck.wm" "skinCluster1.ma[3]";
connectAttr "shoulderFBXASC046L.wm" "skinCluster1.ma[5]";
connectAttr "upper_armFBXASC046L.wm" "skinCluster1.ma[6]";
connectAttr "forearmFBXASC046L.wm" "skinCluster1.ma[7]";
connectAttr "handFBXASC046L.wm" "skinCluster1.ma[8]";
connectAttr "thumbFBXASC04601FBXASC046L.wm" "skinCluster1.ma[9]";
connectAttr "thumbFBXASC04602FBXASC046L.wm" "skinCluster1.ma[10]";
connectAttr "thumbFBXASC04603FBXASC046L.wm" "skinCluster1.ma[11]";
connectAttr "palmFBXASC04602FBXASC046L.wm" "skinCluster1.ma[12]";
connectAttr "f_middleFBXASC04601FBXASC046L.wm" "skinCluster1.ma[13]";
connectAttr "f_middleFBXASC04602FBXASC046L.wm" "skinCluster1.ma[14]";
connectAttr "shoulderFBXASC046R.wm" "skinCluster1.ma[15]";
connectAttr "upper_armFBXASC046R.wm" "skinCluster1.ma[16]";
connectAttr "forearmFBXASC046R.wm" "skinCluster1.ma[17]";
connectAttr "handFBXASC046R.wm" "skinCluster1.ma[18]";
connectAttr "thumbFBXASC04601FBXASC046R.wm" "skinCluster1.ma[19]";
connectAttr "thumbFBXASC04602FBXASC046R.wm" "skinCluster1.ma[20]";
connectAttr "thumbFBXASC04603FBXASC046R.wm" "skinCluster1.ma[21]";
connectAttr "palmFBXASC04602FBXASC046R.wm" "skinCluster1.ma[22]";
connectAttr "f_middleFBXASC04601FBXASC046R.wm" "skinCluster1.ma[23]";
connectAttr "f_middleFBXASC04602FBXASC046R.wm" "skinCluster1.ma[24]";
connectAttr "thighFBXASC046L.wm" "skinCluster1.ma[25]";
connectAttr "shinFBXASC046L.wm" "skinCluster1.ma[26]";
connectAttr "footFBXASC046L.wm" "skinCluster1.ma[27]";
connectAttr "toeFBXASC046L.wm" "skinCluster1.ma[28]";
connectAttr "thighFBXASC046R.wm" "skinCluster1.ma[31]";
connectAttr "shinFBXASC046R.wm" "skinCluster1.ma[32]";
connectAttr "footFBXASC046R.wm" "skinCluster1.ma[33]";
connectAttr "toeFBXASC046R.wm" "skinCluster1.ma[34]";
connectAttr "hips.liw" "skinCluster1.lw[0]";
connectAttr "spine.liw" "skinCluster1.lw[1]";
connectAttr "chest.liw" "skinCluster1.lw[2]";
connectAttr "neck.liw" "skinCluster1.lw[3]";
connectAttr "shoulderFBXASC046L.liw" "skinCluster1.lw[5]";
connectAttr "upper_armFBXASC046L.liw" "skinCluster1.lw[6]";
connectAttr "forearmFBXASC046L.liw" "skinCluster1.lw[7]";
connectAttr "handFBXASC046L.liw" "skinCluster1.lw[8]";
connectAttr "thumbFBXASC04601FBXASC046L.liw" "skinCluster1.lw[9]";
connectAttr "thumbFBXASC04602FBXASC046L.liw" "skinCluster1.lw[10]";
connectAttr "thumbFBXASC04603FBXASC046L.liw" "skinCluster1.lw[11]";
connectAttr "palmFBXASC04602FBXASC046L.liw" "skinCluster1.lw[12]";
connectAttr "f_middleFBXASC04601FBXASC046L.liw" "skinCluster1.lw[13]";
connectAttr "f_middleFBXASC04602FBXASC046L.liw" "skinCluster1.lw[14]";
connectAttr "shoulderFBXASC046R.liw" "skinCluster1.lw[15]";
connectAttr "upper_armFBXASC046R.liw" "skinCluster1.lw[16]";
connectAttr "forearmFBXASC046R.liw" "skinCluster1.lw[17]";
connectAttr "handFBXASC046R.liw" "skinCluster1.lw[18]";
connectAttr "thumbFBXASC04601FBXASC046R.liw" "skinCluster1.lw[19]";
connectAttr "thumbFBXASC04602FBXASC046R.liw" "skinCluster1.lw[20]";
connectAttr "thumbFBXASC04603FBXASC046R.liw" "skinCluster1.lw[21]";
connectAttr "palmFBXASC04602FBXASC046R.liw" "skinCluster1.lw[22]";
connectAttr "f_middleFBXASC04601FBXASC046R.liw" "skinCluster1.lw[23]";
connectAttr "f_middleFBXASC04602FBXASC046R.liw" "skinCluster1.lw[24]";
connectAttr "thighFBXASC046L.liw" "skinCluster1.lw[25]";
connectAttr "shinFBXASC046L.liw" "skinCluster1.lw[26]";
connectAttr "footFBXASC046L.liw" "skinCluster1.lw[27]";
connectAttr "toeFBXASC046L.liw" "skinCluster1.lw[28]";
connectAttr "thighFBXASC046R.liw" "skinCluster1.lw[31]";
connectAttr "shinFBXASC046R.liw" "skinCluster1.lw[32]";
connectAttr "footFBXASC046R.liw" "skinCluster1.lw[33]";
connectAttr "toeFBXASC046R.liw" "skinCluster1.lw[34]";
connectAttr "hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "spine.obcc" "skinCluster1.ifcl[1]";
connectAttr "chest.obcc" "skinCluster1.ifcl[2]";
connectAttr "neck.obcc" "skinCluster1.ifcl[3]";
connectAttr "head.obcc" "skinCluster1.ifcl[4]";
connectAttr "shoulderFBXASC046L.obcc" "skinCluster1.ifcl[5]";
connectAttr "upper_armFBXASC046L.obcc" "skinCluster1.ifcl[6]";
connectAttr "forearmFBXASC046L.obcc" "skinCluster1.ifcl[7]";
connectAttr "handFBXASC046L.obcc" "skinCluster1.ifcl[8]";
connectAttr "thumbFBXASC04601FBXASC046L.obcc" "skinCluster1.ifcl[9]";
connectAttr "thumbFBXASC04602FBXASC046L.obcc" "skinCluster1.ifcl[10]";
connectAttr "thumbFBXASC04603FBXASC046L.obcc" "skinCluster1.ifcl[11]";
connectAttr "palmFBXASC04602FBXASC046L.obcc" "skinCluster1.ifcl[12]";
connectAttr "f_middleFBXASC04601FBXASC046L.obcc" "skinCluster1.ifcl[13]";
connectAttr "f_middleFBXASC04602FBXASC046L.obcc" "skinCluster1.ifcl[14]";
connectAttr "shoulderFBXASC046R.obcc" "skinCluster1.ifcl[15]";
connectAttr "upper_armFBXASC046R.obcc" "skinCluster1.ifcl[16]";
connectAttr "forearmFBXASC046R.obcc" "skinCluster1.ifcl[17]";
connectAttr "handFBXASC046R.obcc" "skinCluster1.ifcl[18]";
connectAttr "thumbFBXASC04601FBXASC046R.obcc" "skinCluster1.ifcl[19]";
connectAttr "thumbFBXASC04602FBXASC046R.obcc" "skinCluster1.ifcl[20]";
connectAttr "thumbFBXASC04603FBXASC046R.obcc" "skinCluster1.ifcl[21]";
connectAttr "palmFBXASC04602FBXASC046R.obcc" "skinCluster1.ifcl[22]";
connectAttr "f_middleFBXASC04601FBXASC046R.obcc" "skinCluster1.ifcl[23]";
connectAttr "f_middleFBXASC04602FBXASC046R.obcc" "skinCluster1.ifcl[24]";
connectAttr "thighFBXASC046L.obcc" "skinCluster1.ifcl[25]";
connectAttr "shinFBXASC046L.obcc" "skinCluster1.ifcl[26]";
connectAttr "footFBXASC046L.obcc" "skinCluster1.ifcl[27]";
connectAttr "toeFBXASC046L.obcc" "skinCluster1.ifcl[28]";
connectAttr "thighFBXASC046R.obcc" "skinCluster1.ifcl[31]";
connectAttr "shinFBXASC046R.obcc" "skinCluster1.ifcl[32]";
connectAttr "footFBXASC046R.obcc" "skinCluster1.ifcl[33]";
connectAttr "toeFBXASC046R.obcc" "skinCluster1.ifcl[34]";
connectAttr "chest.msg" "skinCluster1.ptt";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "AmazonShape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "AmazonShape.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "AmazonShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "metarig.msg" "bindPose1.m[0]";
connectAttr "hips.msg" "bindPose1.m[1]";
connectAttr "spine.msg" "bindPose1.m[2]";
connectAttr "chest.msg" "bindPose1.m[3]";
connectAttr "neck.msg" "bindPose1.m[4]";
connectAttr "shoulderFBXASC046L.msg" "bindPose1.m[6]";
connectAttr "upper_armFBXASC046L.msg" "bindPose1.m[7]";
connectAttr "forearmFBXASC046L.msg" "bindPose1.m[8]";
connectAttr "handFBXASC046L.msg" "bindPose1.m[9]";
connectAttr "thumbFBXASC04601FBXASC046L.msg" "bindPose1.m[10]";
connectAttr "thumbFBXASC04602FBXASC046L.msg" "bindPose1.m[11]";
connectAttr "thumbFBXASC04603FBXASC046L.msg" "bindPose1.m[12]";
connectAttr "palmFBXASC04602FBXASC046L.msg" "bindPose1.m[13]";
connectAttr "f_middleFBXASC04601FBXASC046L.msg" "bindPose1.m[14]";
connectAttr "f_middleFBXASC04602FBXASC046L.msg" "bindPose1.m[15]";
connectAttr "shoulderFBXASC046R.msg" "bindPose1.m[16]";
connectAttr "upper_armFBXASC046R.msg" "bindPose1.m[17]";
connectAttr "forearmFBXASC046R.msg" "bindPose1.m[18]";
connectAttr "handFBXASC046R.msg" "bindPose1.m[19]";
connectAttr "thumbFBXASC04601FBXASC046R.msg" "bindPose1.m[20]";
connectAttr "thumbFBXASC04602FBXASC046R.msg" "bindPose1.m[21]";
connectAttr "thumbFBXASC04603FBXASC046R.msg" "bindPose1.m[22]";
connectAttr "palmFBXASC04602FBXASC046R.msg" "bindPose1.m[23]";
connectAttr "f_middleFBXASC04601FBXASC046R.msg" "bindPose1.m[24]";
connectAttr "f_middleFBXASC04602FBXASC046R.msg" "bindPose1.m[25]";
connectAttr "thighFBXASC046L.msg" "bindPose1.m[26]";
connectAttr "shinFBXASC046L.msg" "bindPose1.m[27]";
connectAttr "footFBXASC046L.msg" "bindPose1.m[28]";
connectAttr "toeFBXASC046L.msg" "bindPose1.m[29]";
connectAttr "thighFBXASC046R.msg" "bindPose1.m[32]";
connectAttr "shinFBXASC046R.msg" "bindPose1.m[33]";
connectAttr "footFBXASC046R.msg" "bindPose1.m[34]";
connectAttr "toeFBXASC046R.msg" "bindPose1.m[35]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[9]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[3]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[19]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[1]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[27]" "bindPose1.p[30]";
connectAttr "bindPose1.m[1]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[33]" "bindPose1.p[36]";
connectAttr "hips.bps" "bindPose1.wm[1]";
connectAttr "spine.bps" "bindPose1.wm[2]";
connectAttr "chest.bps" "bindPose1.wm[3]";
connectAttr "neck.bps" "bindPose1.wm[4]";
connectAttr "shoulderFBXASC046L.bps" "bindPose1.wm[6]";
connectAttr "upper_armFBXASC046L.bps" "bindPose1.wm[7]";
connectAttr "forearmFBXASC046L.bps" "bindPose1.wm[8]";
connectAttr "handFBXASC046L.bps" "bindPose1.wm[9]";
connectAttr "thumbFBXASC04601FBXASC046L.bps" "bindPose1.wm[10]";
connectAttr "thumbFBXASC04602FBXASC046L.bps" "bindPose1.wm[11]";
connectAttr "thumbFBXASC04603FBXASC046L.bps" "bindPose1.wm[12]";
connectAttr "palmFBXASC04602FBXASC046L.bps" "bindPose1.wm[13]";
connectAttr "f_middleFBXASC04601FBXASC046L.bps" "bindPose1.wm[14]";
connectAttr "f_middleFBXASC04602FBXASC046L.bps" "bindPose1.wm[15]";
connectAttr "shoulderFBXASC046R.bps" "bindPose1.wm[16]";
connectAttr "upper_armFBXASC046R.bps" "bindPose1.wm[17]";
connectAttr "forearmFBXASC046R.bps" "bindPose1.wm[18]";
connectAttr "handFBXASC046R.bps" "bindPose1.wm[19]";
connectAttr "thumbFBXASC04601FBXASC046R.bps" "bindPose1.wm[20]";
connectAttr "thumbFBXASC04602FBXASC046R.bps" "bindPose1.wm[21]";
connectAttr "thumbFBXASC04603FBXASC046R.bps" "bindPose1.wm[22]";
connectAttr "palmFBXASC04602FBXASC046R.bps" "bindPose1.wm[23]";
connectAttr "f_middleFBXASC04601FBXASC046R.bps" "bindPose1.wm[24]";
connectAttr "f_middleFBXASC04602FBXASC046R.bps" "bindPose1.wm[25]";
connectAttr "thighFBXASC046L.bps" "bindPose1.wm[26]";
connectAttr "shinFBXASC046L.bps" "bindPose1.wm[27]";
connectAttr "footFBXASC046L.bps" "bindPose1.wm[28]";
connectAttr "toeFBXASC046L.bps" "bindPose1.wm[29]";
connectAttr "thighFBXASC046R.bps" "bindPose1.wm[32]";
connectAttr "shinFBXASC046R.bps" "bindPose1.wm[33]";
connectAttr "footFBXASC046R.bps" "bindPose1.wm[34]";
connectAttr "toeFBXASC046R.bps" "bindPose1.wm[35]";
connectAttr "amazonprincess.OutputCharacterDefinition" "amazonprincess_ControlRig.HIC"
		;
connectAttr "amazonprincess_Ctrl_Reference.ch" "amazonprincess_ControlRig.Reference"
		;
connectAttr "amazonprincess_Ctrl_Hips.ch" "amazonprincess_ControlRig.Hips";
connectAttr "amazonprincess_Ctrl_LeftUpLeg.ch" "amazonprincess_ControlRig.LeftUpLeg"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.ch" "amazonprincess_ControlRig.LeftLeg"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot.ch" "amazonprincess_ControlRig.LeftFoot"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg.ch" "amazonprincess_ControlRig.RightUpLeg"
		;
connectAttr "amazonprincess_Ctrl_RightLeg.ch" "amazonprincess_ControlRig.RightLeg"
		;
connectAttr "amazonprincess_Ctrl_RightFoot.ch" "amazonprincess_ControlRig.RightFoot"
		;
connectAttr "amazonprincess_Ctrl_Spine.ch" "amazonprincess_ControlRig.Spine";
connectAttr "amazonprincess_Ctrl_LeftArm.ch" "amazonprincess_ControlRig.LeftArm"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm.ch" "amazonprincess_ControlRig.LeftForeArm"
		;
connectAttr "amazonprincess_Ctrl_LeftHand.ch" "amazonprincess_ControlRig.LeftHand"
		;
connectAttr "amazonprincess_Ctrl_RightArm.ch" "amazonprincess_ControlRig.RightArm"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm.ch" "amazonprincess_ControlRig.RightForeArm"
		;
connectAttr "amazonprincess_Ctrl_RightHand.ch" "amazonprincess_ControlRig.RightHand"
		;
connectAttr "amazonprincess_Ctrl_Head.ch" "amazonprincess_ControlRig.Head";
connectAttr "amazonprincess_Ctrl_Neck.ch" "amazonprincess_ControlRig.Neck";
connectAttr "amazonprincess_Ctrl_Spine1.ch" "amazonprincess_ControlRig.Spine1";
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.ch" "amazonprincess_ControlRig.LeftHandThumb1"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.ch" "amazonprincess_ControlRig.LeftHandThumb2"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.ch" "amazonprincess_ControlRig.LeftHandThumb3"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.ch" "amazonprincess_ControlRig.LeftHandIndex1"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.ch" "amazonprincess_ControlRig.LeftHandIndex2"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.ch" "amazonprincess_ControlRig.LeftHandIndex3"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.ch" "amazonprincess_ControlRig.RightHandThumb1"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.ch" "amazonprincess_ControlRig.RightHandThumb2"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.ch" "amazonprincess_ControlRig.RightHandThumb3"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.ch" "amazonprincess_ControlRig.RightHandIndex1"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.ch" "amazonprincess_ControlRig.RightHandIndex2"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.ch" "amazonprincess_ControlRig.RightHandIndex3"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.ch" "amazonprincess_ControlRig.LeftFootExtraFinger1"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.ch" "amazonprincess_ControlRig.RightFootExtraFinger1"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.ch" "amazonprincess_ControlRig.HipsEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.ch" "amazonprincess_ControlRig.LeftAnkleEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.ch" "amazonprincess_ControlRig.RightAnkleEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.ch" "amazonprincess_ControlRig.LeftWristEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.ch" "amazonprincess_ControlRig.RightWristEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.ch" "amazonprincess_ControlRig.LeftKneeEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.ch" "amazonprincess_ControlRig.RightKneeEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.ch" "amazonprincess_ControlRig.LeftElbowEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.ch" "amazonprincess_ControlRig.RightElbowEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.ch" "amazonprincess_ControlRig.ChestOriginEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.ch" "amazonprincess_ControlRig.ChestEndEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.ch" "amazonprincess_ControlRig.LeftShoulderEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.ch" "amazonprincess_ControlRig.RightShoulderEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.ch" "amazonprincess_ControlRig.HeadEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.ch" "amazonprincess_ControlRig.LeftHipEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.ch" "amazonprincess_ControlRig.RightHipEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.ch" "amazonprincess_ControlRig.LeftHandThumbEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.ch" "amazonprincess_ControlRig.LeftHandIndexEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.ch" "amazonprincess_ControlRig.RightHandThumbEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.ch" "amazonprincess_ControlRig.RightHandIndexEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.ch" "amazonprincess_ControlRig.LeftFootExtraFingerEffector[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.ch" "amazonprincess_ControlRig.RightFootExtraFingerEffector[0]"
		;
connectAttr "HIKproperties1.ra" "amazonprincess_ControlRig.ra";
connectAttr "amazonprincess_HipsBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na;
connectAttr "amazonprincess_ChestBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na;
connectAttr "amazonprincess_LeftArmBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_RightArmBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_LeftLegBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_RightLegBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_HeadBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na;
connectAttr "amazonprincess_LeftHandBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_RightHandBPKG.msg" "amazonprincess_FullBodyKG.dnsm" 
		-na;
connectAttr "amazonprincess_LeftFootBPKG.msg" "amazonprincess_FullBodyKG.dnsm" -na
		;
connectAttr "amazonprincess_RightFootBPKG.msg" "amazonprincess_FullBodyKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_Hips.msg" "amazonprincess_FullBodyKG.act[0]";
connectAttr "amazonprincess_Ctrl_LeftUpLeg.msg" "amazonprincess_FullBodyKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.msg" "amazonprincess_FullBodyKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot.msg" "amazonprincess_FullBodyKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg.msg" "amazonprincess_FullBodyKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_RightLeg.msg" "amazonprincess_FullBodyKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_RightFoot.msg" "amazonprincess_FullBodyKG.act[6]"
		;
connectAttr "amazonprincess_Ctrl_Spine.msg" "amazonprincess_FullBodyKG.act[7]";
connectAttr "amazonprincess_Ctrl_LeftArm.msg" "amazonprincess_FullBodyKG.act[8]"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm.msg" "amazonprincess_FullBodyKG.act[9]"
		;
connectAttr "amazonprincess_Ctrl_LeftHand.msg" "amazonprincess_FullBodyKG.act[10]"
		;
connectAttr "amazonprincess_Ctrl_RightArm.msg" "amazonprincess_FullBodyKG.act[11]"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm.msg" "amazonprincess_FullBodyKG.act[12]"
		;
connectAttr "amazonprincess_Ctrl_RightHand.msg" "amazonprincess_FullBodyKG.act[13]"
		;
connectAttr "amazonprincess_Ctrl_Head.msg" "amazonprincess_FullBodyKG.act[14]";
connectAttr "amazonprincess_Ctrl_Neck.msg" "amazonprincess_FullBodyKG.act[15]";
connectAttr "amazonprincess_Ctrl_Spine1.msg" "amazonprincess_FullBodyKG.act[16]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.msg" "amazonprincess_FullBodyKG.act[17]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.msg" "amazonprincess_FullBodyKG.act[18]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.msg" "amazonprincess_FullBodyKG.act[19]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.msg" "amazonprincess_FullBodyKG.act[20]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.msg" "amazonprincess_FullBodyKG.act[21]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.msg" "amazonprincess_FullBodyKG.act[22]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.msg" "amazonprincess_FullBodyKG.act[23]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.msg" "amazonprincess_FullBodyKG.act[24]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.msg" "amazonprincess_FullBodyKG.act[25]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.msg" "amazonprincess_FullBodyKG.act[26]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.msg" "amazonprincess_FullBodyKG.act[27]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.msg" "amazonprincess_FullBodyKG.act[28]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.msg" "amazonprincess_FullBodyKG.act[29]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.msg" "amazonprincess_FullBodyKG.act[30]"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.msg" "amazonprincess_FullBodyKG.act[33]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.msg" "amazonprincess_FullBodyKG.act[34]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.msg" "amazonprincess_FullBodyKG.act[35]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.msg" "amazonprincess_FullBodyKG.act[36]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.msg" "amazonprincess_FullBodyKG.act[37]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.msg" "amazonprincess_FullBodyKG.act[38]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.msg" "amazonprincess_FullBodyKG.act[39]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.msg" "amazonprincess_FullBodyKG.act[40]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.msg" "amazonprincess_FullBodyKG.act[41]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.msg" "amazonprincess_FullBodyKG.act[42]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.msg" "amazonprincess_FullBodyKG.act[43]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.msg" "amazonprincess_FullBodyKG.act[44]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.msg" "amazonprincess_FullBodyKG.act[45]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.msg" "amazonprincess_FullBodyKG.act[46]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.msg" "amazonprincess_FullBodyKG.act[47]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.msg" "amazonprincess_FullBodyKG.act[48]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.msg" "amazonprincess_FullBodyKG.act[49]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.msg" "amazonprincess_FullBodyKG.act[50]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.msg" "amazonprincess_FullBodyKG.act[51]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.msg" "amazonprincess_FullBodyKG.act[52]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.msg" "amazonprincess_FullBodyKG.act[53]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.msg" "amazonprincess_FullBodyKG.act[54]"
		;
connectAttr "amazonprincess_Ctrl_Hips.rz" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Hips.ry" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Hips.rx" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Hips.tz" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Hips.ty" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Hips.tx" "amazonprincess_HipsBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.rz" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.ry" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.rx" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.tz" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.ty" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HipsEffector.tx" "amazonprincess_HipsBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_Hips.msg" "amazonprincess_HipsBPKG.act[0]";
connectAttr "amazonprincess_Ctrl_HipsEffector.msg" "amazonprincess_HipsBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_Spine.rz" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Spine.ry" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Spine.rx" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Spine1.rz" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Spine1.ry" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Spine1.rx" "amazonprincess_ChestBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.rz" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.ry" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.rx" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.tz" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.ty" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.tx" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.rz" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.ry" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.rx" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.tz" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.ty" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.tx" "amazonprincess_ChestBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_Spine.msg" "amazonprincess_ChestBPKG.act[0]";
connectAttr "amazonprincess_Ctrl_Spine1.msg" "amazonprincess_ChestBPKG.act[1]";
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.msg" "amazonprincess_ChestBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.msg" "amazonprincess_ChestBPKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_LeftArm.rz" "amazonprincess_LeftArmBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftArm.ry" "amazonprincess_LeftArmBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftArm.rx" "amazonprincess_LeftArmBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm.rz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftForeArm.ry" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftForeArm.rx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHand.rz" "amazonprincess_LeftArmBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftHand.ry" "amazonprincess_LeftArmBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftHand.rx" "amazonprincess_LeftArmBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.rz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.ry" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.rx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.tz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.ty" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.tx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.rz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.ry" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.rx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.tz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.ty" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.tx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.rz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.ry" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.rx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.tz" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.ty" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.tx" "amazonprincess_LeftArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftArm.msg" "amazonprincess_LeftArmBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftForeArm.msg" "amazonprincess_LeftArmBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_LeftHand.msg" "amazonprincess_LeftArmBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.msg" "amazonprincess_LeftArmBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.msg" "amazonprincess_LeftArmBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.msg" "amazonprincess_LeftArmBPKG.act[6]"
		;
connectAttr "amazonprincess_Ctrl_RightArm.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightArm.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightArm.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightForeArm.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightForeArm.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightForeArm.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHand.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHand.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHand.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.tz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.ty" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightWristEffector.tx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.tz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.ty" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.tx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.rz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.ry" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.rx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.tz" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.ty" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.tx" "amazonprincess_RightArmBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightArm.msg" "amazonprincess_RightArmBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_RightForeArm.msg" "amazonprincess_RightArmBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_RightHand.msg" "amazonprincess_RightArmBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.msg" "amazonprincess_RightArmBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.msg" "amazonprincess_RightArmBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.msg" "amazonprincess_RightArmBPKG.act[6]"
		;
connectAttr "amazonprincess_Ctrl_LeftUpLeg.rz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftUpLeg.ry" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftUpLeg.rx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftLeg.rz" "amazonprincess_LeftLegBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.ry" "amazonprincess_LeftLegBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.rx" "amazonprincess_LeftLegBPKG.dnsm" -na
		;
connectAttr "amazonprincess_Ctrl_LeftFoot.rz" "amazonprincess_LeftLegBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftFoot.ry" "amazonprincess_LeftLegBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftFoot.rx" "amazonprincess_LeftLegBPKG.dnsm" 
		-na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.rz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.ry" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.rx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.tz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.ty" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.tx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.rz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.ry" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.rx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.tz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.ty" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.tx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.rz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.ry" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.rx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.tz" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.ty" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.tx" "amazonprincess_LeftLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftUpLeg.msg" "amazonprincess_LeftLegBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftLeg.msg" "amazonprincess_LeftLegBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_LeftFoot.msg" "amazonprincess_LeftLegBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.msg" "amazonprincess_LeftLegBPKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.msg" "amazonprincess_LeftLegBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.msg" "amazonprincess_LeftLegBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_RightUpLeg.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightUpLeg.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightUpLeg.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightLeg.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightLeg.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightLeg.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFoot.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFoot.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFoot.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.tz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.ty" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.tx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.tz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.ty" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.tx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.rz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.ry" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.rx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.tz" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.ty" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHipEffector.tx" "amazonprincess_RightLegBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightUpLeg.msg" "amazonprincess_RightLegBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_RightLeg.msg" "amazonprincess_RightLegBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_RightFoot.msg" "amazonprincess_RightLegBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.msg" "amazonprincess_RightLegBPKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.msg" "amazonprincess_RightLegBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.msg" "amazonprincess_RightLegBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_Head.rz" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Head.ry" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Head.rx" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Neck.rz" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Neck.ry" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_Neck.rx" "amazonprincess_HeadBPKG.dnsm" -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.rz" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.ry" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.rx" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.tz" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.ty" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_HeadEffector.tx" "amazonprincess_HeadBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_Head.msg" "amazonprincess_HeadBPKG.act[0]";
connectAttr "amazonprincess_Ctrl_Neck.msg" "amazonprincess_HeadBPKG.act[1]";
connectAttr "amazonprincess_Ctrl_HeadEffector.msg" "amazonprincess_HeadBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.tz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.ty" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.tx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.rz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.ry" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.rx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.tz" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.ty" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.tx" "amazonprincess_LeftHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.msg" "amazonprincess_LeftHandBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.msg" "amazonprincess_LeftHandBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.msg" "amazonprincess_LeftHandBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.msg" "amazonprincess_LeftHandBPKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.msg" "amazonprincess_LeftHandBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.msg" "amazonprincess_LeftHandBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.msg" "amazonprincess_LeftHandBPKG.act[6]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.msg" "amazonprincess_LeftHandBPKG.act[7]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.tz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.ty" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.tx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.rz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.ry" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.rx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.tz" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.ty" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.tx" "amazonprincess_RightHandBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.msg" "amazonprincess_RightHandBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.msg" "amazonprincess_RightHandBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.msg" "amazonprincess_RightHandBPKG.act[2]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.msg" "amazonprincess_RightHandBPKG.act[3]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.msg" "amazonprincess_RightHandBPKG.act[4]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.msg" "amazonprincess_RightHandBPKG.act[5]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.msg" "amazonprincess_RightHandBPKG.act[6]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.msg" "amazonprincess_RightHandBPKG.act[7]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.rz" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.ry" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.rx" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.rz" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.ry" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.rx" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.tz" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.ty" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.tx" "amazonprincess_LeftFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.msg" "amazonprincess_LeftFootBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.msg" "amazonprincess_LeftFootBPKG.act[1]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.rz" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.ry" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.rx" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.rz" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.ry" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.rx" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.tz" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.ty" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.tx" "amazonprincess_RightFootBPKG.dnsm"
		 -na;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.msg" "amazonprincess_RightFootBPKG.act[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.msg" "amazonprincess_RightFootBPKG.act[1]"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKFK2State1.InputCharacterDefinition"
		;
connectAttr "amazonprincess_Ctrl_Reference.wm" "HIKFK2State1.ReferenceGX";
connectAttr "amazonprincess_Ctrl_Hips.wm" "HIKFK2State1.HipsGX";
connectAttr "amazonprincess_Ctrl_LeftUpLeg.wm" "HIKFK2State1.LeftUpLegGX";
connectAttr "amazonprincess_Ctrl_LeftLeg.wm" "HIKFK2State1.LeftLegGX";
connectAttr "amazonprincess_Ctrl_LeftFoot.wm" "HIKFK2State1.LeftFootGX";
connectAttr "amazonprincess_Ctrl_RightUpLeg.wm" "HIKFK2State1.RightUpLegGX";
connectAttr "amazonprincess_Ctrl_RightLeg.wm" "HIKFK2State1.RightLegGX";
connectAttr "amazonprincess_Ctrl_RightFoot.wm" "HIKFK2State1.RightFootGX";
connectAttr "amazonprincess_Ctrl_Spine.wm" "HIKFK2State1.SpineGX";
connectAttr "amazonprincess_Ctrl_LeftArm.wm" "HIKFK2State1.LeftArmGX";
connectAttr "amazonprincess_Ctrl_LeftForeArm.wm" "HIKFK2State1.LeftForeArmGX";
connectAttr "amazonprincess_Ctrl_LeftHand.wm" "HIKFK2State1.LeftHandGX";
connectAttr "amazonprincess_Ctrl_RightArm.wm" "HIKFK2State1.RightArmGX";
connectAttr "amazonprincess_Ctrl_RightForeArm.wm" "HIKFK2State1.RightForeArmGX";
connectAttr "amazonprincess_Ctrl_RightHand.wm" "HIKFK2State1.RightHandGX";
connectAttr "amazonprincess_Ctrl_Head.wm" "HIKFK2State1.HeadGX";
connectAttr "amazonprincess_Ctrl_Neck.wm" "HIKFK2State1.NeckGX";
connectAttr "amazonprincess_Ctrl_Spine1.wm" "HIKFK2State1.Spine1GX";
connectAttr "amazonprincess_Ctrl_LeftHandThumb1.wm" "HIKFK2State1.LeftHandThumb1GX"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb2.wm" "HIKFK2State1.LeftHandThumb2GX"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumb3.wm" "HIKFK2State1.LeftHandThumb3GX"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex1.wm" "HIKFK2State1.LeftHandIndex1GX"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex2.wm" "HIKFK2State1.LeftHandIndex2GX"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndex3.wm" "HIKFK2State1.LeftHandIndex3GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb1.wm" "HIKFK2State1.RightHandThumb1GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb2.wm" "HIKFK2State1.RightHandThumb2GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumb3.wm" "HIKFK2State1.RightHandThumb3GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex1.wm" "HIKFK2State1.RightHandIndex1GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex2.wm" "HIKFK2State1.RightHandIndex2GX"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndex3.wm" "HIKFK2State1.RightHandIndex3GX"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFinger1.wm" "HIKFK2State1.LeftFootExtraFinger1GX"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFinger1.wm" "HIKFK2State1.RightFootExtraFinger1GX"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.wm" "HIKEffector2State1.HipsEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.rt" "HIKEffector2State1.HipsEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.rr" "HIKEffector2State1.HipsEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.po" "HIKEffector2State1.HipsEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.pull" "HIKEffector2State1.HipsEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.stiffness" "HIKEffector2State1.HipsEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.wm" "HIKEffector2State1.LeftAnkleEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.rt" "HIKEffector2State1.LeftAnkleEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.rr" "HIKEffector2State1.LeftAnkleEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.po" "HIKEffector2State1.LeftAnkleEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.pull" "HIKEffector2State1.LeftAnkleEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.stiffness" "HIKEffector2State1.LeftAnkleEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.wm" "HIKEffector2State1.RightAnkleEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.rt" "HIKEffector2State1.RightAnkleEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.rr" "HIKEffector2State1.RightAnkleEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.po" "HIKEffector2State1.RightAnkleEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.pull" "HIKEffector2State1.RightAnkleEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.stiffness" "HIKEffector2State1.RightAnkleEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.wm" "HIKEffector2State1.LeftWristEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.rt" "HIKEffector2State1.LeftWristEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.rr" "HIKEffector2State1.LeftWristEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.po" "HIKEffector2State1.LeftWristEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.pull" "HIKEffector2State1.LeftWristEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.stiffness" "HIKEffector2State1.LeftWristEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.wm" "HIKEffector2State1.RightWristEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.rt" "HIKEffector2State1.RightWristEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.rr" "HIKEffector2State1.RightWristEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.po" "HIKEffector2State1.RightWristEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.pull" "HIKEffector2State1.RightWristEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.stiffness" "HIKEffector2State1.RightWristEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.wm" "HIKEffector2State1.LeftKneeEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.rt" "HIKEffector2State1.LeftKneeEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.rr" "HIKEffector2State1.LeftKneeEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.po" "HIKEffector2State1.LeftKneeEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.pull" "HIKEffector2State1.LeftKneeEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.stiffness" "HIKEffector2State1.LeftKneeEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.wm" "HIKEffector2State1.RightKneeEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.rt" "HIKEffector2State1.RightKneeEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.rr" "HIKEffector2State1.RightKneeEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.po" "HIKEffector2State1.RightKneeEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.pull" "HIKEffector2State1.RightKneeEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.stiffness" "HIKEffector2State1.RightKneeEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.wm" "HIKEffector2State1.LeftElbowEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.rt" "HIKEffector2State1.LeftElbowEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.rr" "HIKEffector2State1.LeftElbowEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.po" "HIKEffector2State1.LeftElbowEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.pull" "HIKEffector2State1.LeftElbowEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.stiffness" "HIKEffector2State1.LeftElbowEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.wm" "HIKEffector2State1.RightElbowEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.rt" "HIKEffector2State1.RightElbowEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.rr" "HIKEffector2State1.RightElbowEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.po" "HIKEffector2State1.RightElbowEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.pull" "HIKEffector2State1.RightElbowEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.stiffness" "HIKEffector2State1.RightElbowEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.wm" "HIKEffector2State1.ChestOriginEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.rt" "HIKEffector2State1.ChestOriginEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.rr" "HIKEffector2State1.ChestOriginEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.po" "HIKEffector2State1.ChestOriginEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.pull" "HIKEffector2State1.ChestOriginEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.stiffness" "HIKEffector2State1.ChestOriginEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.wm" "HIKEffector2State1.ChestEndEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.rt" "HIKEffector2State1.ChestEndEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.rr" "HIKEffector2State1.ChestEndEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.po" "HIKEffector2State1.ChestEndEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.pull" "HIKEffector2State1.ChestEndEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.stiffness" "HIKEffector2State1.ChestEndEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.wm" "HIKEffector2State1.LeftShoulderEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.rt" "HIKEffector2State1.LeftShoulderEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.rr" "HIKEffector2State1.LeftShoulderEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.po" "HIKEffector2State1.LeftShoulderEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.pull" "HIKEffector2State1.LeftShoulderEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.stiffness" "HIKEffector2State1.LeftShoulderEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.wm" "HIKEffector2State1.RightShoulderEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.rt" "HIKEffector2State1.RightShoulderEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.rr" "HIKEffector2State1.RightShoulderEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.po" "HIKEffector2State1.RightShoulderEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.pull" "HIKEffector2State1.RightShoulderEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.stiffness" "HIKEffector2State1.RightShoulderEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.wm" "HIKEffector2State1.HeadEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.rt" "HIKEffector2State1.HeadEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.rr" "HIKEffector2State1.HeadEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.po" "HIKEffector2State1.HeadEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.pull" "HIKEffector2State1.HeadEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.stiffness" "HIKEffector2State1.HeadEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.wm" "HIKEffector2State1.LeftHipEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.rt" "HIKEffector2State1.LeftHipEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.rr" "HIKEffector2State1.LeftHipEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.po" "HIKEffector2State1.LeftHipEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.pull" "HIKEffector2State1.LeftHipEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.stiffness" "HIKEffector2State1.LeftHipEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.wm" "HIKEffector2State1.RightHipEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.rt" "HIKEffector2State1.RightHipEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.rr" "HIKEffector2State1.RightHipEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.po" "HIKEffector2State1.RightHipEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.pull" "HIKEffector2State1.RightHipEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.stiffness" "HIKEffector2State1.RightHipEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.wm" "HIKEffector2State1.LeftHandThumbEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.rt" "HIKEffector2State1.LeftHandThumbEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.rr" "HIKEffector2State1.LeftHandThumbEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.po" "HIKEffector2State1.LeftHandThumbEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.pull" "HIKEffector2State1.LeftHandThumbEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.stiffness" "HIKEffector2State1.LeftHandThumbEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.wm" "HIKEffector2State1.LeftHandIndexEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.rt" "HIKEffector2State1.LeftHandIndexEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.rr" "HIKEffector2State1.LeftHandIndexEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.po" "HIKEffector2State1.LeftHandIndexEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.pull" "HIKEffector2State1.LeftHandIndexEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.stiffness" "HIKEffector2State1.LeftHandIndexEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.wm" "HIKEffector2State1.RightHandThumbEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.rt" "HIKEffector2State1.RightHandThumbEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.rr" "HIKEffector2State1.RightHandThumbEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.po" "HIKEffector2State1.RightHandThumbEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.pull" "HIKEffector2State1.RightHandThumbEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.stiffness" "HIKEffector2State1.RightHandThumbEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.wm" "HIKEffector2State1.RightHandIndexEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.rt" "HIKEffector2State1.RightHandIndexEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.rr" "HIKEffector2State1.RightHandIndexEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.po" "HIKEffector2State1.RightHandIndexEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.pull" "HIKEffector2State1.RightHandIndexEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.stiffness" "HIKEffector2State1.RightHandIndexEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.wm" "HIKEffector2State1.LeftFootExtraFingerEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.rt" "HIKEffector2State1.LeftFootExtraFingerEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.rr" "HIKEffector2State1.LeftFootExtraFingerEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.po" "HIKEffector2State1.LeftFootExtraFingerEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.pull" "HIKEffector2State1.LeftFootExtraFingerEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.stiffness" "HIKEffector2State1.LeftFootExtraFingerEffectorStiffness"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.wm" "HIKEffector2State1.RightFootExtraFingerEffectorGX[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.rt" "HIKEffector2State1.RightFootExtraFingerEffectorReachT[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.rr" "HIKEffector2State1.RightFootExtraFingerEffectorReachR[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.po" "HIKEffector2State1.RightFootExtraFingerEffectorPivot[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.pull" "HIKEffector2State1.RightFootExtraFingerEffectorPull"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.stiffness" "HIKEffector2State1.RightFootExtraFingerEffectorStiffness"
		;
connectAttr "HIKEffector2State1.EFF" "HIKPinning2State1.InputEffectorState";
connectAttr "HIKEffector2State1.EFFNA" "HIKPinning2State1.InputEffectorStateNoAux"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.pint" "HIKPinning2State1.HipsEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.pinr" "HIKPinning2State1.HipsEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.pint" "HIKPinning2State1.LeftAnkleEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.pinr" "HIKPinning2State1.LeftAnkleEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.pint" "HIKPinning2State1.RightAnkleEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.pinr" "HIKPinning2State1.RightAnkleEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.pint" "HIKPinning2State1.LeftWristEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.pinr" "HIKPinning2State1.LeftWristEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.pint" "HIKPinning2State1.RightWristEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.pinr" "HIKPinning2State1.RightWristEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.pint" "HIKPinning2State1.LeftKneeEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.pinr" "HIKPinning2State1.LeftKneeEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.pint" "HIKPinning2State1.RightKneeEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.pinr" "HIKPinning2State1.RightKneeEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.pint" "HIKPinning2State1.LeftElbowEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.pinr" "HIKPinning2State1.LeftElbowEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.pint" "HIKPinning2State1.RightElbowEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.pinr" "HIKPinning2State1.RightElbowEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.pint" "HIKPinning2State1.ChestOriginEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.pinr" "HIKPinning2State1.ChestOriginEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.pint" "HIKPinning2State1.ChestEndEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.pinr" "HIKPinning2State1.ChestEndEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.pint" "HIKPinning2State1.LeftShoulderEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.pinr" "HIKPinning2State1.LeftShoulderEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.pint" "HIKPinning2State1.RightShoulderEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.pinr" "HIKPinning2State1.RightShoulderEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.pint" "HIKPinning2State1.HeadEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.pinr" "HIKPinning2State1.HeadEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.pint" "HIKPinning2State1.LeftHipEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.pinr" "HIKPinning2State1.LeftHipEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.pint" "HIKPinning2State1.RightHipEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.pinr" "HIKPinning2State1.RightHipEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.pint" "HIKPinning2State1.LeftHandThumbEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.pinr" "HIKPinning2State1.LeftHandThumbEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.pint" "HIKPinning2State1.LeftHandIndexEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.pinr" "HIKPinning2State1.LeftHandIndexEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.pint" "HIKPinning2State1.RightHandThumbEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.pinr" "HIKPinning2State1.RightHandThumbEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.pint" "HIKPinning2State1.RightHandIndexEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.pinr" "HIKPinning2State1.RightHandIndexEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.pint" "HIKPinning2State1.LeftFootExtraFingerEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.pinr" "HIKPinning2State1.LeftFootExtraFingerEffectorPinR"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.pint" "HIKPinning2State1.RightFootExtraFingerEffectorPinT"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.pinr" "HIKPinning2State1.RightFootExtraFingerEffectorPinR"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKState2FK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2FK1.InputCharacterState"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKState2FK2.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.decs" "HIKState2FK2.InputCharacterState";
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKEffectorFromCharacter1.InputCharacterState"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKEffectorFromCharacter1.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter1.InputPropertySetState"
		;
connectAttr "HIKSolverNode1.decs" "HIKEffectorFromCharacter2.InputCharacterState"
		;
connectAttr "amazonprincess.OutputCharacterDefinition" "HIKEffectorFromCharacter2.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter2.InputPropertySetState"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.po" "HIKState2Effector1.HipsEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.po" "HIKState2Effector1.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.po" "HIKState2Effector1.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.po" "HIKState2Effector1.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.po" "HIKState2Effector1.RightWristEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.po" "HIKState2Effector1.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.po" "HIKState2Effector1.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.po" "HIKState2Effector1.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.po" "HIKState2Effector1.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.po" "HIKState2Effector1.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.po" "HIKState2Effector1.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.po" "HIKState2Effector1.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.po" "HIKState2Effector1.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.po" "HIKState2Effector1.HeadEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.po" "HIKState2Effector1.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.po" "HIKState2Effector1.RightHipEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector1.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector1.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.po" "HIKState2Effector1.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.po" "HIKState2Effector1.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.po" "HIKState2Effector1.LeftFootExtraFingerEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.po" "HIKState2Effector1.RightFootExtraFingerEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter1.OutputEffectorState" "HIKState2Effector1.InputEffectorState"
		;
connectAttr "amazonprincess_Ctrl_HipsEffector.po" "HIKState2Effector2.HipsEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftAnkleEffector.po" "HIKState2Effector2.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightAnkleEffector.po" "HIKState2Effector2.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftWristEffector.po" "HIKState2Effector2.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightWristEffector.po" "HIKState2Effector2.RightWristEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftKneeEffector.po" "HIKState2Effector2.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightKneeEffector.po" "HIKState2Effector2.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftElbowEffector.po" "HIKState2Effector2.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightElbowEffector.po" "HIKState2Effector2.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestOriginEffector.po" "HIKState2Effector2.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_ChestEndEffector.po" "HIKState2Effector2.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftShoulderEffector.po" "HIKState2Effector2.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightShoulderEffector.po" "HIKState2Effector2.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_HeadEffector.po" "HIKState2Effector2.HeadEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHipEffector.po" "HIKState2Effector2.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHipEffector.po" "HIKState2Effector2.RightHipEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector2.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector2.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandThumbEffector.po" "HIKState2Effector2.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightHandIndexEffector.po" "HIKState2Effector2.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_LeftFootExtraFingerEffector.po" "HIKState2Effector2.LeftFootExtraFingerEffectorpivotOffset[0]"
		;
connectAttr "amazonprincess_Ctrl_RightFootExtraFingerEffector.po" "HIKState2Effector2.RightFootExtraFingerEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter2.OutputEffectorState" "HIKState2Effector2.InputEffectorState"
		;
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "AmazonShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "pCube1SG.ss";
connectAttr "pCube1Shape.iog" "pCube1SG.dsm" -na;
connectAttr "pCube1SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pCube1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|imagePlane1|imagePlaneShape1\" \"imageName\" \"C:/Users/Mike/Desktop/Projects/GGJ2015/wall.jpg\" 1668331539 \"C:/Users/Mike/Desktop/Projects/GGJ2015/wall.jpg\" \"sourceImages\"\n1\n\"|imagePlane2|imagePlaneShape2\" \"imageName\" \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" 2297738833 \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" \"sourceImages\"\n2\n\"|imagePlane3|imagePlaneShape3\" \"imageName\" \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" 2297738833 \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" \"sourceImages\"\n3\n\"|imagePlane4|imagePlaneShape4\" \"imageName\" \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" 2297738833 \"C:/Users/Mike/Desktop/Projects/GGJ2015/walkacyle.jpg\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of amazon.ma
