//Maya ASCII 2022 scene
//Name: mirror.ma
//Last modified: Mon, Mar 18, 2024 03:37:29 PM
//Codeset: UTF-8
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.4";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202303271415-baa69b5798";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "AD4A49AE-B641-4D4B-7EB9-259F504D4970";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "BE766333-E547-1D6A-07BA-FAA4CCF217EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 367.78012027011795 148.50777514136811 1.8150900955435496 ;
	setAttr ".r" -type "double3" -3.9383527296282286 89.799999999994711 1.1389545614279971e-13 ;
	setAttr ".rp" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" 2.0232100583529961e-15 -7.9947943891803395e-15 -3.6639465157389116e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B14E2DB9-EB41-FB0C-40A5-78AA3C052267";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 386.97708174483432;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -4.76837158203125e-07 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "24665FDB-7F48-020C-1B58-32AC09BAE4C8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 32.621936386286073 1000.724394292796 -7.1525571791889296e-06 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 2.0414574530979431e-19 -3.3457146041002225e-19 0 ;
	setAttr ".rpt" -type "double3" -2.9025597345789246e-14 -1.8025885547562705e-14 -4.5666595505089478e-15 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "143E0449-ED4F-D66F-C88A-198318FCD8B4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 852.4906570310925;
	setAttr ".ow" 311.78263539691648;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 32.621936386286045 148.23373726170331 -7.152557373046875e-06 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "19C719C7-1C46-DD35-F42E-1C8A2B5E8705";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 32.621936386286045 148.23373726170331 164.66720114351125 ;
	setAttr ".rpt" -type "double3" -2.6400264729416042e-16 0 7.2304845148510882e-16 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "61FA78F5-1140-9140-BA76-63B6B6FF3A8D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 164.66720829606862;
	setAttr ".ow" 243.19112492400194;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 32.621936386286045 148.23373726170331 -7.152557373046875e-06 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "BB384533-C04E-CB95-36D6-DABA81F5D9DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1015.996222628641 0 -7.1525571249441603e-06 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rpt" -type "double3" 1.8158573824060014e-14 4.9232062114032807e-15 -2.2506234920320851e-14 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FC11AA97-474D-E5A8-9E47-A999E58925AF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1015.996222628641;
	setAttr ".ow" 215.92138578635894;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 0 -7.152557373046875e-06 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "cubeSteve";
	rename -uid "226F834B-A240-6C49-358F-79870735F781";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0.0048522008582949638 0 ;
	setAttr ".sp" -type "double3" 0 0.0048522008582949638 0 ;
createNode mesh -n "cubeSteveShape" -p "cubeSteve";
	rename -uid "4572C8CD-8A48-7356-8E4F-5D83648047B7";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.37499999906867743 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "proxyAxorr_fiveFootSix:polySurfaceShape1" -p "cubeSteve";
	rename -uid "176C303B-CC49-BDF4-6F0F-69931CAF0DDE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.8585577 2.7411098 45.667343 
		0.8585577 2.7411098 45.667343 0.8585577 0.89081049 45.667343 0.8585577 0.89081049 
		45.667343 0.8585577 0.89081049 45.667343 0.8585577 0.89081049 45.667343 0.8585577 
		2.7411098 45.667343 0.8585577 2.7411098 45.667343;
	setAttr -s 8 ".vt[0:7]"  -0.5 -2.75 0.5 0.5 -2.75 0.5 -0.5 2.75 0.5
		 0.5 2.75 0.5 -0.5 2.75 -0.5 0.5 2.75 -0.5 -0.5 -2.75 -0.5 0.5 -2.75 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "cubeSteve";
	rename -uid "CD53F729-4146-30BD-7A85-AE9885AE5713";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[5:8]" "f[25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[2]" "f[9:12]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[0:1]" "f[3:4]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[21:24]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "f[17:20]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[13:16]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.125 0 0.625 0.15625 0.375 0.15625 0.125
		 0.15625 0.375 0.59375 0.625 0.59375 0.875 0.15625 0.625 0.125 0.375 0.125 0.125 0.125
		 0.375 0.625 0.625 0.625 0.875 0.125 0.625 0.09375 0.375 0.09375 0.125 0.09375 0.375
		 0.65625 0.625 0.65625 0.875 0.09375 0.625 0.062499996 0.375 0.062499996 0.125 0.062499996
		 0.375 0.6875 0.625 0.6875 0.875 0.062499996 0.625 0.031249998 0.375 0.031249998 0.125
		 0.031249998 0.375 0.71875 0.625 0.71875 0.875 0.031249998 0.625 0.171875 0.375 0.171875
		 0.25 0.375 0.75 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -30.92421 0.013742351 -15.633545 
		29.207108 0.013742351 -15.633545 -30.92421 0.013742351 -75.700928 29.207108 0.013742351 
		-75.700928 29.207108 150.07666 -15.633545 -30.92421 150.07666 -15.633545 -30.92421 
		150.07666 -75.700928 29.207108 150.07666 -75.700928 29.207108 120.06408 -15.633545 
		-30.92421 120.06408 -15.633545 -30.92421 120.06408 -75.700928 29.207108 120.06408 
		-75.700928 29.207108 90.051506 -15.633545 -30.92421 90.051506 -15.633545 -30.92421 
		90.051506 -75.700928 29.207108 90.051506 -75.700928 29.207108 60.038918 -15.633545 
		-30.92421 60.038918 -15.633545 -30.92421 60.038918 -75.700928 29.207108 60.038918 
		-75.700928 29.207108 30.026325 -15.633545 -30.92421 30.026325 -15.633545 -30.92421 
		30.026325 -75.700928 29.207108 30.026325 -75.700928 29.207108 165.08296 -15.633545 
		-30.92421 165.08296 -15.633545 -30.92421 165.08296 -75.700928 29.207108 165.08296 
		-75.700928;
	setAttr -s 28 ".vt[0:27]"  0.35855776 -0.0088901501 46.16734314 1.3585577 -0.0088901501 46.16734314
		 0.35855776 -0.0088901501 45.16734314 1.3585577 -0.0088901501 45.16734314 1.3585577 2.27217269 46.16734314
		 0.35855776 2.27217269 46.16734314 0.35855776 2.27217269 45.16734314 1.3585577 2.27217269 45.16734314
		 1.3585577 1.81596017 46.16734314 0.35855776 1.81596017 46.16734314 0.35855776 1.81596017 45.16734314
		 1.3585577 1.81596017 45.16734314 1.3585577 1.35974765 46.16734314 0.35855776 1.35974765 46.16734314
		 0.35855776 1.35974765 45.16734314 1.3585577 1.35974765 45.16734314 1.3585577 0.90353507 46.16734314
		 0.35855776 0.90353507 46.16734314 0.35855776 0.90353507 45.16734314 1.3585577 0.90353507 45.16734314
		 1.3585577 0.4473224 46.16734314 0.35855776 0.4473224 46.16734314 0.35855776 0.4473224 45.16734314
		 1.3585577 0.4473224 45.16734314 1.3585577 2.50027895 46.16734314 0.35855776 2.50027895 46.16734314
		 0.35855776 2.50027895 45.16734314 1.3585577 2.50027895 45.16734314;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 0 21 0 1 20 0 2 0 0 3 1 0 4 24 0
		 5 25 0 4 5 1 6 10 0 5 6 1 7 11 0 6 7 1 7 4 1 8 4 0 9 5 0 8 9 1 10 14 0 9 10 1 11 15 0
		 10 11 1 11 8 1 12 8 0 13 9 0 12 13 1 14 18 0 13 14 1 15 19 0 14 15 1 15 12 1 16 12 0
		 17 13 0 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1 20 16 0 21 17 0 20 21 1 22 2 0
		 21 22 1 23 3 0 22 23 1 23 20 1 24 25 0 26 6 0 25 26 0 27 7 0 26 27 0 27 24 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 40 -3
		mu 0 4 0 1 32 33
		f 4 44 43 -2 -42
		mu 0 4 35 36 3 2
		f 4 1 5 -1 -5
		mu 0 4 2 3 5 4
		f 4 -6 -44 45 -4
		mu 0 4 1 6 37 32
		f 4 4 2 42 41
		mu 0 4 7 0 33 34
		f 4 -9 6 46 -8
		mu 0 4 9 8 38 39
		f 4 -11 7 48 47
		mu 0 4 10 9 39 40
		f 4 50 49 -13 -48
		mu 0 4 40 41 12 11
		f 4 -14 -50 51 -7
		mu 0 4 8 13 41 38
		f 4 -17 14 8 -16
		mu 0 4 15 14 8 9
		f 4 -19 15 10 9
		mu 0 4 16 15 9 10
		f 4 12 11 -21 -10
		mu 0 4 11 12 18 17
		f 4 -22 -12 13 -15
		mu 0 4 14 19 13 8
		f 4 -25 22 16 -24
		mu 0 4 21 20 14 15
		f 4 -27 23 18 17
		mu 0 4 22 21 15 16
		f 4 20 19 -29 -18
		mu 0 4 17 18 24 23
		f 4 -30 -20 21 -23
		mu 0 4 20 25 19 14
		f 4 -33 30 24 -32
		mu 0 4 27 26 20 21
		f 4 -35 31 26 25
		mu 0 4 28 27 21 22
		f 4 28 27 -37 -26
		mu 0 4 23 24 30 29
		f 4 -38 -28 29 -31
		mu 0 4 26 31 25 20
		f 4 -41 38 32 -40
		mu 0 4 33 32 26 27
		f 4 -43 39 34 33
		mu 0 4 34 33 27 28
		f 4 36 35 -45 -34
		mu 0 4 29 30 36 35
		f 4 -46 -36 37 -39
		mu 0 4 32 37 31 26
		f 4 -47 -52 -51 -49
		mu 0 4 39 38 41 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane2";
	rename -uid "02CE5C91-D145-3F3B-65C8-5B89DF751922";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 15 15 15 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "A9444DF6-8044-F3FD-D998-818853023DF4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube1";
	rename -uid "87CD87CB-7D45-6C57-B833-359B7D7DF45F";
	setAttr ".s" -type "double3" 1 19.12407526361396 118.99424574167067 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "A4ECBDF2-284C-7988-648C-A1949BC3E38A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.24742214381694794 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[70]" -type "float3" 0 0.021282852 0 ;
	setAttr ".pt[72]" -type "float3" 0 -0.031924278 0 ;
	setAttr ".pt[73]" -type "float3" 0 -0.031924278 0 ;
	setAttr ".pt[74]" -type "float3" 0 -0.031924278 0 ;
	setAttr ".pt[75]" -type "float3" 0 -0.031924278 0 ;
	setAttr ".pt[77]" -type "float3" 0 0.021282852 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.021282852 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.021282852 0 ;
	setAttr ".pt[80]" -type "float3" 0 0.053207129 -0.03707261 ;
	setAttr ".pt[81]" -type "float3" 0 -2.7755576e-17 -0.060151361 ;
	setAttr ".pt[82]" -type "float3" 0 -0.031924278 -0.030140681 ;
	setAttr ".pt[83]" -type "float3" 0 -0.031924278 0.013975372 ;
	setAttr ".pt[84]" -type "float3" 0 -0.031924278 0.013975372 ;
	setAttr ".pt[85]" -type "float3" 0 -0.031924278 -0.030140711 ;
	setAttr ".pt[86]" -type "float3" 0 -2.7755576e-17 -0.060151361 ;
	setAttr ".pt[87]" -type "float3" 0 0.053207129 -0.03707261 ;
	setAttr ".pt[88]" -type "float3" 0 0.053207129 0.0037138113 ;
	setAttr ".pt[89]" -type "float3" 0 0.053207129 0.0037138113 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A8308EA8-AF4D-2C12-4E10-38B0FDA577B7";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "80060B97-1544-55F6-00CE-E48FD6605E82";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "430C25D8-ED44-1103-4CC7-22B9A27CE272";
createNode displayLayerManager -n "layerManager";
	rename -uid "8F95BF7A-B94E-8CB1-7CAF-5B979BF393F5";
createNode displayLayer -n "defaultLayer";
	rename -uid "99860932-D944-749D-2882-318AC69A8D50";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BFC9BF33-AF47-6CD1-33F9-249D06007824";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B8D9D402-DF4B-37E1-9E05-2FB41A1339F7";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "162AFCC4-B544-381C-D6DB-AFA0CCBAA26C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1054\n            -height 648\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2122\n            -height 1382\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1054\n            -height 646\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1054\n            -height 648\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2122\\n    -height 1382\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2122\\n    -height 1382\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "040413A0-E94B-1B84-73F1-A3A25440FE65";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "imgRef_sword";
	rename -uid "D8743097-A443-4F94-3282-329D5567E39E";
createNode shadingEngine -n "lambert2SG";
	rename -uid "9C9A6138-D048-A25B-4081-80997CD41D34";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F3E337F5-8F4B-6E9D-EFDD-0AB838AC43CA";
createNode file -n "file1";
	rename -uid "01B764B9-0949-C351-C81B-4788EB57FE3B";
	setAttr ".ftn" -type "string" "/Users/mkolbe2/Desktop/spring2024/vr/dungeonGame/mirror.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7D50E569-DE4A-4A7D-F9E8-42982403EE7D";
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo1";
	rename -uid "9D1D5488-9148-1191-79E2-5D8424AEF559";
createNode shadingEngine -n "proxyAxorr_fiveFootSix:lambert2SG";
	rename -uid "0B8790CA-A241-9D84-36A3-E5A205895CD0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_red";
	rename -uid "3B81B09A-284B-BF39-A3A7-6EBD39980A0C";
	setAttr ".c" -type "float3" 0.38699999 0.030186003 0.030186003 ;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_white";
	rename -uid "7139E2D0-B849-07C3-CFD2-A4A0125FF554";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG";
	rename -uid "52F69616-EF42-50BC-8650-B3B89142B847";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo2";
	rename -uid "F23A0D2B-1A4F-B0FB-0CEF-6CB28A01B99A";
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_black";
	rename -uid "D8037BCF-D542-8426-E553-E69C527B640D";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyDark";
	rename -uid "01F74F67-954B-9E67-B2BC-959581453E32";
	setAttr ".c" -type "float3" 0.039999999 0.039999999 0.039999999 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_blackSG";
	rename -uid "351A3DF1-DB4B-36BC-DB12-E0AB5908BA6D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo3";
	rename -uid "C7067B3F-334D-88E2-B70F-BDAE9376C9D4";
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_darkSG";
	rename -uid "3AA4F2DD-F744-D5A8-E79B-61802B5CAA9D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo4";
	rename -uid "CB601087-4448-98F4-AD60-C18C73AAD9E0";
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle";
	rename -uid "967BE5DD-0840-31D3-866E-E8883A4DBD91";
	setAttr ".c" -type "float3" 0.169 0.169 0.169 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_middleSG";
	rename -uid "8AF82545-5F48-E012-8354-5588A59E5A6C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo5";
	rename -uid "D95FCD63-8F46-75EB-1EB2-2CB0584965E5";
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyLight";
	rename -uid "19469C1D-3C44-11FC-D1E0-7E9ACD758F03";
	setAttr ".c" -type "float3" 0.48199999 0.48199999 0.48199999 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_lightSG";
	rename -uid "05CA40F0-0043-4BCA-D433-0D9956147525";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo6";
	rename -uid "79D0D2B2-9D4E-DADF-36D0-12B4D7A07A88";
createNode nodeGraphEditorInfo -n "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C3CE14D5-634B-5A88-1D65-C9926B23C5C4";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -252.85714721679688;
	setAttr ".tgi[0].ni[0].y" 145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -252.85714721679688;
	setAttr ".tgi[0].ni[1].y" 145.71427917480469;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 54.285713195800781;
	setAttr ".tgi[0].ni[2].y" 145.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -252.85714721679688;
	setAttr ".tgi[0].ni[3].y" 145.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 54.285713195800781;
	setAttr ".tgi[0].ni[4].y" 145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -252.85714721679688;
	setAttr ".tgi[0].ni[5].y" 145.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -252.85714721679688;
	setAttr ".tgi[0].ni[6].y" 145.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 54.285713195800781;
	setAttr ".tgi[0].ni[7].y" 145.71427917480469;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 54.285713195800781;
	setAttr ".tgi[0].ni[8].y" 145.71427917480469;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 54.285713195800781;
	setAttr ".tgi[0].ni[9].y" 145.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 1923;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "8889A9B6-DB45-D7C1-1719-82912DE45D6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[41]" "e[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.54380506277084351;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 11;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "groupId1";
	rename -uid "52AE7C67-F646-68C8-40BD-AE8B69E34147";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "F2C1132C-C549-8B50-FA4E-A891AC9C0E41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[5:8]" "f[25]";
createNode groupId -n "groupId2";
	rename -uid "8F9FAAE0-9049-5EB6-631E-9F8BAC2C436E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "DB350D57-614F-8364-CA7F-888C5056F2FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2]" "f[9:12]";
createNode groupId -n "groupId3";
	rename -uid "0415A1F4-D141-3121-CC33-7BA44A256214";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "B7206389-5C45-A286-E295-D9BFA0FE2D89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:1]" "f[3:4]";
createNode groupId -n "groupId4";
	rename -uid "96E0FD84-5849-9980-69E9-0C8EAC3706A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "20B7E6C7-5A44-A567-38CA-909ACA8687DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[21:24]";
createNode groupId -n "groupId5";
	rename -uid "E8F440BA-5145-950C-4088-CEB43E38BCD9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "46AC9A61-2444-0080-A645-8BB26F483A7B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[17:20]";
createNode groupId -n "groupId6";
	rename -uid "DF7A0515-6D48-5010-3637-FE92D3432A13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "319C426E-7840-7351-EA4A-448E097C3849";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[13:16]";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "F90F00A7-4743-03BC-1692-298F14882BD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[25]" "e[27]" "e[30:31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.59777611494064331;
	setAttr ".dr" no;
	setAttr ".re" 30;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyPlane -n "polyPlane2";
	rename -uid "6AC35C6B-8B4A-A899-AD5E-81BFD71105CF";
	setAttr ".ax" -type "double3" 1 0 0 ;
	setAttr ".w" 9.44;
	setAttr ".h" 12.14;
createNode polyCube -n "polyCube1";
	rename -uid "FAB894EE-654D-F370-564A-E8A96C945568";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "5A577200-7D47-55EB-1ACC-92A143784434";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.52549266815185547;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "274BA2E8-3E44-E573-7284-9BA39A4E68B0";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -1.74828589 0.21571617 0
		 -1.74828589 0.21571617 0 1.79340327 0.21571617 0 1.79340327 0.21571617 0 1.79340327
		 -0.1776486 0 1.79340327 -0.1776486 0 -1.74828589 -0.1776486 0 -1.74828589 -0.1776486;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "B389DE5A-7046-FA4D-5DEC-4599484E060E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.39009168744087219;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "FC0508D2-534D-20D9-3BCA-1DA955CA5B56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.64775657653808594;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "D4CC0639-DF46-BE7A-A719-F3B94BFD0C42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.50445479154586792;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "4FB35F25-FE4E-1699-C7F2-ECAD3B0571C1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[12:19]" -type "float3"  0 0 -0.071829617 0 0 -0.071829617
		 0 0 0.082090989 0 0 0.082090989 0 0 -0.054727327 0 0 -0.054727327 0 0 0.04617618
		 0 0 0.04617618;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "C4AB8367-964D-41C9-A44F-C7AF0A12E82B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[6:7]" "e[16]" "e[24]" "e[32]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.12472723424434662;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "028469DB-4245-AE31-3C6E-AE8261660393";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.78746617 -0.26679581 ;
	setAttr ".tk[1]" -type "float3" 0 0.78746617 -0.26679581 ;
	setAttr ".tk[2]" -type "float3" 0 -0.69169283 -0.283898 ;
	setAttr ".tk[3]" -type "float3" 0 -0.69169283 -0.283898 ;
	setAttr ".tk[4]" -type "float3" 0 -0.71297562 0.28902894 ;
	setAttr ".tk[5]" -type "float3" 0 -0.71297562 0.28902894 ;
	setAttr ".tk[6]" -type "float3" 0 0.78746629 0.2479834 ;
	setAttr ".tk[7]" -type "float3" 0 0.78746629 0.2479834 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "4178A340-1747-EF7A-49A2-BDA43C1A4DF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[10:11]" "e[19]" "e[27]" "e[35:37]" "e[39]" "e[41]" "e[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.4763561487197876;
	setAttr ".dr" no;
	setAttr ".re" 27;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "F464D0F3-E843-5D1A-2CFA-6EBD3FE58F5A";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[20:39]" -type "float3"  0 0 0.00099516369 0 0 0.00099516369
		 0 0 -0.0048211478 0 0 0.00099516369 0 0 0.0048211478 0 0 0.00099516369 0 0 0.00099516369
		 0 0 0.0048211478 0 0 0.00099516369 0 0 -0.0048211478 0 0 0.16744789 0 0 0.16357972
		 0 0 0.17375445 0 0 0.1968561 0 0 0.1968561 0 0 0.17375444 0 0 0.16357972 0 0 0.16744788
		 0 0 0.1989892 0 0 0.1989892;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "43D6A32C-F441-EDCA-AE8E-5CBFAAD5F592";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.24587267637252808;
	setAttr ".re" 27;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "531F89C4-974E-0114-A4C1-56A53D15FB61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[16]" "e[24]" "e[32]" "e[56:57]" "e[59]" "e[61]" "e[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.76138782501220703;
	setAttr ".dr" no;
	setAttr ".re" 56;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "C296A0F5-544B-1415-C86B-EA86A83BC2E3";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.13833854 -0.12142625 ;
	setAttr ".tk[5]" -type "float3" 0 -0.13833854 -0.12142625 ;
	setAttr ".tk[6]" -type "float3" 0 0.10641426 -0.097483054 ;
	setAttr ".tk[7]" -type "float3" 0 0.10641426 -0.097483054 ;
	setAttr ".tk[33]" -type "float3" 0 0.13833854 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.13833854 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.15962139 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.15962139 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.0092561543 0.082283951 ;
	setAttr ".tk[41]" -type "float3" 0 -0.0467887 0.12527001 ;
	setAttr ".tk[42]" -type "float3" 0 -0.10283354 0.10109035 ;
	setAttr ".tk[43]" -type "float3" 0 -0.22097255 -0.0045837071 ;
	setAttr ".tk[44]" -type "float3" 0 -0.22097255 -0.0045837071 ;
	setAttr ".tk[45]" -type "float3" 0 -0.10283354 0.10109035 ;
	setAttr ".tk[46]" -type "float3" 0 -0.0467887 0.12527001 ;
	setAttr ".tk[47]" -type "float3" 0 0.0092561543 0.082283951 ;
	setAttr ".tk[48]" -type "float3" 0 0.10391687 -0.026076742 ;
	setAttr ".tk[49]" -type "float3" 0 0.10391687 -0.026076742 ;
	setAttr ".tk[50]" -type "float3" 0 -0.11705568 0.13891295 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.19428627 ;
	setAttr ".tk[52]" -type "float3" 0 0.095772833 0.13299586 ;
	setAttr ".tk[53]" -type "float3" 0 0.095772833 -0.045173261 ;
	setAttr ".tk[54]" -type "float3" 0 0.095772833 -0.045173261 ;
	setAttr ".tk[55]" -type "float3" 0 0.095772833 0.13299586 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.19428627 ;
	setAttr ".tk[57]" -type "float3" 0 -0.11705568 0.13891295 ;
	setAttr ".tk[58]" -type "float3" 0 -0.11705568 -0.043786034 ;
	setAttr ".tk[59]" -type "float3" 0 -0.11705568 -0.043786034 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "BDB06E80-8F41-05F1-FEF4-C59F89D3B01B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[56:57]" "e[59]" "e[61]" "e[63]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.51386934518814087;
	setAttr ".dr" no;
	setAttr ".re" 56;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "18F0A3EB-B74A-11A3-ABAA-A4A7B7269242";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.17026281 0.12142625 ;
	setAttr ".tk[1]" -type "float3" 0 0.17026281 0.12142625 ;
	setAttr ".tk[2]" -type "float3" 0 -0.15962139 0.12826718 ;
	setAttr ".tk[3]" -type "float3" 0 -0.15962139 0.12826718 ;
	setAttr ".tk[60]" -type "float3" 0 -0.13833854 -0.12008642 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.16793518 ;
	setAttr ".tk[62]" -type "float3" 0 0.11705568 -0.12284638 ;
	setAttr ".tk[63]" -type "float3" 0 0.11705568 0.038618401 ;
	setAttr ".tk[64]" -type "float3" 0 0.11705568 0.038618401 ;
	setAttr ".tk[65]" -type "float3" 0 0.11705568 -0.12284638 ;
	setAttr ".tk[66]" -type "float3" 0 0 -0.16793518 ;
	setAttr ".tk[67]" -type "float3" 0 -0.13833854 -0.12008642 ;
	setAttr ".tk[68]" -type "float3" 0 -0.13833854 0.041378308 ;
	setAttr ".tk[69]" -type "float3" 0 -0.13833854 0.041378308 ;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "50CABCDF-3A4E-7A3C-7BF0-089823020B0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[16]" "e[24]" "e[32]" "e[116:117]" "e[119]" "e[121]" "e[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 19.12407526361396 0 0 0 0 118.99424574167067 0
		 0 0 0 1;
	setAttr ".wt" 0.4867001473903656;
	setAttr ".re" 116;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5B222E7A-7E47-F8E1-842C-D6B981572BF7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2492.4784214179781 -1411.6862698111368 ;
	setAttr ".tgi[0].vh" -type "double2" 2093.9638020416428 1007.5360019038278 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -348.57144165039062;
	setAttr ".tgi[0].ni[0].y" 135.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -655.71429443359375;
	setAttr ".tgi[0].ni[1].y" 114.28571319580078;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -41.428569793701172;
	setAttr ".tgi[0].ni[2].y" 135.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 265.71429443359375;
	setAttr ".tgi[0].ni[3].y" 114.28571319580078;
	setAttr ".tgi[0].ni[3].nvs" 1923;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :lambert1;
	setAttr ".it" -type "float3" 0.5419355 0.5419355 0.5419355 ;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "cubeSteveShape.iog.og[0].gid";
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.mwc" "cubeSteveShape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "cubeSteveShape.iog.og[1].gid";
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.mwc" "cubeSteveShape.iog.og[1].gco"
		;
connectAttr "groupId3.id" "cubeSteveShape.iog.og[2].gid";
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.mwc" "cubeSteveShape.iog.og[2].gco"
		;
connectAttr "groupId4.id" "cubeSteveShape.iog.og[3].gid";
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.mwc" "cubeSteveShape.iog.og[3].gco"
		;
connectAttr "groupId5.id" "cubeSteveShape.iog.og[4].gid";
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.mwc" "cubeSteveShape.iog.og[4].gco"
		;
connectAttr "groupId6.id" "cubeSteveShape.iog.og[5].gid";
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.mwc" "cubeSteveShape.iog.og[5].gco"
		;
connectAttr "polySplitRing2.out" "cubeSteveShape.i";
connectAttr "polyPlane2.out" "pPlaneShape2.i";
connectAttr "polySplitRing12.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "imgRef_sword.c";
connectAttr "imgRef_sword.oc" "lambert2SG.ss";
connectAttr "pPlaneShape2.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "imgRef_sword.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.msg" "proxyAxorr_fiveFootSix:materialInfo1.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.msg" "proxyAxorr_fiveFootSix:materialInfo1.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.oc" "proxyAxorr_fiveFootSix:lambert2SG.ss"
		;
connectAttr "cubeSteveShape.iog.og[0]" "proxyAxorr_fiveFootSix:lambert2SG.dsm" -na
		;
connectAttr "groupId1.msg" "proxyAxorr_fiveFootSix:lambert2SG.gn" -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.oc" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.ss"
		;
connectAttr "groupId2.msg" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.gn" -na;
connectAttr "cubeSteveShape.iog.og[1]" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.msg" "proxyAxorr_fiveFootSix:materialInfo2.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" "proxyAxorr_fiveFootSix:materialInfo2.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.oc" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.ss"
		;
connectAttr "groupId3.msg" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.gn" -na;
connectAttr "cubeSteveShape.iog.og[2]" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.msg" "proxyAxorr_fiveFootSix:materialInfo3.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" "proxyAxorr_fiveFootSix:materialInfo3.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.oc" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.ss"
		;
connectAttr "groupId4.msg" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.gn" -na;
connectAttr "cubeSteveShape.iog.og[3]" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.msg" "proxyAxorr_fiveFootSix:materialInfo4.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" "proxyAxorr_fiveFootSix:materialInfo4.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.oc" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.ss"
		;
connectAttr "groupId5.msg" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.gn" -na;
connectAttr "cubeSteveShape.iog.og[4]" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.msg" "proxyAxorr_fiveFootSix:materialInfo5.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" "proxyAxorr_fiveFootSix:materialInfo5.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.oc" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.ss"
		;
connectAttr "groupId6.msg" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.gn" -na;
connectAttr "cubeSteveShape.iog.og[5]" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.msg" "proxyAxorr_fiveFootSix:materialInfo6.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" "proxyAxorr_fiveFootSix:materialInfo6.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "groupParts6.og" "polySplitRing1.ip";
connectAttr "cubeSteveShape.wm" "polySplitRing1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "cubeSteveShape.wm" "polySplitRing2.mp";
connectAttr "polyTweak1.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak2.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak4.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polyTweak5.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak6.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "imgRef_sword.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.pa" ":renderPartition.st" 
		-na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.pa" ":renderPartition.st"
		 -na;
connectAttr "imgRef_sword.msg" ":defaultShaderList1.s" -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of mirror.ma
