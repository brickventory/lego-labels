#!/bin/bash

# INSTRUCTIONS: Modify "LDVIEW_APP" and "PARTS" to point to the correct
# folder on your computer.
#
# example: your PARTS folder might be at one of the following locations:
# "/Users/your-username/LDraw/parts"
# "/Users/your-username/Documents/LDraw/parts"
# -----------------------------------------------------------------------------

LDVIEW_APP="/Applications/LDView.app/Contents/MacOS/LDView"
PARTS="/Users/dirkolbrich/Lego/LDraw/parts"
SAVE_DIR="../images/"
PART_NUMBER=$1

# ------------------------------------------------------------
# THIS PART SETS THE PARAMETERS TO MAKE THE IMAGE LOOK RIGHT
# ------------------------------------------------------------
GENERAL_PARAMS="-Antialias=0 -LineSmoothing=0 -TransDefaultColor=0 -DefaultColor3=0xFFFFFF -BackgroundColor3=0xFFFFFF -ProcessLDConfig=1 -MemoryUsage=2"

GEOMETRY_PARAMS="-Seams=1 -SeamWidth=50 -BoundingBoxesOnly=0 -Wireframe=0 -RemoveHiddenLines=0 -WireframeFog=0 -WireframeThickness=5 -BFC=0 -ShowHighlightLines=1 -EdgesOnly=0 -ConditionalHighlights=1 -ShowAllType5=0 -ShowType5ControlPoints=0 -PolygonOffset=1 -BlackHighlights=1 -EdgeThickness=5"

EFFECTS_PARAMS="-Lighting=1 -UseQualityLighting=1 -SubduedLighting=0 -UseSpecular=1 -OneLight=0 -LightVector=-1,1,1 -OptionalStandardLight=1 -DrawLightDats=1 -NoLightGeom=0 -StereoMode=0 -CutawayMode=0  -SortTransparent=1 -UseStipple=0 -UseFlatShading=0 -PerformSmoothing=1"

PRIMITIVES_PARAMS="-AllowPrimitiveSubstitution=1 -TextureStuds=0 -HiResPrimitive=1 -UseQualityStuds=1 -CurveQuality=12 -TextureFilterType=9984"

SAVE_PARAMS="-AutoCrop=1 -ModelSize=500 -SaveActualSize=0 -SaveZoomToFit=0 -SaveWidth=2000 -SaveHeight=2000 -IgnorePBuffer=0 -SaveAlpha=1"

PARAMS="$GENERAL_PARAMS $GEOMETRY_PARAMS $EFFECTS_PARAMS $PRIMITIVES_PARAMS $SAVE_PARAMS"

PERSPECTIVE="-FOV=0.1 -DefaultZoom=0.95 -DefaultMatrix=0.866025,0,-0.5,-0.286788,0.819152,-0.496732,0.409576,0.573576,0.709406"

PERSPECTIVE60="-FOV=0.1 -DefaultZoom=0.95 -DefaultMatrix=0.5,0,-0.866025,-0.340604,0.919412,-0.196648,0.796234,0.393296,0.459706"

PERSPECTIVE90="-FOV=0.1 -DefaultZoom=0.95 -DefaultMatrix=0.5,0,0.866026,0.496732,0.819152,-0.286788,-0.709407,0.573576,0.409576"

PERSPECTIVE180="-FOV=0.1 -DefaultZoom=0.95 -DefaultMatrix=-0.866025,0,0.5,0.286788,0.819152,0.496732,-0.409576,0.573576,-0.709407"

PERSPECTIVE270="-FOV=0.1 -DefaultZoom=0.95 -DefaultMatrix=-0.5,0,-0.866025,-0.496732,0.819152,0.286788,0.709407,0.573576,-0.409576"

# -----------------
# THIS PART MAKES THE IMAGE
# -----------------
$LDVIEW_APP $PARAMS "$PERSPECTIVE" $PARTS/$PART_NUMBER.dat -SaveSnapshot=$SAVE_DIR$PART_NUMBER.png