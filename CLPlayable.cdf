(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    119648,       2993]
NotebookOptionsPosition[    109525,       2845]
NotebookOutlinePosition[    110012,       2865]
CellTagsIndexPosition[    109969,       2862]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"myIncidenceList", "[", 
   RowBox[{"graph_", ",", "vertex_"}], "]"}], ":=", 
  RowBox[{"Select", "[", 
   RowBox[{"graph", ",", 
    RowBox[{
     RowBox[{"!", 
      RowBox[{"FreeQ", "[", 
       RowBox[{"#", ",", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"DirectedEdge", "|", "UndirectedEdge"}], ")"}], "[", 
         RowBox[{
          RowBox[{"PatternSequence", "[", 
           RowBox[{"vertex", ",", "_"}], "]"}], "|", 
          RowBox[{"PatternSequence", "[", 
           RowBox[{"_", ",", "vertex"}], "]"}]}], "]"}]}], "]"}]}], "&"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"64036738-e645-4509-af24-1816f55ca6cf"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redundantVertexQ", "[", 
   RowBox[{"vertex_", ",", "weightedEdges_"}], "]"}], ":=", 
  RowBox[{"MatchQ", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"myPropertyValue", "[", 
       RowBox[{"#", ",", "EdgeWeight"}], "]"}], "&"}], "/@", 
     RowBox[{"myIncidenceList", "[", 
      RowBox[{"weightedEdges", ",", "vertex"}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"OrderlessPatternSequence", "[", 
      RowBox[{"2", ",", "2", ",", "1"}], "]"}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"0da18fef-02fe-4e9b-89af-62de1da0f3f0"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redundantOutQ", "[", 
   RowBox[{"weightedEdge_", ",", "weightedEdges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"myPropertyValue", "[", 
     RowBox[{"weightedEdge", ",", "EdgeWeight"}], "]"}], "\[Equal]", "1"}], "&&", 
   RowBox[{"redundantVertexQ", "[", 
    RowBox[{
     RowBox[{"outVertex", "[", "weightedEdge", "]"}], ",", "weightedEdges"}], 
    "]"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"6defee82-904c-4ee4-89fa-aa55f25f5b6e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redundantEdgeQOld", "[", 
   RowBox[{"weightedEdge_", ",", "weightedEdges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"myPropertyValue", "[", 
      RowBox[{"weightedEdge", ",", "EdgeWeight"}], "]"}], "\[Equal]", "1"}], "&&", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"redundantVertexQ", "[", 
       RowBox[{
        RowBox[{"outVertex", "[", "weightedEdge", "]"}], ",", 
        "weightedEdges"}], "]"}], "||", 
      RowBox[{"redundantVertexQ", "[", 
       RowBox[{
        RowBox[{"inVertex", "[", "weightedEdge", "]"}], ",", 
        "weightedEdges"}], "]"}]}], ")"}]}], "||", 
   RowBox[{
    RowBox[{
     RowBox[{"myPropertyValue", "[", 
      RowBox[{"weightedEdge", ",", "EdgeWeight"}], "]"}], "\[Equal]", "2"}], "&&", 
    RowBox[{"redundantVertexQ", "[", 
     RowBox[{
      RowBox[{"outVertex", "[", "weightedEdge", "]"}], ",", "weightedEdges"}],
      "]"}]}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"493ce1b2-cb05-4d0b-b80b-4617b9742e53"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redundantEdgeQ", "[", 
   RowBox[{"weightedEdge_", ",", "weightedEdges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"myPropertyValue", "[", 
     RowBox[{"weightedEdge", ",", "EdgeWeight"}], "]"}], "\[Equal]", "1"}], "&&", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"redundantVertexQ", "[", 
      RowBox[{
       RowBox[{"outVertex", "[", "weightedEdge", "]"}], ",", 
       "weightedEdges"}], "]"}], "||", 
     RowBox[{"redundantVertexQ", "[", 
      RowBox[{
       RowBox[{"inVertex", "[", "weightedEdge", "]"}], ",", "weightedEdges"}],
       "]"}]}], ")"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"314c49e6-b3a3-4d7e-bbcf-cfdc88b82ed8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"shortenEdgesStep", "[", "graph_", "]"}], ":=", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"duoVert", "=", 
      RowBox[{
       RowBox[{"SelectFirst", "[", 
        RowBox[{
         RowBox[{"VertexList", "[", "graph", "]"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"VertexDegree", "[", 
            RowBox[{"graph", ",", "#"}], "]"}], "\[Equal]", "2"}], "&"}]}], 
        "]"}], "/.", 
       RowBox[{
        RowBox[{"Missing", "[", "_", "]"}], "\[Rule]", 
        RowBox[{"{", "}"}]}]}]}], "}"}], ",", 
    RowBox[{"EdgeAdd", "[", 
     RowBox[{
      RowBox[{"VertexDelete", "[", 
       RowBox[{"graph", ",", "duoVert"}], "]"}], ",", 
      RowBox[{"Replace", "[", 
       RowBox[{
        RowBox[{"AdjacencyList", "[", 
         RowBox[{"graph", ",", "duoVert"}], "]"}], ",", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x_", ",", "y_"}], "}"}], "\[RuleDelayed]", 
         RowBox[{"x", "\[UndirectedEdge]", "y"}]}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"743feca4-38ae-4e8c-8049-4f3a4aec46bd"],

Cell[BoxData[
 RowBox[{
  RowBox[{"simpleShortenedEdges", "[", "graph_", "]"}], ":=", 
  RowBox[{"FixedPoint", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"SimpleGraph", "[", 
      RowBox[{"shortenEdgesStep", "[", "#", "]"}], "]"}], "&"}], ",", 
    "graph"}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"08c8fde7-98e5-44ab-a348-77d5dae7573d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"voronoiGraph", "[", 
   RowBox[{"vertexNum_", "?", "EvenQ"}], "]"}], ":=", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"edges", "=", 
      RowBox[{"EdgeList", "[", 
       RowBox[{"simpleShortenedEdges", "[", 
        RowBox[{
         RowBox[{"MeshPrimitives", "[", 
          RowBox[{
           RowBox[{"VoronoiMesh", "[", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"1", ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"vertexNum", "/", "2"}], "+", "1"}], ",", "2"}], 
               "}"}]}], "]"}], "]"}], ",", "1"}], "]"}], "/.", 
         RowBox[{
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{"a_", ",", "b_"}], "}"}], "]"}], "\[RuleDelayed]", 
          RowBox[{"UndirectedEdge", "[", 
           RowBox[{"a", ",", "b"}], "]"}]}]}], "]"}], "]"}]}], "}"}], ",", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"VertexCount", "[", 
        RowBox[{"Graph", "[", "edges", "]"}], "]"}], "\[Equal]", 
       "vertexNum"}], ",", "edges", ",", 
      RowBox[{"voronoiGraph", "[", "vertexNum", "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"2ae1160b-7865-4c9f-b376-d84a1c93baa5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"semiRandomTrivalentPlanar", "[", "vertexNum_", "]"}], ":=", 
  RowBox[{"EdgeList", "[", 
   RowBox[{"DirectedGraph", "[", 
    RowBox[{
     RowBox[{"voronoiGraph", "[", "vertexNum", "]"}], ",", "\"\<Random\>\""}],
     "]"}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"6a2252b1-e1b5-41fd-939a-7df3a911b850"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgeWeights", "=", 
   RowBox[{"Range", "[", "2", "]"}]}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"79ea273d-d3fd-48fd-9127-49a77dd049db"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redEdgeSize", "=", ".010"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"a64cf646-9d45-4a0d-a0cd-24bf608d78a7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redArrowSize", "=", 
   RowBox[{"8.5", "*", "redEdgeSize"}]}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"17990809-9292-4b63-a074-4e10e69edb2d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"blueExpansion", "=", "1.3"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"42f2e482-7122-49be-8b4d-9f48dfd3f29f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"vertexExpansion", "=", "2.75"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"4fb4d4a4-8131-4d5b-87f3-ee1fdbe3884c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"clEdge", "[", 
   RowBox[{"edge_", ",", "weight_"}], "]"}], ":=", 
  RowBox[{"Property", "[", 
   RowBox[{"edge", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"EdgeWeight", "\[Rule]", "weight"}], ",", 
      RowBox[{"weight", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"1", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"EdgeStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Red", ",", 
               RowBox[{"Thickness", "[", "redEdgeSize", "]"}], ",", 
               RowBox[{"Opacity", "[", "1", "]"}]}], "}"}]}], ",", 
            RowBox[{"EdgeShapeFunction", "\[Rule]", 
             RowBox[{"GraphElementData", "[", 
              RowBox[{"\"\<ShortUnfilledArrow\>\"", ",", 
               RowBox[{"\"\<ArrowSize\>\"", "\[Rule]", "redArrowSize"}]}], 
              "]"}]}]}], "}"}]}], ",", 
         RowBox[{"2", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"EdgeStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Blue", ",", 
               RowBox[{"Thickness", "[", 
                RowBox[{"redEdgeSize", "*", "blueExpansion"}], "]"}], ",", 
               RowBox[{"Opacity", "[", "1", "]"}]}], "}"}]}], ",", 
            RowBox[{"EdgeShapeFunction", "\[Rule]", 
             RowBox[{"GraphElementData", "[", 
              RowBox[{"\"\<ShortUnfilledArrow\>\"", ",", 
               RowBox[{"\"\<ArrowSize\>\"", "\[Rule]", 
                RowBox[{"redArrowSize", "*", "blueExpansion"}]}]}], "]"}]}]}],
            "}"}]}]}], "}"}]}]}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"5a2023b4-e980-4a65-8660-b82482288a05"],

Cell[BoxData[
 RowBox[{
  RowBox[{"outVertex", "[", "expr_", "]"}], ":=", 
  RowBox[{"FirstCase", "[", 
   RowBox[{"expr", ",", 
    RowBox[{
     RowBox[{"_", "\[DirectedEdge]", "x_"}], "\[RuleDelayed]", "x"}], ",", 
    RowBox[{"Missing", "[", "\"\<a\>\"", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"d5227e0e-43b2-487a-923c-09f100c71f60"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inVertex", "[", "expr_", "]"}], ":=", 
  RowBox[{"FirstCase", "[", 
   RowBox[{"expr", ",", 
    RowBox[{
     RowBox[{"x_", "\[DirectedEdge]", "_"}], "\[RuleDelayed]", "x"}], ",", 
    RowBox[{"Missing", "[", "\"\<b\>\"", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"98cfdd2c-4d71-40bd-9485-8c63f548f77e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inEdges", "[", 
   RowBox[{"vertex_", ",", "edges_"}], "]"}], ":=", 
  RowBox[{"Select", "[", 
   RowBox[{"edges", ",", 
    RowBox[{
     RowBox[{"!", 
      RowBox[{"FreeQ", "[", 
       RowBox[{"#", ",", 
        RowBox[{"_", "\[DirectedEdge]", "vertex"}]}], "]"}]}], "&"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"dcd613b8-a4fe-4607-80c9-b25225d88944"],

Cell[BoxData[
 RowBox[{
  RowBox[{"vertexCapacity", "=", "2"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"12e7893b-611d-48f7-b8eb-f29786dd15e1"],

Cell[BoxData[
 RowBox[{
  RowBox[{"myPropertyValue", "[", 
   RowBox[{"object_", ",", "property_"}], "]"}], ":=", 
  RowBox[{"FirstCase", "[", 
   RowBox[{"object", ",", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"property", "\[Rule]", "x_"}], ")"}], "\[RuleDelayed]", "x"}], 
    ",", 
    RowBox[{"Missing", "[", "\"\<c\>\"", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"cba397ae-7d05-404c-a81d-c1a3128b4513"],

Cell[BoxData[
 RowBox[{
  RowBox[{"weightedIn", "[", 
   RowBox[{"vertex_", ",", "grid_"}], "]"}], ":=", 
  RowBox[{"Total", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"myPropertyValue", "[", 
      RowBox[{"#", ",", "EdgeWeight"}], "]"}], "&"}], "/@", 
    RowBox[{"inEdges", "[", 
     RowBox[{"vertex", ",", "grid"}], "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"edea7cf7-6eeb-4115-82df-51146e196e82"],

Cell[BoxData[
 RowBox[{
  RowBox[{"vertexDegree", "=", "3"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"858fbe27-29fd-438a-930e-11a06ff4f599"],

Cell[BoxData[
 RowBox[{
  RowBox[{"incState", "[", 
   RowBox[{"state_", ",", "indexedPos_", ",", "i_"}], "]"}], ":=", 
  RowBox[{"ReplacePart", "[", 
   RowBox[{"state", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"-", "1"}], "\[Rule]", 
      RowBox[{"indexedPos", "[", 
       RowBox[{"[", 
        RowBox[{"i", ",", 
         RowBox[{
          RowBox[{"state", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "]"}], "]"}], "+", "1"}]}], 
        "]"}], "]"}]}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"f7d5ac4c-3ccb-4a26-aa29-4c8981086225"],

Cell[BoxData[
 RowBox[{
  RowBox[{"tryPossibilitiesStep", "[", 
   RowBox[{
   "state_", ",", "test_", ",", "possibilities_", ",", "indexedPos_", ",", 
    "i_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"myI", "=", "i"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"test", "[", 
         RowBox[{
          RowBox[{"state", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"-", "1"}], ",", 
             RowBox[{"-", "1"}]}], "]"}], "]"}], ",", 
          RowBox[{"Last", "/@", "state"}]}], "]"}], ",", 
        RowBox[{
         RowBox[{"myI", "++"}], ";", 
         RowBox[{"Append", "[", 
          RowBox[{"state", ",", 
           RowBox[{"Quiet", "[", 
            RowBox[{"Check", "[", 
             RowBox[{
              RowBox[{"indexedPos", "[", 
               RowBox[{"[", 
                RowBox[{"myI", ",", "1"}], "]"}], "]"}], ",", "Nothing"}], 
             "]"}], "]"}]}], "]"}]}], ",", 
        RowBox[{"incState", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"state", "[", 
              RowBox[{"[", 
               RowBox[{
                RowBox[{"-", "1"}], ",", "1"}], "]"}], "]"}], "\[Equal]", 
             RowBox[{"Length", "[", 
              RowBox[{"possibilities", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ",", 
            RowBox[{"NestWhile", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"myI", "--"}], ";", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", 
                   RowBox[{";;", 
                    RowBox[{"-", "2"}]}], "]"}], "]"}]}], ")"}], "&"}], ",", 
              "state", ",", 
              RowBox[{
               RowBox[{
                RowBox[{"#", "[", 
                 RowBox[{"[", 
                  RowBox[{
                   RowBox[{"-", "1"}], ",", "1"}], "]"}], "]"}], "\[Equal]", 
                RowBox[{"Length", "[", 
                 RowBox[{"possibilities", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "&"}]}], "]"}], 
            ",", "state"}], "]"}], ",", "indexedPos", ",", "myI"}], "]"}]}], 
       "]"}], ",", "myI"}], "}"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"f70d0c09-efd3-4a8c-bf3a-8442d8e982f8"],

Cell[BoxData[
 RowBox[{"SetAttributes", "[", 
  RowBox[{"tryPossibilities", ",", "HoldFirst"}], "]"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"b19d6ceb-2cc3-45fe-8d33-70f58e00e337"],

Cell[BoxData[
 RowBox[{
  RowBox[{"tryPossibilities", "[", 
   RowBox[{"pauseIfChanged_", ",", "possibilities_", ",", "test_"}], "]"}], ":=", 
  RowBox[{"Identity", "@", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"initParam", "=", "pauseIfChanged"}], "}"}], ",", 
     RowBox[{"Last", "/@", 
      RowBox[{"With", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"indexedPos", "=", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Normal", "[", 
              RowBox[{"PositionIndex", "[", "#", "]"}], "]"}], "/.", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"x_", "\[Rule]", 
                RowBox[{"{", "y_", "}"}]}], ")"}], "\[RuleDelayed]", 
              RowBox[{"y", "\[Rule]", "x"}]}]}], "&"}], "/@", 
           "possibilities"}]}], "}"}], ",", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"i", "=", "1"}], "}"}], ",", 
          RowBox[{"With", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"satisfying", "=", 
              RowBox[{"NestWhile", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"satisfyProgress", "=", 
                    RowBox[{"N", "[", 
                    RowBox[{"i", "/", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"Length", "[", "possibilities", "]"}], "+", "1"}],
                     ")"}]}], "]"}]}], ";", 
                   RowBox[{
                    RowBox[{"tryPossibilitiesStep", "[", 
                    RowBox[{
                    "#", ",", "test", ",", "possibilities", ",", "indexedPos",
                     ",", "i"}], "]"}], "/.", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"x_", ",", "y_"}], "}"}], "\[RuleDelayed]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"i", "=", "y"}], ";", "x"}], ")"}]}]}]}], ")"}], 
                 "&"}], ",", 
                RowBox[{"{", 
                 RowBox[{"indexedPos", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", "1"}], "]"}], "]"}], "}"}], ",", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"0", "<", "i", "<=", 
                    RowBox[{"Length", "[", "possibilities", "]"}]}], "&&", 
                   RowBox[{"initParam", "==", "pauseIfChanged"}]}], ")"}], 
                 "&"}]}], "]"}]}], "}"}], ",", 
            RowBox[{
             RowBox[{"satisfyProgress", "=", "1"}], ";", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"initParam", "\[Equal]", "pauseIfChanged"}], ",", 
               "satisfying", ",", 
               RowBox[{"Throw", "[", 
                RowBox[{
                 RowBox[{"{", "}"}], ",", "\"\<changedParam\>\""}], "]"}]}], 
              "]"}]}]}], "]"}]}], "]"}]}], "]"}]}]}], "]"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"cb9484f7-af92-440f-a07c-0540e68afcd9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"flippableQ", "[", 
   RowBox[{"edge_", ",", "edges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"weightedIn", "[", 
     RowBox[{
      RowBox[{"outVertex", "[", "edge", "]"}], ",", "edges"}], "]"}], "-", 
    RowBox[{"myPropertyValue", "[", 
     RowBox[{"edge", ",", "EdgeWeight"}], "]"}]}], "\[GreaterEqual]", 
   "vertexCapacity"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"de9aff00-b638-4028-a728-61c618a1d82b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgeFlip", "[", "expr_", "]"}], ":=", 
  RowBox[{"expr", "/.", 
   RowBox[{
    RowBox[{"x_", "\[DirectedEdge]", "y_"}], "\[RuleDelayed]", 
    RowBox[{"y", "\[DirectedEdge]", "x"}]}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"9c22da29-ef6d-45b3-8c47-ccf99c179be3"],

Cell[BoxData[
 RowBox[{
  RowBox[{"tryFlipOld", "[", 
   RowBox[{"edge_", ",", "edges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{"flippableQ", "[", 
      RowBox[{"edge", ",", "edges"}], "]"}], ",", "edgeFlip", ",", 
     "Identity"}], "]"}], "[", "edge", "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"32dbe823-b121-452c-a4f6-94d7ec7ecbd4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"tryFlip", "[", 
   RowBox[{"edges_", ",", "i_"}], "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
    RowBox[{"myPropertyValue", "[", 
     RowBox[{
      RowBox[{"edges", "[", 
       RowBox[{"[", "i", "]"}], "]"}], ",", "EdgeWeight"}], "]"}], ",", "1", 
    ",", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"flippableQ", "[", 
       RowBox[{
        RowBox[{"edges", "[", 
         RowBox[{"[", "i", "]"}], "]"}], ",", "edges"}], "]"}], ",", 
      RowBox[{"MapAt", "[", 
       RowBox[{"edgeFlip", ",", "edges", ",", "i"}], "]"}], ",", "edges"}], 
     "]"}], ",", "2", ",", 
    RowBox[{"flipRedundantSequence", "[", 
     RowBox[{"edges", ",", "i"}], "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"e4dad57b-0a4e-436a-abdb-8bc2c45949b9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"allChangesOld", "[", 
   RowBox[{"changer_", ",", 
    RowBox[{"{", 
     RowBox[{"stateIndex_", ",", "stateComponents_"}], "}"}], ",", 
    "changeableIndeces_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{"#", ",", 
      RowBox[{"MapAt", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"changer", "[", 
          RowBox[{"#", ",", "stateComponents"}], "]"}], "&"}], ",", 
        "stateComponents", ",", "#"}], "]"}]}], "}"}], "&"}], "/@", 
   "changeableIndeces"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"80b370fc-bf80-4b9e-9811-a6f5a4ab992b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"moveEdgePattern", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"__", "?", "IntegerQ"}], "}"}], ",", "_"}], "}"}]}], 
  ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"21b46ffb-ed37-40da-9f87-2ffda27c1eb3"],

Cell[BoxData[
 RowBox[{
  RowBox[{"deleteMatchesOlder", "[", 
   RowBox[{"newGraphs_", ",", "oldSequences_"}], "]"}], ":=", 
  RowBox[{"DeleteCases", "[", 
   RowBox[{"newGraphs", ",", 
    RowBox[{"_", "?", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"MatchQ", "[", 
        RowBox[{
         RowBox[{"Last", "[", "#", "]"}], ",", 
         RowBox[{"Alternatives", "@@", 
          RowBox[{"Last", "/@", 
           RowBox[{"Cases", "[", 
            RowBox[{"oldSequences", ",", "moveEdgePattern", ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}]}]}]}], "]"}], 
       "&"}], ")"}]}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"237bfa61-2686-4a61-bbe1-381542b12ce4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"replacePartWith", "[", 
   RowBox[{"expr_", ",", "position_", ",", "rule_"}], "]"}], ":=", 
  RowBox[{"MapAt", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Replace", "[", 
      RowBox[{"#", ",", "rule"}], "]"}], "&"}], ",", "expr", ",", 
    "position"}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"1a60a97d-85be-42ae-8095-c4e1d30a6105"],

Cell[BoxData[
 RowBox[{
  RowBox[{"deleteEndDuplicatesStep", "[", 
   RowBox[{"state_", ",", "endLevel_", ",", "i_"}], "]"}], ":=", 
  RowBox[{"replacePartWith", "[", 
   RowBox[{"state", ",", 
    RowBox[{
     RowBox[{"Position", "[", 
      RowBox[{"state", ",", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"moveEdgePattern", ".."}], "}"}], "|", 
        RowBox[{"{", "}"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"endLevel", "-", "1"}], "}"}]}], "]"}], "[", 
     RowBox[{"[", "i", "]"}], "]"}], ",", 
    RowBox[{"x_", "\[RuleDelayed]", 
     RowBox[{"Select", "[", 
      RowBox[{"x", ",", 
       RowBox[{
        RowBox[{"!", 
         RowBox[{"MatchQ", "[", 
          RowBox[{
           RowBox[{"Last", "[", "#", "]"}], ",", 
           RowBox[{"Alternatives", "@@", 
            RowBox[{"Last", "/@", 
             RowBox[{"Cases", "[", 
              RowBox[{
               RowBox[{"Cases", "[", 
                RowBox[{
                 RowBox[{"Level", "[", 
                  RowBox[{"state", ",", 
                   RowBox[{"{", 
                    RowBox[{"endLevel", "-", "1"}], "}"}]}], "]"}], ",", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"moveEdgePattern", ".."}], "}"}], "|", 
                  RowBox[{"{", "}"}]}], ",", "Infinity", ",", 
                 RowBox[{"i", "-", "1"}]}], "]"}], ",", "moveEdgePattern", 
               ",", "Infinity"}], "]"}]}]}]}], "]"}]}], "&"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"fbb10990-3691-4ca8-a7f2-e123ae547c7b"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"deleteEndDuplicates", "[", 
    RowBox[{"state_", ",", "endLevel_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"Fold", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"deleteEndDuplicatesStep", "[", 
        RowBox[{"#1", ",", "endLevel", ",", "#2"}], "]"}], "&"}], ",", 
      "state", ",", 
      RowBox[{"Range", "[", 
       RowBox[{"Length", "[", 
        RowBox[{"Cases", "[", 
         RowBox[{
          RowBox[{"Level", "[", 
           RowBox[{"state", ",", 
            RowBox[{"{", 
             RowBox[{"endLevel", "-", "1"}], "}"}]}], "]"}], ",", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"moveEdgePattern", ".."}], "}"}], "|", 
           RowBox[{"{", "}"}]}], ",", "Infinity"}], "]"}], "]"}], "]"}]}], 
     "]"}], "/.", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x_", ",", 
       RowBox[{"{", "}"}]}], "}"}], "\[RuleDelayed]", "x"}]}]}], 
  ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"83df02f8-5877-437f-8114-f454c7f123a9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"puzzleStatesLevelStep", "=", "2"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"9ff599f7-9e1d-4e18-9eb2-e4c17ab795f8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"findSequencesStepOld", "[", 
   RowBox[{
   "sequences_", ",", "changer_", ",", "changeableIndeces_", ",", 
    "endLevel_"}], "]"}], ":=", 
  RowBox[{"deleteEndDuplicates", "[", 
   RowBox[{
    RowBox[{"Replace", "[", 
     RowBox[{"sequences", ",", 
      RowBox[{"x_", "\[RuleDelayed]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"MatchQ", "[", 
          RowBox[{"x", ",", "moveEdgePattern"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"deleteMatchesOlder", "[", 
            RowBox[{
             RowBox[{"allChanges", "[", 
              RowBox[{"changer", ",", "x", ",", "changeableIndeces"}], "]"}], 
             ",", "sequences"}], "]"}]}], "}"}], ",", "x"}], "]"}]}], ",", 
      RowBox[{"{", "endLevel", "}"}]}], "]"}], ",", 
    RowBox[{"endLevel", "+", "puzzleStatesLevelStep"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"5851ebf2-0d42-44ee-9564-4787f0328d14"],

Cell[BoxData[
 RowBox[{
  RowBox[{"testFlip", "[", 
   RowBox[{"edges_", ",", "i_"}], "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
    RowBox[{"myPropertyValue", "[", 
     RowBox[{
      RowBox[{"edges", "[", 
       RowBox[{"[", "i", "]"}], "]"}], ",", "EdgeWeight"}], "]"}], ",", "1", 
    ",", 
    RowBox[{"MapAt", "[", 
     RowBox[{"edgeFlip", ",", "edges", ",", "i"}], "]"}], ",", "2", ",", 
    RowBox[{"flipRedundantSequence", "[", 
     RowBox[{"edges", ",", "i"}], "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"1c6a9a5d-222f-4dd3-88fb-a2ca3200babc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"allChanges", "[", 
   RowBox[{"changer_", ",", 
    RowBox[{"{", 
     RowBox[{"stateIndex_", ",", "stateComponents_"}], "}"}], ",", 
    "toChangeIndices_", ",", "changeableQ_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"changeableQ", "[", 
       RowBox[{
        RowBox[{"stateComponents", "[", 
         RowBox[{"[", "#", "]"}], "]"}], ",", "stateComponents"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"#", ",", 
        RowBox[{"changer", "[", 
         RowBox[{"stateComponents", ",", "#"}], "]"}]}], "}"}], ",", 
      "Nothing"}], "]"}], "&"}], "/@", "toChangeIndices"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"7956a9e3-14b2-4401-a0f8-729805aadefd"],

Cell[BoxData[
 RowBox[{
  RowBox[{"prependFlattened", "[", "expr_", "]"}], ":=", 
  RowBox[{
   RowBox[{"Prepend", "[", 
    RowBox[{
     RowBox[{"Flatten", "[", "#", "]"}], ",", "expr"}], "]"}], 
   "&"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"7199e669-14af-4637-aa54-64f7fe80b9a5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"allChanges", "[", 
   RowBox[{"changer_", ",", 
    RowBox[{"{", 
     RowBox[{"stateIndex_", ",", "stateComponents_"}], "}"}], ",", 
    "toChangeIndices_", ",", "changeableQ_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"changeableQ", "[", 
       RowBox[{
        RowBox[{"stateComponents", "[", 
         RowBox[{"[", "#", "]"}], "]"}], ",", "stateComponents"}], "]"}], ",", 
      RowBox[{"Switch", "[", 
       RowBox[{
        RowBox[{"myPropertyValue", "[", 
         RowBox[{
          RowBox[{"stateComponents", "[", 
           RowBox[{"[", "#", "]"}], "]"}], ",", "EdgeWeight"}], "]"}], ",", 
        "1", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", "#", "}"}], ",", 
          RowBox[{"MapAt", "[", 
           RowBox[{"edgeFlip", ",", "stateComponents", ",", "#"}], "]"}]}], 
         "}"}], ",", "2", ",", 
        RowBox[{"Reverse", "[", 
         RowBox[{"MapAt", "[", 
          RowBox[{
           RowBox[{"prependFlattened", "[", "#", "]"}], ",", 
           RowBox[{"Reap", "[", 
            RowBox[{"flipRedundantSequence", "[", 
             RowBox[{"stateComponents", ",", "#"}], "]"}], "]"}], ",", 
           RowBox[{"-", "1"}]}], "]"}], "]"}]}], "]"}], ",", "Nothing"}], 
     "]"}], "&"}], "/@", "toChangeIndices"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"602c024e-7ee5-4be4-aba5-ac6e0d944064"],

Cell[BoxData[
 RowBox[{
  RowBox[{"findSequencesStep", "[", 
   RowBox[{
   "sequences_", ",", "changer_", ",", "changeableIndeces_", ",", 
    "endLevel_"}], "]"}], ":=", 
  RowBox[{"deleteEndDuplicates", "[", 
   RowBox[{
    RowBox[{"Replace", "[", 
     RowBox[{"sequences", ",", 
      RowBox[{"x_", "\[RuleDelayed]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"MatchQ", "[", 
          RowBox[{"x", ",", "moveEdgePattern"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"deleteMatchesOlder", "[", 
            RowBox[{
             RowBox[{"allChanges", "[", 
              RowBox[{
              "changer", ",", "x", ",", "changeableIndeces", ",", 
               "flippableQ"}], "]"}], ",", "sequences"}], "]"}]}], "}"}], ",",
          "x"}], "]"}]}], ",", 
      RowBox[{"{", "endLevel", "}"}]}], "]"}], ",", 
    RowBox[{"endLevel", "+", "puzzleStatesLevelStep"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"51eff870-4f20-4664-bff1-d92c59191333"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgesChangedIndecesOld", "[", "puzzleStates_", "]"}], ":=", 
  RowBox[{"Length", "[", 
   RowBox[{"DeleteDuplicates", "[", 
    RowBox[{"Flatten", "[", 
     RowBox[{"Cases", "[", 
      RowBox[{"puzzleStates", ",", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"x", ":", 
           RowBox[{"{", 
            RowBox[{"__", "?", "IntegerQ"}], "}"}]}], ",", "_"}], "}"}], 
        "\[RuleDelayed]", "x"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}], "]"}], "]"}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"f258e542-f598-4e89-94d8-ff3aac09975f"],

Cell[BoxData[
 RowBox[{"SetAttributes", "[", 
  RowBox[{"puzzleStates", ",", "HoldFirst"}], "]"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"50a1358a-ae59-4e76-81e9-6d2d22b25cd3"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgesChangedIndeces", "[", "puzzleStates_", "]"}], ":=", 
  RowBox[{"DeleteDuplicates", "[", 
   RowBox[{
    RowBox[{"Cases", "[", 
     RowBox[{"puzzleStates", ",", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x", ":", 
          RowBox[{"{", 
           RowBox[{"__", "?", "IntegerQ"}], "}"}]}], ",", "_"}], "}"}], 
       "\[RuleDelayed]", "x"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "Infinity"}], "}"}]}], "]"}], ",", "ContainsAll"}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"e4ef5655-94a8-4b5f-90fb-1484bad78a8d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"puzzleStates", "[", 
   RowBox[{
   "pauseIfChanged_", ",", "l_", ",", "changer_", ",", "changeableIndeces_"}],
    "]"}], ":=", 
  RowBox[{"Identity", "@", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"initParam", "=", "pauseIfChanged"}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"endLevel", "=", 
         RowBox[{"-", "puzzleStatesLevelStep"}]}], "}"}], ",", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"states", "=", 
           RowBox[{"NestWhile", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"endLevel", "+=", "puzzleStatesLevelStep"}], ";", 
                RowBox[{"findSequencesStep", "[", 
                 RowBox[{
                 "#", ",", "changer", ",", "changeableIndeces", ",", 
                  "endLevel"}], "]"}]}], ")"}], "&"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", "0", "}"}], ",", "l"}], "}"}], ",", 
             RowBox[{
              RowBox[{"With", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"indeces", "=", 
                  RowBox[{"edgesChangedIndeces", "[", "#1", "]"}]}], "}"}], 
                ",", 
                RowBox[{
                 RowBox[{"puzzleStateProgress", "=", 
                  RowBox[{"N", "[", 
                   RowBox[{
                    RowBox[{"Length", "[", "indeces", "]"}], "/", 
                    RowBox[{"Length", "[", "l", "]"}]}], "]"}]}], ";", 
                 RowBox[{
                  RowBox[{"UnsameQ", "[", 
                   RowBox[{"#1", ",", "#2"}], "]"}], "&&", 
                  RowBox[{
                   RowBox[{"Length", "[", 
                    RowBox[{"DeleteDuplicates", "[", 
                    RowBox[{"Flatten", "[", "indeces", "]"}], "]"}], "]"}], 
                   "<", 
                   RowBox[{"Length", "[", "l", "]"}]}], "&&", 
                  RowBox[{"initParam", "==", "pauseIfChanged"}]}]}]}], "]"}], 
              "&"}], ",", "2"}], "]"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{"puzzleStateProgress", "=", "1"}], ";", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"initParam", "\[Equal]", "pauseIfChanged"}], ",", 
            "states", ",", 
            RowBox[{"Throw", "[", 
             RowBox[{
              RowBox[{"{", "}"}], ",", "\"\<changedParam\>\""}], "]"}]}], 
           "]"}]}]}], "]"}]}], "]"}]}], "]"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"714228f7-3c63-4ebf-9b3a-ee328c547ee8"],

Cell[BoxData[
 RowBox[{"SetAttributes", "[", 
  RowBox[{"mostMovesIndex", ",", "HoldFirst"}], "]"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"7f90e1cc-bb52-4837-97da-8f2e1b73ca29"],

Cell[BoxData[
 RowBox[{
  RowBox[{"orderlessMatchQ", "[", 
   RowBox[{"l1_", ",", "l2_"}], "]"}], ":=", 
  RowBox[{"MatchQ", "[", 
   RowBox[{"l1", ",", 
    RowBox[{"{", 
     RowBox[{"OrderlessPatternSequence", "@@", "l2"}], "}"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"44d475c7-795b-4cf3-aed8-dc46f1ad579c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"replaceFirst", "[", 
   RowBox[{"expr_", ",", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"Rule", "|", "RuleDelayed"}], ")"}], "[", 
     RowBox[{"lhs_", ",", "rhs_"}], "]"}]}], "]"}], ":=", 
  RowBox[{"replacePartWith", "[", 
   RowBox[{"expr", ",", 
    RowBox[{"FirstPosition", "[", 
     RowBox[{"expr", ",", "lhs"}], "]"}], ",", 
    RowBox[{"lhs", "\[RuleDelayed]", "rhs"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"812e8152-68b9-455c-8d3d-082c485aefac"],

Cell[BoxData[
 RowBox[{
  RowBox[{"mostMovesIndex", "[", 
   RowBox[{
   "pauseIfChanged_", ",", "l_", ",", "changer_", ",", "changeableIndeces_"}],
    "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"With", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"incidents", "=", 
        RowBox[{"inEdges", "[", 
         RowBox[{
          RowBox[{"inVertex", "[", 
           RowBox[{"l", "[", 
            RowBox[{"[", "#", "]"}], "]"}], "]"}], ",", "l"}], "]"}]}], "}"}],
       ",", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"myPropertyValue", "[", 
            RowBox[{"#", ",", "EdgeWeight"}], "]"}], "&"}], "/@", 
          "incidents"}], "==", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}]}], ",", 
        RowBox[{
         RowBox[{"FirstPosition", "[", 
          RowBox[{"l", ",", 
           RowBox[{"incidents", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", "#"}], "]"}]}], "]"}], "&"}], 
   "[", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"puzzleStates", "=", 
       RowBox[{"puzzleStates", "[", 
        RowBox[{
        "pauseIfChanged", ",", "l", ",", "changer", ",", 
         "changeableIndeces"}], "]"}]}], "}"}], ",", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"MatchQ", "[", 
        RowBox[{"puzzleStates", ",", "moveEdgePattern"}], "]"}], ",", 
       RowBox[{
        RowBox[{"FirstPosition", "[", 
         RowBox[{
          RowBox[{"puzzleStates", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", 
          RowBox[{"_", "?", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"flippableQ", "[", 
              RowBox[{"#", ",", 
               RowBox[{"puzzleStates", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "&"}], ")"}]}]}], 
         "]"}], "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", 
       RowBox[{
        RowBox[{"MaximalBy", "[", 
         RowBox[{
          RowBox[{"DeleteDuplicates", "[", 
           RowBox[{"Flatten", "[", 
            RowBox[{"First", "/@", 
             RowBox[{"Cases", "[", 
              RowBox[{
               RowBox[{"Rest", "[", "puzzleStates", "]"}], ",", 
               "moveEdgePattern", ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", "Infinity"}], "}"}], ",", 
               RowBox[{"Heads", "\[Rule]", "True"}]}], "]"}]}], "]"}], "]"}], 
          ",", 
          RowBox[{
           RowBox[{"Min", "[", 
            RowBox[{"Length", "/@", 
             RowBox[{"Position", "[", 
              RowBox[{"puzzleStates", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"___", ",", "#", ",", "___"}], "}"}], ",", "_"}], 
                "}"}]}], "]"}]}], "]"}], "&"}]}], "]"}], "[", 
        RowBox[{"[", 
         RowBox[{"-", "1"}], "]"}], "]"}]}], "]"}]}], "]"}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"81b5b3b7-cdcf-45ce-8780-fecb02ff2474"],

Cell[BoxData[
 RowBox[{
  RowBox[{"flipRedundantSequence", "[", 
   RowBox[{"edges_", ",", "i_"}], "]"}], ":=", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"flipped", "=", 
      RowBox[{"MapAt", "[", 
       RowBox[{"edgeFlip", ",", "edges", ",", "i"}], "]"}]}], "}"}], ",", 
    RowBox[{"With", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"nextToFlip", "=", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"redundantVertexQ", "[", 
           RowBox[{
            RowBox[{"outVertex", "[", 
             RowBox[{"flipped", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", "flipped"}], "]"}], 
          ",", 
          RowBox[{"SelectFirst", "[", 
           RowBox[{
            RowBox[{"inEdges", "[", 
             RowBox[{
              RowBox[{"outVertex", "[", 
               RowBox[{"flipped", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", "edges"}], "]"}], 
            ",", 
            RowBox[{
             RowBox[{
              RowBox[{"myPropertyValue", "[", 
               RowBox[{"#", ",", "EdgeWeight"}], "]"}], "\[Equal]", "2"}], 
             "&"}]}], "]"}], ",", 
          RowBox[{"Missing", "[", "\"\<d\>\"", "]"}]}], "]"}]}], "}"}], ",", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"MissingQ", "[", "nextToFlip", "]"}], ",", "flipped", ",", 
        RowBox[{"flipRedundantSequence", "[", 
         RowBox[{"flipped", ",", 
          RowBox[{"Sow", "[", 
           RowBox[{"FirstPosition", "[", 
            RowBox[{"flipped", ",", "nextToFlip", ",", 
             RowBox[{"Missing", "[", "\"\<e\>\"", "]"}], ",", 
             RowBox[{"{", "1", "}"}]}], "]"}], "]"}]}], "]"}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"20aa1db5-cd40-4bda-b3c0-68aebf62b9ab"],

Cell[BoxData[
 RowBox[{
  RowBox[{"alignRedundantWeight2Step", "[", 
   RowBox[{"edges_", ",", "vertex_"}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"redundantVertexQ", "[", 
      RowBox[{"vertex", ",", "edges"}], "]"}], "&&", 
     RowBox[{"MatchQ", "[", 
      RowBox[{
       RowBox[{"inEdges", "[", 
        RowBox[{"vertex", ",", "edges"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"OrderlessPatternSequence", "[", 
         RowBox[{
          RowBox[{"_", "?", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"myPropertyValue", "[", 
               RowBox[{"#", ",", "EdgeWeight"}], "]"}], "\[Equal]", "2"}], 
             "&"}], ")"}]}], ",", 
          RowBox[{"_", "?", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"myPropertyValue", "[", 
               RowBox[{"#", ",", "EdgeWeight"}], "]"}], "\[Equal]", "2"}], 
             "&"}], ")"}]}], ",", "___"}], "]"}], "}"}]}], "]"}]}], ",", 
    RowBox[{"flipRedundantSequence", "[", 
     RowBox[{"edges", ",", 
      RowBox[{"FirstPosition", "[", 
       RowBox[{"edges", ",", 
        RowBox[{"FirstCase", "[", 
         RowBox[{
          RowBox[{"inEdges", "[", 
           RowBox[{"vertex", ",", "edges"}], "]"}], ",", 
          RowBox[{"_", "?", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"myPropertyValue", "[", 
               RowBox[{"#", ",", "EdgeWeight"}], "]"}], "\[Equal]", "2"}], 
             "&"}], ")"}]}], ",", 
          RowBox[{"Missing", "[", "\"\<f\>\"", "]"}], ",", 
          RowBox[{"{", "1", "}"}]}], "]"}], ",", 
        RowBox[{"Missing", "[", "\"\<g\>\"", "]"}], ",", 
        RowBox[{"{", "1", "}"}]}], "]"}]}], "]"}], ",", "edges"}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"c3778a12-4f0a-4e4d-a8a7-0c74a6a6d97c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"alignRedundantWeight2s", "[", "edges_", "]"}], ":=", 
  RowBox[{"Fold", "[", 
   RowBox[{"alignRedundantWeight2Step", ",", "edges", ",", 
    RowBox[{"VertexList", "[", "edges", "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"a8e17549-14fe-48e1-8ead-4b7a2f069c22"],

Cell[BoxData[
 RowBox[{
  RowBox[{"flipRedundant", "[", "edges_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"redundantOutQ", "[", 
       RowBox[{"#", ",", "edges"}], "]"}], ",", 
      RowBox[{"edgeFlip", "[", "#", "]"}], ",", 
      RowBox[{"Identity", "[", "#", "]"}]}], "]"}], "&"}], "/@", 
   "edges"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"bfef919a-8eba-467f-864b-a78dfd48beac"],

Cell[BoxData[
 RowBox[{"SetAttributes", "[", 
  RowBox[{"hilightMostMovesEdge", ",", "HoldFirst"}], "]"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"d22f99f7-952f-4df5-9e77-beb06529c497"],

Cell[BoxData[
 RowBox[{
  RowBox[{"hilightMostMovesEdge", "[", 
   RowBox[{"pauseIfChanged_", ",", "edges_", ",", "color_"}], "]"}], ":=", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"setForOptimization", "=", 
      RowBox[{"Identity", "[", 
       RowBox[{"flipRedundant", "[", "edges", "]"}], "]"}]}], "}"}], ",", 
    RowBox[{"replacePartWith", "[", 
     RowBox[{"edges", ",", 
      RowBox[{"winIndex", "=", 
       RowBox[{"mostMovesIndex", "[", 
        RowBox[{
        "pauseIfChanged", ",", "setForOptimization", ",", "testFlip", ",", 
         RowBox[{"Flatten", "[", 
          RowBox[{"Position", "[", 
           RowBox[{"edges", ",", 
            RowBox[{"_", "?", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"!", 
                RowBox[{"redundantEdgeQ", "[", 
                 RowBox[{"#", ",", "setForOptimization"}], "]"}]}], "&"}], 
              ")"}]}], ",", "1", ",", 
            RowBox[{"Heads", "\[Rule]", "False"}]}], "]"}], "]"}]}], "]"}]}], 
      ",", 
      RowBox[{"x_", "\[RuleDelayed]", 
       RowBox[{"(", 
        RowBox[{"x", "/.", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"EdgeStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"_", "?", "ColorQ"}], ",", "y___"}], "}"}]}], ")"}], 
          "\[RuleDelayed]", 
          RowBox[{"EdgeStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"color", ",", "y"}], "}"}]}]}]}], ")"}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"5438f1c0-e1ea-4ce1-83ba-e21fc20095fe"],

Cell[BoxData[
 RowBox[{
  RowBox[{"redWeight", "=", "2"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"540b34cc-d646-4b6c-a020-99b3173246a7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"applyPossibilites", "[", 
   RowBox[{"edge_", ",", "possibilities_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"clEdge", "[", 
     RowBox[{
      RowBox[{"#1", "[", "edge", "]"}], ",", "#2"}], "]"}], "&"}], "@@@", 
   "possibilities"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"840bbd7e-1bff-43d5-a244-cf60a9daef5b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgePossibilities", "[", 
   RowBox[{"vertexNum_", ",", "redWeight_"}], "]"}], ":=", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"bareEdges", "=", 
      RowBox[{"semiRandomTrivalentPlanar", "[", "vertexNum", "]"}]}], "}"}], 
    ",", 
    RowBox[{"MapThread", "[", 
     RowBox[{"applyPossibilites", ",", 
      RowBox[{"{", 
       RowBox[{"bareEdges", ",", 
        RowBox[{
         RowBox[{
          RowBox[{"Flatten", "[", 
           RowBox[{"#", ",", "1"}], "]"}], "&"}], "/@", 
         RowBox[{"MapThread", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"Function", "[", 
              RowBox[{"x", ",", 
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"#", ",", "x"}], "}"}], "&"}], ",", "#2"}], 
                "]"}]}], "]"}], "/@", "#1"}], "&"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Flatten", "[", 
              RowBox[{
               RowBox[{"With", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"blueNum", "=", 
                   RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"Length", "[", "bareEdges", "]"}], "/", 
                    RowBox[{"(", 
                    RowBox[{"redWeight", " ", "+", " ", "1"}], ")"}]}], 
                    "]"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"Reverse", "[", "edgeWeights", "]"}], ",", 
                    "blueNum"}], "]"}], ",", 
                   RowBox[{"Table", "[", 
                    RowBox[{"edgeWeights", ",", 
                    RowBox[{
                    RowBox[{"Length", "[", "bareEdges", "]"}], "-", 
                    "blueNum"}]}], "]"}]}], "}"}]}], "]"}], ",", "1"}], "]"}],
              ",", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"RandomSample", "[", 
                RowBox[{"{", 
                 RowBox[{"Identity", ",", "edgeFlip"}], "}"}], "]"}], ",", 
               RowBox[{"Length", "[", "bareEdges", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}]}], "}"}]}], "]"}]}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"71e71633-a1c4-400c-9d72-a5098fd1377a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"fitsVertex", "[", 
   RowBox[{"edge_", ",", "clGraph_", ",", "vFun_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"VertexDegree", "[", 
     RowBox[{"clGraph", ",", 
      RowBox[{"vFun", "[", "edge", "]"}]}], "]"}], "<", "vertexDegree"}], "||", 
   RowBox[{
    RowBox[{"weightedIn", "[", 
     RowBox[{
      RowBox[{"vFun", "[", "edge", "]"}], ",", "clGraph"}], "]"}], 
    "\[GreaterEqual]", "vertexCapacity"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"c858d581-d06c-475a-858e-398339e59546"],

Cell[BoxData[
 RowBox[{
  RowBox[{"edgeFitsQ", "[", 
   RowBox[{"edge_", ",", "clGraph_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"fitsVertex", "[", 
    RowBox[{"edge", ",", "clGraph", ",", "inVertex"}], "]"}], "&&", 
   RowBox[{"fitsVertex", "[", 
    RowBox[{"edge", ",", "clGraph", ",", "outVertex"}], "]"}]}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"d6d7c7cb-67b6-415b-9f16-cd9ee11c0938"],

Cell[BoxData[
 RowBox[{"SetAttributes", "[", 
  RowBox[{"puzzlizeGraph", ",", "HoldFirst"}], "]"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"437de835-d990-488b-9686-b3f70cbb6d6f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"puzzlizeGraph", "[", 
   RowBox[{"vertexNum_", ",", "redWeight_"}], "]"}], ":=", 
  RowBox[{"Catch", "[", 
   RowBox[{
    RowBox[{"With", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"weightedEdges", "=", 
        RowBox[{"tryPossibilities", "[", 
         RowBox[{"vertexNum", ",", 
          RowBox[{"edgePossibilities", "[", 
           RowBox[{"vertexNum", ",", "redWeight"}], "]"}], ",", "edgeFitsQ"}],
          "]"}]}], "}"}], ",", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{"Print", "[", 
         RowBox[{"PlanarGraph", "[", "weightedEdges", "]"}], "]"}], ";"}], 
       "*)"}], 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"Or", "@@", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"flippableQ", "[", 
             RowBox[{"#", ",", "weightedEdges"}], "]"}], "&"}], "/@", 
           "weightedEdges"}], ")"}]}], ",", 
        RowBox[{"hilightMostMovesEdge", "[", 
         RowBox[{"vertexNum", ",", "weightedEdges", ",", 
          RowBox[{"RGBColor", "[", "\"\<Gold\>\"", "]"}]}], "]"}], ",", 
        RowBox[{"(*", 
         RowBox[{
          RowBox[{
          "Print", "[", "\"\<No flippable edges generated, trying again.\>\"",
            "]"}], ";"}], "*)"}], 
        RowBox[{"puzzlizeGraph", "[", 
         RowBox[{"vertexNum", ",", "redWeight"}], "]"}]}], "]"}]}], "]"}], 
    ",", "\"\<changedParam\>\""}], "]"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"a067d2a6-ab59-4b67-941b-a74c3147bca3"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"satisfyProgress", "=", 
   RowBox[{"puzzleStateProgress", "=", "0"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"progress", "=", 
   RowBox[{"Dynamic", "[", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{"\"\<Finding satisfying edges\>\"", ",", 
         RowBox[{"ProgressIndicator", "[", "satisfyProgress", "]"}]}], "}"}], 
       "/.", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"_", ",", 
          RowBox[{"_", "[", "1", "]"}]}], "}"}], "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<Setting win state edge\>\"", ",", 
          RowBox[{"ProgressIndicator", "[", "puzzleStateProgress", "]"}]}], 
         "}"}]}]}], "/.", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"_", ",", 
         RowBox[{"_", "[", "1", "]"}]}], "}"}], "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<Ready\>\"", ",", 
         RowBox[{"ProgressIndicator", "[", "1", "]"}]}], "}"}]}]}], "]"}], 
    "]"}]}], ";"}]}], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"2fd1ce6b-bcd7-4d24-9187-11610196fc7d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"moveBy", "[", 
   RowBox[{"l_", ",", "initialOrder_", ",", "finalOrder_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"Extract", "[", 
     RowBox[{"l", ",", 
      RowBox[{"FirstPosition", "[", 
       RowBox[{"initialOrder", ",", "#"}], "]"}]}], "]"}], "&"}], "/@", 
   "finalOrder"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"9efa06f3-2858-4682-9357-04ae328e0fd9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"graphLayout", "=", "\"\<TutteEmbedding\>\""}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"2ac2cba5-e4d2-4d4c-a479-c1dfe99112bc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"flippableQ", "[", 
   RowBox[{"edge_", ",", "edges_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{"weightedIn", "[", 
     RowBox[{
      RowBox[{"outVertex", "[", "edge", "]"}], ",", "edges"}], "]"}], "-", 
    RowBox[{"myPropertyValue", "[", 
     RowBox[{"edge", ",", "EdgeWeight"}], "]"}]}], "\[GreaterEqual]", 
   "vertexCapacity"}]}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"2062d954-dd48-45e0-b507-962ec1fb468b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"winQ", "=", "False"}], ";"}]], "Input",
 CellGroupingRules->{
  "GroupTogetherGrouping", 
   10000.},ExpressionUUID->"0177f558-d875-4cc2-85c7-e13e0def2771"],

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"If", "[", 
     RowBox[{"resetQ", ",", 
      RowBox[{
       RowBox[{"winQ", "=", "False"}], ";", 
       RowBox[{"edges", "=", "initEdges"}], ";", 
       RowBox[{"resetQ", "=", "False"}]}]}], "]"}], ";", 
    RowBox[{"If", "[", 
     RowBox[{"generateQ", ",", 
      RowBox[{
       RowBox[{"winQ", "=", "False"}], ";", 
       RowBox[{"edges", "=", 
        RowBox[{"initEdges", "=", 
         RowBox[{"puzzlizeGraph", "[", 
          RowBox[{"vertexNumber", ",", "redWeight"}], "]"}]}]}], ";", 
       RowBox[{"initGraph", "=", 
        RowBox[{"Graph", "[", 
         RowBox[{"edges", ",", 
          RowBox[{"GraphLayout", "\[Rule]", "graphLayout"}]}], "]"}]}], ";", 
       RowBox[{"vertexCo", "=", 
        RowBox[{"Last", "[", 
         RowBox[{"First", "[", 
          RowBox[{"AbsoluteOptions", "[", 
           RowBox[{"initGraph", ",", "VertexCoordinates"}], "]"}], "]"}], 
         "]"}]}], ";", 
       RowBox[{"generateQ", "=", "False"}]}]}], "]"}], ";", 
    RowBox[{"Column", "[", 
     RowBox[{"{", 
      RowBox[{"progress", ",", 
       RowBox[{"With", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"flippedEdges", "=", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"i", "=", "0"}], "}"}], ",", 
             RowBox[{
              RowBox[{"Function", "[", 
               RowBox[{"edge", ",", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"i", "++"}], ";", 
                  RowBox[{"EventHandler", "[", 
                   RowBox[{"edge", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"\"\<MouseClicked\>\"", "\[RuleDelayed]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"edges", "=", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"flippableQ", "[", 
                    RowBox[{"edge", ",", "edges"}], "]"}], ",", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"j", "\[Equal]", "winIndex"}], ",", 
                    RowBox[{"winQ", "=", "True"}]}], "]"}], ";", 
                    RowBox[{"MapAt", "[", 
                    RowBox[{"edgeFlip", ",", "edges", ",", "j"}], "]"}]}], 
                    ",", "edges"}], "]"}]}], ";"}], ")"}]}], "/.", 
                    RowBox[{"j", "\[Rule]", "i"}]}], "}"}]}], "]"}]}], 
                 ")"}]}], "]"}], "/@", "edges"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"Graph", "[", 
          RowBox[{"flippedEdges", ",", 
           RowBox[{"VertexCoordinates", "\[Rule]", 
            RowBox[{"moveBy", "[", 
             RowBox[{"vertexCo", ",", 
              RowBox[{"VertexList", "[", "initGraph", "]"}], ",", 
              RowBox[{"VertexList", "[", "edges", "]"}]}], "]"}]}], ",", 
           RowBox[{"EdgeShapeFunction", "\[Rule]", 
            RowBox[{"GraphElementData", "[", 
             RowBox[{"\"\<ShortUnfilledArrow\>\"", ",", 
              RowBox[{"\"\<ArrowSize\>\"", "\[Rule]", ".15"}]}], "]"}]}], ",", 
           RowBox[{"VertexSize", "\[Rule]", 
            RowBox[{"Scaled", "[", 
             RowBox[{"redEdgeSize", "*", "vertexExpansion"}], "]"}]}], ",", 
           RowBox[{"ImageSize", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"350", ",", "350"}], "}"}]}]}], 
          RowBox[{"(*", 
           RowBox[{"ImageSize", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"350", ",", "350"}], "}"}]}], "*)"}], "]"}]}], "]"}], 
       ",", 
       RowBox[{"If", "[", 
        RowBox[{"winQ", ",", "\"\<You Win!\>\""}], "]"}]}], "}"}], "]"}]}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"vertexNumber", ",", "8", ",", "\"\<Vertex Number\>\""}], "}"}],
      ",", "4", ",", "28", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"generateQ", ",", "True", ",", "\"\<\>\""}], "}"}], ",", 
     RowBox[{
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Generate Puzzle\>\"", ",", 
        RowBox[{"generateQ", "=", "True"}]}], "]"}], "&"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"resetQ", ",", "False", ",", "\"\<\>\""}], "}"}], ",", 
     RowBox[{
      RowBox[{"Button", "[", 
       RowBox[{"\"\<Reset Puzzle\>\"", ",", 
        RowBox[{"resetQ", "=", "True"}]}], "]"}], "&"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.},
 CellID->90655687,ExpressionUUID->"4662a6c2-c248-4b23-8414-3446f7bbdb49"]
}, Closed]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`generateQ$$ = False, $CellContext`resetQ$$ =
     False, $CellContext`vertexNumber$$ = 8, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`vertexNumber$$], 8, "Vertex Number"}, 4, 28, 2}, {{
       Hold[$CellContext`generateQ$$], True, ""}, 
      Dynamic[
      Button["Generate Puzzle", $CellContext`generateQ$$ = True]& ]}, {{
       Hold[$CellContext`resetQ$$], False, ""}, 
      Dynamic[Button["Reset Puzzle", $CellContext`resetQ$$ = True]& ]}}, 
    Typeset`size$$ = {350., {198., 204.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`vertexNumber$9911$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`generateQ$$ = True, $CellContext`resetQ$$ = 
        False, $CellContext`vertexNumber$$ = 8}, "ControllerVariables" :> {
        Hold[$CellContext`vertexNumber$$, $CellContext`vertexNumber$9911$$, 
         0]}, "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       If[$CellContext`resetQ$$, $CellContext`winQ = 
          False; $CellContext`edges = $CellContext`initEdges; \
$CellContext`resetQ$$ = False]; 
       If[$CellContext`generateQ$$, $CellContext`winQ = 
          False; $CellContext`edges = ($CellContext`initEdges = \
$CellContext`puzzlizeGraph[$CellContext`vertexNumber$$, \
$CellContext`redWeight]); $CellContext`initGraph = 
          Graph[$CellContext`edges, 
            GraphLayout -> $CellContext`graphLayout]; $CellContext`vertexCo = 
          Last[
            First[
             
             AbsoluteOptions[$CellContext`initGraph, 
              VertexCoordinates]]]; $CellContext`generateQ$$ = False]; 
       Column[{$CellContext`progress, 
          With[{$CellContext`flippedEdges = Module[{$CellContext`i = 0}, 
              Map[
               
               Function[$CellContext`edge, Increment[$CellContext`i]; 
                EventHandler[$CellContext`edge, {
                   ReplaceAll["MouseClicked" :> ($CellContext`edges = If[
                    $CellContext`flippableQ[$CellContext`edge, \
$CellContext`edges], 
                    If[$CellContext`j == $CellContext`winIndex, \
$CellContext`winQ = True]; 
                    MapAt[$CellContext`edgeFlip, $CellContext`edges, \
$CellContext`j], $CellContext`edges]; 
                    Null), $CellContext`j -> $CellContext`i]}]], \
$CellContext`edges]]}, 
           
           Graph[$CellContext`flippedEdges, 
            VertexCoordinates -> $CellContext`moveBy[$CellContext`vertexCo, 
              VertexList[$CellContext`initGraph], 
              VertexList[$CellContext`edges]], EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.15], 
            VertexSize -> 
            Scaled[$CellContext`redEdgeSize $CellContext`vertexExpansion], 
            ImageSize -> {350, 350}]], 
          If[$CellContext`winQ, "You Win!"]}]), 
      "Specifications" :> {{{$CellContext`vertexNumber$$, 8, "Vertex Number"},
          4, 28, 2}, {{$CellContext`generateQ$$, True, ""}, 
         Dynamic[
         Button["Generate Puzzle", $CellContext`generateQ$$ = 
           True]& ]}, {{$CellContext`resetQ$$, False, ""}, 
         Dynamic[Button["Reset Puzzle", $CellContext`resetQ$$ = True]& ]}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{401., {274., 280.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`winQ = False, $CellContext`edges = {
         Property[
          
          DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
           0.24219897999837828`, 0.7989237804877328}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.1973196423435677, 0.3568031719882606}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.5470524110396625, 0.7602576572847247}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.9360056700435855, 0.7882114216470689}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
           0.34450646845786265`, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
           0.9360056700435855, 0.7882114216470689}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1., 0.843137254901961, 0.], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.1391742815270165, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.34450646845786265`, 0.10564053226675468`}, {
           0.1391742815270165, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.017058474835845494`, 1.0913987499711717`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.34450646845786265`, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.017058474835845494`, 1.0913987499711717`}, {
           0.9775378884656061, 0.8121693321580472}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.1391742815270165, 0.10564053226675468`}, {
           0.017058474835845494`, 1.0913987499711717`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 
              0.085]}}]}, $CellContext`initEdges = {
         Property[
          
          DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
           0.24219897999837828`, 0.7989237804877328}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.1973196423435677, 0.3568031719882606}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.5470524110396625, 0.7602576572847247}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.9360056700435855, 0.7882114216470689}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
           0.34450646845786265`, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
           0.5470524110396625, 0.7602576572847247}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1., 0.843137254901961, 0.], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.1391742815270165, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.34450646845786265`, 0.10564053226675468`}, {
           0.1391742815270165, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.017058474835845494`, 1.0913987499711717`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.34450646845786265`, 0.10564053226675468`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}], 
         Property[
          
          DirectedEdge[{0.017058474835845494`, 1.0913987499711717`}, {
           0.9775378884656061, 0.8121693321580472}], {
          EdgeWeight -> 2, {EdgeStyle -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`]}}], 
         Property[
          
          DirectedEdge[{0.1391742815270165, 0.10564053226675468`}, {
           0.017058474835845494`, 1.0913987499711717`}], {
          EdgeWeight -> 1, {EdgeStyle -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, EdgeShapeFunction -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}}]}, 
       Attributes[$CellContext`puzzlizeGraph] = {
        HoldFirst}, $CellContext`puzzlizeGraph[
         Pattern[$CellContext`vertexNum, 
          Blank[]], 
         Pattern[$CellContext`redWeight, 
          Blank[]]] := Catch[
         With[{$CellContext`weightedEdges = \
$CellContext`tryPossibilities[$CellContext`vertexNum, 
             $CellContext`edgePossibilities[$CellContext`vertexNum, \
$CellContext`redWeight], $CellContext`edgeFitsQ]}, 
          If[
           Apply[Or, 
            
            Map[$CellContext`flippableQ[#, $CellContext`weightedEdges]& , \
$CellContext`weightedEdges]], 
           $CellContext`hilightMostMovesEdge[$CellContext`vertexNum, \
$CellContext`weightedEdges, 
            RGBColor["Gold"]], 
           $CellContext`puzzlizeGraph[$CellContext`vertexNum, \
$CellContext`redWeight]]], "changedParam"], $CellContext`redWeight = 2, 
       Attributes[$CellContext`tryPossibilities] = {
        HoldFirst}, $CellContext`tryPossibilities[
         Pattern[$CellContext`pauseIfChanged, 
          Blank[]], 
         Pattern[$CellContext`possibilities, 
          Blank[]], 
         Pattern[$CellContext`test, 
          Blank[]]] := Identity[
         With[{$CellContext`initParam = $CellContext`pauseIfChanged}, 
          Map[Last, 
           With[{$CellContext`indexedPos = Map[ReplaceAll[
                Normal[
                 PositionIndex[#]], (Pattern[$CellContext`x, 
                   Blank[]] -> {
                   Pattern[$CellContext`y, 
                    
                    Blank[]]}) :> ($CellContext`y -> $CellContext`x)]& , \
$CellContext`possibilities]}, 
            Module[{$CellContext`i = 1}, 
             
             With[{$CellContext`satisfying = 
               NestWhile[($CellContext`satisfyProgress = 
                  N[$CellContext`i/(Length[$CellContext`possibilities] + 1)]; 
                 ReplaceAll[
                   $CellContext`tryPossibilitiesStep[#, $CellContext`test, \
$CellContext`possibilities, $CellContext`indexedPos, $CellContext`i], {
                    Pattern[$CellContext`x, 
                    Blank[]], 
                    Pattern[$CellContext`y, 
                    
                    Blank[]]} :> ($CellContext`i = $CellContext`y; \
$CellContext`x)])& , {
                  Part[$CellContext`indexedPos, 1, 1]}, And[
                  Inequality[0, Less, $CellContext`i, LessEqual, 
                   
                   Length[$CellContext`possibilities]], \
$CellContext`initParam == $CellContext`pauseIfChanged]& ]}, \
$CellContext`satisfyProgress = 1; 
              If[$CellContext`initParam == $CellContext`pauseIfChanged, \
$CellContext`satisfying, 
                
                Throw[{}, 
                 "changedParam"]]]]]]]], $CellContext`test = \
$CellContext`moveBy, $CellContext`moveBy[
         Pattern[$CellContext`l, 
          Blank[]], 
         Pattern[$CellContext`initialOrder, 
          Blank[]], 
         Pattern[$CellContext`finalOrder, 
          Blank[]]] := Map[Extract[$CellContext`l, 
          
          FirstPosition[$CellContext`initialOrder, #]]& , \
$CellContext`finalOrder], $CellContext`satisfyProgress = 
       0, $CellContext`tryPossibilitiesStep[
         Pattern[$CellContext`state, 
          Blank[]], 
         Pattern[$CellContext`test, 
          Blank[]], 
         Pattern[$CellContext`possibilities, 
          Blank[]], 
         Pattern[$CellContext`indexedPos, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Module[{$CellContext`myI = $CellContext`i}, {
          If[
           $CellContext`test[
            Part[$CellContext`state, -1, -1], 
            Map[Last, $CellContext`state]], Increment[$CellContext`myI]; 
           Append[$CellContext`state, 
             Quiet[
              Check[
               Part[$CellContext`indexedPos, $CellContext`myI, 1], Nothing]]], 
           $CellContext`incState[
            If[Part[$CellContext`state, -1, 1] == Length[
               Part[$CellContext`possibilities, 1]], 
             NestWhile[(Decrement[$CellContext`myI]; Part[#, 
                Span[1, -2]])& , $CellContext`state, Part[#, -1, 1] == Length[
                
                Part[$CellContext`possibilities, 
                 1]]& ], $CellContext`state], $CellContext`indexedPos, \
$CellContext`myI]], $CellContext`myI}], $CellContext`incState[
         Pattern[$CellContext`state, 
          Blank[]], 
         Pattern[$CellContext`indexedPos, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := 
       ReplacePart[$CellContext`state, {-1 -> 
          Part[$CellContext`indexedPos, $CellContext`i, 
            Part[$CellContext`state, -1, 1] + 
            1]}], $CellContext`edgePossibilities[
         Pattern[$CellContext`vertexNum, 
          Blank[]], 
         Pattern[$CellContext`redWeight, 
          Blank[]]] := 
       With[{$CellContext`bareEdges = \
$CellContext`semiRandomTrivalentPlanar[$CellContext`vertexNum]}, 
         MapThread[$CellContext`applyPossibilites, {$CellContext`bareEdges, 
           Map[Flatten[#, 1]& , 
            MapThread[Map[
              Function[$CellContext`x, 
               Map[{#, $CellContext`x}& , #2]], #]& , {
              Flatten[
               
               With[{$CellContext`blueNum = 
                 Round[Length[$CellContext`bareEdges]/($CellContext`redWeight + 
                   1)]}, {
                 Table[
                  Reverse[$CellContext`edgeWeights], $CellContext`blueNum], 
                 
                 Table[$CellContext`edgeWeights, 
                  Length[$CellContext`bareEdges] - $CellContext`blueNum]}], 
               1], 
              Table[
               RandomSample[{Identity, $CellContext`edgeFlip}], 
               
               Length[$CellContext`bareEdges]]}]]}]], \
$CellContext`semiRandomTrivalentPlanar[
         Pattern[$CellContext`vertexNum, 
          Blank[]]] := EdgeList[
         DirectedGraph[
          $CellContext`voronoiGraph[$CellContext`vertexNum], 
          "Random"]], $CellContext`voronoiGraph[
         PatternTest[
          Pattern[$CellContext`vertexNum, 
           Blank[]], EvenQ]] := With[{$CellContext`edges = EdgeList[
            $CellContext`simpleShortenedEdges[
             ReplaceAll[
              MeshPrimitives[
               VoronoiMesh[
                RandomReal[1, {$CellContext`vertexNum/2 + 1, 2}]], 1], Line[{
                 Pattern[$CellContext`a, 
                  Blank[]], 
                 Pattern[$CellContext`b, 
                  Blank[]]}] :> 
              UndirectedEdge[$CellContext`a, $CellContext`b]]]]}, 
         If[VertexCount[
            
            Graph[$CellContext`edges]] == $CellContext`vertexNum, \
$CellContext`edges, 
          $CellContext`voronoiGraph[$CellContext`vertexNum]]], \
$CellContext`simpleShortenedEdges[
         Pattern[$CellContext`graph, 
          Blank[]]] := FixedPoint[SimpleGraph[
          $CellContext`shortenEdgesStep[#]]& , $CellContext`graph], \
$CellContext`shortenEdgesStep[
         Pattern[$CellContext`graph, 
          Blank[]]] := With[{$CellContext`duoVert = ReplaceAll[
            SelectFirst[
             VertexList[$CellContext`graph], 
             VertexDegree[$CellContext`graph, #] == 2& ], Missing[
              Blank[]] -> {}]}, 
         EdgeAdd[
          VertexDelete[$CellContext`graph, $CellContext`duoVert], 
          Replace[
           AdjacencyList[$CellContext`graph, $CellContext`duoVert], {
             Pattern[$CellContext`x, 
              Blank[]], 
             Pattern[$CellContext`y, 
              Blank[]]} :> 
           UndirectedEdge[$CellContext`x, $CellContext`y]]]], \
$CellContext`applyPossibilites[
         Pattern[$CellContext`edge, 
          Blank[]], 
         Pattern[$CellContext`possibilities, 
          Blank[]]] := Apply[$CellContext`clEdge[
          #[$CellContext`edge], #2]& , $CellContext`possibilities, {
         1}], $CellContext`clEdge[
         Pattern[$CellContext`edge, 
          Blank[]], 
         Pattern[$CellContext`weight, 
          Blank[]]] := 
       Property[$CellContext`edge, {EdgeWeight -> $CellContext`weight, 
          ReplaceAll[$CellContext`weight, {1 -> {EdgeStyle -> {Red, 
                Thickness[$CellContext`redEdgeSize], 
                Opacity[1]}, EdgeShapeFunction -> 
              GraphElementData[
               "ShortUnfilledArrow", 
                "ArrowSize" -> $CellContext`redArrowSize]}, 
            2 -> {EdgeStyle -> {Blue, 
                
                Thickness[$CellContext`redEdgeSize \
$CellContext`blueExpansion], 
                Opacity[1]}, EdgeShapeFunction -> 
              GraphElementData[
               "ShortUnfilledArrow", 
                "ArrowSize" -> $CellContext`redArrowSize \
$CellContext`blueExpansion]}}]}], $CellContext`redEdgeSize = 
       0.01, $CellContext`redArrowSize = 0.085, $CellContext`blueExpansion = 
       1.3, $CellContext`edgeWeights = {1, 2}, $CellContext`edgeFlip[
         Pattern[$CellContext`expr, 
          Blank[]]] := ReplaceAll[$CellContext`expr, DirectedEdge[
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]]] :> 
         DirectedEdge[$CellContext`y, $CellContext`x]], $CellContext`edgeFitsQ[
         Pattern[$CellContext`edge, 
          Blank[]], 
         Pattern[$CellContext`clGraph, 
          Blank[]]] := And[
         $CellContext`fitsVertex[$CellContext`edge, $CellContext`clGraph, \
$CellContext`inVertex], 
         $CellContext`fitsVertex[$CellContext`edge, $CellContext`clGraph, \
$CellContext`outVertex]], $CellContext`fitsVertex[
         Pattern[$CellContext`edge, 
          Blank[]], 
         Pattern[$CellContext`clGraph, 
          Blank[]], 
         Pattern[$CellContext`vFun, 
          Blank[]]] := Or[VertexDegree[$CellContext`clGraph, 
           $CellContext`vFun[$CellContext`edge]] < $CellContext`vertexDegree, \
$CellContext`weightedIn[
           $CellContext`vFun[$CellContext`edge], $CellContext`clGraph] >= \
$CellContext`vertexCapacity], $CellContext`vertexDegree = 
       3, $CellContext`weightedIn[
         Pattern[$CellContext`vertex, 
          Blank[]], 
         Pattern[$CellContext`grid, 
          Blank[]]] := Total[
         Map[$CellContext`myPropertyValue[#, EdgeWeight]& , 
          $CellContext`inEdges[$CellContext`vertex, $CellContext`grid]]], \
$CellContext`myPropertyValue[
         Pattern[$CellContext`object, 
          Blank[]], 
         Pattern[$CellContext`property, 
          Blank[]]] := 
       FirstCase[$CellContext`object, ($CellContext`property -> 
          Pattern[$CellContext`x, 
            Blank[]]) :> $CellContext`x, 
         Missing["c"], {0, Infinity}], $CellContext`inEdges[
         Pattern[$CellContext`vertex, 
          Blank[]], 
         Pattern[$CellContext`edges, 
          Blank[]]] := Select[$CellContext`edges, Not[
          FreeQ[#, 
           DirectedEdge[
            Blank[], $CellContext`vertex]]]& ], $CellContext`vertexCapacity = 
       2, $CellContext`inVertex[
         Pattern[$CellContext`expr, 
          Blank[]]] := FirstCase[$CellContext`expr, DirectedEdge[
           Pattern[$CellContext`x, 
            Blank[]], 
           Blank[]] :> $CellContext`x, 
         Missing["b"], {0, Infinity}], $CellContext`outVertex[
         Pattern[$CellContext`expr, 
          Blank[]]] := FirstCase[$CellContext`expr, DirectedEdge[
           Blank[], 
           Pattern[$CellContext`x, 
            Blank[]]] :> $CellContext`x, 
         Missing["a"], {0, Infinity}], $CellContext`flippableQ[
         Pattern[$CellContext`edge, 
          Blank[]], 
         Pattern[$CellContext`edges, 
          Blank[]]] := $CellContext`weightedIn[
           $CellContext`outVertex[$CellContext`edge], $CellContext`edges] - \
$CellContext`myPropertyValue[$CellContext`edge, 
          EdgeWeight] >= $CellContext`vertexCapacity, 
       Attributes[$CellContext`hilightMostMovesEdge] = {
        HoldFirst}, $CellContext`hilightMostMovesEdge[
         Pattern[$CellContext`pauseIfChanged, 
          Blank[]], 
         Pattern[$CellContext`edges, 
          Blank[]], 
         Pattern[$CellContext`color, 
          Blank[]]] := With[{$CellContext`setForOptimization = Identity[
            $CellContext`flipRedundant[$CellContext`edges]]}, 
         $CellContext`replacePartWith[$CellContext`edges, \
$CellContext`winIndex = \
$CellContext`mostMovesIndex[$CellContext`pauseIfChanged, \
$CellContext`setForOptimization, $CellContext`testFlip, 
            Flatten[
             Position[$CellContext`edges, 
              PatternTest[
               Blank[], Not[
                $CellContext`redundantEdgeQ[#, \
$CellContext`setForOptimization]]& ], 1, Heads -> False]]], 
          Pattern[$CellContext`x, 
            Blank[]] :> ReplaceAll[$CellContext`x, (EdgeStyle -> {
               PatternTest[
                Blank[], ColorQ], 
               Pattern[$CellContext`y, 
                BlankNullSequence[]]}) :> (
             EdgeStyle -> {$CellContext`color, $CellContext`y})]]], \
$CellContext`flipRedundant[
         Pattern[$CellContext`edges, 
          Blank[]]] := Map[If[
          $CellContext`redundantOutQ[#, $CellContext`edges], 
          $CellContext`edgeFlip[#], 
          Identity[#]]& , $CellContext`edges], $CellContext`redundantOutQ[
         Pattern[$CellContext`weightedEdge, 
          Blank[]], 
         Pattern[$CellContext`weightedEdges, 
          Blank[]]] := 
       And[$CellContext`myPropertyValue[$CellContext`weightedEdge, 
           EdgeWeight] == 1, 
         $CellContext`redundantVertexQ[
          $CellContext`outVertex[$CellContext`weightedEdge], \
$CellContext`weightedEdges]], $CellContext`redundantVertexQ[
         Pattern[$CellContext`vertex, 
          Blank[]], 
         Pattern[$CellContext`weightedEdges, 
          Blank[]]] := MatchQ[
         Map[$CellContext`myPropertyValue[#, EdgeWeight]& , 
          $CellContext`myIncidenceList[$CellContext`weightedEdges, \
$CellContext`vertex]], {
          OrderlessPatternSequence[2, 2, 1]}], $CellContext`myIncidenceList[
         Pattern[$CellContext`graph, 
          Blank[]], 
         Pattern[$CellContext`vertex, 
          Blank[]]] := Select[$CellContext`graph, Not[
          FreeQ[#, 
           Alternatives[DirectedEdge, UndirectedEdge][
            Alternatives[
             PatternSequence[$CellContext`vertex, 
              Blank[]], 
             PatternSequence[
              
              Blank[], $CellContext`vertex]]]]]& ], \
$CellContext`replacePartWith[
         Pattern[$CellContext`expr, 
          Blank[]], 
         Pattern[$CellContext`position, 
          Blank[]], 
         Pattern[$CellContext`rule, 
          Blank[]]] := 
       MapAt[Replace[#, $CellContext`rule]& , $CellContext`expr, \
$CellContext`position], $CellContext`rule = {
        106, 2, {{-2}, {-1}, {0}}}, $CellContext`winIndex = 6, 
       Attributes[$CellContext`mostMovesIndex] = {
        HoldFirst}, $CellContext`mostMovesIndex[
         Pattern[$CellContext`pauseIfChanged, 
          Blank[]], 
         Pattern[$CellContext`l, 
          Blank[]], 
         Pattern[$CellContext`changer, 
          Blank[]], 
         Pattern[$CellContext`changeableIndeces, 
          Blank[]]] := (With[{$CellContext`incidents = $CellContext`inEdges[
            $CellContext`inVertex[
             Part[$CellContext`l, #]], $CellContext`l]}, 
         If[
         Map[$CellContext`myPropertyValue[#, 
             EdgeWeight]& , $CellContext`incidents] == {1, 1}, 
          Part[
           FirstPosition[$CellContext`l, 
            Part[$CellContext`incidents, 1]], 1], #]]& )[
         With[{$CellContext`puzzleStates = \
$CellContext`puzzleStates[$CellContext`pauseIfChanged, $CellContext`l, \
$CellContext`changer, $CellContext`changeableIndeces]}, 
          If[
           MatchQ[$CellContext`puzzleStates, $CellContext`moveEdgePattern], 
           Part[
            FirstPosition[
             Part[$CellContext`puzzleStates, 2], 
             PatternTest[
              Blank[], $CellContext`flippableQ[#, 
               Part[$CellContext`puzzleStates, 2]]& ]], 1], 
           Part[
            MaximalBy[
             DeleteDuplicates[
              Flatten[
               Map[First, 
                Cases[
                 
                 Rest[$CellContext`puzzleStates], \
$CellContext`moveEdgePattern, {0, Infinity}, Heads -> True]]]], Min[
              Map[Length, 
               Position[$CellContext`puzzleStates, {{
                  BlankNullSequence[], #, 
                  BlankNullSequence[]}, 
                 Blank[]}]]]& ], -1]]]], 
       Attributes[$CellContext`puzzleStates] = {
        HoldFirst}, $CellContext`puzzleStates[
         Pattern[$CellContext`pauseIfChanged, 
          Blank[]], 
         Pattern[$CellContext`l, 
          Blank[]], 
         Pattern[$CellContext`changer, 
          Blank[]], 
         Pattern[$CellContext`changeableIndeces, 
          Blank[]]] := Identity[
         With[{$CellContext`initParam = $CellContext`pauseIfChanged}, 
          
          Module[{$CellContext`endLevel = \
-$CellContext`puzzleStatesLevelStep}, 
           
           With[{$CellContext`states = 
             NestWhile[(
               AddTo[$CellContext`endLevel, \
$CellContext`puzzleStatesLevelStep]; $CellContext`findSequencesStep[#, \
$CellContext`changer, $CellContext`changeableIndeces, $CellContext`endLevel])& \
, {{0}, $CellContext`l}, 
               With[{$CellContext`indeces = \
$CellContext`edgesChangedIndeces[#]}, $CellContext`puzzleStateProgress = 
                 N[Length[$CellContext`indeces]/Length[$CellContext`l]]; 
                And[# =!= #2, Length[
                    DeleteDuplicates[
                    Flatten[$CellContext`indeces]]] < 
                  Length[$CellContext`l], $CellContext`initParam == \
$CellContext`pauseIfChanged]]& , 2]}, $CellContext`puzzleStateProgress = 1; 
            If[$CellContext`initParam == $CellContext`pauseIfChanged, \
$CellContext`states, 
              
              Throw[{}, 
               "changedParam"]]]]]], $CellContext`puzzleStatesLevelStep = 
       2, $CellContext`findSequencesStep[
         Pattern[$CellContext`sequences, 
          Blank[]], 
         Pattern[$CellContext`changer, 
          Blank[]], 
         Pattern[$CellContext`changeableIndeces, 
          Blank[]], 
         Pattern[$CellContext`endLevel, 
          Blank[]]] := $CellContext`deleteEndDuplicates[
         Replace[$CellContext`sequences, Pattern[$CellContext`x, 
            Blank[]] :> If[
            
            MatchQ[$CellContext`x, $CellContext`moveEdgePattern], \
{$CellContext`x, 
             $CellContext`deleteMatchesOlder[
              $CellContext`allChanges[$CellContext`changer, $CellContext`x, \
$CellContext`changeableIndeces, $CellContext`flippableQ], \
$CellContext`sequences]}, $CellContext`x], {$CellContext`endLevel}], \
$CellContext`endLevel + $CellContext`puzzleStatesLevelStep], \
$CellContext`deleteEndDuplicates[
         Pattern[$CellContext`state, 
          Blank[]], 
         Pattern[$CellContext`endLevel, 
          Blank[]]] := ReplaceAll[
         Fold[$CellContext`deleteEndDuplicatesStep[#, $CellContext`endLevel, \
#2]& , $CellContext`state, 
          Range[
           Length[
            Cases[
             Level[$CellContext`state, {$CellContext`endLevel - 1}], 
             Alternatives[{
               Repeated[$CellContext`moveEdgePattern]}, {}], Infinity]]]], {
           Pattern[$CellContext`x, 
            
            Blank[]], {}} :> $CellContext`x], \
$CellContext`deleteEndDuplicatesStep[
         Pattern[$CellContext`state, 
          Blank[]], 
         Pattern[$CellContext`endLevel, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := $CellContext`replacePartWith[$CellContext`state, 
         Part[
          Position[$CellContext`state, 
           Alternatives[{
             
             Repeated[$CellContext`moveEdgePattern]}, {}], \
{$CellContext`endLevel - 1}], $CellContext`i], Pattern[$CellContext`x, 
           Blank[]] :> Select[$CellContext`x, Not[
            MatchQ[
             Last[#], 
             Apply[Alternatives, 
              Map[Last, 
               Cases[
                Cases[
                 Level[$CellContext`state, {$CellContext`endLevel - 1}], 
                 Alternatives[{
                   Repeated[$CellContext`moveEdgePattern]}, {}], 
                 Infinity, $CellContext`i - 1], $CellContext`moveEdgePattern, 
                Infinity]]]]]& ]], $CellContext`moveEdgePattern = {{
          PatternTest[
           BlankSequence[], IntegerQ]}, 
         Blank[]}, $CellContext`deleteMatchesOlder[
         Pattern[$CellContext`newGraphs, 
          Blank[]], 
         Pattern[$CellContext`oldSequences, 
          Blank[]]] := DeleteCases[$CellContext`newGraphs, 
         PatternTest[
          Blank[], MatchQ[
           Last[#], 
           Apply[Alternatives, 
            Map[Last, 
             
             Cases[$CellContext`oldSequences, $CellContext`moveEdgePattern, {
              0, Infinity}]]]]& ]], $CellContext`allChanges[
         Pattern[$CellContext`changer, 
          Blank[]], {
          Pattern[$CellContext`stateIndex, 
           Blank[]], 
          Pattern[$CellContext`stateComponents, 
           Blank[]]}, 
         Pattern[$CellContext`toChangeIndices, 
          Blank[]], 
         Pattern[$CellContext`changeableQ, 
          Blank[]]] := Map[If[
          $CellContext`changeableQ[
           
           Part[$CellContext`stateComponents, #], \
$CellContext`stateComponents], 
          Switch[
           $CellContext`myPropertyValue[
            Part[$CellContext`stateComponents, #], EdgeWeight], 1, {{#}, 
            MapAt[$CellContext`edgeFlip, $CellContext`stateComponents, #]}, 2, 
           Reverse[
            MapAt[
             $CellContext`prependFlattened[#], 
             Reap[
              $CellContext`flipRedundantSequence[$CellContext`stateComponents,\
 #]], -1]]], 
          Nothing]& , $CellContext`toChangeIndices], \
$CellContext`prependFlattened[
         Pattern[$CellContext`expr, 
          Blank[]]] := Prepend[
         Flatten[#], $CellContext`expr]& , $CellContext`flipRedundantSequence[
         Pattern[$CellContext`edges, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := 
       With[{$CellContext`flipped = 
          MapAt[$CellContext`edgeFlip, $CellContext`edges, $CellContext`i]}, 
         With[{$CellContext`nextToFlip = If[
             $CellContext`redundantVertexQ[
              $CellContext`outVertex[
               
               Part[$CellContext`flipped, $CellContext`i]], \
$CellContext`flipped], 
             SelectFirst[
              $CellContext`inEdges[
               $CellContext`outVertex[
                
                Part[$CellContext`flipped, $CellContext`i]], \
$CellContext`edges], $CellContext`myPropertyValue[#, EdgeWeight] == 2& ], 
             Missing["d"]]}, 
          If[
           MissingQ[$CellContext`nextToFlip], $CellContext`flipped, 
           $CellContext`flipRedundantSequence[$CellContext`flipped, 
            Sow[
             FirstPosition[$CellContext`flipped, $CellContext`nextToFlip, 
              Missing["e"], {1}]]]]]], $CellContext`edgesChangedIndeces[
         Pattern[$CellContext`puzzleStates, 
          Blank[]]] := DeleteDuplicates[
         Cases[$CellContext`puzzleStates, {
            Pattern[$CellContext`x, {
              PatternTest[
               BlankSequence[], IntegerQ]}], 
            Blank[]} :> $CellContext`x, {0, Infinity}], 
         ContainsAll], $CellContext`puzzleStateProgress = 
       0, $CellContext`testFlip[
         Pattern[$CellContext`edges, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Switch[
         $CellContext`myPropertyValue[
          Part[$CellContext`edges, $CellContext`i], EdgeWeight], 1, 
         MapAt[$CellContext`edgeFlip, $CellContext`edges, $CellContext`i], 2, 
         $CellContext`flipRedundantSequence[$CellContext`edges, \
$CellContext`i]], $CellContext`redundantEdgeQ[
         Pattern[$CellContext`weightedEdge, 
          Blank[]], 
         Pattern[$CellContext`weightedEdges, 
          Blank[]]] := 
       And[$CellContext`myPropertyValue[$CellContext`weightedEdge, 
           EdgeWeight] == 1, 
         Or[
          $CellContext`redundantVertexQ[
           $CellContext`outVertex[$CellContext`weightedEdge], \
$CellContext`weightedEdges], 
          $CellContext`redundantVertexQ[
           $CellContext`inVertex[$CellContext`weightedEdge], \
$CellContext`weightedEdges]]], $CellContext`initGraph = 
       Graph[{{0.5470524110396625, 0.7602576572847247}, {0.24219897999837828`,
          0.7989237804877328}, {0.1973196423435677, 0.3568031719882606}, {
         0.9775378884656061, 0.8121693321580472}, {0.9360056700435855, 
         0.7882114216470689}, {0.34450646845786265`, 0.10564053226675468`}, {
         0.1391742815270165, 0.10564053226675468`}, {0.017058474835845494`, 
         1.0913987499711717`}}, {
          
          DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
           0.24219897999837828`, 0.7989237804877328}], 
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.1973196423435677, 0.3568031719882606}], 
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.5470524110396625, 0.7602576572847247}], 
          
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.9360056700435855, 0.7882114216470689}], 
          
          DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
           0.34450646845786265`, 0.10564053226675468`}], 
          
          DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
           0.5470524110396625, 0.7602576572847247}], 
          
          DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
           0.1391742815270165, 0.10564053226675468`}], 
          
          DirectedEdge[{0.34450646845786265`, 0.10564053226675468`}, {
           0.1391742815270165, 0.10564053226675468`}], 
          
          DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
           0.017058474835845494`, 1.0913987499711717`}], 
          DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
           0.34450646845786265`, 0.10564053226675468`}], 
          
          DirectedEdge[{0.017058474835845494`, 1.0913987499711717`}, {
           0.9775378884656061, 0.8121693321580472}], 
          
          DirectedEdge[{0.1391742815270165, 0.10564053226675468`}, {
           0.017058474835845494`, 1.0913987499711717`}]}, {
         EdgeShapeFunction -> {
           DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
              0.5470524110396625, 0.7602576572847247}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
              0.1973196423435677, 0.3568031719882606}] -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`], 
            DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
              0.5470524110396625, 0.7602576572847247}] -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`], 
            DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
              0.24219897999837828`, 0.7989237804877328}] -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`], 
            DirectedEdge[{0.34450646845786265`, 0.10564053226675468`}, {
              0.1391742815270165, 0.10564053226675468`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
              0.34450646845786265`, 0.10564053226675468`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
              0.1391742815270165, 0.10564053226675468`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
              0.9360056700435855, 0.7882114216470689}] -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`], 
            DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
              0.017058474835845494`, 1.0913987499711717`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.017058474835845494`, 1.0913987499711717`}, {
              0.9775378884656061, 0.8121693321580472}] -> 
            GraphElementData[
             "ShortUnfilledArrow", "ArrowSize" -> 0.11050000000000001`], 
            DirectedEdge[{0.1391742815270165, 0.10564053226675468`}, {
              0.017058474835845494`, 1.0913987499711717`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085], 
            DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
              0.34450646845786265`, 0.10564053226675468`}] -> 
            GraphElementData["ShortUnfilledArrow", "ArrowSize" -> 0.085]}, 
          EdgeStyle -> {
           DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
              0.1391742815270165, 0.10564053226675468`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
              0.1973196423435677, 0.3568031719882606}] -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, 
            DirectedEdge[{0.24219897999837828`, 0.7989237804877328}, {
              0.017058474835845494`, 1.0913987499711717`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
              0.34450646845786265`, 0.10564053226675468`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.34450646845786265`, 0.10564053226675468`}, {
              0.1391742815270165, 0.10564053226675468`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.1391742815270165, 0.10564053226675468`}, {
              0.017058474835845494`, 1.0913987499711717`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.1973196423435677, 0.3568031719882606}, {
              0.5470524110396625, 0.7602576572847247}] -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, 
            DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
              0.34450646845786265`, 0.10564053226675468`}] -> {
              RGBColor[1, 0, 0], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.5470524110396625, 0.7602576572847247}, {
              0.24219897999837828`, 0.7989237804877328}] -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, 
            DirectedEdge[{0.017058474835845494`, 1.0913987499711717`}, {
              0.9775378884656061, 0.8121693321580472}] -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}, 
            DirectedEdge[{0.9360056700435855, 0.7882114216470689}, {
              0.5470524110396625, 0.7602576572847247}] -> {
              RGBColor[1., 0.843137254901961, 0.], 
              Thickness[0.01], 
              Opacity[1]}, 
            DirectedEdge[{0.9775378884656061, 0.8121693321580472}, {
              0.9360056700435855, 0.7882114216470689}] -> {
              RGBColor[0, 0, 1], 
              Thickness[0.013000000000000001`], 
              Opacity[1]}}, 
          EdgeWeight -> {2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1}, GraphLayout -> 
          "TutteEmbedding"}], $CellContext`graphLayout = 
       "TutteEmbedding", $CellContext`vertexCo = {{-1.8369701987210297`*^-16, 
        1.}, {0.37299688849902907`, 0.3592918225278991}, {0.9510565162951535, 
        0.3090169943749475}, {-0.4569692064618976, -0.24371384226375026`}, \
{-0.9510565162951536, 
        0.3090169943749472}, {-0.587785252292473, -0.8090169943749476}, {
        0.5877852522924731, -0.8090169943749473}, {
        0.16793764477653486`, -0.23114633803693282`}}, $CellContext`progress = 
       Dynamic[
         Column[
          ReplaceAll[
           ReplaceAll[{"Finding satisfying edges", 
             ProgressIndicator[$CellContext`satisfyProgress]}, {
              Blank[], 
              Blank[][1]} -> {"Setting win state edge", 
              ProgressIndicator[$CellContext`puzzleStateProgress]}], {
             Blank[], 
             Blank[][1]} -> {"Ready", 
             ProgressIndicator[1]}]]], $CellContext`vertexExpansion = 2.75}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"e3387c7c-\
bbed-484a-a75f-346afebd2a90"]
},
WindowSize->{704, 624},
WindowMargins->{{600, Automatic}, {Automatic, 178}},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.3 for Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 737, 21, 88, "Input",ExpressionUUID->"64036738-e645-4509-af24-1816f55ca6cf",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[2226, 58, 645, 17, 86, "Input",ExpressionUUID->"0da18fef-02fe-4e9b-89af-62de1da0f3f0",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[2874, 77, 537, 14, 72, "Input",ExpressionUUID->"6defee82-904c-4ee4-89fa-aa55f25f5b6e",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[3414, 93, 1071, 29, 132, "Input",ExpressionUUID->"493ce1b2-cb05-4d0b-b80b-4617b9742e53",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[4488, 124, 740, 20, 92, "Input",ExpressionUUID->"314c49e6-b3a3-4d7e-bbcf-cfdc88b82ed8",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[5231, 146, 1180, 34, 112, "Input",ExpressionUUID->"743feca4-38ae-4e8c-8049-4f3a4aec46bd",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[6414, 182, 397, 11, 52, "Input",ExpressionUUID->"08c8fde7-98e5-44ab-a348-77d5dae7573d",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[6814, 195, 1342, 37, 172, "Input",ExpressionUUID->"2ae1160b-7865-4c9f-b376-d84a1c93baa5",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[8159, 234, 397, 10, 52, "Input",ExpressionUUID->"6a2252b1-e1b5-41fd-939a-7df3a911b850",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[8559, 246, 227, 6, 31, "Input",ExpressionUUID->"79ea273d-d3fd-48fd-9127-49a77dd049db",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[8789, 254, 197, 5, 31, "Input",ExpressionUUID->"a64cf646-9d45-4a0d-a0cd-24bf608d78a7",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[8989, 261, 231, 6, 31, "Input",ExpressionUUID->"17990809-9292-4b63-a074-4e10e69edb2d",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[9223, 269, 198, 5, 31, "Input",ExpressionUUID->"42f2e482-7122-49be-8b4d-9f48dfd3f29f",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[9424, 276, 201, 5, 31, "Input",ExpressionUUID->"4fb4d4a4-8131-4d5b-87f3-ee1fdbe3884c",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[9628, 283, 1752, 42, 212, "Input",ExpressionUUID->"5a2023b4-e980-4a65-8660-b82482288a05",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[11383, 327, 471, 12, 31, "Input",ExpressionUUID->"d5227e0e-43b2-487a-923c-09f100c71f60",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[11857, 341, 470, 12, 31, "Input",ExpressionUUID->"98cfdd2c-4d71-40bd-9485-8c63f548f77e",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[12330, 355, 454, 14, 31, "Input",ExpressionUUID->"dcd613b8-a4fe-4607-80c9-b25225d88944",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[12787, 371, 197, 5, 31, "Input",ExpressionUUID->"12e7893b-611d-48f7-b8eb-f29786dd15e1",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[12987, 378, 544, 15, 52, "Input",ExpressionUUID->"cba397ae-7d05-404c-a81d-c1a3128b4513",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[13534, 395, 466, 13, 52, "Input",ExpressionUUID->"edea7cf7-6eeb-4115-82df-51146e196e82",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[14003, 410, 195, 5, 31, "Input",ExpressionUUID->"858fbe27-29fd-438a-930e-11a06ff4f599",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[14201, 417, 668, 20, 52, "Input",ExpressionUUID->"f7d5ac4c-3ccb-4a26-aa29-4c8981086225",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[14872, 439, 2490, 69, 152, "Input",ExpressionUUID->"f70d0c09-efd3-4a8c-bf3a-8442d8e982f8",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[17365, 510, 229, 5, 31, "Input",ExpressionUUID->"b19d6ceb-2cc3-45fe-8d33-70f58e00e337",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[17597, 517, 3201, 80, 352, "Input",ExpressionUUID->"cb9484f7-af92-440f-a07c-0540e68afcd9",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[20801, 599, 509, 14, 72, "Input",ExpressionUUID->"de9aff00-b638-4028-a728-61c618a1d82b",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[21313, 615, 350, 9, 31, "Input",ExpressionUUID->"9c22da29-ef6d-45b3-8c47-ccf99c179be3",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[21666, 626, 427, 12, 52, "Input",ExpressionUUID->"32dbe823-b121-452c-a4f6-94d7ec7ecbd4",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[22096, 640, 849, 24, 72, "Input",ExpressionUUID->"e4dad57b-0a4e-436a-abdb-8bc2c45949b9",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[22948, 666, 667, 20, 92, "Input",ExpressionUUID->"80b370fc-bf80-4b9e-9811-a6f5a4ab992b",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[23618, 688, 311, 10, 31, "Input",ExpressionUUID->"21b46ffb-ed37-40da-9f87-2ffda27c1eb3",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[23932, 700, 775, 21, 112, "Input",ExpressionUUID->"237bfa61-2686-4a61-bbe1-381542b12ce4",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[24710, 723, 427, 12, 52, "Input",ExpressionUUID->"1a60a97d-85be-42ae-8095-c4e1d30a6105",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[25140, 737, 1621, 43, 192, "Input",ExpressionUUID->"fbb10990-3691-4ca8-a7f2-e123ae547c7b",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[26764, 782, 1066, 32, 92, "Input",ExpressionUUID->"83df02f8-5877-437f-8114-f454c7f123a9",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[27833, 816, 204, 5, 31, "Input",ExpressionUUID->"9ff599f7-9e1d-4e18-9eb2-e4c17ab795f8",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[28040, 823, 1028, 26, 152, "Input",ExpressionUUID->"5851ebf2-0d42-44ee-9564-4787f0328d14",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[29071, 851, 628, 17, 72, "Input",ExpressionUUID->"1c6a9a5d-222f-4dd3-88fb-a2ca3200babc",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[29702, 870, 800, 22, 92, "Input",ExpressionUUID->"7956a9e3-14b2-4401-a0f8-729805aadefd",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[30505, 894, 336, 10, 31, "Input",ExpressionUUID->"7199e669-14af-4637-aa54-64f7fe80b9a5",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[30844, 906, 1481, 39, 172, "Input",ExpressionUUID->"602c024e-7ee5-4be4-aba5-ac6e0d944064",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[32328, 947, 1071, 28, 152, "Input",ExpressionUUID->"51eff870-4f20-4664-bff1-d92c59191333",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[33402, 977, 705, 20, 92, "Input",ExpressionUUID->"f258e542-f598-4e89-94d8-ff3aac09975f",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[34110, 999, 225, 5, 31, "Input",ExpressionUUID->"50a1358a-ae59-4e76-81e9-6d2d22b25cd3",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[34338, 1006, 655, 19, 72, "Input",ExpressionUUID->"e4ef5655-94a8-4b5f-90fb-1484bad78a8d",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[34996, 1027, 2735, 69, 232, "Input",ExpressionUUID->"714228f7-3c63-4ebf-9b3a-ee328c547ee8",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[37734, 1098, 227, 5, 31, "Input",ExpressionUUID->"7f90e1cc-bb52-4837-97da-8f2e1b73ca29",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[37964, 1105, 375, 11, 31, "Input",ExpressionUUID->"44d475c7-795b-4cf3-aed8-dc46f1ad579c",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[38342, 1118, 556, 15, 52, "Input",ExpressionUUID->"812e8152-68b9-455c-8d3d-082c485aefac",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[38901, 1135, 3123, 89, 292, "Input",ExpressionUUID->"81b5b3b7-cdcf-45ce-8780-fecb02ff2474",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[42027, 1226, 1868, 49, 192, "Input",ExpressionUUID->"20aa1db5-cd40-4bda-b3c0-68aebf62b9ab",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[43898, 1277, 1944, 52, 192, "Input",ExpressionUUID->"c3778a12-4f0a-4e4d-a8a7-0c74a6a6d97c",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[45845, 1331, 357, 8, 52, "Input",ExpressionUUID->"a8e17549-14fe-48e1-8ead-4b7a2f069c22",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[46205, 1341, 484, 14, 52, "Input",ExpressionUUID->"bfef919a-8eba-467f-864b-a78dfd48beac",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[46692, 1357, 233, 5, 31, "Input",ExpressionUUID->"d22f99f7-952f-4df5-9e77-beb06529c497",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[46928, 1364, 1647, 44, 172, "Input",ExpressionUUID->"5438f1c0-e1ea-4ce1-83ba-e21fc20095fe",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[48578, 1410, 192, 5, 31, "Input",ExpressionUUID->"540b34cc-d646-4b6c-a020-99b3173246a7",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[48773, 1417, 410, 12, 52, "Input",ExpressionUUID->"840bbd7e-1bff-43d5-a244-cf60a9daef5b",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[49186, 1431, 2495, 65, 192, "Input",ExpressionUUID->"71e71633-a1c4-400c-9d72-a5098fd1377a",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[51684, 1498, 588, 16, 72, "Input",ExpressionUUID->"c858d581-d06c-475a-858e-398339e59546",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[52275, 1516, 441, 11, 72, "Input",ExpressionUUID->"d6d7c7cb-67b6-415b-9f16-cd9ee11c0938",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[52719, 1529, 226, 5, 31, "Input",ExpressionUUID->"437de835-d990-488b-9686-b3f70cbb6d6f",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[52948, 1536, 1571, 42, 212, "Input",ExpressionUUID->"a067d2a6-ab59-4b67-941b-a74c3147bca3",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[54522, 1580, 1150, 32, 172, "Input",ExpressionUUID->"2fd1ce6b-bcd7-4d24-9187-11610196fc7d",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[55675, 1614, 458, 13, 52, "Input",ExpressionUUID->"9efa06f3-2858-4682-9357-04ae328e0fd9",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[56136, 1629, 215, 5, 31, "Input",ExpressionUUID->"2ac2cba5-e4d2-4d4c-a479-c1dfe99112bc",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[56354, 1636, 509, 14, 72, "Input",ExpressionUUID->"2062d954-dd48-45e0-b507-962ec1fb468b",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[56866, 1652, 191, 5, 31, "Input",ExpressionUUID->"0177f558-d875-4cc2-85c7-e13e0def2771",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.}],
Cell[57060, 1659, 4748, 116, 512, "Input",ExpressionUUID->"4662a6c2-c248-4b23-8414-3446f7bbdb49",
 CellGroupingRules->{"GroupTogetherGrouping", 10000.},
 CellID->90655687]
}, Closed]],
Cell[61823, 1778, 47698, 1065, 572, "Output",ExpressionUUID->"e3387c7c-bbed-484a-a75f-346afebd2a90"]
}
]
*)

(* NotebookSignature SvpsExr5GgiOwD1yJ5GS9rVv *)
