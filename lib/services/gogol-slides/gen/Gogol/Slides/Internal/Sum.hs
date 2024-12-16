{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Slides.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Slides.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AffineTransform_Unit
    AffineTransform_Unit
      (
        AffineTransform_Unit_UNITUNSPECIFIED,
        AffineTransform_Unit_Emu,
        AffineTransform_Unit_PT,
        ..
      ),

    -- * AutoText_Type
    AutoText_Type
      (
        AutoText_Type_TYPEUNSPECIFIED,
        AutoText_Type_SLIDENUMBER,
        ..
      ),

    -- * Autofit_AutofitType
    Autofit_AutofitType
      (
        Autofit_AutofitType_AUTOFITTYPEUNSPECIFIED,
        Autofit_AutofitType_None,
        Autofit_AutofitType_TEXTAUTOFIT,
        Autofit_AutofitType_SHAPEAUTOFIT,
        ..
      ),

    -- * CreateLineRequest_Category
    CreateLineRequest_Category
      (
        CreateLineRequest_Category_LINECATEGORYUNSPECIFIED,
        CreateLineRequest_Category_Straight,
        CreateLineRequest_Category_Bent,
        CreateLineRequest_Category_Curved,
        ..
      ),

    -- * CreateLineRequest_LineCategory
    CreateLineRequest_LineCategory
      (
        CreateLineRequest_LineCategory_Straight,
        CreateLineRequest_LineCategory_Bent,
        CreateLineRequest_LineCategory_Curved,
        ..
      ),

    -- * CreateParagraphBulletsRequest_BulletPreset
    CreateParagraphBulletsRequest_BulletPreset
      (
        CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX,
        CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC,
        CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMAN,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMANPARENS,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITNESTED,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADIGIT,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODIGITALPHAROMAN,
        ..
      ),

    -- * CreateShapeRequest_ShapeType
    CreateShapeRequest_ShapeType
      (
        CreateShapeRequest_ShapeType_TYPEUNSPECIFIED,
        CreateShapeRequest_ShapeType_TEXTBOX,
        CreateShapeRequest_ShapeType_Rectangle,
        CreateShapeRequest_ShapeType_ROUNDRECTANGLE,
        CreateShapeRequest_ShapeType_Ellipse,
        CreateShapeRequest_ShapeType_Arc,
        CreateShapeRequest_ShapeType_BENTARROW,
        CreateShapeRequest_ShapeType_BENTUPARROW,
        CreateShapeRequest_ShapeType_Bevel,
        CreateShapeRequest_ShapeType_BLOCKARC,
        CreateShapeRequest_ShapeType_BRACEPAIR,
        CreateShapeRequest_ShapeType_BRACKETPAIR,
        CreateShapeRequest_ShapeType_Can,
        CreateShapeRequest_ShapeType_Chevron,
        CreateShapeRequest_ShapeType_Chord,
        CreateShapeRequest_ShapeType_Cloud,
        CreateShapeRequest_ShapeType_Corner,
        CreateShapeRequest_ShapeType_Cube,
        CreateShapeRequest_ShapeType_CURVEDDOWNARROW,
        CreateShapeRequest_ShapeType_CURVEDLEFTARROW,
        CreateShapeRequest_ShapeType_CURVEDRIGHTARROW,
        CreateShapeRequest_ShapeType_CURVEDUPARROW,
        CreateShapeRequest_ShapeType_Decagon,
        CreateShapeRequest_ShapeType_DIAGONALSTRIPE,
        CreateShapeRequest_ShapeType_Diamond,
        CreateShapeRequest_ShapeType_Dodecagon,
        CreateShapeRequest_ShapeType_Donut,
        CreateShapeRequest_ShapeType_DOUBLEWAVE,
        CreateShapeRequest_ShapeType_DOWNARROW,
        CreateShapeRequest_ShapeType_DOWNARROWCALLOUT,
        CreateShapeRequest_ShapeType_FOLDEDCORNER,
        CreateShapeRequest_ShapeType_Frame,
        CreateShapeRequest_ShapeType_HALFFRAME,
        CreateShapeRequest_ShapeType_Heart,
        CreateShapeRequest_ShapeType_Heptagon,
        CreateShapeRequest_ShapeType_Hexagon,
        CreateShapeRequest_ShapeType_HOMEPLATE,
        CreateShapeRequest_ShapeType_HORIZONTALSCROLL,
        CreateShapeRequest_ShapeType_IRREGULAR_SEAL_1,
        CreateShapeRequest_ShapeType_IRREGULAR_SEAL_2,
        CreateShapeRequest_ShapeType_LEFTARROW,
        CreateShapeRequest_ShapeType_LEFTARROWCALLOUT,
        CreateShapeRequest_ShapeType_LEFTBRACE,
        CreateShapeRequest_ShapeType_LEFTBRACKET,
        CreateShapeRequest_ShapeType_LEFTRIGHTARROW,
        CreateShapeRequest_ShapeType_LEFTRIGHTARROWCALLOUT,
        CreateShapeRequest_ShapeType_LEFTRIGHTUPARROW,
        CreateShapeRequest_ShapeType_LEFTUPARROW,
        CreateShapeRequest_ShapeType_LIGHTNINGBOLT,
        CreateShapeRequest_ShapeType_MATHDIVIDE,
        CreateShapeRequest_ShapeType_MATHEQUAL,
        CreateShapeRequest_ShapeType_MATHMINUS,
        CreateShapeRequest_ShapeType_MATHMULTIPLY,
        CreateShapeRequest_ShapeType_MATHNOTEQUAL,
        CreateShapeRequest_ShapeType_MATHPLUS,
        CreateShapeRequest_ShapeType_Moon,
        CreateShapeRequest_ShapeType_NOSMOKING,
        CreateShapeRequest_ShapeType_NOTCHEDRIGHTARROW,
        CreateShapeRequest_ShapeType_Octagon,
        CreateShapeRequest_ShapeType_Parallelogram,
        CreateShapeRequest_ShapeType_Pentagon,
        CreateShapeRequest_ShapeType_Pie,
        CreateShapeRequest_ShapeType_Plaque,
        CreateShapeRequest_ShapeType_Plus,
        CreateShapeRequest_ShapeType_QUADARROW,
        CreateShapeRequest_ShapeType_QUADARROWCALLOUT,
        CreateShapeRequest_ShapeType_Ribbon,
        CreateShapeRequest_ShapeType_RIBBON_2,
        CreateShapeRequest_ShapeType_RIGHTARROW,
        CreateShapeRequest_ShapeType_RIGHTARROWCALLOUT,
        CreateShapeRequest_ShapeType_RIGHTBRACE,
        CreateShapeRequest_ShapeType_RIGHTBRACKET,
        CreateShapeRequest_ShapeType_ROUND1RECTANGLE,
        CreateShapeRequest_ShapeType_ROUND2DIAGONALRECTANGLE,
        CreateShapeRequest_ShapeType_ROUND2SAMERECTANGLE,
        CreateShapeRequest_ShapeType_RIGHTTRIANGLE,
        CreateShapeRequest_ShapeType_SMILEYFACE,
        CreateShapeRequest_ShapeType_SNIP1RECTANGLE,
        CreateShapeRequest_ShapeType_SNIP2DIAGONALRECTANGLE,
        CreateShapeRequest_ShapeType_SNIP2SAMERECTANGLE,
        CreateShapeRequest_ShapeType_SNIPROUNDRECTANGLE,
        CreateShapeRequest_ShapeType_STAR_10,
        CreateShapeRequest_ShapeType_STAR_12,
        CreateShapeRequest_ShapeType_STAR_16,
        CreateShapeRequest_ShapeType_STAR_24,
        CreateShapeRequest_ShapeType_STAR_32,
        CreateShapeRequest_ShapeType_STAR_4,
        CreateShapeRequest_ShapeType_STAR_5,
        CreateShapeRequest_ShapeType_STAR_6,
        CreateShapeRequest_ShapeType_STAR_7,
        CreateShapeRequest_ShapeType_STAR_8,
        CreateShapeRequest_ShapeType_STRIPEDRIGHTARROW,
        CreateShapeRequest_ShapeType_Sun,
        CreateShapeRequest_ShapeType_Trapezoid,
        CreateShapeRequest_ShapeType_Triangle,
        CreateShapeRequest_ShapeType_UPARROW,
        CreateShapeRequest_ShapeType_UPARROWCALLOUT,
        CreateShapeRequest_ShapeType_UPDOWNARROW,
        CreateShapeRequest_ShapeType_UTURNARROW,
        CreateShapeRequest_ShapeType_VERTICALSCROLL,
        CreateShapeRequest_ShapeType_Wave,
        CreateShapeRequest_ShapeType_WEDGEELLIPSECALLOUT,
        CreateShapeRequest_ShapeType_WEDGERECTANGLECALLOUT,
        CreateShapeRequest_ShapeType_WEDGEROUNDRECTANGLECALLOUT,
        CreateShapeRequest_ShapeType_FLOWCHARTALTERNATEPROCESS,
        CreateShapeRequest_ShapeType_FLOWCHARTCOLLATE,
        CreateShapeRequest_ShapeType_FLOWCHARTCONNECTOR,
        CreateShapeRequest_ShapeType_FLOWCHARTDECISION,
        CreateShapeRequest_ShapeType_FLOWCHARTDELAY,
        CreateShapeRequest_ShapeType_FLOWCHARTDISPLAY,
        CreateShapeRequest_ShapeType_FLOWCHARTDOCUMENT,
        CreateShapeRequest_ShapeType_FLOWCHARTEXTRACT,
        CreateShapeRequest_ShapeType_FLOWCHARTINPUTOUTPUT,
        CreateShapeRequest_ShapeType_FLOWCHARTINTERNALSTORAGE,
        CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDISK,
        CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDRUM,
        CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICTAPE,
        CreateShapeRequest_ShapeType_FLOWCHARTMANUALINPUT,
        CreateShapeRequest_ShapeType_FLOWCHARTMANUALOPERATION,
        CreateShapeRequest_ShapeType_FLOWCHARTMERGE,
        CreateShapeRequest_ShapeType_FLOWCHARTMULTIDOCUMENT,
        CreateShapeRequest_ShapeType_FLOWCHARTOFFLINESTORAGE,
        CreateShapeRequest_ShapeType_FLOWCHARTOFFPAGECONNECTOR,
        CreateShapeRequest_ShapeType_FLOWCHARTONLINESTORAGE,
        CreateShapeRequest_ShapeType_FLOWCHARTOR,
        CreateShapeRequest_ShapeType_FLOWCHARTPREDEFINEDPROCESS,
        CreateShapeRequest_ShapeType_FLOWCHARTPREPARATION,
        CreateShapeRequest_ShapeType_FLOWCHARTPROCESS,
        CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDCARD,
        CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDTAPE,
        CreateShapeRequest_ShapeType_FLOWCHARTSORT,
        CreateShapeRequest_ShapeType_FLOWCHARTSUMMINGJUNCTION,
        CreateShapeRequest_ShapeType_FLOWCHARTTERMINATOR,
        CreateShapeRequest_ShapeType_ARROWEAST,
        CreateShapeRequest_ShapeType_ARROWNORTHEAST,
        CreateShapeRequest_ShapeType_ARROWNORTH,
        CreateShapeRequest_ShapeType_Speech,
        CreateShapeRequest_ShapeType_Starburst,
        CreateShapeRequest_ShapeType_Teardrop,
        CreateShapeRequest_ShapeType_ELLIPSERIBBON,
        CreateShapeRequest_ShapeType_ELLIPSE_RIBBON_2,
        CreateShapeRequest_ShapeType_CLOUDCALLOUT,
        CreateShapeRequest_ShapeType_Custom,
        ..
      ),

    -- * CreateSheetsChartRequest_LinkingMode
    CreateSheetsChartRequest_LinkingMode
      (
        CreateSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE,
        CreateSheetsChartRequest_LinkingMode_Linked,
        ..
      ),

    -- * CreateVideoRequest_Source
    CreateVideoRequest_Source
      (
        CreateVideoRequest_Source_SOURCEUNSPECIFIED,
        CreateVideoRequest_Source_Youtube,
        CreateVideoRequest_Source_Drive,
        ..
      ),

    -- * Dimension_Unit
    Dimension_Unit
      (
        Dimension_Unit_UNITUNSPECIFIED,
        Dimension_Unit_Emu,
        Dimension_Unit_PT,
        ..
      ),

    -- * LayoutReference_PredefinedLayout
    LayoutReference_PredefinedLayout
      (
        LayoutReference_PredefinedLayout_PREDEFINEDLAYOUTUNSPECIFIED,
        LayoutReference_PredefinedLayout_Blank,
        LayoutReference_PredefinedLayout_CAPTIONONLY,
        LayoutReference_PredefinedLayout_Title,
        LayoutReference_PredefinedLayout_TITLEANDBODY,
        LayoutReference_PredefinedLayout_TITLEANDTWOCOLUMNS,
        LayoutReference_PredefinedLayout_TITLEONLY,
        LayoutReference_PredefinedLayout_SECTIONHEADER,
        LayoutReference_PredefinedLayout_SECTIONTITLEANDDESCRIPTION,
        LayoutReference_PredefinedLayout_ONECOLUMNTEXT,
        LayoutReference_PredefinedLayout_MAINPOINT,
        LayoutReference_PredefinedLayout_BIGNUMBER,
        ..
      ),

    -- * Line_LineCategory
    Line_LineCategory
      (
        Line_LineCategory_LINECATEGORYUNSPECIFIED,
        Line_LineCategory_Straight,
        Line_LineCategory_Bent,
        Line_LineCategory_Curved,
        ..
      ),

    -- * Line_LineType
    Line_LineType
      (
        Line_LineType_TYPEUNSPECIFIED,
        Line_LineType_STRAIGHT_CONNECTOR_1,
        Line_LineType_BENT_CONNECTOR_2,
        Line_LineType_BENT_CONNECTOR_3,
        Line_LineType_BENT_CONNECTOR_4,
        Line_LineType_BENT_CONNECTOR_5,
        Line_LineType_CURVED_CONNECTOR_2,
        Line_LineType_CURVED_CONNECTOR_3,
        Line_LineType_CURVED_CONNECTOR_4,
        Line_LineType_CURVED_CONNECTOR_5,
        Line_LineType_STRAIGHTLINE,
        ..
      ),

    -- * LineProperties_DashStyle
    LineProperties_DashStyle
      (
        LineProperties_DashStyle_DASHSTYLEUNSPECIFIED,
        LineProperties_DashStyle_Solid,
        LineProperties_DashStyle_Dot,
        LineProperties_DashStyle_Dash,
        LineProperties_DashStyle_DASHDOT,
        LineProperties_DashStyle_LONGDASH,
        LineProperties_DashStyle_LONGDASHDOT,
        ..
      ),

    -- * LineProperties_EndArrow
    LineProperties_EndArrow
      (
        LineProperties_EndArrow_ARROWSTYLEUNSPECIFIED,
        LineProperties_EndArrow_None,
        LineProperties_EndArrow_STEALTHARROW,
        LineProperties_EndArrow_FILLARROW,
        LineProperties_EndArrow_FILLCIRCLE,
        LineProperties_EndArrow_FILLSQUARE,
        LineProperties_EndArrow_FILLDIAMOND,
        LineProperties_EndArrow_OPENARROW,
        LineProperties_EndArrow_OPENCIRCLE,
        LineProperties_EndArrow_OPENSQUARE,
        LineProperties_EndArrow_OPENDIAMOND,
        ..
      ),

    -- * LineProperties_StartArrow
    LineProperties_StartArrow
      (
        LineProperties_StartArrow_ARROWSTYLEUNSPECIFIED,
        LineProperties_StartArrow_None,
        LineProperties_StartArrow_STEALTHARROW,
        LineProperties_StartArrow_FILLARROW,
        LineProperties_StartArrow_FILLCIRCLE,
        LineProperties_StartArrow_FILLSQUARE,
        LineProperties_StartArrow_FILLDIAMOND,
        LineProperties_StartArrow_OPENARROW,
        LineProperties_StartArrow_OPENCIRCLE,
        LineProperties_StartArrow_OPENSQUARE,
        LineProperties_StartArrow_OPENDIAMOND,
        ..
      ),

    -- * Link_RelativeLink
    Link_RelativeLink
      (
        Link_RelativeLink_RELATIVESLIDELINKUNSPECIFIED,
        Link_RelativeLink_NEXTSLIDE,
        Link_RelativeLink_PREVIOUSSLIDE,
        Link_RelativeLink_FIRSTSLIDE,
        Link_RelativeLink_LASTSLIDE,
        ..
      ),

    -- * OpaqueColor_ThemeColor
    OpaqueColor_ThemeColor
      (
        OpaqueColor_ThemeColor_THEMECOLORTYPEUNSPECIFIED,
        OpaqueColor_ThemeColor_DARK1,
        OpaqueColor_ThemeColor_LIGHT1,
        OpaqueColor_ThemeColor_DARK2,
        OpaqueColor_ThemeColor_LIGHT2,
        OpaqueColor_ThemeColor_ACCENT1,
        OpaqueColor_ThemeColor_ACCENT2,
        OpaqueColor_ThemeColor_ACCENT3,
        OpaqueColor_ThemeColor_ACCENT4,
        OpaqueColor_ThemeColor_ACCENT5,
        OpaqueColor_ThemeColor_ACCENT6,
        OpaqueColor_ThemeColor_Hyperlink,
        OpaqueColor_ThemeColor_FOLLOWEDHYPERLINK,
        OpaqueColor_ThemeColor_TEXT1,
        OpaqueColor_ThemeColor_BACKGROUND1,
        OpaqueColor_ThemeColor_TEXT2,
        OpaqueColor_ThemeColor_BACKGROUND2,
        ..
      ),

    -- * Outline_DashStyle
    Outline_DashStyle
      (
        Outline_DashStyle_DASHSTYLEUNSPECIFIED,
        Outline_DashStyle_Solid,
        Outline_DashStyle_Dot,
        Outline_DashStyle_Dash,
        Outline_DashStyle_DASHDOT,
        Outline_DashStyle_LONGDASH,
        Outline_DashStyle_LONGDASHDOT,
        ..
      ),

    -- * Outline_PropertyState
    Outline_PropertyState
      (
        Outline_PropertyState_Rendered,
        Outline_PropertyState_NOTRENDERED,
        Outline_PropertyState_Inherit,
        ..
      ),

    -- * Page_PageType
    Page_PageType
      (
        Page_PageType_Slide,
        Page_PageType_Master,
        Page_PageType_Layout,
        Page_PageType_Notes,
        Page_PageType_NOTESMASTER,
        ..
      ),

    -- * PageBackgroundFill_PropertyState
    PageBackgroundFill_PropertyState
      (
        PageBackgroundFill_PropertyState_Rendered,
        PageBackgroundFill_PropertyState_NOTRENDERED,
        PageBackgroundFill_PropertyState_Inherit,
        ..
      ),

    -- * ParagraphStyle_Alignment
    ParagraphStyle_Alignment
      (
        ParagraphStyle_Alignment_ALIGNMENTUNSPECIFIED,
        ParagraphStyle_Alignment_Start,
        ParagraphStyle_Alignment_Center,
        ParagraphStyle_Alignment_End,
        ParagraphStyle_Alignment_Justified,
        ..
      ),

    -- * ParagraphStyle_Direction
    ParagraphStyle_Direction
      (
        ParagraphStyle_Direction_TEXTDIRECTIONUNSPECIFIED,
        ParagraphStyle_Direction_LEFTTORIGHT,
        ParagraphStyle_Direction_RIGHTTOLEFT,
        ..
      ),

    -- * ParagraphStyle_SpacingMode
    ParagraphStyle_SpacingMode
      (
        ParagraphStyle_SpacingMode_SPACINGMODEUNSPECIFIED,
        ParagraphStyle_SpacingMode_NEVERCOLLAPSE,
        ParagraphStyle_SpacingMode_COLLAPSELISTS,
        ..
      ),

    -- * Placeholder_Type
    Placeholder_Type
      (
        Placeholder_Type_None,
        Placeholder_Type_Body,
        Placeholder_Type_Chart,
        Placeholder_Type_CLIPART,
        Placeholder_Type_CENTEREDTITLE,
        Placeholder_Type_Diagram,
        Placeholder_Type_DATEANDTIME,
        Placeholder_Type_Footer,
        Placeholder_Type_Header,
        Placeholder_Type_Media,
        Placeholder_Type_Object,
        Placeholder_Type_Picture,
        Placeholder_Type_SLIDENUMBER,
        Placeholder_Type_Subtitle,
        Placeholder_Type_Table,
        Placeholder_Type_Title,
        Placeholder_Type_SLIDEIMAGE,
        ..
      ),

    -- * Range_Type
    Range_Type
      (
        Range_Type_RANGETYPEUNSPECIFIED,
        Range_Type_FIXEDRANGE,
        Range_Type_FROMSTARTINDEX,
        Range_Type_All,
        ..
      ),

    -- * Recolor_Name
    Recolor_Name
      (
        Recolor_Name_None,
        Recolor_Name_LIGHT1,
        Recolor_Name_LIGHT2,
        Recolor_Name_LIGHT3,
        Recolor_Name_LIGHT4,
        Recolor_Name_LIGHT5,
        Recolor_Name_LIGHT6,
        Recolor_Name_LIGHT7,
        Recolor_Name_LIGHT8,
        Recolor_Name_LIGHT9,
        Recolor_Name_LIGHT10,
        Recolor_Name_DARK1,
        Recolor_Name_DARK2,
        Recolor_Name_DARK3,
        Recolor_Name_DARK4,
        Recolor_Name_DARK5,
        Recolor_Name_DARK6,
        Recolor_Name_DARK7,
        Recolor_Name_DARK8,
        Recolor_Name_DARK9,
        Recolor_Name_DARK10,
        Recolor_Name_Grayscale,
        Recolor_Name_Negative,
        Recolor_Name_Sepia,
        Recolor_Name_Custom,
        ..
      ),

    -- * ReplaceAllShapesWithImageRequest_ImageReplaceMethod
    ReplaceAllShapesWithImageRequest_ImageReplaceMethod
      (
        ReplaceAllShapesWithImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
        ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERINSIDE,
        ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERCROP,
        ..
      ),

    -- * ReplaceAllShapesWithImageRequest_ReplaceMethod
    ReplaceAllShapesWithImageRequest_ReplaceMethod
      (
        ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERINSIDE,
        ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERCROP,
        ..
      ),

    -- * ReplaceAllShapesWithSheetsChartRequest_LinkingMode
    ReplaceAllShapesWithSheetsChartRequest_LinkingMode
      (
        ReplaceAllShapesWithSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE,
        ReplaceAllShapesWithSheetsChartRequest_LinkingMode_Linked,
        ..
      ),

    -- * ReplaceImageRequest_ImageReplaceMethod
    ReplaceImageRequest_ImageReplaceMethod
      (
        ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
        ReplaceImageRequest_ImageReplaceMethod_CENTERINSIDE,
        ReplaceImageRequest_ImageReplaceMethod_CENTERCROP,
        ..
      ),

    -- * Shadow_Alignment
    Shadow_Alignment
      (
        Shadow_Alignment_RECTANGLEPOSITIONUNSPECIFIED,
        Shadow_Alignment_TOPLEFT,
        Shadow_Alignment_TOPCENTER,
        Shadow_Alignment_TOPRIGHT,
        Shadow_Alignment_LEFTCENTER,
        Shadow_Alignment_Center,
        Shadow_Alignment_RIGHTCENTER,
        Shadow_Alignment_BOTTOMLEFT,
        Shadow_Alignment_BOTTOMCENTER,
        Shadow_Alignment_BOTTOMRIGHT,
        ..
      ),

    -- * Shadow_PropertyState
    Shadow_PropertyState
      (
        Shadow_PropertyState_Rendered,
        Shadow_PropertyState_NOTRENDERED,
        Shadow_PropertyState_Inherit,
        ..
      ),

    -- * Shadow_Type
    Shadow_Type
      (
        Shadow_Type_SHADOWTYPEUNSPECIFIED,
        Shadow_Type_Outer,
        ..
      ),

    -- * Shape_ShapeType
    Shape_ShapeType
      (
        Shape_ShapeType_TYPEUNSPECIFIED,
        Shape_ShapeType_TEXTBOX,
        Shape_ShapeType_Rectangle,
        Shape_ShapeType_ROUNDRECTANGLE,
        Shape_ShapeType_Ellipse,
        Shape_ShapeType_Arc,
        Shape_ShapeType_BENTARROW,
        Shape_ShapeType_BENTUPARROW,
        Shape_ShapeType_Bevel,
        Shape_ShapeType_BLOCKARC,
        Shape_ShapeType_BRACEPAIR,
        Shape_ShapeType_BRACKETPAIR,
        Shape_ShapeType_Can,
        Shape_ShapeType_Chevron,
        Shape_ShapeType_Chord,
        Shape_ShapeType_Cloud,
        Shape_ShapeType_Corner,
        Shape_ShapeType_Cube,
        Shape_ShapeType_CURVEDDOWNARROW,
        Shape_ShapeType_CURVEDLEFTARROW,
        Shape_ShapeType_CURVEDRIGHTARROW,
        Shape_ShapeType_CURVEDUPARROW,
        Shape_ShapeType_Decagon,
        Shape_ShapeType_DIAGONALSTRIPE,
        Shape_ShapeType_Diamond,
        Shape_ShapeType_Dodecagon,
        Shape_ShapeType_Donut,
        Shape_ShapeType_DOUBLEWAVE,
        Shape_ShapeType_DOWNARROW,
        Shape_ShapeType_DOWNARROWCALLOUT,
        Shape_ShapeType_FOLDEDCORNER,
        Shape_ShapeType_Frame,
        Shape_ShapeType_HALFFRAME,
        Shape_ShapeType_Heart,
        Shape_ShapeType_Heptagon,
        Shape_ShapeType_Hexagon,
        Shape_ShapeType_HOMEPLATE,
        Shape_ShapeType_HORIZONTALSCROLL,
        Shape_ShapeType_IRREGULAR_SEAL_1,
        Shape_ShapeType_IRREGULAR_SEAL_2,
        Shape_ShapeType_LEFTARROW,
        Shape_ShapeType_LEFTARROWCALLOUT,
        Shape_ShapeType_LEFTBRACE,
        Shape_ShapeType_LEFTBRACKET,
        Shape_ShapeType_LEFTRIGHTARROW,
        Shape_ShapeType_LEFTRIGHTARROWCALLOUT,
        Shape_ShapeType_LEFTRIGHTUPARROW,
        Shape_ShapeType_LEFTUPARROW,
        Shape_ShapeType_LIGHTNINGBOLT,
        Shape_ShapeType_MATHDIVIDE,
        Shape_ShapeType_MATHEQUAL,
        Shape_ShapeType_MATHMINUS,
        Shape_ShapeType_MATHMULTIPLY,
        Shape_ShapeType_MATHNOTEQUAL,
        Shape_ShapeType_MATHPLUS,
        Shape_ShapeType_Moon,
        Shape_ShapeType_NOSMOKING,
        Shape_ShapeType_NOTCHEDRIGHTARROW,
        Shape_ShapeType_Octagon,
        Shape_ShapeType_Parallelogram,
        Shape_ShapeType_Pentagon,
        Shape_ShapeType_Pie,
        Shape_ShapeType_Plaque,
        Shape_ShapeType_Plus,
        Shape_ShapeType_QUADARROW,
        Shape_ShapeType_QUADARROWCALLOUT,
        Shape_ShapeType_Ribbon,
        Shape_ShapeType_RIBBON_2,
        Shape_ShapeType_RIGHTARROW,
        Shape_ShapeType_RIGHTARROWCALLOUT,
        Shape_ShapeType_RIGHTBRACE,
        Shape_ShapeType_RIGHTBRACKET,
        Shape_ShapeType_ROUND1RECTANGLE,
        Shape_ShapeType_ROUND2DIAGONALRECTANGLE,
        Shape_ShapeType_ROUND2SAMERECTANGLE,
        Shape_ShapeType_RIGHTTRIANGLE,
        Shape_ShapeType_SMILEYFACE,
        Shape_ShapeType_SNIP1RECTANGLE,
        Shape_ShapeType_SNIP2DIAGONALRECTANGLE,
        Shape_ShapeType_SNIP2SAMERECTANGLE,
        Shape_ShapeType_SNIPROUNDRECTANGLE,
        Shape_ShapeType_STAR_10,
        Shape_ShapeType_STAR_12,
        Shape_ShapeType_STAR_16,
        Shape_ShapeType_STAR_24,
        Shape_ShapeType_STAR_32,
        Shape_ShapeType_STAR_4,
        Shape_ShapeType_STAR_5,
        Shape_ShapeType_STAR_6,
        Shape_ShapeType_STAR_7,
        Shape_ShapeType_STAR_8,
        Shape_ShapeType_STRIPEDRIGHTARROW,
        Shape_ShapeType_Sun,
        Shape_ShapeType_Trapezoid,
        Shape_ShapeType_Triangle,
        Shape_ShapeType_UPARROW,
        Shape_ShapeType_UPARROWCALLOUT,
        Shape_ShapeType_UPDOWNARROW,
        Shape_ShapeType_UTURNARROW,
        Shape_ShapeType_VERTICALSCROLL,
        Shape_ShapeType_Wave,
        Shape_ShapeType_WEDGEELLIPSECALLOUT,
        Shape_ShapeType_WEDGERECTANGLECALLOUT,
        Shape_ShapeType_WEDGEROUNDRECTANGLECALLOUT,
        Shape_ShapeType_FLOWCHARTALTERNATEPROCESS,
        Shape_ShapeType_FLOWCHARTCOLLATE,
        Shape_ShapeType_FLOWCHARTCONNECTOR,
        Shape_ShapeType_FLOWCHARTDECISION,
        Shape_ShapeType_FLOWCHARTDELAY,
        Shape_ShapeType_FLOWCHARTDISPLAY,
        Shape_ShapeType_FLOWCHARTDOCUMENT,
        Shape_ShapeType_FLOWCHARTEXTRACT,
        Shape_ShapeType_FLOWCHARTINPUTOUTPUT,
        Shape_ShapeType_FLOWCHARTINTERNALSTORAGE,
        Shape_ShapeType_FLOWCHARTMAGNETICDISK,
        Shape_ShapeType_FLOWCHARTMAGNETICDRUM,
        Shape_ShapeType_FLOWCHARTMAGNETICTAPE,
        Shape_ShapeType_FLOWCHARTMANUALINPUT,
        Shape_ShapeType_FLOWCHARTMANUALOPERATION,
        Shape_ShapeType_FLOWCHARTMERGE,
        Shape_ShapeType_FLOWCHARTMULTIDOCUMENT,
        Shape_ShapeType_FLOWCHARTOFFLINESTORAGE,
        Shape_ShapeType_FLOWCHARTOFFPAGECONNECTOR,
        Shape_ShapeType_FLOWCHARTONLINESTORAGE,
        Shape_ShapeType_FLOWCHARTOR,
        Shape_ShapeType_FLOWCHARTPREDEFINEDPROCESS,
        Shape_ShapeType_FLOWCHARTPREPARATION,
        Shape_ShapeType_FLOWCHARTPROCESS,
        Shape_ShapeType_FLOWCHARTPUNCHEDCARD,
        Shape_ShapeType_FLOWCHARTPUNCHEDTAPE,
        Shape_ShapeType_FLOWCHARTSORT,
        Shape_ShapeType_FLOWCHARTSUMMINGJUNCTION,
        Shape_ShapeType_FLOWCHARTTERMINATOR,
        Shape_ShapeType_ARROWEAST,
        Shape_ShapeType_ARROWNORTHEAST,
        Shape_ShapeType_ARROWNORTH,
        Shape_ShapeType_Speech,
        Shape_ShapeType_Starburst,
        Shape_ShapeType_Teardrop,
        Shape_ShapeType_ELLIPSERIBBON,
        Shape_ShapeType_ELLIPSE_RIBBON_2,
        Shape_ShapeType_CLOUDCALLOUT,
        Shape_ShapeType_Custom,
        ..
      ),

    -- * ShapeBackgroundFill_PropertyState
    ShapeBackgroundFill_PropertyState
      (
        ShapeBackgroundFill_PropertyState_Rendered,
        ShapeBackgroundFill_PropertyState_NOTRENDERED,
        ShapeBackgroundFill_PropertyState_Inherit,
        ..
      ),

    -- * ShapeProperties_ContentAlignment
    ShapeProperties_ContentAlignment
      (
        ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
        ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
        ShapeProperties_ContentAlignment_Top,
        ShapeProperties_ContentAlignment_Middle,
        ShapeProperties_ContentAlignment_Bottom,
        ..
      ),

    -- * TableBorderProperties_DashStyle
    TableBorderProperties_DashStyle
      (
        TableBorderProperties_DashStyle_DASHSTYLEUNSPECIFIED,
        TableBorderProperties_DashStyle_Solid,
        TableBorderProperties_DashStyle_Dot,
        TableBorderProperties_DashStyle_Dash,
        TableBorderProperties_DashStyle_DASHDOT,
        TableBorderProperties_DashStyle_LONGDASH,
        TableBorderProperties_DashStyle_LONGDASHDOT,
        ..
      ),

    -- * TableCellBackgroundFill_PropertyState
    TableCellBackgroundFill_PropertyState
      (
        TableCellBackgroundFill_PropertyState_Rendered,
        TableCellBackgroundFill_PropertyState_NOTRENDERED,
        TableCellBackgroundFill_PropertyState_Inherit,
        ..
      ),

    -- * TableCellProperties_ContentAlignment
    TableCellProperties_ContentAlignment
      (
        TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
        TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
        TableCellProperties_ContentAlignment_Top,
        TableCellProperties_ContentAlignment_Middle,
        TableCellProperties_ContentAlignment_Bottom,
        ..
      ),

    -- * TextStyle_BaselineOffset
    TextStyle_BaselineOffset
      (
        TextStyle_BaselineOffset_BASELINEOFFSETUNSPECIFIED,
        TextStyle_BaselineOffset_None,
        TextStyle_BaselineOffset_Superscript,
        TextStyle_BaselineOffset_Subscript,
        ..
      ),

    -- * ThemeColorPair_Type
    ThemeColorPair_Type
      (
        ThemeColorPair_Type_THEMECOLORTYPEUNSPECIFIED,
        ThemeColorPair_Type_DARK1,
        ThemeColorPair_Type_LIGHT1,
        ThemeColorPair_Type_DARK2,
        ThemeColorPair_Type_LIGHT2,
        ThemeColorPair_Type_ACCENT1,
        ThemeColorPair_Type_ACCENT2,
        ThemeColorPair_Type_ACCENT3,
        ThemeColorPair_Type_ACCENT4,
        ThemeColorPair_Type_ACCENT5,
        ThemeColorPair_Type_ACCENT6,
        ThemeColorPair_Type_Hyperlink,
        ThemeColorPair_Type_FOLLOWEDHYPERLINK,
        ThemeColorPair_Type_TEXT1,
        ThemeColorPair_Type_BACKGROUND1,
        ThemeColorPair_Type_TEXT2,
        ThemeColorPair_Type_BACKGROUND2,
        ..
      ),

    -- * UpdateLineCategoryRequest_LineCategory
    UpdateLineCategoryRequest_LineCategory
      (
        UpdateLineCategoryRequest_LineCategory_LINECATEGORYUNSPECIFIED,
        UpdateLineCategoryRequest_LineCategory_Straight,
        UpdateLineCategoryRequest_LineCategory_Bent,
        UpdateLineCategoryRequest_LineCategory_Curved,
        ..
      ),

    -- * UpdatePageElementTransformRequest_ApplyMode
    UpdatePageElementTransformRequest_ApplyMode
      (
        UpdatePageElementTransformRequest_ApplyMode_APPLYMODEUNSPECIFIED,
        UpdatePageElementTransformRequest_ApplyMode_Relative,
        UpdatePageElementTransformRequest_ApplyMode_Absolute,
        ..
      ),

    -- * UpdatePageElementsZOrderRequest_Operation
    UpdatePageElementsZOrderRequest_Operation
      (
        UpdatePageElementsZOrderRequest_Operation_ZORDEROPERATIONUNSPECIFIED,
        UpdatePageElementsZOrderRequest_Operation_BRINGTOFRONT,
        UpdatePageElementsZOrderRequest_Operation_BRINGFORWARD,
        UpdatePageElementsZOrderRequest_Operation_SENDBACKWARD,
        UpdatePageElementsZOrderRequest_Operation_SENDTOBACK,
        ..
      ),

    -- * UpdateTableBorderPropertiesRequest_BorderPosition
    UpdateTableBorderPropertiesRequest_BorderPosition
      (
        UpdateTableBorderPropertiesRequest_BorderPosition_All,
        UpdateTableBorderPropertiesRequest_BorderPosition_Bottom,
        UpdateTableBorderPropertiesRequest_BorderPosition_Inner,
        UpdateTableBorderPropertiesRequest_BorderPosition_INNERHORIZONTAL,
        UpdateTableBorderPropertiesRequest_BorderPosition_INNERVERTICAL,
        UpdateTableBorderPropertiesRequest_BorderPosition_Left',
        UpdateTableBorderPropertiesRequest_BorderPosition_Outer,
        UpdateTableBorderPropertiesRequest_BorderPosition_Right',
        UpdateTableBorderPropertiesRequest_BorderPosition_Top,
        ..
      ),

    -- * Video_Source
    Video_Source
      (
        Video_Source_SOURCEUNSPECIFIED,
        Video_Source_Youtube,
        Video_Source_Drive,
        ..
      ),

    -- * PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
    PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
      (
        PresentationsPagesGetThumbnailThumbnailPropertiesMimeType_Png,
        ..
      ),

    -- * PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
    PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
      (
        PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_THUMBNAILSIZEUNSPECIFIED,
        PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Large,
        PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Medium,
        PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Small,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | The units for translate elements.
newtype AffineTransform_Unit = AffineTransform_Unit { fromAffineTransform_Unit :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The units are unknown.
pattern AffineTransform_Unit_UNITUNSPECIFIED :: AffineTransform_Unit
pattern AffineTransform_Unit_UNITUNSPECIFIED = AffineTransform_Unit "UNIT_UNSPECIFIED"

-- | An English Metric Unit (EMU) is defined as 1\/360,000 of a centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.
pattern AffineTransform_Unit_Emu :: AffineTransform_Unit
pattern AffineTransform_Unit_Emu = AffineTransform_Unit "EMU"

-- | A point, 1\/72 of an inch.
pattern AffineTransform_Unit_PT :: AffineTransform_Unit
pattern AffineTransform_Unit_PT = AffineTransform_Unit "PT"

{-# COMPLETE
  AffineTransform_Unit_UNITUNSPECIFIED,
  AffineTransform_Unit_Emu,
  AffineTransform_Unit_PT,
  AffineTransform_Unit #-}

-- | The type of this auto text.
newtype AutoText_Type = AutoText_Type { fromAutoText_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified autotext type.
pattern AutoText_Type_TYPEUNSPECIFIED :: AutoText_Type
pattern AutoText_Type_TYPEUNSPECIFIED = AutoText_Type "TYPE_UNSPECIFIED"

-- | Type for autotext that represents the current slide number.
pattern AutoText_Type_SLIDENUMBER :: AutoText_Type
pattern AutoText_Type_SLIDENUMBER = AutoText_Type "SLIDE_NUMBER"

{-# COMPLETE
  AutoText_Type_TYPEUNSPECIFIED,
  AutoText_Type_SLIDENUMBER,
  AutoText_Type #-}

-- | The autofit type of the shape. If the autofit type is AUTOFIT/TYPE/UNSPECIFIED, the autofit type is inherited from a parent placeholder if it exists. The field is automatically set to NONE if a request is made that might affect text fitting within its bounding text box. In this case the font/scale is applied to the font/size and the line/spacing/reduction is applied to the line_spacing. Both properties are also reset to default values.
newtype Autofit_AutofitType = Autofit_AutofitType { fromAutofit_AutofitType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The autofit type is unspecified.
pattern Autofit_AutofitType_AUTOFITTYPEUNSPECIFIED :: Autofit_AutofitType
pattern Autofit_AutofitType_AUTOFITTYPEUNSPECIFIED = Autofit_AutofitType "AUTOFIT_TYPE_UNSPECIFIED"

-- | Do not autofit.
pattern Autofit_AutofitType_None :: Autofit_AutofitType
pattern Autofit_AutofitType_None = Autofit_AutofitType "NONE"

-- | Shrink text on overflow to fit the shape.
pattern Autofit_AutofitType_TEXTAUTOFIT :: Autofit_AutofitType
pattern Autofit_AutofitType_TEXTAUTOFIT = Autofit_AutofitType "TEXT_AUTOFIT"

-- | Resize the shape to fit the text.
pattern Autofit_AutofitType_SHAPEAUTOFIT :: Autofit_AutofitType
pattern Autofit_AutofitType_SHAPEAUTOFIT = Autofit_AutofitType "SHAPE_AUTOFIT"

{-# COMPLETE
  Autofit_AutofitType_AUTOFITTYPEUNSPECIFIED,
  Autofit_AutofitType_None,
  Autofit_AutofitType_TEXTAUTOFIT,
  Autofit_AutofitType_SHAPEAUTOFIT,
  Autofit_AutofitType #-}

-- | The category of the line to be created. The exact line type created is determined based on the category and how it\'s routed to connect to other page elements. If you specify both a @category@ and a @line_category@, the @category@ takes precedence. If you do not specify a value for @category@, but specify a value for @line_category@, then the specified @line_category@ value is used. If you do not specify either, then STRAIGHT is used.
newtype CreateLineRequest_Category = CreateLineRequest_Category { fromCreateLineRequest_Category :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified line category.
pattern CreateLineRequest_Category_LINECATEGORYUNSPECIFIED :: CreateLineRequest_Category
pattern CreateLineRequest_Category_LINECATEGORYUNSPECIFIED = CreateLineRequest_Category "LINE_CATEGORY_UNSPECIFIED"

-- | Straight connectors, including straight connector 1.
pattern CreateLineRequest_Category_Straight :: CreateLineRequest_Category
pattern CreateLineRequest_Category_Straight = CreateLineRequest_Category "STRAIGHT"

-- | Bent connectors, including bent connector 2 to 5.
pattern CreateLineRequest_Category_Bent :: CreateLineRequest_Category
pattern CreateLineRequest_Category_Bent = CreateLineRequest_Category "BENT"

-- | Curved connectors, including curved connector 2 to 5.
pattern CreateLineRequest_Category_Curved :: CreateLineRequest_Category
pattern CreateLineRequest_Category_Curved = CreateLineRequest_Category "CURVED"

{-# COMPLETE
  CreateLineRequest_Category_LINECATEGORYUNSPECIFIED,
  CreateLineRequest_Category_Straight,
  CreateLineRequest_Category_Bent,
  CreateLineRequest_Category_Curved,
  CreateLineRequest_Category #-}

-- | The category of the line to be created. /Deprecated/: use @category@ instead. The exact line type created is determined based on the category and how it\'s routed to connect to other page elements. If you specify both a @category@ and a @line_category@, the @category@ takes precedence.
newtype CreateLineRequest_LineCategory = CreateLineRequest_LineCategory { fromCreateLineRequest_LineCategory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Straight connectors, including straight connector 1. The is the default category when one is not specified.
pattern CreateLineRequest_LineCategory_Straight :: CreateLineRequest_LineCategory
pattern CreateLineRequest_LineCategory_Straight = CreateLineRequest_LineCategory "STRAIGHT"

-- | Bent connectors, including bent connector 2 to 5.
pattern CreateLineRequest_LineCategory_Bent :: CreateLineRequest_LineCategory
pattern CreateLineRequest_LineCategory_Bent = CreateLineRequest_LineCategory "BENT"

-- | Curved connectors, including curved connector 2 to 5.
pattern CreateLineRequest_LineCategory_Curved :: CreateLineRequest_LineCategory
pattern CreateLineRequest_LineCategory_Curved = CreateLineRequest_LineCategory "CURVED"

{-# COMPLETE
  CreateLineRequest_LineCategory_Straight,
  CreateLineRequest_LineCategory_Bent,
  CreateLineRequest_LineCategory_Curved,
  CreateLineRequest_LineCategory #-}

-- | The kinds of bullet glyphs to be used. Defaults to the @BULLET_DISC_CIRCLE_SQUARE@ preset.
newtype CreateParagraphBulletsRequest_BulletPreset = CreateParagraphBulletsRequest_BulletPreset { fromCreateParagraphBulletsRequest_BulletPreset :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | A bulleted list with a @DISC@, @CIRCLE@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_DISC_CIRCLE_SQUARE"

-- | A bulleted list with a @DIAMONDX@, @ARROW3D@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_DIAMONDX_ARROW3D_SQUARE"

-- | A bulleted list with @CHECKBOX@ bullet glyphs for all list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX = CreateParagraphBulletsRequest_BulletPreset "BULLET_CHECKBOX"

-- | A bulleted list with a @ARROW@, @DIAMOND@ and @DISC@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC = CreateParagraphBulletsRequest_BulletPreset "BULLET_ARROW_DIAMOND_DISC"

-- | A bulleted list with a @STAR@, @CIRCLE@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_STAR_CIRCLE_SQUARE"

-- | A bulleted list with a @ARROW3D@, @CIRCLE@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_ARROW3D_CIRCLE_SQUARE"

-- | A bulleted list with a @LEFTTRIANGLE@, @DIAMOND@ and @DISC@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC = CreateParagraphBulletsRequest_BulletPreset "BULLET_LEFTTRIANGLE_DIAMOND_DISC"

-- | A bulleted list with a @DIAMONDX@, @HOLLOWDIAMOND@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE"

-- | A bulleted list with a @DIAMOND@, @CIRCLE@ and @SQUARE@ bullet glyph for the first 3 list nesting levels.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE = CreateParagraphBulletsRequest_BulletPreset "BULLET_DIAMOND_CIRCLE_SQUARE"

-- | A numbered list with @DIGIT@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DIGIT_ALPHA_ROMAN"

-- | A numbered list with @DIGIT@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by parenthesis.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMANPARENS :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMANPARENS = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DIGIT_ALPHA_ROMAN_PARENS"

-- | A numbered list with @DIGIT@ numeric glyphs separated by periods, where each nesting level uses the previous nesting level\'s glyph as a prefix. For example: \'1.\', \'1.1.\', \'2.\', \'2.2.\'.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITNESTED :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITNESTED = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DIGIT_NESTED"

-- | A numbered list with @UPPERALPHA@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_UPPERALPHA_ALPHA_ROMAN"

-- | A numbered list with @UPPERROMAN@, @UPPERALPHA@ and @DIGIT@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADIGIT :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADIGIT = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT"

-- | A numbered list with @ZERODIGIT@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODIGITALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODIGITALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_ZERODIGIT_ALPHA_ROMAN"

{-# COMPLETE
  CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX,
  CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC,
  CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITALPHAROMANPARENS,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDIGITNESTED,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADIGIT,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODIGITALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset #-}

-- | The shape type.
newtype CreateShapeRequest_ShapeType = CreateShapeRequest_ShapeType { fromCreateShapeRequest_ShapeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The shape type that is not predefined.
pattern CreateShapeRequest_ShapeType_TYPEUNSPECIFIED :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_TYPEUNSPECIFIED = CreateShapeRequest_ShapeType "TYPE_UNSPECIFIED"

-- | Text box shape.
pattern CreateShapeRequest_ShapeType_TEXTBOX :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_TEXTBOX = CreateShapeRequest_ShapeType "TEXT_BOX"

-- | Rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'rect\'.
pattern CreateShapeRequest_ShapeType_Rectangle :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Rectangle = CreateShapeRequest_ShapeType "RECTANGLE"

-- | Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'roundRect\'
pattern CreateShapeRequest_ShapeType_ROUNDRECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ROUNDRECTANGLE = CreateShapeRequest_ShapeType "ROUND_RECTANGLE"

-- | Ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'ellipse\'
pattern CreateShapeRequest_ShapeType_Ellipse :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Ellipse = CreateShapeRequest_ShapeType "ELLIPSE"

-- | Curved arc shape. Corresponds to ECMA-376 ST_ShapeType \'arc\'
pattern CreateShapeRequest_ShapeType_Arc :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Arc = CreateShapeRequest_ShapeType "ARC"

-- | Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentArrow\'
pattern CreateShapeRequest_ShapeType_BENTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_BENTARROW = CreateShapeRequest_ShapeType "BENT_ARROW"

-- | Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentUpArrow\'
pattern CreateShapeRequest_ShapeType_BENTUPARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_BENTUPARROW = CreateShapeRequest_ShapeType "BENT_UP_ARROW"

-- | Bevel shape. Corresponds to ECMA-376 ST_ShapeType \'bevel\'
pattern CreateShapeRequest_ShapeType_Bevel :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Bevel = CreateShapeRequest_ShapeType "BEVEL"

-- | Block arc shape. Corresponds to ECMA-376 ST_ShapeType \'blockArc\'
pattern CreateShapeRequest_ShapeType_BLOCKARC :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_BLOCKARC = CreateShapeRequest_ShapeType "BLOCK_ARC"

-- | Brace pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracePair\'
pattern CreateShapeRequest_ShapeType_BRACEPAIR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_BRACEPAIR = CreateShapeRequest_ShapeType "BRACE_PAIR"

-- | Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracketPair\'
pattern CreateShapeRequest_ShapeType_BRACKETPAIR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_BRACKETPAIR = CreateShapeRequest_ShapeType "BRACKET_PAIR"

-- | Can shape. Corresponds to ECMA-376 ST_ShapeType \'can\'
pattern CreateShapeRequest_ShapeType_Can :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Can = CreateShapeRequest_ShapeType "CAN"

-- | Chevron shape. Corresponds to ECMA-376 ST_ShapeType \'chevron\'
pattern CreateShapeRequest_ShapeType_Chevron :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Chevron = CreateShapeRequest_ShapeType "CHEVRON"

-- | Chord shape. Corresponds to ECMA-376 ST_ShapeType \'chord\'
pattern CreateShapeRequest_ShapeType_Chord :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Chord = CreateShapeRequest_ShapeType "CHORD"

-- | Cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloud\'
pattern CreateShapeRequest_ShapeType_Cloud :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Cloud = CreateShapeRequest_ShapeType "CLOUD"

-- | Corner shape. Corresponds to ECMA-376 ST_ShapeType \'corner\'
pattern CreateShapeRequest_ShapeType_Corner :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Corner = CreateShapeRequest_ShapeType "CORNER"

-- | Cube shape. Corresponds to ECMA-376 ST_ShapeType \'cube\'
pattern CreateShapeRequest_ShapeType_Cube :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Cube = CreateShapeRequest_ShapeType "CUBE"

-- | Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedDownArrow\'
pattern CreateShapeRequest_ShapeType_CURVEDDOWNARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_CURVEDDOWNARROW = CreateShapeRequest_ShapeType "CURVED_DOWN_ARROW"

-- | Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedLeftArrow\'
pattern CreateShapeRequest_ShapeType_CURVEDLEFTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_CURVEDLEFTARROW = CreateShapeRequest_ShapeType "CURVED_LEFT_ARROW"

-- | Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedRightArrow\'
pattern CreateShapeRequest_ShapeType_CURVEDRIGHTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_CURVEDRIGHTARROW = CreateShapeRequest_ShapeType "CURVED_RIGHT_ARROW"

-- | Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedUpArrow\'
pattern CreateShapeRequest_ShapeType_CURVEDUPARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_CURVEDUPARROW = CreateShapeRequest_ShapeType "CURVED_UP_ARROW"

-- | Decagon shape. Corresponds to ECMA-376 ST_ShapeType \'decagon\'
pattern CreateShapeRequest_ShapeType_Decagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Decagon = CreateShapeRequest_ShapeType "DECAGON"

-- | Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType \'diagStripe\'
pattern CreateShapeRequest_ShapeType_DIAGONALSTRIPE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_DIAGONALSTRIPE = CreateShapeRequest_ShapeType "DIAGONAL_STRIPE"

-- | Diamond shape. Corresponds to ECMA-376 ST_ShapeType \'diamond\'
pattern CreateShapeRequest_ShapeType_Diamond :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Diamond = CreateShapeRequest_ShapeType "DIAMOND"

-- | Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType \'dodecagon\'
pattern CreateShapeRequest_ShapeType_Dodecagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Dodecagon = CreateShapeRequest_ShapeType "DODECAGON"

-- | Donut shape. Corresponds to ECMA-376 ST_ShapeType \'donut\'
pattern CreateShapeRequest_ShapeType_Donut :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Donut = CreateShapeRequest_ShapeType "DONUT"

-- | Double wave shape. Corresponds to ECMA-376 ST_ShapeType \'doubleWave\'
pattern CreateShapeRequest_ShapeType_DOUBLEWAVE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_DOUBLEWAVE = CreateShapeRequest_ShapeType "DOUBLE_WAVE"

-- | Down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrow\'
pattern CreateShapeRequest_ShapeType_DOWNARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_DOWNARROW = CreateShapeRequest_ShapeType "DOWN_ARROW"

-- | Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrowCallout\'
pattern CreateShapeRequest_ShapeType_DOWNARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_DOWNARROWCALLOUT = CreateShapeRequest_ShapeType "DOWN_ARROW_CALLOUT"

-- | Folded corner shape. Corresponds to ECMA-376 ST_ShapeType \'foldedCorner\'
pattern CreateShapeRequest_ShapeType_FOLDEDCORNER :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FOLDEDCORNER = CreateShapeRequest_ShapeType "FOLDED_CORNER"

-- | Frame shape. Corresponds to ECMA-376 ST_ShapeType \'frame\'
pattern CreateShapeRequest_ShapeType_Frame :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Frame = CreateShapeRequest_ShapeType "FRAME"

-- | Half frame shape. Corresponds to ECMA-376 ST_ShapeType \'halfFrame\'
pattern CreateShapeRequest_ShapeType_HALFFRAME :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_HALFFRAME = CreateShapeRequest_ShapeType "HALF_FRAME"

-- | Heart shape. Corresponds to ECMA-376 ST_ShapeType \'heart\'
pattern CreateShapeRequest_ShapeType_Heart :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Heart = CreateShapeRequest_ShapeType "HEART"

-- | Heptagon shape. Corresponds to ECMA-376 ST_ShapeType \'heptagon\'
pattern CreateShapeRequest_ShapeType_Heptagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Heptagon = CreateShapeRequest_ShapeType "HEPTAGON"

-- | Hexagon shape. Corresponds to ECMA-376 ST_ShapeType \'hexagon\'
pattern CreateShapeRequest_ShapeType_Hexagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Hexagon = CreateShapeRequest_ShapeType "HEXAGON"

-- | Home plate shape. Corresponds to ECMA-376 ST_ShapeType \'homePlate\'
pattern CreateShapeRequest_ShapeType_HOMEPLATE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_HOMEPLATE = CreateShapeRequest_ShapeType "HOME_PLATE"

-- | Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType \'horizontalScroll\'
pattern CreateShapeRequest_ShapeType_HORIZONTALSCROLL :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_HORIZONTALSCROLL = CreateShapeRequest_ShapeType "HORIZONTAL_SCROLL"

-- | Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType \'irregularSeal1\'
pattern CreateShapeRequest_ShapeType_IRREGULAR_SEAL_1 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_IRREGULAR_SEAL_1 = CreateShapeRequest_ShapeType "IRREGULAR_SEAL_1"

-- | Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType \'irregularSeal2\'
pattern CreateShapeRequest_ShapeType_IRREGULAR_SEAL_2 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_IRREGULAR_SEAL_2 = CreateShapeRequest_ShapeType "IRREGULAR_SEAL_2"

-- | Left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrow\'
pattern CreateShapeRequest_ShapeType_LEFTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTARROW = CreateShapeRequest_ShapeType "LEFT_ARROW"

-- | Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrowCallout\'
pattern CreateShapeRequest_ShapeType_LEFTARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTARROWCALLOUT = CreateShapeRequest_ShapeType "LEFT_ARROW_CALLOUT"

-- | Left brace shape. Corresponds to ECMA-376 ST_ShapeType \'leftBrace\'
pattern CreateShapeRequest_ShapeType_LEFTBRACE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTBRACE = CreateShapeRequest_ShapeType "LEFT_BRACE"

-- | Left bracket shape. Corresponds to ECMA-376 ST_ShapeType \'leftBracket\'
pattern CreateShapeRequest_ShapeType_LEFTBRACKET :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTBRACKET = CreateShapeRequest_ShapeType "LEFT_BRACKET"

-- | Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightArrow\'
pattern CreateShapeRequest_ShapeType_LEFTRIGHTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTRIGHTARROW = CreateShapeRequest_ShapeType "LEFT_RIGHT_ARROW"

-- | Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightArrowCallout\'
pattern CreateShapeRequest_ShapeType_LEFTRIGHTARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTRIGHTARROWCALLOUT = CreateShapeRequest_ShapeType "LEFT_RIGHT_ARROW_CALLOUT"

-- | Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightUpArrow\'
pattern CreateShapeRequest_ShapeType_LEFTRIGHTUPARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTRIGHTUPARROW = CreateShapeRequest_ShapeType "LEFT_RIGHT_UP_ARROW"

-- | Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftUpArrow\'
pattern CreateShapeRequest_ShapeType_LEFTUPARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LEFTUPARROW = CreateShapeRequest_ShapeType "LEFT_UP_ARROW"

-- | Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType \'lightningBolt\'
pattern CreateShapeRequest_ShapeType_LIGHTNINGBOLT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_LIGHTNINGBOLT = CreateShapeRequest_ShapeType "LIGHTNING_BOLT"

-- | Divide math shape. Corresponds to ECMA-376 ST_ShapeType \'mathDivide\'
pattern CreateShapeRequest_ShapeType_MATHDIVIDE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHDIVIDE = CreateShapeRequest_ShapeType "MATH_DIVIDE"

-- | Equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathEqual\'
pattern CreateShapeRequest_ShapeType_MATHEQUAL :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHEQUAL = CreateShapeRequest_ShapeType "MATH_EQUAL"

-- | Minus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMinus\'
pattern CreateShapeRequest_ShapeType_MATHMINUS :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHMINUS = CreateShapeRequest_ShapeType "MATH_MINUS"

-- | Multiply math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMultiply\'
pattern CreateShapeRequest_ShapeType_MATHMULTIPLY :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHMULTIPLY = CreateShapeRequest_ShapeType "MATH_MULTIPLY"

-- | Not equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathNotEqual\'
pattern CreateShapeRequest_ShapeType_MATHNOTEQUAL :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHNOTEQUAL = CreateShapeRequest_ShapeType "MATH_NOT_EQUAL"

-- | Plus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathPlus\'
pattern CreateShapeRequest_ShapeType_MATHPLUS :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_MATHPLUS = CreateShapeRequest_ShapeType "MATH_PLUS"

-- | Moon shape. Corresponds to ECMA-376 ST_ShapeType \'moon\'
pattern CreateShapeRequest_ShapeType_Moon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Moon = CreateShapeRequest_ShapeType "MOON"

-- | No smoking shape. Corresponds to ECMA-376 ST_ShapeType \'noSmoking\'
pattern CreateShapeRequest_ShapeType_NOSMOKING :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_NOSMOKING = CreateShapeRequest_ShapeType "NO_SMOKING"

-- | Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'notchedRightArrow\'
pattern CreateShapeRequest_ShapeType_NOTCHEDRIGHTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_NOTCHEDRIGHTARROW = CreateShapeRequest_ShapeType "NOTCHED_RIGHT_ARROW"

-- | Octagon shape. Corresponds to ECMA-376 ST_ShapeType \'octagon\'
pattern CreateShapeRequest_ShapeType_Octagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Octagon = CreateShapeRequest_ShapeType "OCTAGON"

-- | Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType \'parallelogram\'
pattern CreateShapeRequest_ShapeType_Parallelogram :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Parallelogram = CreateShapeRequest_ShapeType "PARALLELOGRAM"

-- | Pentagon shape. Corresponds to ECMA-376 ST_ShapeType \'pentagon\'
pattern CreateShapeRequest_ShapeType_Pentagon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Pentagon = CreateShapeRequest_ShapeType "PENTAGON"

-- | Pie shape. Corresponds to ECMA-376 ST_ShapeType \'pie\'
pattern CreateShapeRequest_ShapeType_Pie :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Pie = CreateShapeRequest_ShapeType "PIE"

-- | Plaque shape. Corresponds to ECMA-376 ST_ShapeType \'plaque\'
pattern CreateShapeRequest_ShapeType_Plaque :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Plaque = CreateShapeRequest_ShapeType "PLAQUE"

-- | Plus shape. Corresponds to ECMA-376 ST_ShapeType \'plus\'
pattern CreateShapeRequest_ShapeType_Plus :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Plus = CreateShapeRequest_ShapeType "PLUS"

-- | Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrow\'
pattern CreateShapeRequest_ShapeType_QUADARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_QUADARROW = CreateShapeRequest_ShapeType "QUAD_ARROW"

-- | Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrowCallout\'
pattern CreateShapeRequest_ShapeType_QUADARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_QUADARROWCALLOUT = CreateShapeRequest_ShapeType "QUAD_ARROW_CALLOUT"

-- | Ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon\'
pattern CreateShapeRequest_ShapeType_Ribbon :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Ribbon = CreateShapeRequest_ShapeType "RIBBON"

-- | Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon2\'
pattern CreateShapeRequest_ShapeType_RIBBON_2 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIBBON_2 = CreateShapeRequest_ShapeType "RIBBON_2"

-- | Right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrow\'
pattern CreateShapeRequest_ShapeType_RIGHTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIGHTARROW = CreateShapeRequest_ShapeType "RIGHT_ARROW"

-- | Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrowCallout\'
pattern CreateShapeRequest_ShapeType_RIGHTARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIGHTARROWCALLOUT = CreateShapeRequest_ShapeType "RIGHT_ARROW_CALLOUT"

-- | Right brace shape. Corresponds to ECMA-376 ST_ShapeType \'rightBrace\'
pattern CreateShapeRequest_ShapeType_RIGHTBRACE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIGHTBRACE = CreateShapeRequest_ShapeType "RIGHT_BRACE"

-- | Right bracket shape. Corresponds to ECMA-376 ST_ShapeType \'rightBracket\'
pattern CreateShapeRequest_ShapeType_RIGHTBRACKET :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIGHTBRACKET = CreateShapeRequest_ShapeType "RIGHT_BRACKET"

-- | One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round1Rect\'
pattern CreateShapeRequest_ShapeType_ROUND1RECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ROUND1RECTANGLE = CreateShapeRequest_ShapeType "ROUND_1_RECTANGLE"

-- | Two diagonal round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round2DiagRect\'
pattern CreateShapeRequest_ShapeType_ROUND2DIAGONALRECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ROUND2DIAGONALRECTANGLE = CreateShapeRequest_ShapeType "ROUND_2_DIAGONAL_RECTANGLE"

-- | Two same-side round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round2SameRect\'
pattern CreateShapeRequest_ShapeType_ROUND2SAMERECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ROUND2SAMERECTANGLE = CreateShapeRequest_ShapeType "ROUND_2_SAME_RECTANGLE"

-- | Right triangle shape. Corresponds to ECMA-376 ST_ShapeType \'rtTriangle\'
pattern CreateShapeRequest_ShapeType_RIGHTTRIANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_RIGHTTRIANGLE = CreateShapeRequest_ShapeType "RIGHT_TRIANGLE"

-- | Smiley face shape. Corresponds to ECMA-376 ST_ShapeType \'smileyFace\'
pattern CreateShapeRequest_ShapeType_SMILEYFACE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_SMILEYFACE = CreateShapeRequest_ShapeType "SMILEY_FACE"

-- | One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip1Rect\'
pattern CreateShapeRequest_ShapeType_SNIP1RECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_SNIP1RECTANGLE = CreateShapeRequest_ShapeType "SNIP_1_RECTANGLE"

-- | Two diagonal snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip2DiagRect\'
pattern CreateShapeRequest_ShapeType_SNIP2DIAGONALRECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_SNIP2DIAGONALRECTANGLE = CreateShapeRequest_ShapeType "SNIP_2_DIAGONAL_RECTANGLE"

-- | Two same-side snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip2SameRect\'
pattern CreateShapeRequest_ShapeType_SNIP2SAMERECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_SNIP2SAMERECTANGLE = CreateShapeRequest_ShapeType "SNIP_2_SAME_RECTANGLE"

-- | One snip one round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snipRoundRect\'
pattern CreateShapeRequest_ShapeType_SNIPROUNDRECTANGLE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_SNIPROUNDRECTANGLE = CreateShapeRequest_ShapeType "SNIP_ROUND_RECTANGLE"

-- | Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star10\'
pattern CreateShapeRequest_ShapeType_STAR_10 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_10 = CreateShapeRequest_ShapeType "STAR_10"

-- | Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star12\'
pattern CreateShapeRequest_ShapeType_STAR_12 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_12 = CreateShapeRequest_ShapeType "STAR_12"

-- | Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star16\'
pattern CreateShapeRequest_ShapeType_STAR_16 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_16 = CreateShapeRequest_ShapeType "STAR_16"

-- | Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star24\'
pattern CreateShapeRequest_ShapeType_STAR_24 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_24 = CreateShapeRequest_ShapeType "STAR_24"

-- | Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star32\'
pattern CreateShapeRequest_ShapeType_STAR_32 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_32 = CreateShapeRequest_ShapeType "STAR_32"

-- | Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star4\'
pattern CreateShapeRequest_ShapeType_STAR_4 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_4 = CreateShapeRequest_ShapeType "STAR_4"

-- | Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star5\'
pattern CreateShapeRequest_ShapeType_STAR_5 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_5 = CreateShapeRequest_ShapeType "STAR_5"

-- | Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star6\'
pattern CreateShapeRequest_ShapeType_STAR_6 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_6 = CreateShapeRequest_ShapeType "STAR_6"

-- | Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star7\'
pattern CreateShapeRequest_ShapeType_STAR_7 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_7 = CreateShapeRequest_ShapeType "STAR_7"

-- | Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star8\'
pattern CreateShapeRequest_ShapeType_STAR_8 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STAR_8 = CreateShapeRequest_ShapeType "STAR_8"

-- | Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'stripedRightArrow\'
pattern CreateShapeRequest_ShapeType_STRIPEDRIGHTARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_STRIPEDRIGHTARROW = CreateShapeRequest_ShapeType "STRIPED_RIGHT_ARROW"

-- | Sun shape. Corresponds to ECMA-376 ST_ShapeType \'sun\'
pattern CreateShapeRequest_ShapeType_Sun :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Sun = CreateShapeRequest_ShapeType "SUN"

-- | Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType \'trapezoid\'
pattern CreateShapeRequest_ShapeType_Trapezoid :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Trapezoid = CreateShapeRequest_ShapeType "TRAPEZOID"

-- | Triangle shape. Corresponds to ECMA-376 ST_ShapeType \'triangle\'
pattern CreateShapeRequest_ShapeType_Triangle :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Triangle = CreateShapeRequest_ShapeType "TRIANGLE"

-- | Up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrow\'
pattern CreateShapeRequest_ShapeType_UPARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_UPARROW = CreateShapeRequest_ShapeType "UP_ARROW"

-- | Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrowCallout\'
pattern CreateShapeRequest_ShapeType_UPARROWCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_UPARROWCALLOUT = CreateShapeRequest_ShapeType "UP_ARROW_CALLOUT"

-- | Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upDownArrow\'
pattern CreateShapeRequest_ShapeType_UPDOWNARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_UPDOWNARROW = CreateShapeRequest_ShapeType "UP_DOWN_ARROW"

-- | U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType \'uturnArrow\'
pattern CreateShapeRequest_ShapeType_UTURNARROW :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_UTURNARROW = CreateShapeRequest_ShapeType "UTURN_ARROW"

-- | Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType \'verticalScroll\'
pattern CreateShapeRequest_ShapeType_VERTICALSCROLL :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_VERTICALSCROLL = CreateShapeRequest_ShapeType "VERTICAL_SCROLL"

-- | Wave shape. Corresponds to ECMA-376 ST_ShapeType \'wave\'
pattern CreateShapeRequest_ShapeType_Wave :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Wave = CreateShapeRequest_ShapeType "WAVE"

-- | Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeEllipseCallout\'
pattern CreateShapeRequest_ShapeType_WEDGEELLIPSECALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_WEDGEELLIPSECALLOUT = CreateShapeRequest_ShapeType "WEDGE_ELLIPSE_CALLOUT"

-- | Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeRectCallout\'
pattern CreateShapeRequest_ShapeType_WEDGERECTANGLECALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_WEDGERECTANGLECALLOUT = CreateShapeRequest_ShapeType "WEDGE_RECTANGLE_CALLOUT"

-- | Callout wedge round rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeRoundRectCallout\'
pattern CreateShapeRequest_ShapeType_WEDGEROUNDRECTANGLECALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_WEDGEROUNDRECTANGLECALLOUT = CreateShapeRequest_ShapeType "WEDGE_ROUND_RECTANGLE_CALLOUT"

-- | Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartAlternateProcess\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTALTERNATEPROCESS :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTALTERNATEPROCESS = CreateShapeRequest_ShapeType "FLOW_CHART_ALTERNATE_PROCESS"

-- | Collate flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartCollate\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTCOLLATE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTCOLLATE = CreateShapeRequest_ShapeType "FLOW_CHART_COLLATE"

-- | Connector flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartConnector\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTCONNECTOR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTCONNECTOR = CreateShapeRequest_ShapeType "FLOW_CHART_CONNECTOR"

-- | Decision flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDecision\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTDECISION :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTDECISION = CreateShapeRequest_ShapeType "FLOW_CHART_DECISION"

-- | Delay flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDelay\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTDELAY :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTDELAY = CreateShapeRequest_ShapeType "FLOW_CHART_DELAY"

-- | Display flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDisplay\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTDISPLAY :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTDISPLAY = CreateShapeRequest_ShapeType "FLOW_CHART_DISPLAY"

-- | Document flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDocument\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTDOCUMENT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTDOCUMENT = CreateShapeRequest_ShapeType "FLOW_CHART_DOCUMENT"

-- | Extract flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartExtract\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTEXTRACT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTEXTRACT = CreateShapeRequest_ShapeType "FLOW_CHART_EXTRACT"

-- | Input output flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartInputOutput\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTINPUTOUTPUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTINPUTOUTPUT = CreateShapeRequest_ShapeType "FLOW_CHART_INPUT_OUTPUT"

-- | Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartInternalStorage\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTINTERNALSTORAGE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTINTERNALSTORAGE = CreateShapeRequest_ShapeType "FLOW_CHART_INTERNAL_STORAGE"

-- | Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticDisk\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDISK :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDISK = CreateShapeRequest_ShapeType "FLOW_CHART_MAGNETIC_DISK"

-- | Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticDrum\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDRUM :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDRUM = CreateShapeRequest_ShapeType "FLOW_CHART_MAGNETIC_DRUM"

-- | Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticTape\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICTAPE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICTAPE = CreateShapeRequest_ShapeType "FLOW_CHART_MAGNETIC_TAPE"

-- | Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartManualInput\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMANUALINPUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMANUALINPUT = CreateShapeRequest_ShapeType "FLOW_CHART_MANUAL_INPUT"

-- | Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartManualOperation\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMANUALOPERATION :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMANUALOPERATION = CreateShapeRequest_ShapeType "FLOW_CHART_MANUAL_OPERATION"

-- | Merge flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMerge\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMERGE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMERGE = CreateShapeRequest_ShapeType "FLOW_CHART_MERGE"

-- | Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMultidocument\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTMULTIDOCUMENT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTMULTIDOCUMENT = CreateShapeRequest_ShapeType "FLOW_CHART_MULTIDOCUMENT"

-- | Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOfflineStorage\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTOFFLINESTORAGE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTOFFLINESTORAGE = CreateShapeRequest_ShapeType "FLOW_CHART_OFFLINE_STORAGE"

-- | Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOffpageConnector\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTOFFPAGECONNECTOR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTOFFPAGECONNECTOR = CreateShapeRequest_ShapeType "FLOW_CHART_OFFPAGE_CONNECTOR"

-- | Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOnlineStorage\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTONLINESTORAGE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTONLINESTORAGE = CreateShapeRequest_ShapeType "FLOW_CHART_ONLINE_STORAGE"

-- | Or flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOr\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTOR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTOR = CreateShapeRequest_ShapeType "FLOW_CHART_OR"

-- | Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPredefinedProcess\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTPREDEFINEDPROCESS :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTPREDEFINEDPROCESS = CreateShapeRequest_ShapeType "FLOW_CHART_PREDEFINED_PROCESS"

-- | Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPreparation\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTPREPARATION :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTPREPARATION = CreateShapeRequest_ShapeType "FLOW_CHART_PREPARATION"

-- | Process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartProcess\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTPROCESS :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTPROCESS = CreateShapeRequest_ShapeType "FLOW_CHART_PROCESS"

-- | Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPunchedCard\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDCARD :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDCARD = CreateShapeRequest_ShapeType "FLOW_CHART_PUNCHED_CARD"

-- | Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPunchedTape\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDTAPE :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDTAPE = CreateShapeRequest_ShapeType "FLOW_CHART_PUNCHED_TAPE"

-- | Sort flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSort\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTSORT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTSORT = CreateShapeRequest_ShapeType "FLOW_CHART_SORT"

-- | Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSummingJunction\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTSUMMINGJUNCTION :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTSUMMINGJUNCTION = CreateShapeRequest_ShapeType "FLOW_CHART_SUMMING_JUNCTION"

-- | Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartTerminator\'
pattern CreateShapeRequest_ShapeType_FLOWCHARTTERMINATOR :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_FLOWCHARTTERMINATOR = CreateShapeRequest_ShapeType "FLOW_CHART_TERMINATOR"

-- | East arrow shape.
pattern CreateShapeRequest_ShapeType_ARROWEAST :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ARROWEAST = CreateShapeRequest_ShapeType "ARROW_EAST"

-- | Northeast arrow shape.
pattern CreateShapeRequest_ShapeType_ARROWNORTHEAST :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ARROWNORTHEAST = CreateShapeRequest_ShapeType "ARROW_NORTH_EAST"

-- | North arrow shape.
pattern CreateShapeRequest_ShapeType_ARROWNORTH :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ARROWNORTH = CreateShapeRequest_ShapeType "ARROW_NORTH"

-- | Speech shape.
pattern CreateShapeRequest_ShapeType_Speech :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Speech = CreateShapeRequest_ShapeType "SPEECH"

-- | Star burst shape.
pattern CreateShapeRequest_ShapeType_Starburst :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Starburst = CreateShapeRequest_ShapeType "STARBURST"

-- | Teardrop shape. Corresponds to ECMA-376 ST_ShapeType \'teardrop\'
pattern CreateShapeRequest_ShapeType_Teardrop :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Teardrop = CreateShapeRequest_ShapeType "TEARDROP"

-- | Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ellipseRibbon\'
pattern CreateShapeRequest_ShapeType_ELLIPSERIBBON :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ELLIPSERIBBON = CreateShapeRequest_ShapeType "ELLIPSE_RIBBON"

-- | Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ellipseRibbon2\'
pattern CreateShapeRequest_ShapeType_ELLIPSE_RIBBON_2 :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_ELLIPSE_RIBBON_2 = CreateShapeRequest_ShapeType "ELLIPSE_RIBBON_2"

-- | Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloudCallout\'
pattern CreateShapeRequest_ShapeType_CLOUDCALLOUT :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_CLOUDCALLOUT = CreateShapeRequest_ShapeType "CLOUD_CALLOUT"

-- | Custom shape.
pattern CreateShapeRequest_ShapeType_Custom :: CreateShapeRequest_ShapeType
pattern CreateShapeRequest_ShapeType_Custom = CreateShapeRequest_ShapeType "CUSTOM"

{-# COMPLETE
  CreateShapeRequest_ShapeType_TYPEUNSPECIFIED,
  CreateShapeRequest_ShapeType_TEXTBOX,
  CreateShapeRequest_ShapeType_Rectangle,
  CreateShapeRequest_ShapeType_ROUNDRECTANGLE,
  CreateShapeRequest_ShapeType_Ellipse,
  CreateShapeRequest_ShapeType_Arc,
  CreateShapeRequest_ShapeType_BENTARROW,
  CreateShapeRequest_ShapeType_BENTUPARROW,
  CreateShapeRequest_ShapeType_Bevel,
  CreateShapeRequest_ShapeType_BLOCKARC,
  CreateShapeRequest_ShapeType_BRACEPAIR,
  CreateShapeRequest_ShapeType_BRACKETPAIR,
  CreateShapeRequest_ShapeType_Can,
  CreateShapeRequest_ShapeType_Chevron,
  CreateShapeRequest_ShapeType_Chord,
  CreateShapeRequest_ShapeType_Cloud,
  CreateShapeRequest_ShapeType_Corner,
  CreateShapeRequest_ShapeType_Cube,
  CreateShapeRequest_ShapeType_CURVEDDOWNARROW,
  CreateShapeRequest_ShapeType_CURVEDLEFTARROW,
  CreateShapeRequest_ShapeType_CURVEDRIGHTARROW,
  CreateShapeRequest_ShapeType_CURVEDUPARROW,
  CreateShapeRequest_ShapeType_Decagon,
  CreateShapeRequest_ShapeType_DIAGONALSTRIPE,
  CreateShapeRequest_ShapeType_Diamond,
  CreateShapeRequest_ShapeType_Dodecagon,
  CreateShapeRequest_ShapeType_Donut,
  CreateShapeRequest_ShapeType_DOUBLEWAVE,
  CreateShapeRequest_ShapeType_DOWNARROW,
  CreateShapeRequest_ShapeType_DOWNARROWCALLOUT,
  CreateShapeRequest_ShapeType_FOLDEDCORNER,
  CreateShapeRequest_ShapeType_Frame,
  CreateShapeRequest_ShapeType_HALFFRAME,
  CreateShapeRequest_ShapeType_Heart,
  CreateShapeRequest_ShapeType_Heptagon,
  CreateShapeRequest_ShapeType_Hexagon,
  CreateShapeRequest_ShapeType_HOMEPLATE,
  CreateShapeRequest_ShapeType_HORIZONTALSCROLL,
  CreateShapeRequest_ShapeType_IRREGULAR_SEAL_1,
  CreateShapeRequest_ShapeType_IRREGULAR_SEAL_2,
  CreateShapeRequest_ShapeType_LEFTARROW,
  CreateShapeRequest_ShapeType_LEFTARROWCALLOUT,
  CreateShapeRequest_ShapeType_LEFTBRACE,
  CreateShapeRequest_ShapeType_LEFTBRACKET,
  CreateShapeRequest_ShapeType_LEFTRIGHTARROW,
  CreateShapeRequest_ShapeType_LEFTRIGHTARROWCALLOUT,
  CreateShapeRequest_ShapeType_LEFTRIGHTUPARROW,
  CreateShapeRequest_ShapeType_LEFTUPARROW,
  CreateShapeRequest_ShapeType_LIGHTNINGBOLT,
  CreateShapeRequest_ShapeType_MATHDIVIDE,
  CreateShapeRequest_ShapeType_MATHEQUAL,
  CreateShapeRequest_ShapeType_MATHMINUS,
  CreateShapeRequest_ShapeType_MATHMULTIPLY,
  CreateShapeRequest_ShapeType_MATHNOTEQUAL,
  CreateShapeRequest_ShapeType_MATHPLUS,
  CreateShapeRequest_ShapeType_Moon,
  CreateShapeRequest_ShapeType_NOSMOKING,
  CreateShapeRequest_ShapeType_NOTCHEDRIGHTARROW,
  CreateShapeRequest_ShapeType_Octagon,
  CreateShapeRequest_ShapeType_Parallelogram,
  CreateShapeRequest_ShapeType_Pentagon,
  CreateShapeRequest_ShapeType_Pie,
  CreateShapeRequest_ShapeType_Plaque,
  CreateShapeRequest_ShapeType_Plus,
  CreateShapeRequest_ShapeType_QUADARROW,
  CreateShapeRequest_ShapeType_QUADARROWCALLOUT,
  CreateShapeRequest_ShapeType_Ribbon,
  CreateShapeRequest_ShapeType_RIBBON_2,
  CreateShapeRequest_ShapeType_RIGHTARROW,
  CreateShapeRequest_ShapeType_RIGHTARROWCALLOUT,
  CreateShapeRequest_ShapeType_RIGHTBRACE,
  CreateShapeRequest_ShapeType_RIGHTBRACKET,
  CreateShapeRequest_ShapeType_ROUND1RECTANGLE,
  CreateShapeRequest_ShapeType_ROUND2DIAGONALRECTANGLE,
  CreateShapeRequest_ShapeType_ROUND2SAMERECTANGLE,
  CreateShapeRequest_ShapeType_RIGHTTRIANGLE,
  CreateShapeRequest_ShapeType_SMILEYFACE,
  CreateShapeRequest_ShapeType_SNIP1RECTANGLE,
  CreateShapeRequest_ShapeType_SNIP2DIAGONALRECTANGLE,
  CreateShapeRequest_ShapeType_SNIP2SAMERECTANGLE,
  CreateShapeRequest_ShapeType_SNIPROUNDRECTANGLE,
  CreateShapeRequest_ShapeType_STAR_10,
  CreateShapeRequest_ShapeType_STAR_12,
  CreateShapeRequest_ShapeType_STAR_16,
  CreateShapeRequest_ShapeType_STAR_24,
  CreateShapeRequest_ShapeType_STAR_32,
  CreateShapeRequest_ShapeType_STAR_4,
  CreateShapeRequest_ShapeType_STAR_5,
  CreateShapeRequest_ShapeType_STAR_6,
  CreateShapeRequest_ShapeType_STAR_7,
  CreateShapeRequest_ShapeType_STAR_8,
  CreateShapeRequest_ShapeType_STRIPEDRIGHTARROW,
  CreateShapeRequest_ShapeType_Sun,
  CreateShapeRequest_ShapeType_Trapezoid,
  CreateShapeRequest_ShapeType_Triangle,
  CreateShapeRequest_ShapeType_UPARROW,
  CreateShapeRequest_ShapeType_UPARROWCALLOUT,
  CreateShapeRequest_ShapeType_UPDOWNARROW,
  CreateShapeRequest_ShapeType_UTURNARROW,
  CreateShapeRequest_ShapeType_VERTICALSCROLL,
  CreateShapeRequest_ShapeType_Wave,
  CreateShapeRequest_ShapeType_WEDGEELLIPSECALLOUT,
  CreateShapeRequest_ShapeType_WEDGERECTANGLECALLOUT,
  CreateShapeRequest_ShapeType_WEDGEROUNDRECTANGLECALLOUT,
  CreateShapeRequest_ShapeType_FLOWCHARTALTERNATEPROCESS,
  CreateShapeRequest_ShapeType_FLOWCHARTCOLLATE,
  CreateShapeRequest_ShapeType_FLOWCHARTCONNECTOR,
  CreateShapeRequest_ShapeType_FLOWCHARTDECISION,
  CreateShapeRequest_ShapeType_FLOWCHARTDELAY,
  CreateShapeRequest_ShapeType_FLOWCHARTDISPLAY,
  CreateShapeRequest_ShapeType_FLOWCHARTDOCUMENT,
  CreateShapeRequest_ShapeType_FLOWCHARTEXTRACT,
  CreateShapeRequest_ShapeType_FLOWCHARTINPUTOUTPUT,
  CreateShapeRequest_ShapeType_FLOWCHARTINTERNALSTORAGE,
  CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDISK,
  CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICDRUM,
  CreateShapeRequest_ShapeType_FLOWCHARTMAGNETICTAPE,
  CreateShapeRequest_ShapeType_FLOWCHARTMANUALINPUT,
  CreateShapeRequest_ShapeType_FLOWCHARTMANUALOPERATION,
  CreateShapeRequest_ShapeType_FLOWCHARTMERGE,
  CreateShapeRequest_ShapeType_FLOWCHARTMULTIDOCUMENT,
  CreateShapeRequest_ShapeType_FLOWCHARTOFFLINESTORAGE,
  CreateShapeRequest_ShapeType_FLOWCHARTOFFPAGECONNECTOR,
  CreateShapeRequest_ShapeType_FLOWCHARTONLINESTORAGE,
  CreateShapeRequest_ShapeType_FLOWCHARTOR,
  CreateShapeRequest_ShapeType_FLOWCHARTPREDEFINEDPROCESS,
  CreateShapeRequest_ShapeType_FLOWCHARTPREPARATION,
  CreateShapeRequest_ShapeType_FLOWCHARTPROCESS,
  CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDCARD,
  CreateShapeRequest_ShapeType_FLOWCHARTPUNCHEDTAPE,
  CreateShapeRequest_ShapeType_FLOWCHARTSORT,
  CreateShapeRequest_ShapeType_FLOWCHARTSUMMINGJUNCTION,
  CreateShapeRequest_ShapeType_FLOWCHARTTERMINATOR,
  CreateShapeRequest_ShapeType_ARROWEAST,
  CreateShapeRequest_ShapeType_ARROWNORTHEAST,
  CreateShapeRequest_ShapeType_ARROWNORTH,
  CreateShapeRequest_ShapeType_Speech,
  CreateShapeRequest_ShapeType_Starburst,
  CreateShapeRequest_ShapeType_Teardrop,
  CreateShapeRequest_ShapeType_ELLIPSERIBBON,
  CreateShapeRequest_ShapeType_ELLIPSE_RIBBON_2,
  CreateShapeRequest_ShapeType_CLOUDCALLOUT,
  CreateShapeRequest_ShapeType_Custom,
  CreateShapeRequest_ShapeType #-}

-- | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
newtype CreateSheetsChartRequest_LinkingMode = CreateSheetsChartRequest_LinkingMode { fromCreateSheetsChartRequest_LinkingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The chart is not associated with the source spreadsheet and cannot be updated. A chart that is not linked will be inserted as an image.
pattern CreateSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE :: CreateSheetsChartRequest_LinkingMode
pattern CreateSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE = CreateSheetsChartRequest_LinkingMode "NOT_LINKED_IMAGE"

-- | Linking the chart allows it to be updated, and other collaborators will see a link to the spreadsheet.
pattern CreateSheetsChartRequest_LinkingMode_Linked :: CreateSheetsChartRequest_LinkingMode
pattern CreateSheetsChartRequest_LinkingMode_Linked = CreateSheetsChartRequest_LinkingMode "LINKED"

{-# COMPLETE
  CreateSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE,
  CreateSheetsChartRequest_LinkingMode_Linked,
  CreateSheetsChartRequest_LinkingMode #-}

-- | The video source.
newtype CreateVideoRequest_Source = CreateVideoRequest_Source { fromCreateVideoRequest_Source :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The video source is unspecified.
pattern CreateVideoRequest_Source_SOURCEUNSPECIFIED :: CreateVideoRequest_Source
pattern CreateVideoRequest_Source_SOURCEUNSPECIFIED = CreateVideoRequest_Source "SOURCE_UNSPECIFIED"

-- | The video source is YouTube.
pattern CreateVideoRequest_Source_Youtube :: CreateVideoRequest_Source
pattern CreateVideoRequest_Source_Youtube = CreateVideoRequest_Source "YOUTUBE"

-- | The video source is Google Drive.
pattern CreateVideoRequest_Source_Drive :: CreateVideoRequest_Source
pattern CreateVideoRequest_Source_Drive = CreateVideoRequest_Source "DRIVE"

{-# COMPLETE
  CreateVideoRequest_Source_SOURCEUNSPECIFIED,
  CreateVideoRequest_Source_Youtube,
  CreateVideoRequest_Source_Drive,
  CreateVideoRequest_Source #-}

-- | The units for magnitude.
newtype Dimension_Unit = Dimension_Unit { fromDimension_Unit :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The units are unknown.
pattern Dimension_Unit_UNITUNSPECIFIED :: Dimension_Unit
pattern Dimension_Unit_UNITUNSPECIFIED = Dimension_Unit "UNIT_UNSPECIFIED"

-- | An English Metric Unit (EMU) is defined as 1\/360,000 of a centimeter and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.
pattern Dimension_Unit_Emu :: Dimension_Unit
pattern Dimension_Unit_Emu = Dimension_Unit "EMU"

-- | A point, 1\/72 of an inch.
pattern Dimension_Unit_PT :: Dimension_Unit
pattern Dimension_Unit_PT = Dimension_Unit "PT"

{-# COMPLETE
  Dimension_Unit_UNITUNSPECIFIED,
  Dimension_Unit_Emu,
  Dimension_Unit_PT,
  Dimension_Unit #-}

-- | Predefined layout.
newtype LayoutReference_PredefinedLayout = LayoutReference_PredefinedLayout { fromLayoutReference_PredefinedLayout :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified layout.
pattern LayoutReference_PredefinedLayout_PREDEFINEDLAYOUTUNSPECIFIED :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_PREDEFINEDLAYOUTUNSPECIFIED = LayoutReference_PredefinedLayout "PREDEFINED_LAYOUT_UNSPECIFIED"

-- | Blank layout, with no placeholders.
pattern LayoutReference_PredefinedLayout_Blank :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_Blank = LayoutReference_PredefinedLayout "BLANK"

-- | Layout with a caption at the bottom.
pattern LayoutReference_PredefinedLayout_CAPTIONONLY :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_CAPTIONONLY = LayoutReference_PredefinedLayout "CAPTION_ONLY"

-- | Layout with a title and a subtitle.
pattern LayoutReference_PredefinedLayout_Title :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_Title = LayoutReference_PredefinedLayout "TITLE"

-- | Layout with a title and body.
pattern LayoutReference_PredefinedLayout_TITLEANDBODY :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_TITLEANDBODY = LayoutReference_PredefinedLayout "TITLE_AND_BODY"

-- | Layout with a title and two columns.
pattern LayoutReference_PredefinedLayout_TITLEANDTWOCOLUMNS :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_TITLEANDTWOCOLUMNS = LayoutReference_PredefinedLayout "TITLE_AND_TWO_COLUMNS"

-- | Layout with only a title.
pattern LayoutReference_PredefinedLayout_TITLEONLY :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_TITLEONLY = LayoutReference_PredefinedLayout "TITLE_ONLY"

-- | Layout with a section title.
pattern LayoutReference_PredefinedLayout_SECTIONHEADER :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_SECTIONHEADER = LayoutReference_PredefinedLayout "SECTION_HEADER"

-- | Layout with a title and subtitle on one side and description on the other.
pattern LayoutReference_PredefinedLayout_SECTIONTITLEANDDESCRIPTION :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_SECTIONTITLEANDDESCRIPTION = LayoutReference_PredefinedLayout "SECTION_TITLE_AND_DESCRIPTION"

-- | Layout with one title and one body, arranged in a single column.
pattern LayoutReference_PredefinedLayout_ONECOLUMNTEXT :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_ONECOLUMNTEXT = LayoutReference_PredefinedLayout "ONE_COLUMN_TEXT"

-- | Layout with a main point.
pattern LayoutReference_PredefinedLayout_MAINPOINT :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_MAINPOINT = LayoutReference_PredefinedLayout "MAIN_POINT"

-- | Layout with a big number heading.
pattern LayoutReference_PredefinedLayout_BIGNUMBER :: LayoutReference_PredefinedLayout
pattern LayoutReference_PredefinedLayout_BIGNUMBER = LayoutReference_PredefinedLayout "BIG_NUMBER"

{-# COMPLETE
  LayoutReference_PredefinedLayout_PREDEFINEDLAYOUTUNSPECIFIED,
  LayoutReference_PredefinedLayout_Blank,
  LayoutReference_PredefinedLayout_CAPTIONONLY,
  LayoutReference_PredefinedLayout_Title,
  LayoutReference_PredefinedLayout_TITLEANDBODY,
  LayoutReference_PredefinedLayout_TITLEANDTWOCOLUMNS,
  LayoutReference_PredefinedLayout_TITLEONLY,
  LayoutReference_PredefinedLayout_SECTIONHEADER,
  LayoutReference_PredefinedLayout_SECTIONTITLEANDDESCRIPTION,
  LayoutReference_PredefinedLayout_ONECOLUMNTEXT,
  LayoutReference_PredefinedLayout_MAINPOINT,
  LayoutReference_PredefinedLayout_BIGNUMBER,
  LayoutReference_PredefinedLayout #-}

-- | The category of the line. It matches the @category@ specified in CreateLineRequest, and can be updated with UpdateLineCategoryRequest.
newtype Line_LineCategory = Line_LineCategory { fromLine_LineCategory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified line category.
pattern Line_LineCategory_LINECATEGORYUNSPECIFIED :: Line_LineCategory
pattern Line_LineCategory_LINECATEGORYUNSPECIFIED = Line_LineCategory "LINE_CATEGORY_UNSPECIFIED"

-- | Straight connectors, including straight connector 1.
pattern Line_LineCategory_Straight :: Line_LineCategory
pattern Line_LineCategory_Straight = Line_LineCategory "STRAIGHT"

-- | Bent connectors, including bent connector 2 to 5.
pattern Line_LineCategory_Bent :: Line_LineCategory
pattern Line_LineCategory_Bent = Line_LineCategory "BENT"

-- | Curved connectors, including curved connector 2 to 5.
pattern Line_LineCategory_Curved :: Line_LineCategory
pattern Line_LineCategory_Curved = Line_LineCategory "CURVED"

{-# COMPLETE
  Line_LineCategory_LINECATEGORYUNSPECIFIED,
  Line_LineCategory_Straight,
  Line_LineCategory_Bent,
  Line_LineCategory_Curved,
  Line_LineCategory #-}

-- | The type of the line.
newtype Line_LineType = Line_LineType { fromLine_LineType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified line type.
pattern Line_LineType_TYPEUNSPECIFIED :: Line_LineType
pattern Line_LineType_TYPEUNSPECIFIED = Line_LineType "TYPE_UNSPECIFIED"

-- | Straight connector 1 form. Corresponds to ECMA-376 ST_ShapeType \'straightConnector1\'.
pattern Line_LineType_STRAIGHT_CONNECTOR_1 :: Line_LineType
pattern Line_LineType_STRAIGHT_CONNECTOR_1 = Line_LineType "STRAIGHT_CONNECTOR_1"

-- | Bent connector 2 form. Corresponds to ECMA-376 ST_ShapeType \'bentConnector2\'.
pattern Line_LineType_BENT_CONNECTOR_2 :: Line_LineType
pattern Line_LineType_BENT_CONNECTOR_2 = Line_LineType "BENT_CONNECTOR_2"

-- | Bent connector 3 form. Corresponds to ECMA-376 ST_ShapeType \'bentConnector3\'.
pattern Line_LineType_BENT_CONNECTOR_3 :: Line_LineType
pattern Line_LineType_BENT_CONNECTOR_3 = Line_LineType "BENT_CONNECTOR_3"

-- | Bent connector 4 form. Corresponds to ECMA-376 ST_ShapeType \'bentConnector4\'.
pattern Line_LineType_BENT_CONNECTOR_4 :: Line_LineType
pattern Line_LineType_BENT_CONNECTOR_4 = Line_LineType "BENT_CONNECTOR_4"

-- | Bent connector 5 form. Corresponds to ECMA-376 ST_ShapeType \'bentConnector5\'.
pattern Line_LineType_BENT_CONNECTOR_5 :: Line_LineType
pattern Line_LineType_BENT_CONNECTOR_5 = Line_LineType "BENT_CONNECTOR_5"

-- | Curved connector 2 form. Corresponds to ECMA-376 ST_ShapeType \'curvedConnector2\'.
pattern Line_LineType_CURVED_CONNECTOR_2 :: Line_LineType
pattern Line_LineType_CURVED_CONNECTOR_2 = Line_LineType "CURVED_CONNECTOR_2"

-- | Curved connector 3 form. Corresponds to ECMA-376 ST_ShapeType \'curvedConnector3\'.
pattern Line_LineType_CURVED_CONNECTOR_3 :: Line_LineType
pattern Line_LineType_CURVED_CONNECTOR_3 = Line_LineType "CURVED_CONNECTOR_3"

-- | Curved connector 4 form. Corresponds to ECMA-376 ST_ShapeType \'curvedConnector4\'.
pattern Line_LineType_CURVED_CONNECTOR_4 :: Line_LineType
pattern Line_LineType_CURVED_CONNECTOR_4 = Line_LineType "CURVED_CONNECTOR_4"

-- | Curved connector 5 form. Corresponds to ECMA-376 ST_ShapeType \'curvedConnector5\'.
pattern Line_LineType_CURVED_CONNECTOR_5 :: Line_LineType
pattern Line_LineType_CURVED_CONNECTOR_5 = Line_LineType "CURVED_CONNECTOR_5"

-- | Straight line. Corresponds to ECMA-376 ST_ShapeType \'line\'. This line type is not a connector.
pattern Line_LineType_STRAIGHTLINE :: Line_LineType
pattern Line_LineType_STRAIGHTLINE = Line_LineType "STRAIGHT_LINE"

{-# COMPLETE
  Line_LineType_TYPEUNSPECIFIED,
  Line_LineType_STRAIGHT_CONNECTOR_1,
  Line_LineType_BENT_CONNECTOR_2,
  Line_LineType_BENT_CONNECTOR_3,
  Line_LineType_BENT_CONNECTOR_4,
  Line_LineType_BENT_CONNECTOR_5,
  Line_LineType_CURVED_CONNECTOR_2,
  Line_LineType_CURVED_CONNECTOR_3,
  Line_LineType_CURVED_CONNECTOR_4,
  Line_LineType_CURVED_CONNECTOR_5,
  Line_LineType_STRAIGHTLINE,
  Line_LineType #-}

-- | The dash style of the line.
newtype LineProperties_DashStyle = LineProperties_DashStyle { fromLineProperties_DashStyle :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified dash style.
pattern LineProperties_DashStyle_DASHSTYLEUNSPECIFIED :: LineProperties_DashStyle
pattern LineProperties_DashStyle_DASHSTYLEUNSPECIFIED = LineProperties_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern LineProperties_DashStyle_Solid :: LineProperties_DashStyle
pattern LineProperties_DashStyle_Solid = LineProperties_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern LineProperties_DashStyle_Dot :: LineProperties_DashStyle
pattern LineProperties_DashStyle_Dot = LineProperties_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern LineProperties_DashStyle_Dash :: LineProperties_DashStyle
pattern LineProperties_DashStyle_Dash = LineProperties_DashStyle "DASH"

-- | Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dashDot\'.
pattern LineProperties_DashStyle_DASHDOT :: LineProperties_DashStyle
pattern LineProperties_DashStyle_DASHDOT = LineProperties_DashStyle "DASH_DOT"

-- | Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDash\'.
pattern LineProperties_DashStyle_LONGDASH :: LineProperties_DashStyle
pattern LineProperties_DashStyle_LONGDASH = LineProperties_DashStyle "LONG_DASH"

-- | Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDashDot\'.
pattern LineProperties_DashStyle_LONGDASHDOT :: LineProperties_DashStyle
pattern LineProperties_DashStyle_LONGDASHDOT = LineProperties_DashStyle "LONG_DASH_DOT"

{-# COMPLETE
  LineProperties_DashStyle_DASHSTYLEUNSPECIFIED,
  LineProperties_DashStyle_Solid,
  LineProperties_DashStyle_Dot,
  LineProperties_DashStyle_Dash,
  LineProperties_DashStyle_DASHDOT,
  LineProperties_DashStyle_LONGDASH,
  LineProperties_DashStyle_LONGDASHDOT,
  LineProperties_DashStyle #-}

-- | The style of the arrow at the end of the line.
newtype LineProperties_EndArrow = LineProperties_EndArrow { fromLineProperties_EndArrow :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified arrow style.
pattern LineProperties_EndArrow_ARROWSTYLEUNSPECIFIED :: LineProperties_EndArrow
pattern LineProperties_EndArrow_ARROWSTYLEUNSPECIFIED = LineProperties_EndArrow "ARROW_STYLE_UNSPECIFIED"

-- | No arrow.
pattern LineProperties_EndArrow_None :: LineProperties_EndArrow
pattern LineProperties_EndArrow_None = LineProperties_EndArrow "NONE"

-- | Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value \'stealth\'.
pattern LineProperties_EndArrow_STEALTHARROW :: LineProperties_EndArrow
pattern LineProperties_EndArrow_STEALTHARROW = LineProperties_EndArrow "STEALTH_ARROW"

-- | Filled arrow. Corresponds to ECMA-376 ST_LineEndType value \'triangle\'.
pattern LineProperties_EndArrow_FILLARROW :: LineProperties_EndArrow
pattern LineProperties_EndArrow_FILLARROW = LineProperties_EndArrow "FILL_ARROW"

-- | Filled circle. Corresponds to ECMA-376 ST_LineEndType value \'oval\'.
pattern LineProperties_EndArrow_FILLCIRCLE :: LineProperties_EndArrow
pattern LineProperties_EndArrow_FILLCIRCLE = LineProperties_EndArrow "FILL_CIRCLE"

-- | Filled square.
pattern LineProperties_EndArrow_FILLSQUARE :: LineProperties_EndArrow
pattern LineProperties_EndArrow_FILLSQUARE = LineProperties_EndArrow "FILL_SQUARE"

-- | Filled diamond. Corresponds to ECMA-376 ST_LineEndType value \'diamond\'.
pattern LineProperties_EndArrow_FILLDIAMOND :: LineProperties_EndArrow
pattern LineProperties_EndArrow_FILLDIAMOND = LineProperties_EndArrow "FILL_DIAMOND"

-- | Hollow arrow.
pattern LineProperties_EndArrow_OPENARROW :: LineProperties_EndArrow
pattern LineProperties_EndArrow_OPENARROW = LineProperties_EndArrow "OPEN_ARROW"

-- | Hollow circle.
pattern LineProperties_EndArrow_OPENCIRCLE :: LineProperties_EndArrow
pattern LineProperties_EndArrow_OPENCIRCLE = LineProperties_EndArrow "OPEN_CIRCLE"

-- | Hollow square.
pattern LineProperties_EndArrow_OPENSQUARE :: LineProperties_EndArrow
pattern LineProperties_EndArrow_OPENSQUARE = LineProperties_EndArrow "OPEN_SQUARE"

-- | Hollow diamond.
pattern LineProperties_EndArrow_OPENDIAMOND :: LineProperties_EndArrow
pattern LineProperties_EndArrow_OPENDIAMOND = LineProperties_EndArrow "OPEN_DIAMOND"

{-# COMPLETE
  LineProperties_EndArrow_ARROWSTYLEUNSPECIFIED,
  LineProperties_EndArrow_None,
  LineProperties_EndArrow_STEALTHARROW,
  LineProperties_EndArrow_FILLARROW,
  LineProperties_EndArrow_FILLCIRCLE,
  LineProperties_EndArrow_FILLSQUARE,
  LineProperties_EndArrow_FILLDIAMOND,
  LineProperties_EndArrow_OPENARROW,
  LineProperties_EndArrow_OPENCIRCLE,
  LineProperties_EndArrow_OPENSQUARE,
  LineProperties_EndArrow_OPENDIAMOND,
  LineProperties_EndArrow #-}

-- | The style of the arrow at the beginning of the line.
newtype LineProperties_StartArrow = LineProperties_StartArrow { fromLineProperties_StartArrow :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified arrow style.
pattern LineProperties_StartArrow_ARROWSTYLEUNSPECIFIED :: LineProperties_StartArrow
pattern LineProperties_StartArrow_ARROWSTYLEUNSPECIFIED = LineProperties_StartArrow "ARROW_STYLE_UNSPECIFIED"

-- | No arrow.
pattern LineProperties_StartArrow_None :: LineProperties_StartArrow
pattern LineProperties_StartArrow_None = LineProperties_StartArrow "NONE"

-- | Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value \'stealth\'.
pattern LineProperties_StartArrow_STEALTHARROW :: LineProperties_StartArrow
pattern LineProperties_StartArrow_STEALTHARROW = LineProperties_StartArrow "STEALTH_ARROW"

-- | Filled arrow. Corresponds to ECMA-376 ST_LineEndType value \'triangle\'.
pattern LineProperties_StartArrow_FILLARROW :: LineProperties_StartArrow
pattern LineProperties_StartArrow_FILLARROW = LineProperties_StartArrow "FILL_ARROW"

-- | Filled circle. Corresponds to ECMA-376 ST_LineEndType value \'oval\'.
pattern LineProperties_StartArrow_FILLCIRCLE :: LineProperties_StartArrow
pattern LineProperties_StartArrow_FILLCIRCLE = LineProperties_StartArrow "FILL_CIRCLE"

-- | Filled square.
pattern LineProperties_StartArrow_FILLSQUARE :: LineProperties_StartArrow
pattern LineProperties_StartArrow_FILLSQUARE = LineProperties_StartArrow "FILL_SQUARE"

-- | Filled diamond. Corresponds to ECMA-376 ST_LineEndType value \'diamond\'.
pattern LineProperties_StartArrow_FILLDIAMOND :: LineProperties_StartArrow
pattern LineProperties_StartArrow_FILLDIAMOND = LineProperties_StartArrow "FILL_DIAMOND"

-- | Hollow arrow.
pattern LineProperties_StartArrow_OPENARROW :: LineProperties_StartArrow
pattern LineProperties_StartArrow_OPENARROW = LineProperties_StartArrow "OPEN_ARROW"

-- | Hollow circle.
pattern LineProperties_StartArrow_OPENCIRCLE :: LineProperties_StartArrow
pattern LineProperties_StartArrow_OPENCIRCLE = LineProperties_StartArrow "OPEN_CIRCLE"

-- | Hollow square.
pattern LineProperties_StartArrow_OPENSQUARE :: LineProperties_StartArrow
pattern LineProperties_StartArrow_OPENSQUARE = LineProperties_StartArrow "OPEN_SQUARE"

-- | Hollow diamond.
pattern LineProperties_StartArrow_OPENDIAMOND :: LineProperties_StartArrow
pattern LineProperties_StartArrow_OPENDIAMOND = LineProperties_StartArrow "OPEN_DIAMOND"

{-# COMPLETE
  LineProperties_StartArrow_ARROWSTYLEUNSPECIFIED,
  LineProperties_StartArrow_None,
  LineProperties_StartArrow_STEALTHARROW,
  LineProperties_StartArrow_FILLARROW,
  LineProperties_StartArrow_FILLCIRCLE,
  LineProperties_StartArrow_FILLSQUARE,
  LineProperties_StartArrow_FILLDIAMOND,
  LineProperties_StartArrow_OPENARROW,
  LineProperties_StartArrow_OPENCIRCLE,
  LineProperties_StartArrow_OPENSQUARE,
  LineProperties_StartArrow_OPENDIAMOND,
  LineProperties_StartArrow #-}

-- | If set, indicates this is a link to a slide in this presentation, addressed by its position.
newtype Link_RelativeLink = Link_RelativeLink { fromLink_RelativeLink :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified relative slide link.
pattern Link_RelativeLink_RELATIVESLIDELINKUNSPECIFIED :: Link_RelativeLink
pattern Link_RelativeLink_RELATIVESLIDELINKUNSPECIFIED = Link_RelativeLink "RELATIVE_SLIDE_LINK_UNSPECIFIED"

-- | A link to the next slide.
pattern Link_RelativeLink_NEXTSLIDE :: Link_RelativeLink
pattern Link_RelativeLink_NEXTSLIDE = Link_RelativeLink "NEXT_SLIDE"

-- | A link to the previous slide.
pattern Link_RelativeLink_PREVIOUSSLIDE :: Link_RelativeLink
pattern Link_RelativeLink_PREVIOUSSLIDE = Link_RelativeLink "PREVIOUS_SLIDE"

-- | A link to the first slide in the presentation.
pattern Link_RelativeLink_FIRSTSLIDE :: Link_RelativeLink
pattern Link_RelativeLink_FIRSTSLIDE = Link_RelativeLink "FIRST_SLIDE"

-- | A link to the last slide in the presentation.
pattern Link_RelativeLink_LASTSLIDE :: Link_RelativeLink
pattern Link_RelativeLink_LASTSLIDE = Link_RelativeLink "LAST_SLIDE"

{-# COMPLETE
  Link_RelativeLink_RELATIVESLIDELINKUNSPECIFIED,
  Link_RelativeLink_NEXTSLIDE,
  Link_RelativeLink_PREVIOUSSLIDE,
  Link_RelativeLink_FIRSTSLIDE,
  Link_RelativeLink_LASTSLIDE,
  Link_RelativeLink #-}

-- | An opaque theme color.
newtype OpaqueColor_ThemeColor = OpaqueColor_ThemeColor { fromOpaqueColor_ThemeColor :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified theme color. This value should not be used.
pattern OpaqueColor_ThemeColor_THEMECOLORTYPEUNSPECIFIED :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_THEMECOLORTYPEUNSPECIFIED = OpaqueColor_ThemeColor "THEME_COLOR_TYPE_UNSPECIFIED"

-- | Represents the first dark color.
pattern OpaqueColor_ThemeColor_DARK1 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_DARK1 = OpaqueColor_ThemeColor "DARK1"

-- | Represents the first light color.
pattern OpaqueColor_ThemeColor_LIGHT1 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_LIGHT1 = OpaqueColor_ThemeColor "LIGHT1"

-- | Represents the second dark color.
pattern OpaqueColor_ThemeColor_DARK2 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_DARK2 = OpaqueColor_ThemeColor "DARK2"

-- | Represents the second light color.
pattern OpaqueColor_ThemeColor_LIGHT2 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_LIGHT2 = OpaqueColor_ThemeColor "LIGHT2"

-- | Represents the first accent color.
pattern OpaqueColor_ThemeColor_ACCENT1 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT1 = OpaqueColor_ThemeColor "ACCENT1"

-- | Represents the second accent color.
pattern OpaqueColor_ThemeColor_ACCENT2 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT2 = OpaqueColor_ThemeColor "ACCENT2"

-- | Represents the third accent color.
pattern OpaqueColor_ThemeColor_ACCENT3 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT3 = OpaqueColor_ThemeColor "ACCENT3"

-- | Represents the fourth accent color.
pattern OpaqueColor_ThemeColor_ACCENT4 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT4 = OpaqueColor_ThemeColor "ACCENT4"

-- | Represents the fifth accent color.
pattern OpaqueColor_ThemeColor_ACCENT5 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT5 = OpaqueColor_ThemeColor "ACCENT5"

-- | Represents the sixth accent color.
pattern OpaqueColor_ThemeColor_ACCENT6 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_ACCENT6 = OpaqueColor_ThemeColor "ACCENT6"

-- | Represents the color to use for hyperlinks.
pattern OpaqueColor_ThemeColor_Hyperlink :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_Hyperlink = OpaqueColor_ThemeColor "HYPERLINK"

-- | Represents the color to use for visited hyperlinks.
pattern OpaqueColor_ThemeColor_FOLLOWEDHYPERLINK :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_FOLLOWEDHYPERLINK = OpaqueColor_ThemeColor "FOLLOWED_HYPERLINK"

-- | Represents the first text color.
pattern OpaqueColor_ThemeColor_TEXT1 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_TEXT1 = OpaqueColor_ThemeColor "TEXT1"

-- | Represents the first background color.
pattern OpaqueColor_ThemeColor_BACKGROUND1 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_BACKGROUND1 = OpaqueColor_ThemeColor "BACKGROUND1"

-- | Represents the second text color.
pattern OpaqueColor_ThemeColor_TEXT2 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_TEXT2 = OpaqueColor_ThemeColor "TEXT2"

-- | Represents the second background color.
pattern OpaqueColor_ThemeColor_BACKGROUND2 :: OpaqueColor_ThemeColor
pattern OpaqueColor_ThemeColor_BACKGROUND2 = OpaqueColor_ThemeColor "BACKGROUND2"

{-# COMPLETE
  OpaqueColor_ThemeColor_THEMECOLORTYPEUNSPECIFIED,
  OpaqueColor_ThemeColor_DARK1,
  OpaqueColor_ThemeColor_LIGHT1,
  OpaqueColor_ThemeColor_DARK2,
  OpaqueColor_ThemeColor_LIGHT2,
  OpaqueColor_ThemeColor_ACCENT1,
  OpaqueColor_ThemeColor_ACCENT2,
  OpaqueColor_ThemeColor_ACCENT3,
  OpaqueColor_ThemeColor_ACCENT4,
  OpaqueColor_ThemeColor_ACCENT5,
  OpaqueColor_ThemeColor_ACCENT6,
  OpaqueColor_ThemeColor_Hyperlink,
  OpaqueColor_ThemeColor_FOLLOWEDHYPERLINK,
  OpaqueColor_ThemeColor_TEXT1,
  OpaqueColor_ThemeColor_BACKGROUND1,
  OpaqueColor_ThemeColor_TEXT2,
  OpaqueColor_ThemeColor_BACKGROUND2,
  OpaqueColor_ThemeColor #-}

-- | The dash style of the outline.
newtype Outline_DashStyle = Outline_DashStyle { fromOutline_DashStyle :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified dash style.
pattern Outline_DashStyle_DASHSTYLEUNSPECIFIED :: Outline_DashStyle
pattern Outline_DashStyle_DASHSTYLEUNSPECIFIED = Outline_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern Outline_DashStyle_Solid :: Outline_DashStyle
pattern Outline_DashStyle_Solid = Outline_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern Outline_DashStyle_Dot :: Outline_DashStyle
pattern Outline_DashStyle_Dot = Outline_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern Outline_DashStyle_Dash :: Outline_DashStyle
pattern Outline_DashStyle_Dash = Outline_DashStyle "DASH"

-- | Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dashDot\'.
pattern Outline_DashStyle_DASHDOT :: Outline_DashStyle
pattern Outline_DashStyle_DASHDOT = Outline_DashStyle "DASH_DOT"

-- | Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDash\'.
pattern Outline_DashStyle_LONGDASH :: Outline_DashStyle
pattern Outline_DashStyle_LONGDASH = Outline_DashStyle "LONG_DASH"

-- | Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDashDot\'.
pattern Outline_DashStyle_LONGDASHDOT :: Outline_DashStyle
pattern Outline_DashStyle_LONGDASHDOT = Outline_DashStyle "LONG_DASH_DOT"

{-# COMPLETE
  Outline_DashStyle_DASHSTYLEUNSPECIFIED,
  Outline_DashStyle_Solid,
  Outline_DashStyle_Dot,
  Outline_DashStyle_Dash,
  Outline_DashStyle_DASHDOT,
  Outline_DashStyle_LONGDASH,
  Outline_DashStyle_LONGDASHDOT,
  Outline_DashStyle #-}

-- | The outline property state. Updating the outline on a page element will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no outline on a page element, set this field to @NOT_RENDERED@. In this case, any other outline fields set in the same request will be ignored.
newtype Outline_PropertyState = Outline_PropertyState { fromOutline_PropertyState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.
pattern Outline_PropertyState_Rendered :: Outline_PropertyState
pattern Outline_PropertyState_Rendered = Outline_PropertyState "RENDERED"

-- | If a property\'s state is NOT/RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property/state to NOT_RENDERED.
pattern Outline_PropertyState_NOTRENDERED :: Outline_PropertyState
pattern Outline_PropertyState_NOTRENDERED = Outline_PropertyState "NOT_RENDERED"

-- | If a property\'s state is INHERIT, then the property state uses the value of corresponding @property_state@ field on the parent shape. Elements that do not inherit will never have an INHERIT property state.
pattern Outline_PropertyState_Inherit :: Outline_PropertyState
pattern Outline_PropertyState_Inherit = Outline_PropertyState "INHERIT"

{-# COMPLETE
  Outline_PropertyState_Rendered,
  Outline_PropertyState_NOTRENDERED,
  Outline_PropertyState_Inherit,
  Outline_PropertyState #-}

-- | The type of the page.
newtype Page_PageType = Page_PageType { fromPage_PageType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | A slide page.
pattern Page_PageType_Slide :: Page_PageType
pattern Page_PageType_Slide = Page_PageType "SLIDE"

-- | A master slide page.
pattern Page_PageType_Master :: Page_PageType
pattern Page_PageType_Master = Page_PageType "MASTER"

-- | A layout page.
pattern Page_PageType_Layout :: Page_PageType
pattern Page_PageType_Layout = Page_PageType "LAYOUT"

-- | A notes page.
pattern Page_PageType_Notes :: Page_PageType
pattern Page_PageType_Notes = Page_PageType "NOTES"

-- | A notes master page.
pattern Page_PageType_NOTESMASTER :: Page_PageType
pattern Page_PageType_NOTESMASTER = Page_PageType "NOTES_MASTER"

{-# COMPLETE
  Page_PageType_Slide,
  Page_PageType_Master,
  Page_PageType_Layout,
  Page_PageType_Notes,
  Page_PageType_NOTESMASTER,
  Page_PageType #-}

-- | The background fill property state. Updating the fill on a page will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a page, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
newtype PageBackgroundFill_PropertyState = PageBackgroundFill_PropertyState { fromPageBackgroundFill_PropertyState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.
pattern PageBackgroundFill_PropertyState_Rendered :: PageBackgroundFill_PropertyState
pattern PageBackgroundFill_PropertyState_Rendered = PageBackgroundFill_PropertyState "RENDERED"

-- | If a property\'s state is NOT/RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property/state to NOT_RENDERED.
pattern PageBackgroundFill_PropertyState_NOTRENDERED :: PageBackgroundFill_PropertyState
pattern PageBackgroundFill_PropertyState_NOTRENDERED = PageBackgroundFill_PropertyState "NOT_RENDERED"

-- | If a property\'s state is INHERIT, then the property state uses the value of corresponding @property_state@ field on the parent shape. Elements that do not inherit will never have an INHERIT property state.
pattern PageBackgroundFill_PropertyState_Inherit :: PageBackgroundFill_PropertyState
pattern PageBackgroundFill_PropertyState_Inherit = PageBackgroundFill_PropertyState "INHERIT"

{-# COMPLETE
  PageBackgroundFill_PropertyState_Rendered,
  PageBackgroundFill_PropertyState_NOTRENDERED,
  PageBackgroundFill_PropertyState_Inherit,
  PageBackgroundFill_PropertyState #-}

-- | The text alignment for this paragraph.
newtype ParagraphStyle_Alignment = ParagraphStyle_Alignment { fromParagraphStyle_Alignment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The paragraph alignment is inherited from the parent.
pattern ParagraphStyle_Alignment_ALIGNMENTUNSPECIFIED :: ParagraphStyle_Alignment
pattern ParagraphStyle_Alignment_ALIGNMENTUNSPECIFIED = ParagraphStyle_Alignment "ALIGNMENT_UNSPECIFIED"

-- | The paragraph is aligned to the start of the line. Left-aligned for LTR text, right-aligned otherwise.
pattern ParagraphStyle_Alignment_Start :: ParagraphStyle_Alignment
pattern ParagraphStyle_Alignment_Start = ParagraphStyle_Alignment "START"

-- | The paragraph is centered.
pattern ParagraphStyle_Alignment_Center :: ParagraphStyle_Alignment
pattern ParagraphStyle_Alignment_Center = ParagraphStyle_Alignment "CENTER"

-- | The paragraph is aligned to the end of the line. Right-aligned for LTR text, left-aligned otherwise.
pattern ParagraphStyle_Alignment_End :: ParagraphStyle_Alignment
pattern ParagraphStyle_Alignment_End = ParagraphStyle_Alignment "END"

-- | The paragraph is justified.
pattern ParagraphStyle_Alignment_Justified :: ParagraphStyle_Alignment
pattern ParagraphStyle_Alignment_Justified = ParagraphStyle_Alignment "JUSTIFIED"

{-# COMPLETE
  ParagraphStyle_Alignment_ALIGNMENTUNSPECIFIED,
  ParagraphStyle_Alignment_Start,
  ParagraphStyle_Alignment_Center,
  ParagraphStyle_Alignment_End,
  ParagraphStyle_Alignment_Justified,
  ParagraphStyle_Alignment #-}

-- | The text direction of this paragraph. If unset, the value defaults to LEFT/TO/RIGHT since text direction is not inherited.
newtype ParagraphStyle_Direction = ParagraphStyle_Direction { fromParagraphStyle_Direction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The text direction is inherited from the parent.
pattern ParagraphStyle_Direction_TEXTDIRECTIONUNSPECIFIED :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_TEXTDIRECTIONUNSPECIFIED = ParagraphStyle_Direction "TEXT_DIRECTION_UNSPECIFIED"

-- | The text goes from left to right.
pattern ParagraphStyle_Direction_LEFTTORIGHT :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_LEFTTORIGHT = ParagraphStyle_Direction "LEFT_TO_RIGHT"

-- | The text goes from right to left.
pattern ParagraphStyle_Direction_RIGHTTOLEFT :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_RIGHTTOLEFT = ParagraphStyle_Direction "RIGHT_TO_LEFT"

{-# COMPLETE
  ParagraphStyle_Direction_TEXTDIRECTIONUNSPECIFIED,
  ParagraphStyle_Direction_LEFTTORIGHT,
  ParagraphStyle_Direction_RIGHTTOLEFT,
  ParagraphStyle_Direction #-}

-- | The spacing mode for the paragraph.
newtype ParagraphStyle_SpacingMode = ParagraphStyle_SpacingMode { fromParagraphStyle_SpacingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The spacing mode is inherited from the parent.
pattern ParagraphStyle_SpacingMode_SPACINGMODEUNSPECIFIED :: ParagraphStyle_SpacingMode
pattern ParagraphStyle_SpacingMode_SPACINGMODEUNSPECIFIED = ParagraphStyle_SpacingMode "SPACING_MODE_UNSPECIFIED"

-- | Paragraph spacing is always rendered.
pattern ParagraphStyle_SpacingMode_NEVERCOLLAPSE :: ParagraphStyle_SpacingMode
pattern ParagraphStyle_SpacingMode_NEVERCOLLAPSE = ParagraphStyle_SpacingMode "NEVER_COLLAPSE"

-- | Paragraph spacing is skipped between list elements.
pattern ParagraphStyle_SpacingMode_COLLAPSELISTS :: ParagraphStyle_SpacingMode
pattern ParagraphStyle_SpacingMode_COLLAPSELISTS = ParagraphStyle_SpacingMode "COLLAPSE_LISTS"

{-# COMPLETE
  ParagraphStyle_SpacingMode_SPACINGMODEUNSPECIFIED,
  ParagraphStyle_SpacingMode_NEVERCOLLAPSE,
  ParagraphStyle_SpacingMode_COLLAPSELISTS,
  ParagraphStyle_SpacingMode #-}

-- | The type of the placeholder.
newtype Placeholder_Type = Placeholder_Type { fromPlaceholder_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value, signifies it is not a placeholder.
pattern Placeholder_Type_None :: Placeholder_Type
pattern Placeholder_Type_None = Placeholder_Type "NONE"

-- | Body text.
pattern Placeholder_Type_Body :: Placeholder_Type
pattern Placeholder_Type_Body = Placeholder_Type "BODY"

-- | Chart or graph.
pattern Placeholder_Type_Chart :: Placeholder_Type
pattern Placeholder_Type_Chart = Placeholder_Type "CHART"

-- | Clip art image.
pattern Placeholder_Type_CLIPART :: Placeholder_Type
pattern Placeholder_Type_CLIPART = Placeholder_Type "CLIP_ART"

-- | Title centered.
pattern Placeholder_Type_CENTEREDTITLE :: Placeholder_Type
pattern Placeholder_Type_CENTEREDTITLE = Placeholder_Type "CENTERED_TITLE"

-- | Diagram.
pattern Placeholder_Type_Diagram :: Placeholder_Type
pattern Placeholder_Type_Diagram = Placeholder_Type "DIAGRAM"

-- | Date and time.
pattern Placeholder_Type_DATEANDTIME :: Placeholder_Type
pattern Placeholder_Type_DATEANDTIME = Placeholder_Type "DATE_AND_TIME"

-- | Footer text.
pattern Placeholder_Type_Footer :: Placeholder_Type
pattern Placeholder_Type_Footer = Placeholder_Type "FOOTER"

-- | Header text.
pattern Placeholder_Type_Header :: Placeholder_Type
pattern Placeholder_Type_Header = Placeholder_Type "HEADER"

-- | Multimedia.
pattern Placeholder_Type_Media :: Placeholder_Type
pattern Placeholder_Type_Media = Placeholder_Type "MEDIA"

-- | Any content type.
pattern Placeholder_Type_Object :: Placeholder_Type
pattern Placeholder_Type_Object = Placeholder_Type "OBJECT"

-- | Picture.
pattern Placeholder_Type_Picture :: Placeholder_Type
pattern Placeholder_Type_Picture = Placeholder_Type "PICTURE"

-- | Number of a slide.
pattern Placeholder_Type_SLIDENUMBER :: Placeholder_Type
pattern Placeholder_Type_SLIDENUMBER = Placeholder_Type "SLIDE_NUMBER"

-- | Subtitle.
pattern Placeholder_Type_Subtitle :: Placeholder_Type
pattern Placeholder_Type_Subtitle = Placeholder_Type "SUBTITLE"

-- | Table.
pattern Placeholder_Type_Table :: Placeholder_Type
pattern Placeholder_Type_Table = Placeholder_Type "TABLE"

-- | Slide title.
pattern Placeholder_Type_Title :: Placeholder_Type
pattern Placeholder_Type_Title = Placeholder_Type "TITLE"

-- | Slide image.
pattern Placeholder_Type_SLIDEIMAGE :: Placeholder_Type
pattern Placeholder_Type_SLIDEIMAGE = Placeholder_Type "SLIDE_IMAGE"

{-# COMPLETE
  Placeholder_Type_None,
  Placeholder_Type_Body,
  Placeholder_Type_Chart,
  Placeholder_Type_CLIPART,
  Placeholder_Type_CENTEREDTITLE,
  Placeholder_Type_Diagram,
  Placeholder_Type_DATEANDTIME,
  Placeholder_Type_Footer,
  Placeholder_Type_Header,
  Placeholder_Type_Media,
  Placeholder_Type_Object,
  Placeholder_Type_Picture,
  Placeholder_Type_SLIDENUMBER,
  Placeholder_Type_Subtitle,
  Placeholder_Type_Table,
  Placeholder_Type_Title,
  Placeholder_Type_SLIDEIMAGE,
  Placeholder_Type #-}

-- | The type of range.
newtype Range_Type = Range_Type { fromRange_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified range type. This value must not be used.
pattern Range_Type_RANGETYPEUNSPECIFIED :: Range_Type
pattern Range_Type_RANGETYPEUNSPECIFIED = Range_Type "RANGE_TYPE_UNSPECIFIED"

-- | A fixed range. Both the @start_index@ and @end_index@ must be specified.
pattern Range_Type_FIXEDRANGE :: Range_Type
pattern Range_Type_FIXEDRANGE = Range_Type "FIXED_RANGE"

-- | Starts the range at @start_index@ and continues until the end of the collection. The @end_index@ must not be specified.
pattern Range_Type_FROMSTARTINDEX :: Range_Type
pattern Range_Type_FROMSTARTINDEX = Range_Type "FROM_START_INDEX"

-- | Sets the range to be the whole length of the collection. Both the @start_index@ and the @end_index@ must not be specified.
pattern Range_Type_All :: Range_Type
pattern Range_Type_All = Range_Type "ALL"

{-# COMPLETE
  Range_Type_RANGETYPEUNSPECIFIED,
  Range_Type_FIXEDRANGE,
  Range_Type_FROMSTARTINDEX,
  Range_Type_All,
  Range_Type #-}

-- | The name of the recolor effect. The name is determined from the @recolor_stops@ by matching the gradient against the colors in the page\'s current color scheme. This property is read-only.
newtype Recolor_Name = Recolor_Name { fromRecolor_Name :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No recolor effect. The default value.
pattern Recolor_Name_None :: Recolor_Name
pattern Recolor_Name_None = Recolor_Name "NONE"

-- | A recolor effect that lightens the image using the page\'s first available color from its color scheme.
pattern Recolor_Name_LIGHT1 :: Recolor_Name
pattern Recolor_Name_LIGHT1 = Recolor_Name "LIGHT1"

-- | A recolor effect that lightens the image using the page\'s second available color from its color scheme.
pattern Recolor_Name_LIGHT2 :: Recolor_Name
pattern Recolor_Name_LIGHT2 = Recolor_Name "LIGHT2"

-- | A recolor effect that lightens the image using the page\'s third available color from its color scheme.
pattern Recolor_Name_LIGHT3 :: Recolor_Name
pattern Recolor_Name_LIGHT3 = Recolor_Name "LIGHT3"

-- | A recolor effect that lightens the image using the page\'s forth available color from its color scheme.
pattern Recolor_Name_LIGHT4 :: Recolor_Name
pattern Recolor_Name_LIGHT4 = Recolor_Name "LIGHT4"

-- | A recolor effect that lightens the image using the page\'s fifth available color from its color scheme.
pattern Recolor_Name_LIGHT5 :: Recolor_Name
pattern Recolor_Name_LIGHT5 = Recolor_Name "LIGHT5"

-- | A recolor effect that lightens the image using the page\'s sixth available color from its color scheme.
pattern Recolor_Name_LIGHT6 :: Recolor_Name
pattern Recolor_Name_LIGHT6 = Recolor_Name "LIGHT6"

-- | A recolor effect that lightens the image using the page\'s seventh available color from its color scheme.
pattern Recolor_Name_LIGHT7 :: Recolor_Name
pattern Recolor_Name_LIGHT7 = Recolor_Name "LIGHT7"

-- | A recolor effect that lightens the image using the page\'s eighth available color from its color scheme.
pattern Recolor_Name_LIGHT8 :: Recolor_Name
pattern Recolor_Name_LIGHT8 = Recolor_Name "LIGHT8"

-- | A recolor effect that lightens the image using the page\'s ninth available color from its color scheme.
pattern Recolor_Name_LIGHT9 :: Recolor_Name
pattern Recolor_Name_LIGHT9 = Recolor_Name "LIGHT9"

-- | A recolor effect that lightens the image using the page\'s tenth available color from its color scheme.
pattern Recolor_Name_LIGHT10 :: Recolor_Name
pattern Recolor_Name_LIGHT10 = Recolor_Name "LIGHT10"

-- | A recolor effect that darkens the image using the page\'s first available color from its color scheme.
pattern Recolor_Name_DARK1 :: Recolor_Name
pattern Recolor_Name_DARK1 = Recolor_Name "DARK1"

-- | A recolor effect that darkens the image using the page\'s second available color from its color scheme.
pattern Recolor_Name_DARK2 :: Recolor_Name
pattern Recolor_Name_DARK2 = Recolor_Name "DARK2"

-- | A recolor effect that darkens the image using the page\'s third available color from its color scheme.
pattern Recolor_Name_DARK3 :: Recolor_Name
pattern Recolor_Name_DARK3 = Recolor_Name "DARK3"

-- | A recolor effect that darkens the image using the page\'s fourth available color from its color scheme.
pattern Recolor_Name_DARK4 :: Recolor_Name
pattern Recolor_Name_DARK4 = Recolor_Name "DARK4"

-- | A recolor effect that darkens the image using the page\'s fifth available color from its color scheme.
pattern Recolor_Name_DARK5 :: Recolor_Name
pattern Recolor_Name_DARK5 = Recolor_Name "DARK5"

-- | A recolor effect that darkens the image using the page\'s sixth available color from its color scheme.
pattern Recolor_Name_DARK6 :: Recolor_Name
pattern Recolor_Name_DARK6 = Recolor_Name "DARK6"

-- | A recolor effect that darkens the image using the page\'s seventh available color from its color scheme.
pattern Recolor_Name_DARK7 :: Recolor_Name
pattern Recolor_Name_DARK7 = Recolor_Name "DARK7"

-- | A recolor effect that darkens the image using the page\'s eighth available color from its color scheme.
pattern Recolor_Name_DARK8 :: Recolor_Name
pattern Recolor_Name_DARK8 = Recolor_Name "DARK8"

-- | A recolor effect that darkens the image using the page\'s ninth available color from its color scheme.
pattern Recolor_Name_DARK9 :: Recolor_Name
pattern Recolor_Name_DARK9 = Recolor_Name "DARK9"

-- | A recolor effect that darkens the image using the page\'s tenth available color from its color scheme.
pattern Recolor_Name_DARK10 :: Recolor_Name
pattern Recolor_Name_DARK10 = Recolor_Name "DARK10"

-- | A recolor effect that recolors the image to grayscale.
pattern Recolor_Name_Grayscale :: Recolor_Name
pattern Recolor_Name_Grayscale = Recolor_Name "GRAYSCALE"

-- | A recolor effect that recolors the image to negative grayscale.
pattern Recolor_Name_Negative :: Recolor_Name
pattern Recolor_Name_Negative = Recolor_Name "NEGATIVE"

-- | A recolor effect that recolors the image using the sepia color.
pattern Recolor_Name_Sepia :: Recolor_Name
pattern Recolor_Name_Sepia = Recolor_Name "SEPIA"

-- | Custom recolor effect. Refer to @recolor_stops@ for the concrete gradient.
pattern Recolor_Name_Custom :: Recolor_Name
pattern Recolor_Name_Custom = Recolor_Name "CUSTOM"

{-# COMPLETE
  Recolor_Name_None,
  Recolor_Name_LIGHT1,
  Recolor_Name_LIGHT2,
  Recolor_Name_LIGHT3,
  Recolor_Name_LIGHT4,
  Recolor_Name_LIGHT5,
  Recolor_Name_LIGHT6,
  Recolor_Name_LIGHT7,
  Recolor_Name_LIGHT8,
  Recolor_Name_LIGHT9,
  Recolor_Name_LIGHT10,
  Recolor_Name_DARK1,
  Recolor_Name_DARK2,
  Recolor_Name_DARK3,
  Recolor_Name_DARK4,
  Recolor_Name_DARK5,
  Recolor_Name_DARK6,
  Recolor_Name_DARK7,
  Recolor_Name_DARK8,
  Recolor_Name_DARK9,
  Recolor_Name_DARK10,
  Recolor_Name_Grayscale,
  Recolor_Name_Negative,
  Recolor_Name_Sepia,
  Recolor_Name_Custom,
  Recolor_Name #-}

-- | The image replace method. If you specify both a @replace_method@ and an @image_replace_method@, the @image_replace_method@ takes precedence. If you do not specify a value for @image_replace_method@, but specify a value for @replace_method@, then the specified @replace_method@ value is used. If you do not specify either, then CENTER_INSIDE is used.
newtype ReplaceAllShapesWithImageRequest_ImageReplaceMethod = ReplaceAllShapesWithImageRequest_ImageReplaceMethod { fromReplaceAllShapesWithImageRequest_ImageReplaceMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified image replace method. This value must not be used.
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED :: ReplaceAllShapesWithImageRequest_ImageReplaceMethod
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED = ReplaceAllShapesWithImageRequest_ImageReplaceMethod "IMAGE_REPLACE_METHOD_UNSPECIFIED"

-- | Scales and centers the image to fit within the bounds of the original shape and maintains the image\'s aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERINSIDE :: ReplaceAllShapesWithImageRequest_ImageReplaceMethod
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERINSIDE = ReplaceAllShapesWithImageRequest_ImageReplaceMethod "CENTER_INSIDE"

-- | Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as the original shape.
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERCROP :: ReplaceAllShapesWithImageRequest_ImageReplaceMethod
pattern ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERCROP = ReplaceAllShapesWithImageRequest_ImageReplaceMethod "CENTER_CROP"

{-# COMPLETE
  ReplaceAllShapesWithImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
  ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERINSIDE,
  ReplaceAllShapesWithImageRequest_ImageReplaceMethod_CENTERCROP,
  ReplaceAllShapesWithImageRequest_ImageReplaceMethod #-}

-- | The replace method. /Deprecated/: use @image_replace_method@ instead. If you specify both a @replace_method@ and an @image_replace_method@, the @image_replace_method@ takes precedence.
newtype ReplaceAllShapesWithImageRequest_ReplaceMethod = ReplaceAllShapesWithImageRequest_ReplaceMethod { fromReplaceAllShapesWithImageRequest_ReplaceMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Scales and centers the image to fit within the bounds of the original shape and maintains the image\'s aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.
pattern ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERINSIDE :: ReplaceAllShapesWithImageRequest_ReplaceMethod
pattern ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERINSIDE = ReplaceAllShapesWithImageRequest_ReplaceMethod "CENTER_INSIDE"

-- | Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as that of the original shape.
pattern ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERCROP :: ReplaceAllShapesWithImageRequest_ReplaceMethod
pattern ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERCROP = ReplaceAllShapesWithImageRequest_ReplaceMethod "CENTER_CROP"

{-# COMPLETE
  ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERINSIDE,
  ReplaceAllShapesWithImageRequest_ReplaceMethod_CENTERCROP,
  ReplaceAllShapesWithImageRequest_ReplaceMethod #-}

-- | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
newtype ReplaceAllShapesWithSheetsChartRequest_LinkingMode = ReplaceAllShapesWithSheetsChartRequest_LinkingMode { fromReplaceAllShapesWithSheetsChartRequest_LinkingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The chart is not associated with the source spreadsheet and cannot be updated. A chart that is not linked will be inserted as an image.
pattern ReplaceAllShapesWithSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE :: ReplaceAllShapesWithSheetsChartRequest_LinkingMode
pattern ReplaceAllShapesWithSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE = ReplaceAllShapesWithSheetsChartRequest_LinkingMode "NOT_LINKED_IMAGE"

-- | Linking the chart allows it to be updated, and other collaborators will see a link to the spreadsheet.
pattern ReplaceAllShapesWithSheetsChartRequest_LinkingMode_Linked :: ReplaceAllShapesWithSheetsChartRequest_LinkingMode
pattern ReplaceAllShapesWithSheetsChartRequest_LinkingMode_Linked = ReplaceAllShapesWithSheetsChartRequest_LinkingMode "LINKED"

{-# COMPLETE
  ReplaceAllShapesWithSheetsChartRequest_LinkingMode_NOTLINKEDIMAGE,
  ReplaceAllShapesWithSheetsChartRequest_LinkingMode_Linked,
  ReplaceAllShapesWithSheetsChartRequest_LinkingMode #-}

-- | The replacement method.
newtype ReplaceImageRequest_ImageReplaceMethod = ReplaceImageRequest_ImageReplaceMethod { fromReplaceImageRequest_ImageReplaceMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified image replace method. This value must not be used.
pattern ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED :: ReplaceImageRequest_ImageReplaceMethod
pattern ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED = ReplaceImageRequest_ImageReplaceMethod "IMAGE_REPLACE_METHOD_UNSPECIFIED"

-- | Scales and centers the image to fit within the bounds of the original shape and maintains the image\'s aspect ratio. The rendered size of the image may be smaller than the size of the shape. This is the default method when one is not specified.
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERINSIDE :: ReplaceImageRequest_ImageReplaceMethod
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERINSIDE = ReplaceImageRequest_ImageReplaceMethod "CENTER_INSIDE"

-- | Scales and centers the image to fill the bounds of the original shape. The image may be cropped in order to fill the shape. The rendered size of the image will be the same as the original shape.
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERCROP :: ReplaceImageRequest_ImageReplaceMethod
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERCROP = ReplaceImageRequest_ImageReplaceMethod "CENTER_CROP"

{-# COMPLETE
  ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
  ReplaceImageRequest_ImageReplaceMethod_CENTERINSIDE,
  ReplaceImageRequest_ImageReplaceMethod_CENTERCROP,
  ReplaceImageRequest_ImageReplaceMethod #-}

-- | The alignment point of the shadow, that sets the origin for translate, scale and skew of the shadow. This property is read-only.
newtype Shadow_Alignment = Shadow_Alignment { fromShadow_Alignment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern Shadow_Alignment_RECTANGLEPOSITIONUNSPECIFIED :: Shadow_Alignment
pattern Shadow_Alignment_RECTANGLEPOSITIONUNSPECIFIED = Shadow_Alignment "RECTANGLE_POSITION_UNSPECIFIED"

-- | Top left.
pattern Shadow_Alignment_TOPLEFT :: Shadow_Alignment
pattern Shadow_Alignment_TOPLEFT = Shadow_Alignment "TOP_LEFT"

-- | Top center.
pattern Shadow_Alignment_TOPCENTER :: Shadow_Alignment
pattern Shadow_Alignment_TOPCENTER = Shadow_Alignment "TOP_CENTER"

-- | Top right.
pattern Shadow_Alignment_TOPRIGHT :: Shadow_Alignment
pattern Shadow_Alignment_TOPRIGHT = Shadow_Alignment "TOP_RIGHT"

-- | Left center.
pattern Shadow_Alignment_LEFTCENTER :: Shadow_Alignment
pattern Shadow_Alignment_LEFTCENTER = Shadow_Alignment "LEFT_CENTER"

-- | Center.
pattern Shadow_Alignment_Center :: Shadow_Alignment
pattern Shadow_Alignment_Center = Shadow_Alignment "CENTER"

-- | Right center.
pattern Shadow_Alignment_RIGHTCENTER :: Shadow_Alignment
pattern Shadow_Alignment_RIGHTCENTER = Shadow_Alignment "RIGHT_CENTER"

-- | Bottom left.
pattern Shadow_Alignment_BOTTOMLEFT :: Shadow_Alignment
pattern Shadow_Alignment_BOTTOMLEFT = Shadow_Alignment "BOTTOM_LEFT"

-- | Bottom center.
pattern Shadow_Alignment_BOTTOMCENTER :: Shadow_Alignment
pattern Shadow_Alignment_BOTTOMCENTER = Shadow_Alignment "BOTTOM_CENTER"

-- | Bottom right.
pattern Shadow_Alignment_BOTTOMRIGHT :: Shadow_Alignment
pattern Shadow_Alignment_BOTTOMRIGHT = Shadow_Alignment "BOTTOM_RIGHT"

{-# COMPLETE
  Shadow_Alignment_RECTANGLEPOSITIONUNSPECIFIED,
  Shadow_Alignment_TOPLEFT,
  Shadow_Alignment_TOPCENTER,
  Shadow_Alignment_TOPRIGHT,
  Shadow_Alignment_LEFTCENTER,
  Shadow_Alignment_Center,
  Shadow_Alignment_RIGHTCENTER,
  Shadow_Alignment_BOTTOMLEFT,
  Shadow_Alignment_BOTTOMCENTER,
  Shadow_Alignment_BOTTOMRIGHT,
  Shadow_Alignment #-}

-- | The shadow property state. Updating the shadow on a page element will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no shadow on a page element, set this field to @NOT_RENDERED@. In this case, any other shadow fields set in the same request will be ignored.
newtype Shadow_PropertyState = Shadow_PropertyState { fromShadow_PropertyState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.
pattern Shadow_PropertyState_Rendered :: Shadow_PropertyState
pattern Shadow_PropertyState_Rendered = Shadow_PropertyState "RENDERED"

-- | If a property\'s state is NOT/RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property/state to NOT_RENDERED.
pattern Shadow_PropertyState_NOTRENDERED :: Shadow_PropertyState
pattern Shadow_PropertyState_NOTRENDERED = Shadow_PropertyState "NOT_RENDERED"

-- | If a property\'s state is INHERIT, then the property state uses the value of corresponding @property_state@ field on the parent shape. Elements that do not inherit will never have an INHERIT property state.
pattern Shadow_PropertyState_Inherit :: Shadow_PropertyState
pattern Shadow_PropertyState_Inherit = Shadow_PropertyState "INHERIT"

{-# COMPLETE
  Shadow_PropertyState_Rendered,
  Shadow_PropertyState_NOTRENDERED,
  Shadow_PropertyState_Inherit,
  Shadow_PropertyState #-}

-- | The type of the shadow. This property is read-only.
newtype Shadow_Type = Shadow_Type { fromShadow_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified shadow type.
pattern Shadow_Type_SHADOWTYPEUNSPECIFIED :: Shadow_Type
pattern Shadow_Type_SHADOWTYPEUNSPECIFIED = Shadow_Type "SHADOW_TYPE_UNSPECIFIED"

-- | Outer shadow.
pattern Shadow_Type_Outer :: Shadow_Type
pattern Shadow_Type_Outer = Shadow_Type "OUTER"

{-# COMPLETE
  Shadow_Type_SHADOWTYPEUNSPECIFIED,
  Shadow_Type_Outer,
  Shadow_Type #-}

-- | The type of the shape.
newtype Shape_ShapeType = Shape_ShapeType { fromShape_ShapeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The shape type that is not predefined.
pattern Shape_ShapeType_TYPEUNSPECIFIED :: Shape_ShapeType
pattern Shape_ShapeType_TYPEUNSPECIFIED = Shape_ShapeType "TYPE_UNSPECIFIED"

-- | Text box shape.
pattern Shape_ShapeType_TEXTBOX :: Shape_ShapeType
pattern Shape_ShapeType_TEXTBOX = Shape_ShapeType "TEXT_BOX"

-- | Rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'rect\'.
pattern Shape_ShapeType_Rectangle :: Shape_ShapeType
pattern Shape_ShapeType_Rectangle = Shape_ShapeType "RECTANGLE"

-- | Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'roundRect\'
pattern Shape_ShapeType_ROUNDRECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_ROUNDRECTANGLE = Shape_ShapeType "ROUND_RECTANGLE"

-- | Ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'ellipse\'
pattern Shape_ShapeType_Ellipse :: Shape_ShapeType
pattern Shape_ShapeType_Ellipse = Shape_ShapeType "ELLIPSE"

-- | Curved arc shape. Corresponds to ECMA-376 ST_ShapeType \'arc\'
pattern Shape_ShapeType_Arc :: Shape_ShapeType
pattern Shape_ShapeType_Arc = Shape_ShapeType "ARC"

-- | Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentArrow\'
pattern Shape_ShapeType_BENTARROW :: Shape_ShapeType
pattern Shape_ShapeType_BENTARROW = Shape_ShapeType "BENT_ARROW"

-- | Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentUpArrow\'
pattern Shape_ShapeType_BENTUPARROW :: Shape_ShapeType
pattern Shape_ShapeType_BENTUPARROW = Shape_ShapeType "BENT_UP_ARROW"

-- | Bevel shape. Corresponds to ECMA-376 ST_ShapeType \'bevel\'
pattern Shape_ShapeType_Bevel :: Shape_ShapeType
pattern Shape_ShapeType_Bevel = Shape_ShapeType "BEVEL"

-- | Block arc shape. Corresponds to ECMA-376 ST_ShapeType \'blockArc\'
pattern Shape_ShapeType_BLOCKARC :: Shape_ShapeType
pattern Shape_ShapeType_BLOCKARC = Shape_ShapeType "BLOCK_ARC"

-- | Brace pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracePair\'
pattern Shape_ShapeType_BRACEPAIR :: Shape_ShapeType
pattern Shape_ShapeType_BRACEPAIR = Shape_ShapeType "BRACE_PAIR"

-- | Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracketPair\'
pattern Shape_ShapeType_BRACKETPAIR :: Shape_ShapeType
pattern Shape_ShapeType_BRACKETPAIR = Shape_ShapeType "BRACKET_PAIR"

-- | Can shape. Corresponds to ECMA-376 ST_ShapeType \'can\'
pattern Shape_ShapeType_Can :: Shape_ShapeType
pattern Shape_ShapeType_Can = Shape_ShapeType "CAN"

-- | Chevron shape. Corresponds to ECMA-376 ST_ShapeType \'chevron\'
pattern Shape_ShapeType_Chevron :: Shape_ShapeType
pattern Shape_ShapeType_Chevron = Shape_ShapeType "CHEVRON"

-- | Chord shape. Corresponds to ECMA-376 ST_ShapeType \'chord\'
pattern Shape_ShapeType_Chord :: Shape_ShapeType
pattern Shape_ShapeType_Chord = Shape_ShapeType "CHORD"

-- | Cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloud\'
pattern Shape_ShapeType_Cloud :: Shape_ShapeType
pattern Shape_ShapeType_Cloud = Shape_ShapeType "CLOUD"

-- | Corner shape. Corresponds to ECMA-376 ST_ShapeType \'corner\'
pattern Shape_ShapeType_Corner :: Shape_ShapeType
pattern Shape_ShapeType_Corner = Shape_ShapeType "CORNER"

-- | Cube shape. Corresponds to ECMA-376 ST_ShapeType \'cube\'
pattern Shape_ShapeType_Cube :: Shape_ShapeType
pattern Shape_ShapeType_Cube = Shape_ShapeType "CUBE"

-- | Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedDownArrow\'
pattern Shape_ShapeType_CURVEDDOWNARROW :: Shape_ShapeType
pattern Shape_ShapeType_CURVEDDOWNARROW = Shape_ShapeType "CURVED_DOWN_ARROW"

-- | Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedLeftArrow\'
pattern Shape_ShapeType_CURVEDLEFTARROW :: Shape_ShapeType
pattern Shape_ShapeType_CURVEDLEFTARROW = Shape_ShapeType "CURVED_LEFT_ARROW"

-- | Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedRightArrow\'
pattern Shape_ShapeType_CURVEDRIGHTARROW :: Shape_ShapeType
pattern Shape_ShapeType_CURVEDRIGHTARROW = Shape_ShapeType "CURVED_RIGHT_ARROW"

-- | Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'curvedUpArrow\'
pattern Shape_ShapeType_CURVEDUPARROW :: Shape_ShapeType
pattern Shape_ShapeType_CURVEDUPARROW = Shape_ShapeType "CURVED_UP_ARROW"

-- | Decagon shape. Corresponds to ECMA-376 ST_ShapeType \'decagon\'
pattern Shape_ShapeType_Decagon :: Shape_ShapeType
pattern Shape_ShapeType_Decagon = Shape_ShapeType "DECAGON"

-- | Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType \'diagStripe\'
pattern Shape_ShapeType_DIAGONALSTRIPE :: Shape_ShapeType
pattern Shape_ShapeType_DIAGONALSTRIPE = Shape_ShapeType "DIAGONAL_STRIPE"

-- | Diamond shape. Corresponds to ECMA-376 ST_ShapeType \'diamond\'
pattern Shape_ShapeType_Diamond :: Shape_ShapeType
pattern Shape_ShapeType_Diamond = Shape_ShapeType "DIAMOND"

-- | Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType \'dodecagon\'
pattern Shape_ShapeType_Dodecagon :: Shape_ShapeType
pattern Shape_ShapeType_Dodecagon = Shape_ShapeType "DODECAGON"

-- | Donut shape. Corresponds to ECMA-376 ST_ShapeType \'donut\'
pattern Shape_ShapeType_Donut :: Shape_ShapeType
pattern Shape_ShapeType_Donut = Shape_ShapeType "DONUT"

-- | Double wave shape. Corresponds to ECMA-376 ST_ShapeType \'doubleWave\'
pattern Shape_ShapeType_DOUBLEWAVE :: Shape_ShapeType
pattern Shape_ShapeType_DOUBLEWAVE = Shape_ShapeType "DOUBLE_WAVE"

-- | Down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrow\'
pattern Shape_ShapeType_DOWNARROW :: Shape_ShapeType
pattern Shape_ShapeType_DOWNARROW = Shape_ShapeType "DOWN_ARROW"

-- | Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrowCallout\'
pattern Shape_ShapeType_DOWNARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_DOWNARROWCALLOUT = Shape_ShapeType "DOWN_ARROW_CALLOUT"

-- | Folded corner shape. Corresponds to ECMA-376 ST_ShapeType \'foldedCorner\'
pattern Shape_ShapeType_FOLDEDCORNER :: Shape_ShapeType
pattern Shape_ShapeType_FOLDEDCORNER = Shape_ShapeType "FOLDED_CORNER"

-- | Frame shape. Corresponds to ECMA-376 ST_ShapeType \'frame\'
pattern Shape_ShapeType_Frame :: Shape_ShapeType
pattern Shape_ShapeType_Frame = Shape_ShapeType "FRAME"

-- | Half frame shape. Corresponds to ECMA-376 ST_ShapeType \'halfFrame\'
pattern Shape_ShapeType_HALFFRAME :: Shape_ShapeType
pattern Shape_ShapeType_HALFFRAME = Shape_ShapeType "HALF_FRAME"

-- | Heart shape. Corresponds to ECMA-376 ST_ShapeType \'heart\'
pattern Shape_ShapeType_Heart :: Shape_ShapeType
pattern Shape_ShapeType_Heart = Shape_ShapeType "HEART"

-- | Heptagon shape. Corresponds to ECMA-376 ST_ShapeType \'heptagon\'
pattern Shape_ShapeType_Heptagon :: Shape_ShapeType
pattern Shape_ShapeType_Heptagon = Shape_ShapeType "HEPTAGON"

-- | Hexagon shape. Corresponds to ECMA-376 ST_ShapeType \'hexagon\'
pattern Shape_ShapeType_Hexagon :: Shape_ShapeType
pattern Shape_ShapeType_Hexagon = Shape_ShapeType "HEXAGON"

-- | Home plate shape. Corresponds to ECMA-376 ST_ShapeType \'homePlate\'
pattern Shape_ShapeType_HOMEPLATE :: Shape_ShapeType
pattern Shape_ShapeType_HOMEPLATE = Shape_ShapeType "HOME_PLATE"

-- | Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType \'horizontalScroll\'
pattern Shape_ShapeType_HORIZONTALSCROLL :: Shape_ShapeType
pattern Shape_ShapeType_HORIZONTALSCROLL = Shape_ShapeType "HORIZONTAL_SCROLL"

-- | Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType \'irregularSeal1\'
pattern Shape_ShapeType_IRREGULAR_SEAL_1 :: Shape_ShapeType
pattern Shape_ShapeType_IRREGULAR_SEAL_1 = Shape_ShapeType "IRREGULAR_SEAL_1"

-- | Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType \'irregularSeal2\'
pattern Shape_ShapeType_IRREGULAR_SEAL_2 :: Shape_ShapeType
pattern Shape_ShapeType_IRREGULAR_SEAL_2 = Shape_ShapeType "IRREGULAR_SEAL_2"

-- | Left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrow\'
pattern Shape_ShapeType_LEFTARROW :: Shape_ShapeType
pattern Shape_ShapeType_LEFTARROW = Shape_ShapeType "LEFT_ARROW"

-- | Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrowCallout\'
pattern Shape_ShapeType_LEFTARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_LEFTARROWCALLOUT = Shape_ShapeType "LEFT_ARROW_CALLOUT"

-- | Left brace shape. Corresponds to ECMA-376 ST_ShapeType \'leftBrace\'
pattern Shape_ShapeType_LEFTBRACE :: Shape_ShapeType
pattern Shape_ShapeType_LEFTBRACE = Shape_ShapeType "LEFT_BRACE"

-- | Left bracket shape. Corresponds to ECMA-376 ST_ShapeType \'leftBracket\'
pattern Shape_ShapeType_LEFTBRACKET :: Shape_ShapeType
pattern Shape_ShapeType_LEFTBRACKET = Shape_ShapeType "LEFT_BRACKET"

-- | Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightArrow\'
pattern Shape_ShapeType_LEFTRIGHTARROW :: Shape_ShapeType
pattern Shape_ShapeType_LEFTRIGHTARROW = Shape_ShapeType "LEFT_RIGHT_ARROW"

-- | Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightArrowCallout\'
pattern Shape_ShapeType_LEFTRIGHTARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_LEFTRIGHTARROWCALLOUT = Shape_ShapeType "LEFT_RIGHT_ARROW_CALLOUT"

-- | Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftRightUpArrow\'
pattern Shape_ShapeType_LEFTRIGHTUPARROW :: Shape_ShapeType
pattern Shape_ShapeType_LEFTRIGHTUPARROW = Shape_ShapeType "LEFT_RIGHT_UP_ARROW"

-- | Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftUpArrow\'
pattern Shape_ShapeType_LEFTUPARROW :: Shape_ShapeType
pattern Shape_ShapeType_LEFTUPARROW = Shape_ShapeType "LEFT_UP_ARROW"

-- | Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType \'lightningBolt\'
pattern Shape_ShapeType_LIGHTNINGBOLT :: Shape_ShapeType
pattern Shape_ShapeType_LIGHTNINGBOLT = Shape_ShapeType "LIGHTNING_BOLT"

-- | Divide math shape. Corresponds to ECMA-376 ST_ShapeType \'mathDivide\'
pattern Shape_ShapeType_MATHDIVIDE :: Shape_ShapeType
pattern Shape_ShapeType_MATHDIVIDE = Shape_ShapeType "MATH_DIVIDE"

-- | Equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathEqual\'
pattern Shape_ShapeType_MATHEQUAL :: Shape_ShapeType
pattern Shape_ShapeType_MATHEQUAL = Shape_ShapeType "MATH_EQUAL"

-- | Minus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMinus\'
pattern Shape_ShapeType_MATHMINUS :: Shape_ShapeType
pattern Shape_ShapeType_MATHMINUS = Shape_ShapeType "MATH_MINUS"

-- | Multiply math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMultiply\'
pattern Shape_ShapeType_MATHMULTIPLY :: Shape_ShapeType
pattern Shape_ShapeType_MATHMULTIPLY = Shape_ShapeType "MATH_MULTIPLY"

-- | Not equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathNotEqual\'
pattern Shape_ShapeType_MATHNOTEQUAL :: Shape_ShapeType
pattern Shape_ShapeType_MATHNOTEQUAL = Shape_ShapeType "MATH_NOT_EQUAL"

-- | Plus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathPlus\'
pattern Shape_ShapeType_MATHPLUS :: Shape_ShapeType
pattern Shape_ShapeType_MATHPLUS = Shape_ShapeType "MATH_PLUS"

-- | Moon shape. Corresponds to ECMA-376 ST_ShapeType \'moon\'
pattern Shape_ShapeType_Moon :: Shape_ShapeType
pattern Shape_ShapeType_Moon = Shape_ShapeType "MOON"

-- | No smoking shape. Corresponds to ECMA-376 ST_ShapeType \'noSmoking\'
pattern Shape_ShapeType_NOSMOKING :: Shape_ShapeType
pattern Shape_ShapeType_NOSMOKING = Shape_ShapeType "NO_SMOKING"

-- | Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'notchedRightArrow\'
pattern Shape_ShapeType_NOTCHEDRIGHTARROW :: Shape_ShapeType
pattern Shape_ShapeType_NOTCHEDRIGHTARROW = Shape_ShapeType "NOTCHED_RIGHT_ARROW"

-- | Octagon shape. Corresponds to ECMA-376 ST_ShapeType \'octagon\'
pattern Shape_ShapeType_Octagon :: Shape_ShapeType
pattern Shape_ShapeType_Octagon = Shape_ShapeType "OCTAGON"

-- | Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType \'parallelogram\'
pattern Shape_ShapeType_Parallelogram :: Shape_ShapeType
pattern Shape_ShapeType_Parallelogram = Shape_ShapeType "PARALLELOGRAM"

-- | Pentagon shape. Corresponds to ECMA-376 ST_ShapeType \'pentagon\'
pattern Shape_ShapeType_Pentagon :: Shape_ShapeType
pattern Shape_ShapeType_Pentagon = Shape_ShapeType "PENTAGON"

-- | Pie shape. Corresponds to ECMA-376 ST_ShapeType \'pie\'
pattern Shape_ShapeType_Pie :: Shape_ShapeType
pattern Shape_ShapeType_Pie = Shape_ShapeType "PIE"

-- | Plaque shape. Corresponds to ECMA-376 ST_ShapeType \'plaque\'
pattern Shape_ShapeType_Plaque :: Shape_ShapeType
pattern Shape_ShapeType_Plaque = Shape_ShapeType "PLAQUE"

-- | Plus shape. Corresponds to ECMA-376 ST_ShapeType \'plus\'
pattern Shape_ShapeType_Plus :: Shape_ShapeType
pattern Shape_ShapeType_Plus = Shape_ShapeType "PLUS"

-- | Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrow\'
pattern Shape_ShapeType_QUADARROW :: Shape_ShapeType
pattern Shape_ShapeType_QUADARROW = Shape_ShapeType "QUAD_ARROW"

-- | Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrowCallout\'
pattern Shape_ShapeType_QUADARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_QUADARROWCALLOUT = Shape_ShapeType "QUAD_ARROW_CALLOUT"

-- | Ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon\'
pattern Shape_ShapeType_Ribbon :: Shape_ShapeType
pattern Shape_ShapeType_Ribbon = Shape_ShapeType "RIBBON"

-- | Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon2\'
pattern Shape_ShapeType_RIBBON_2 :: Shape_ShapeType
pattern Shape_ShapeType_RIBBON_2 = Shape_ShapeType "RIBBON_2"

-- | Right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrow\'
pattern Shape_ShapeType_RIGHTARROW :: Shape_ShapeType
pattern Shape_ShapeType_RIGHTARROW = Shape_ShapeType "RIGHT_ARROW"

-- | Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrowCallout\'
pattern Shape_ShapeType_RIGHTARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_RIGHTARROWCALLOUT = Shape_ShapeType "RIGHT_ARROW_CALLOUT"

-- | Right brace shape. Corresponds to ECMA-376 ST_ShapeType \'rightBrace\'
pattern Shape_ShapeType_RIGHTBRACE :: Shape_ShapeType
pattern Shape_ShapeType_RIGHTBRACE = Shape_ShapeType "RIGHT_BRACE"

-- | Right bracket shape. Corresponds to ECMA-376 ST_ShapeType \'rightBracket\'
pattern Shape_ShapeType_RIGHTBRACKET :: Shape_ShapeType
pattern Shape_ShapeType_RIGHTBRACKET = Shape_ShapeType "RIGHT_BRACKET"

-- | One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round1Rect\'
pattern Shape_ShapeType_ROUND1RECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_ROUND1RECTANGLE = Shape_ShapeType "ROUND_1_RECTANGLE"

-- | Two diagonal round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round2DiagRect\'
pattern Shape_ShapeType_ROUND2DIAGONALRECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_ROUND2DIAGONALRECTANGLE = Shape_ShapeType "ROUND_2_DIAGONAL_RECTANGLE"

-- | Two same-side round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'round2SameRect\'
pattern Shape_ShapeType_ROUND2SAMERECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_ROUND2SAMERECTANGLE = Shape_ShapeType "ROUND_2_SAME_RECTANGLE"

-- | Right triangle shape. Corresponds to ECMA-376 ST_ShapeType \'rtTriangle\'
pattern Shape_ShapeType_RIGHTTRIANGLE :: Shape_ShapeType
pattern Shape_ShapeType_RIGHTTRIANGLE = Shape_ShapeType "RIGHT_TRIANGLE"

-- | Smiley face shape. Corresponds to ECMA-376 ST_ShapeType \'smileyFace\'
pattern Shape_ShapeType_SMILEYFACE :: Shape_ShapeType
pattern Shape_ShapeType_SMILEYFACE = Shape_ShapeType "SMILEY_FACE"

-- | One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip1Rect\'
pattern Shape_ShapeType_SNIP1RECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_SNIP1RECTANGLE = Shape_ShapeType "SNIP_1_RECTANGLE"

-- | Two diagonal snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip2DiagRect\'
pattern Shape_ShapeType_SNIP2DIAGONALRECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_SNIP2DIAGONALRECTANGLE = Shape_ShapeType "SNIP_2_DIAGONAL_RECTANGLE"

-- | Two same-side snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snip2SameRect\'
pattern Shape_ShapeType_SNIP2SAMERECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_SNIP2SAMERECTANGLE = Shape_ShapeType "SNIP_2_SAME_RECTANGLE"

-- | One snip one round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'snipRoundRect\'
pattern Shape_ShapeType_SNIPROUNDRECTANGLE :: Shape_ShapeType
pattern Shape_ShapeType_SNIPROUNDRECTANGLE = Shape_ShapeType "SNIP_ROUND_RECTANGLE"

-- | Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star10\'
pattern Shape_ShapeType_STAR_10 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_10 = Shape_ShapeType "STAR_10"

-- | Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star12\'
pattern Shape_ShapeType_STAR_12 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_12 = Shape_ShapeType "STAR_12"

-- | Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star16\'
pattern Shape_ShapeType_STAR_16 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_16 = Shape_ShapeType "STAR_16"

-- | Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star24\'
pattern Shape_ShapeType_STAR_24 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_24 = Shape_ShapeType "STAR_24"

-- | Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star32\'
pattern Shape_ShapeType_STAR_32 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_32 = Shape_ShapeType "STAR_32"

-- | Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star4\'
pattern Shape_ShapeType_STAR_4 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_4 = Shape_ShapeType "STAR_4"

-- | Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star5\'
pattern Shape_ShapeType_STAR_5 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_5 = Shape_ShapeType "STAR_5"

-- | Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star6\'
pattern Shape_ShapeType_STAR_6 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_6 = Shape_ShapeType "STAR_6"

-- | Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star7\'
pattern Shape_ShapeType_STAR_7 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_7 = Shape_ShapeType "STAR_7"

-- | Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star8\'
pattern Shape_ShapeType_STAR_8 :: Shape_ShapeType
pattern Shape_ShapeType_STAR_8 = Shape_ShapeType "STAR_8"

-- | Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'stripedRightArrow\'
pattern Shape_ShapeType_STRIPEDRIGHTARROW :: Shape_ShapeType
pattern Shape_ShapeType_STRIPEDRIGHTARROW = Shape_ShapeType "STRIPED_RIGHT_ARROW"

-- | Sun shape. Corresponds to ECMA-376 ST_ShapeType \'sun\'
pattern Shape_ShapeType_Sun :: Shape_ShapeType
pattern Shape_ShapeType_Sun = Shape_ShapeType "SUN"

-- | Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType \'trapezoid\'
pattern Shape_ShapeType_Trapezoid :: Shape_ShapeType
pattern Shape_ShapeType_Trapezoid = Shape_ShapeType "TRAPEZOID"

-- | Triangle shape. Corresponds to ECMA-376 ST_ShapeType \'triangle\'
pattern Shape_ShapeType_Triangle :: Shape_ShapeType
pattern Shape_ShapeType_Triangle = Shape_ShapeType "TRIANGLE"

-- | Up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrow\'
pattern Shape_ShapeType_UPARROW :: Shape_ShapeType
pattern Shape_ShapeType_UPARROW = Shape_ShapeType "UP_ARROW"

-- | Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrowCallout\'
pattern Shape_ShapeType_UPARROWCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_UPARROWCALLOUT = Shape_ShapeType "UP_ARROW_CALLOUT"

-- | Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upDownArrow\'
pattern Shape_ShapeType_UPDOWNARROW :: Shape_ShapeType
pattern Shape_ShapeType_UPDOWNARROW = Shape_ShapeType "UP_DOWN_ARROW"

-- | U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType \'uturnArrow\'
pattern Shape_ShapeType_UTURNARROW :: Shape_ShapeType
pattern Shape_ShapeType_UTURNARROW = Shape_ShapeType "UTURN_ARROW"

-- | Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType \'verticalScroll\'
pattern Shape_ShapeType_VERTICALSCROLL :: Shape_ShapeType
pattern Shape_ShapeType_VERTICALSCROLL = Shape_ShapeType "VERTICAL_SCROLL"

-- | Wave shape. Corresponds to ECMA-376 ST_ShapeType \'wave\'
pattern Shape_ShapeType_Wave :: Shape_ShapeType
pattern Shape_ShapeType_Wave = Shape_ShapeType "WAVE"

-- | Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeEllipseCallout\'
pattern Shape_ShapeType_WEDGEELLIPSECALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_WEDGEELLIPSECALLOUT = Shape_ShapeType "WEDGE_ELLIPSE_CALLOUT"

-- | Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeRectCallout\'
pattern Shape_ShapeType_WEDGERECTANGLECALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_WEDGERECTANGLECALLOUT = Shape_ShapeType "WEDGE_RECTANGLE_CALLOUT"

-- | Callout wedge round rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'wedgeRoundRectCallout\'
pattern Shape_ShapeType_WEDGEROUNDRECTANGLECALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_WEDGEROUNDRECTANGLECALLOUT = Shape_ShapeType "WEDGE_ROUND_RECTANGLE_CALLOUT"

-- | Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartAlternateProcess\'
pattern Shape_ShapeType_FLOWCHARTALTERNATEPROCESS :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTALTERNATEPROCESS = Shape_ShapeType "FLOW_CHART_ALTERNATE_PROCESS"

-- | Collate flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartCollate\'
pattern Shape_ShapeType_FLOWCHARTCOLLATE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTCOLLATE = Shape_ShapeType "FLOW_CHART_COLLATE"

-- | Connector flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartConnector\'
pattern Shape_ShapeType_FLOWCHARTCONNECTOR :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTCONNECTOR = Shape_ShapeType "FLOW_CHART_CONNECTOR"

-- | Decision flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDecision\'
pattern Shape_ShapeType_FLOWCHARTDECISION :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTDECISION = Shape_ShapeType "FLOW_CHART_DECISION"

-- | Delay flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDelay\'
pattern Shape_ShapeType_FLOWCHARTDELAY :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTDELAY = Shape_ShapeType "FLOW_CHART_DELAY"

-- | Display flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDisplay\'
pattern Shape_ShapeType_FLOWCHARTDISPLAY :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTDISPLAY = Shape_ShapeType "FLOW_CHART_DISPLAY"

-- | Document flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartDocument\'
pattern Shape_ShapeType_FLOWCHARTDOCUMENT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTDOCUMENT = Shape_ShapeType "FLOW_CHART_DOCUMENT"

-- | Extract flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartExtract\'
pattern Shape_ShapeType_FLOWCHARTEXTRACT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTEXTRACT = Shape_ShapeType "FLOW_CHART_EXTRACT"

-- | Input output flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartInputOutput\'
pattern Shape_ShapeType_FLOWCHARTINPUTOUTPUT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTINPUTOUTPUT = Shape_ShapeType "FLOW_CHART_INPUT_OUTPUT"

-- | Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartInternalStorage\'
pattern Shape_ShapeType_FLOWCHARTINTERNALSTORAGE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTINTERNALSTORAGE = Shape_ShapeType "FLOW_CHART_INTERNAL_STORAGE"

-- | Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticDisk\'
pattern Shape_ShapeType_FLOWCHARTMAGNETICDISK :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMAGNETICDISK = Shape_ShapeType "FLOW_CHART_MAGNETIC_DISK"

-- | Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticDrum\'
pattern Shape_ShapeType_FLOWCHARTMAGNETICDRUM :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMAGNETICDRUM = Shape_ShapeType "FLOW_CHART_MAGNETIC_DRUM"

-- | Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMagneticTape\'
pattern Shape_ShapeType_FLOWCHARTMAGNETICTAPE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMAGNETICTAPE = Shape_ShapeType "FLOW_CHART_MAGNETIC_TAPE"

-- | Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartManualInput\'
pattern Shape_ShapeType_FLOWCHARTMANUALINPUT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMANUALINPUT = Shape_ShapeType "FLOW_CHART_MANUAL_INPUT"

-- | Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartManualOperation\'
pattern Shape_ShapeType_FLOWCHARTMANUALOPERATION :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMANUALOPERATION = Shape_ShapeType "FLOW_CHART_MANUAL_OPERATION"

-- | Merge flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMerge\'
pattern Shape_ShapeType_FLOWCHARTMERGE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMERGE = Shape_ShapeType "FLOW_CHART_MERGE"

-- | Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartMultidocument\'
pattern Shape_ShapeType_FLOWCHARTMULTIDOCUMENT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTMULTIDOCUMENT = Shape_ShapeType "FLOW_CHART_MULTIDOCUMENT"

-- | Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOfflineStorage\'
pattern Shape_ShapeType_FLOWCHARTOFFLINESTORAGE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTOFFLINESTORAGE = Shape_ShapeType "FLOW_CHART_OFFLINE_STORAGE"

-- | Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOffpageConnector\'
pattern Shape_ShapeType_FLOWCHARTOFFPAGECONNECTOR :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTOFFPAGECONNECTOR = Shape_ShapeType "FLOW_CHART_OFFPAGE_CONNECTOR"

-- | Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOnlineStorage\'
pattern Shape_ShapeType_FLOWCHARTONLINESTORAGE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTONLINESTORAGE = Shape_ShapeType "FLOW_CHART_ONLINE_STORAGE"

-- | Or flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOr\'
pattern Shape_ShapeType_FLOWCHARTOR :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTOR = Shape_ShapeType "FLOW_CHART_OR"

-- | Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPredefinedProcess\'
pattern Shape_ShapeType_FLOWCHARTPREDEFINEDPROCESS :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTPREDEFINEDPROCESS = Shape_ShapeType "FLOW_CHART_PREDEFINED_PROCESS"

-- | Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPreparation\'
pattern Shape_ShapeType_FLOWCHARTPREPARATION :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTPREPARATION = Shape_ShapeType "FLOW_CHART_PREPARATION"

-- | Process flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartProcess\'
pattern Shape_ShapeType_FLOWCHARTPROCESS :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTPROCESS = Shape_ShapeType "FLOW_CHART_PROCESS"

-- | Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPunchedCard\'
pattern Shape_ShapeType_FLOWCHARTPUNCHEDCARD :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTPUNCHEDCARD = Shape_ShapeType "FLOW_CHART_PUNCHED_CARD"

-- | Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartPunchedTape\'
pattern Shape_ShapeType_FLOWCHARTPUNCHEDTAPE :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTPUNCHEDTAPE = Shape_ShapeType "FLOW_CHART_PUNCHED_TAPE"

-- | Sort flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSort\'
pattern Shape_ShapeType_FLOWCHARTSORT :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTSORT = Shape_ShapeType "FLOW_CHART_SORT"

-- | Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSummingJunction\'
pattern Shape_ShapeType_FLOWCHARTSUMMINGJUNCTION :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTSUMMINGJUNCTION = Shape_ShapeType "FLOW_CHART_SUMMING_JUNCTION"

-- | Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartTerminator\'
pattern Shape_ShapeType_FLOWCHARTTERMINATOR :: Shape_ShapeType
pattern Shape_ShapeType_FLOWCHARTTERMINATOR = Shape_ShapeType "FLOW_CHART_TERMINATOR"

-- | East arrow shape.
pattern Shape_ShapeType_ARROWEAST :: Shape_ShapeType
pattern Shape_ShapeType_ARROWEAST = Shape_ShapeType "ARROW_EAST"

-- | Northeast arrow shape.
pattern Shape_ShapeType_ARROWNORTHEAST :: Shape_ShapeType
pattern Shape_ShapeType_ARROWNORTHEAST = Shape_ShapeType "ARROW_NORTH_EAST"

-- | North arrow shape.
pattern Shape_ShapeType_ARROWNORTH :: Shape_ShapeType
pattern Shape_ShapeType_ARROWNORTH = Shape_ShapeType "ARROW_NORTH"

-- | Speech shape.
pattern Shape_ShapeType_Speech :: Shape_ShapeType
pattern Shape_ShapeType_Speech = Shape_ShapeType "SPEECH"

-- | Star burst shape.
pattern Shape_ShapeType_Starburst :: Shape_ShapeType
pattern Shape_ShapeType_Starburst = Shape_ShapeType "STARBURST"

-- | Teardrop shape. Corresponds to ECMA-376 ST_ShapeType \'teardrop\'
pattern Shape_ShapeType_Teardrop :: Shape_ShapeType
pattern Shape_ShapeType_Teardrop = Shape_ShapeType "TEARDROP"

-- | Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ellipseRibbon\'
pattern Shape_ShapeType_ELLIPSERIBBON :: Shape_ShapeType
pattern Shape_ShapeType_ELLIPSERIBBON = Shape_ShapeType "ELLIPSE_RIBBON"

-- | Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ellipseRibbon2\'
pattern Shape_ShapeType_ELLIPSE_RIBBON_2 :: Shape_ShapeType
pattern Shape_ShapeType_ELLIPSE_RIBBON_2 = Shape_ShapeType "ELLIPSE_RIBBON_2"

-- | Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloudCallout\'
pattern Shape_ShapeType_CLOUDCALLOUT :: Shape_ShapeType
pattern Shape_ShapeType_CLOUDCALLOUT = Shape_ShapeType "CLOUD_CALLOUT"

-- | Custom shape.
pattern Shape_ShapeType_Custom :: Shape_ShapeType
pattern Shape_ShapeType_Custom = Shape_ShapeType "CUSTOM"

{-# COMPLETE
  Shape_ShapeType_TYPEUNSPECIFIED,
  Shape_ShapeType_TEXTBOX,
  Shape_ShapeType_Rectangle,
  Shape_ShapeType_ROUNDRECTANGLE,
  Shape_ShapeType_Ellipse,
  Shape_ShapeType_Arc,
  Shape_ShapeType_BENTARROW,
  Shape_ShapeType_BENTUPARROW,
  Shape_ShapeType_Bevel,
  Shape_ShapeType_BLOCKARC,
  Shape_ShapeType_BRACEPAIR,
  Shape_ShapeType_BRACKETPAIR,
  Shape_ShapeType_Can,
  Shape_ShapeType_Chevron,
  Shape_ShapeType_Chord,
  Shape_ShapeType_Cloud,
  Shape_ShapeType_Corner,
  Shape_ShapeType_Cube,
  Shape_ShapeType_CURVEDDOWNARROW,
  Shape_ShapeType_CURVEDLEFTARROW,
  Shape_ShapeType_CURVEDRIGHTARROW,
  Shape_ShapeType_CURVEDUPARROW,
  Shape_ShapeType_Decagon,
  Shape_ShapeType_DIAGONALSTRIPE,
  Shape_ShapeType_Diamond,
  Shape_ShapeType_Dodecagon,
  Shape_ShapeType_Donut,
  Shape_ShapeType_DOUBLEWAVE,
  Shape_ShapeType_DOWNARROW,
  Shape_ShapeType_DOWNARROWCALLOUT,
  Shape_ShapeType_FOLDEDCORNER,
  Shape_ShapeType_Frame,
  Shape_ShapeType_HALFFRAME,
  Shape_ShapeType_Heart,
  Shape_ShapeType_Heptagon,
  Shape_ShapeType_Hexagon,
  Shape_ShapeType_HOMEPLATE,
  Shape_ShapeType_HORIZONTALSCROLL,
  Shape_ShapeType_IRREGULAR_SEAL_1,
  Shape_ShapeType_IRREGULAR_SEAL_2,
  Shape_ShapeType_LEFTARROW,
  Shape_ShapeType_LEFTARROWCALLOUT,
  Shape_ShapeType_LEFTBRACE,
  Shape_ShapeType_LEFTBRACKET,
  Shape_ShapeType_LEFTRIGHTARROW,
  Shape_ShapeType_LEFTRIGHTARROWCALLOUT,
  Shape_ShapeType_LEFTRIGHTUPARROW,
  Shape_ShapeType_LEFTUPARROW,
  Shape_ShapeType_LIGHTNINGBOLT,
  Shape_ShapeType_MATHDIVIDE,
  Shape_ShapeType_MATHEQUAL,
  Shape_ShapeType_MATHMINUS,
  Shape_ShapeType_MATHMULTIPLY,
  Shape_ShapeType_MATHNOTEQUAL,
  Shape_ShapeType_MATHPLUS,
  Shape_ShapeType_Moon,
  Shape_ShapeType_NOSMOKING,
  Shape_ShapeType_NOTCHEDRIGHTARROW,
  Shape_ShapeType_Octagon,
  Shape_ShapeType_Parallelogram,
  Shape_ShapeType_Pentagon,
  Shape_ShapeType_Pie,
  Shape_ShapeType_Plaque,
  Shape_ShapeType_Plus,
  Shape_ShapeType_QUADARROW,
  Shape_ShapeType_QUADARROWCALLOUT,
  Shape_ShapeType_Ribbon,
  Shape_ShapeType_RIBBON_2,
  Shape_ShapeType_RIGHTARROW,
  Shape_ShapeType_RIGHTARROWCALLOUT,
  Shape_ShapeType_RIGHTBRACE,
  Shape_ShapeType_RIGHTBRACKET,
  Shape_ShapeType_ROUND1RECTANGLE,
  Shape_ShapeType_ROUND2DIAGONALRECTANGLE,
  Shape_ShapeType_ROUND2SAMERECTANGLE,
  Shape_ShapeType_RIGHTTRIANGLE,
  Shape_ShapeType_SMILEYFACE,
  Shape_ShapeType_SNIP1RECTANGLE,
  Shape_ShapeType_SNIP2DIAGONALRECTANGLE,
  Shape_ShapeType_SNIP2SAMERECTANGLE,
  Shape_ShapeType_SNIPROUNDRECTANGLE,
  Shape_ShapeType_STAR_10,
  Shape_ShapeType_STAR_12,
  Shape_ShapeType_STAR_16,
  Shape_ShapeType_STAR_24,
  Shape_ShapeType_STAR_32,
  Shape_ShapeType_STAR_4,
  Shape_ShapeType_STAR_5,
  Shape_ShapeType_STAR_6,
  Shape_ShapeType_STAR_7,
  Shape_ShapeType_STAR_8,
  Shape_ShapeType_STRIPEDRIGHTARROW,
  Shape_ShapeType_Sun,
  Shape_ShapeType_Trapezoid,
  Shape_ShapeType_Triangle,
  Shape_ShapeType_UPARROW,
  Shape_ShapeType_UPARROWCALLOUT,
  Shape_ShapeType_UPDOWNARROW,
  Shape_ShapeType_UTURNARROW,
  Shape_ShapeType_VERTICALSCROLL,
  Shape_ShapeType_Wave,
  Shape_ShapeType_WEDGEELLIPSECALLOUT,
  Shape_ShapeType_WEDGERECTANGLECALLOUT,
  Shape_ShapeType_WEDGEROUNDRECTANGLECALLOUT,
  Shape_ShapeType_FLOWCHARTALTERNATEPROCESS,
  Shape_ShapeType_FLOWCHARTCOLLATE,
  Shape_ShapeType_FLOWCHARTCONNECTOR,
  Shape_ShapeType_FLOWCHARTDECISION,
  Shape_ShapeType_FLOWCHARTDELAY,
  Shape_ShapeType_FLOWCHARTDISPLAY,
  Shape_ShapeType_FLOWCHARTDOCUMENT,
  Shape_ShapeType_FLOWCHARTEXTRACT,
  Shape_ShapeType_FLOWCHARTINPUTOUTPUT,
  Shape_ShapeType_FLOWCHARTINTERNALSTORAGE,
  Shape_ShapeType_FLOWCHARTMAGNETICDISK,
  Shape_ShapeType_FLOWCHARTMAGNETICDRUM,
  Shape_ShapeType_FLOWCHARTMAGNETICTAPE,
  Shape_ShapeType_FLOWCHARTMANUALINPUT,
  Shape_ShapeType_FLOWCHARTMANUALOPERATION,
  Shape_ShapeType_FLOWCHARTMERGE,
  Shape_ShapeType_FLOWCHARTMULTIDOCUMENT,
  Shape_ShapeType_FLOWCHARTOFFLINESTORAGE,
  Shape_ShapeType_FLOWCHARTOFFPAGECONNECTOR,
  Shape_ShapeType_FLOWCHARTONLINESTORAGE,
  Shape_ShapeType_FLOWCHARTOR,
  Shape_ShapeType_FLOWCHARTPREDEFINEDPROCESS,
  Shape_ShapeType_FLOWCHARTPREPARATION,
  Shape_ShapeType_FLOWCHARTPROCESS,
  Shape_ShapeType_FLOWCHARTPUNCHEDCARD,
  Shape_ShapeType_FLOWCHARTPUNCHEDTAPE,
  Shape_ShapeType_FLOWCHARTSORT,
  Shape_ShapeType_FLOWCHARTSUMMINGJUNCTION,
  Shape_ShapeType_FLOWCHARTTERMINATOR,
  Shape_ShapeType_ARROWEAST,
  Shape_ShapeType_ARROWNORTHEAST,
  Shape_ShapeType_ARROWNORTH,
  Shape_ShapeType_Speech,
  Shape_ShapeType_Starburst,
  Shape_ShapeType_Teardrop,
  Shape_ShapeType_ELLIPSERIBBON,
  Shape_ShapeType_ELLIPSE_RIBBON_2,
  Shape_ShapeType_CLOUDCALLOUT,
  Shape_ShapeType_Custom,
  Shape_ShapeType #-}

-- | The background fill property state. Updating the fill on a shape will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a shape, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
newtype ShapeBackgroundFill_PropertyState = ShapeBackgroundFill_PropertyState { fromShapeBackgroundFill_PropertyState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.
pattern ShapeBackgroundFill_PropertyState_Rendered :: ShapeBackgroundFill_PropertyState
pattern ShapeBackgroundFill_PropertyState_Rendered = ShapeBackgroundFill_PropertyState "RENDERED"

-- | If a property\'s state is NOT/RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property/state to NOT_RENDERED.
pattern ShapeBackgroundFill_PropertyState_NOTRENDERED :: ShapeBackgroundFill_PropertyState
pattern ShapeBackgroundFill_PropertyState_NOTRENDERED = ShapeBackgroundFill_PropertyState "NOT_RENDERED"

-- | If a property\'s state is INHERIT, then the property state uses the value of corresponding @property_state@ field on the parent shape. Elements that do not inherit will never have an INHERIT property state.
pattern ShapeBackgroundFill_PropertyState_Inherit :: ShapeBackgroundFill_PropertyState
pattern ShapeBackgroundFill_PropertyState_Inherit = ShapeBackgroundFill_PropertyState "INHERIT"

{-# COMPLETE
  ShapeBackgroundFill_PropertyState_Rendered,
  ShapeBackgroundFill_PropertyState_NOTRENDERED,
  ShapeBackgroundFill_PropertyState_Inherit,
  ShapeBackgroundFill_PropertyState #-}

-- | The alignment of the content in the shape. If unspecified, the alignment is inherited from a parent placeholder if it exists. If the shape has no parent, the default alignment matches the alignment for new shapes created in the Slides editor.
newtype ShapeProperties_ContentAlignment = ShapeProperties_ContentAlignment { fromShapeProperties_ContentAlignment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified content alignment. The content alignment is inherited from the parent if it exists.
pattern ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED :: ShapeProperties_ContentAlignment
pattern ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED = ShapeProperties_ContentAlignment "CONTENT_ALIGNMENT_UNSPECIFIED"

-- | An unsupported content alignment.
pattern ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED :: ShapeProperties_ContentAlignment
pattern ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED = ShapeProperties_ContentAlignment "CONTENT_ALIGNMENT_UNSUPPORTED"

-- | An alignment that aligns the content to the top of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'t\'.
pattern ShapeProperties_ContentAlignment_Top :: ShapeProperties_ContentAlignment
pattern ShapeProperties_ContentAlignment_Top = ShapeProperties_ContentAlignment "TOP"

-- | An alignment that aligns the content to the middle of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'ctr\'.
pattern ShapeProperties_ContentAlignment_Middle :: ShapeProperties_ContentAlignment
pattern ShapeProperties_ContentAlignment_Middle = ShapeProperties_ContentAlignment "MIDDLE"

-- | An alignment that aligns the content to the bottom of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'b\'.
pattern ShapeProperties_ContentAlignment_Bottom :: ShapeProperties_ContentAlignment
pattern ShapeProperties_ContentAlignment_Bottom = ShapeProperties_ContentAlignment "BOTTOM"

{-# COMPLETE
  ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
  ShapeProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
  ShapeProperties_ContentAlignment_Top,
  ShapeProperties_ContentAlignment_Middle,
  ShapeProperties_ContentAlignment_Bottom,
  ShapeProperties_ContentAlignment #-}

-- | The dash style of the border.
newtype TableBorderProperties_DashStyle = TableBorderProperties_DashStyle { fromTableBorderProperties_DashStyle :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified dash style.
pattern TableBorderProperties_DashStyle_DASHSTYLEUNSPECIFIED :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_DASHSTYLEUNSPECIFIED = TableBorderProperties_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern TableBorderProperties_DashStyle_Solid :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_Solid = TableBorderProperties_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern TableBorderProperties_DashStyle_Dot :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_Dot = TableBorderProperties_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern TableBorderProperties_DashStyle_Dash :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_Dash = TableBorderProperties_DashStyle "DASH"

-- | Alternating dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dashDot\'.
pattern TableBorderProperties_DashStyle_DASHDOT :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_DASHDOT = TableBorderProperties_DashStyle "DASH_DOT"

-- | Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDash\'.
pattern TableBorderProperties_DashStyle_LONGDASH :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_LONGDASH = TableBorderProperties_DashStyle "LONG_DASH"

-- | Alternating large dashes and dots. Corresponds to ECMA-376 ST_PresetLineDashVal value \'lgDashDot\'.
pattern TableBorderProperties_DashStyle_LONGDASHDOT :: TableBorderProperties_DashStyle
pattern TableBorderProperties_DashStyle_LONGDASHDOT = TableBorderProperties_DashStyle "LONG_DASH_DOT"

{-# COMPLETE
  TableBorderProperties_DashStyle_DASHSTYLEUNSPECIFIED,
  TableBorderProperties_DashStyle_Solid,
  TableBorderProperties_DashStyle_Dot,
  TableBorderProperties_DashStyle_Dash,
  TableBorderProperties_DashStyle_DASHDOT,
  TableBorderProperties_DashStyle_LONGDASH,
  TableBorderProperties_DashStyle_LONGDASHDOT,
  TableBorderProperties_DashStyle #-}

-- | The background fill property state. Updating the fill on a table cell will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a table cell, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
newtype TableCellBackgroundFill_PropertyState = TableCellBackgroundFill_PropertyState { fromTableCellBackgroundFill_PropertyState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered on a page. If the element is a placeholder shape as determined by the placeholder field, and it inherits from a placeholder shape, the corresponding field may be unset, meaning that the property value is inherited from a parent placeholder. If the element does not inherit, then the field will contain the rendered value. This is the default value.
pattern TableCellBackgroundFill_PropertyState_Rendered :: TableCellBackgroundFill_PropertyState
pattern TableCellBackgroundFill_PropertyState_Rendered = TableCellBackgroundFill_PropertyState "RENDERED"

-- | If a property\'s state is NOT/RENDERED, then the element does not have the corresponding property when rendered on a page. However, the field may still be set so it can be inherited by child shapes. To remove a property from a rendered element, set its property/state to NOT_RENDERED.
pattern TableCellBackgroundFill_PropertyState_NOTRENDERED :: TableCellBackgroundFill_PropertyState
pattern TableCellBackgroundFill_PropertyState_NOTRENDERED = TableCellBackgroundFill_PropertyState "NOT_RENDERED"

-- | If a property\'s state is INHERIT, then the property state uses the value of corresponding @property_state@ field on the parent shape. Elements that do not inherit will never have an INHERIT property state.
pattern TableCellBackgroundFill_PropertyState_Inherit :: TableCellBackgroundFill_PropertyState
pattern TableCellBackgroundFill_PropertyState_Inherit = TableCellBackgroundFill_PropertyState "INHERIT"

{-# COMPLETE
  TableCellBackgroundFill_PropertyState_Rendered,
  TableCellBackgroundFill_PropertyState_NOTRENDERED,
  TableCellBackgroundFill_PropertyState_Inherit,
  TableCellBackgroundFill_PropertyState #-}

-- | The alignment of the content in the table cell. The default alignment matches the alignment for newly created table cells in the Slides editor.
newtype TableCellProperties_ContentAlignment = TableCellProperties_ContentAlignment { fromTableCellProperties_ContentAlignment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | An unspecified content alignment. The content alignment is inherited from the parent if it exists.
pattern TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED :: TableCellProperties_ContentAlignment
pattern TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED = TableCellProperties_ContentAlignment "CONTENT_ALIGNMENT_UNSPECIFIED"

-- | An unsupported content alignment.
pattern TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED :: TableCellProperties_ContentAlignment
pattern TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED = TableCellProperties_ContentAlignment "CONTENT_ALIGNMENT_UNSUPPORTED"

-- | An alignment that aligns the content to the top of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'t\'.
pattern TableCellProperties_ContentAlignment_Top :: TableCellProperties_ContentAlignment
pattern TableCellProperties_ContentAlignment_Top = TableCellProperties_ContentAlignment "TOP"

-- | An alignment that aligns the content to the middle of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'ctr\'.
pattern TableCellProperties_ContentAlignment_Middle :: TableCellProperties_ContentAlignment
pattern TableCellProperties_ContentAlignment_Middle = TableCellProperties_ContentAlignment "MIDDLE"

-- | An alignment that aligns the content to the bottom of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'b\'.
pattern TableCellProperties_ContentAlignment_Bottom :: TableCellProperties_ContentAlignment
pattern TableCellProperties_ContentAlignment_Bottom = TableCellProperties_ContentAlignment "BOTTOM"

{-# COMPLETE
  TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
  TableCellProperties_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
  TableCellProperties_ContentAlignment_Top,
  TableCellProperties_ContentAlignment_Middle,
  TableCellProperties_ContentAlignment_Bottom,
  TableCellProperties_ContentAlignment #-}

-- | The text\'s vertical offset from its normal position. Text with @SUPERSCRIPT@ or @SUBSCRIPT@ baseline offsets is automatically rendered in a smaller font size, computed based on the @font_size@ field. The @font_size@ itself is not affected by changes in this field.
newtype TextStyle_BaselineOffset = TextStyle_BaselineOffset { fromTextStyle_BaselineOffset :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The text\'s baseline offset is inherited from the parent.
pattern TextStyle_BaselineOffset_BASELINEOFFSETUNSPECIFIED :: TextStyle_BaselineOffset
pattern TextStyle_BaselineOffset_BASELINEOFFSETUNSPECIFIED = TextStyle_BaselineOffset "BASELINE_OFFSET_UNSPECIFIED"

-- | The text is not vertically offset.
pattern TextStyle_BaselineOffset_None :: TextStyle_BaselineOffset
pattern TextStyle_BaselineOffset_None = TextStyle_BaselineOffset "NONE"

-- | The text is vertically offset upwards (superscript).
pattern TextStyle_BaselineOffset_Superscript :: TextStyle_BaselineOffset
pattern TextStyle_BaselineOffset_Superscript = TextStyle_BaselineOffset "SUPERSCRIPT"

-- | The text is vertically offset downwards (subscript).
pattern TextStyle_BaselineOffset_Subscript :: TextStyle_BaselineOffset
pattern TextStyle_BaselineOffset_Subscript = TextStyle_BaselineOffset "SUBSCRIPT"

{-# COMPLETE
  TextStyle_BaselineOffset_BASELINEOFFSETUNSPECIFIED,
  TextStyle_BaselineOffset_None,
  TextStyle_BaselineOffset_Superscript,
  TextStyle_BaselineOffset_Subscript,
  TextStyle_BaselineOffset #-}

-- | The type of the theme color.
newtype ThemeColorPair_Type = ThemeColorPair_Type { fromThemeColorPair_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified theme color. This value should not be used.
pattern ThemeColorPair_Type_THEMECOLORTYPEUNSPECIFIED :: ThemeColorPair_Type
pattern ThemeColorPair_Type_THEMECOLORTYPEUNSPECIFIED = ThemeColorPair_Type "THEME_COLOR_TYPE_UNSPECIFIED"

-- | Represents the first dark color.
pattern ThemeColorPair_Type_DARK1 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_DARK1 = ThemeColorPair_Type "DARK1"

-- | Represents the first light color.
pattern ThemeColorPair_Type_LIGHT1 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_LIGHT1 = ThemeColorPair_Type "LIGHT1"

-- | Represents the second dark color.
pattern ThemeColorPair_Type_DARK2 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_DARK2 = ThemeColorPair_Type "DARK2"

-- | Represents the second light color.
pattern ThemeColorPair_Type_LIGHT2 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_LIGHT2 = ThemeColorPair_Type "LIGHT2"

-- | Represents the first accent color.
pattern ThemeColorPair_Type_ACCENT1 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT1 = ThemeColorPair_Type "ACCENT1"

-- | Represents the second accent color.
pattern ThemeColorPair_Type_ACCENT2 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT2 = ThemeColorPair_Type "ACCENT2"

-- | Represents the third accent color.
pattern ThemeColorPair_Type_ACCENT3 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT3 = ThemeColorPair_Type "ACCENT3"

-- | Represents the fourth accent color.
pattern ThemeColorPair_Type_ACCENT4 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT4 = ThemeColorPair_Type "ACCENT4"

-- | Represents the fifth accent color.
pattern ThemeColorPair_Type_ACCENT5 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT5 = ThemeColorPair_Type "ACCENT5"

-- | Represents the sixth accent color.
pattern ThemeColorPair_Type_ACCENT6 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_ACCENT6 = ThemeColorPair_Type "ACCENT6"

-- | Represents the color to use for hyperlinks.
pattern ThemeColorPair_Type_Hyperlink :: ThemeColorPair_Type
pattern ThemeColorPair_Type_Hyperlink = ThemeColorPair_Type "HYPERLINK"

-- | Represents the color to use for visited hyperlinks.
pattern ThemeColorPair_Type_FOLLOWEDHYPERLINK :: ThemeColorPair_Type
pattern ThemeColorPair_Type_FOLLOWEDHYPERLINK = ThemeColorPair_Type "FOLLOWED_HYPERLINK"

-- | Represents the first text color.
pattern ThemeColorPair_Type_TEXT1 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_TEXT1 = ThemeColorPair_Type "TEXT1"

-- | Represents the first background color.
pattern ThemeColorPair_Type_BACKGROUND1 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_BACKGROUND1 = ThemeColorPair_Type "BACKGROUND1"

-- | Represents the second text color.
pattern ThemeColorPair_Type_TEXT2 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_TEXT2 = ThemeColorPair_Type "TEXT2"

-- | Represents the second background color.
pattern ThemeColorPair_Type_BACKGROUND2 :: ThemeColorPair_Type
pattern ThemeColorPair_Type_BACKGROUND2 = ThemeColorPair_Type "BACKGROUND2"

{-# COMPLETE
  ThemeColorPair_Type_THEMECOLORTYPEUNSPECIFIED,
  ThemeColorPair_Type_DARK1,
  ThemeColorPair_Type_LIGHT1,
  ThemeColorPair_Type_DARK2,
  ThemeColorPair_Type_LIGHT2,
  ThemeColorPair_Type_ACCENT1,
  ThemeColorPair_Type_ACCENT2,
  ThemeColorPair_Type_ACCENT3,
  ThemeColorPair_Type_ACCENT4,
  ThemeColorPair_Type_ACCENT5,
  ThemeColorPair_Type_ACCENT6,
  ThemeColorPair_Type_Hyperlink,
  ThemeColorPair_Type_FOLLOWEDHYPERLINK,
  ThemeColorPair_Type_TEXT1,
  ThemeColorPair_Type_BACKGROUND1,
  ThemeColorPair_Type_TEXT2,
  ThemeColorPair_Type_BACKGROUND2,
  ThemeColorPair_Type #-}

-- | The line category to update to. The exact line type is determined based on the category to update to and how it\'s routed to connect to other page elements.
newtype UpdateLineCategoryRequest_LineCategory = UpdateLineCategoryRequest_LineCategory { fromUpdateLineCategoryRequest_LineCategory :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified line category.
pattern UpdateLineCategoryRequest_LineCategory_LINECATEGORYUNSPECIFIED :: UpdateLineCategoryRequest_LineCategory
pattern UpdateLineCategoryRequest_LineCategory_LINECATEGORYUNSPECIFIED = UpdateLineCategoryRequest_LineCategory "LINE_CATEGORY_UNSPECIFIED"

-- | Straight connectors, including straight connector 1.
pattern UpdateLineCategoryRequest_LineCategory_Straight :: UpdateLineCategoryRequest_LineCategory
pattern UpdateLineCategoryRequest_LineCategory_Straight = UpdateLineCategoryRequest_LineCategory "STRAIGHT"

-- | Bent connectors, including bent connector 2 to 5.
pattern UpdateLineCategoryRequest_LineCategory_Bent :: UpdateLineCategoryRequest_LineCategory
pattern UpdateLineCategoryRequest_LineCategory_Bent = UpdateLineCategoryRequest_LineCategory "BENT"

-- | Curved connectors, including curved connector 2 to 5.
pattern UpdateLineCategoryRequest_LineCategory_Curved :: UpdateLineCategoryRequest_LineCategory
pattern UpdateLineCategoryRequest_LineCategory_Curved = UpdateLineCategoryRequest_LineCategory "CURVED"

{-# COMPLETE
  UpdateLineCategoryRequest_LineCategory_LINECATEGORYUNSPECIFIED,
  UpdateLineCategoryRequest_LineCategory_Straight,
  UpdateLineCategoryRequest_LineCategory_Bent,
  UpdateLineCategoryRequest_LineCategory_Curved,
  UpdateLineCategoryRequest_LineCategory #-}

-- | The apply mode of the transform update.
newtype UpdatePageElementTransformRequest_ApplyMode = UpdatePageElementTransformRequest_ApplyMode { fromUpdatePageElementTransformRequest_ApplyMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified mode.
pattern UpdatePageElementTransformRequest_ApplyMode_APPLYMODEUNSPECIFIED :: UpdatePageElementTransformRequest_ApplyMode
pattern UpdatePageElementTransformRequest_ApplyMode_APPLYMODEUNSPECIFIED = UpdatePageElementTransformRequest_ApplyMode "APPLY_MODE_UNSPECIFIED"

-- | Applies the new AffineTransform matrix to the existing one, and replaces the existing one with the resulting concatenation.
pattern UpdatePageElementTransformRequest_ApplyMode_Relative :: UpdatePageElementTransformRequest_ApplyMode
pattern UpdatePageElementTransformRequest_ApplyMode_Relative = UpdatePageElementTransformRequest_ApplyMode "RELATIVE"

-- | Replaces the existing AffineTransform matrix with the new one.
pattern UpdatePageElementTransformRequest_ApplyMode_Absolute :: UpdatePageElementTransformRequest_ApplyMode
pattern UpdatePageElementTransformRequest_ApplyMode_Absolute = UpdatePageElementTransformRequest_ApplyMode "ABSOLUTE"

{-# COMPLETE
  UpdatePageElementTransformRequest_ApplyMode_APPLYMODEUNSPECIFIED,
  UpdatePageElementTransformRequest_ApplyMode_Relative,
  UpdatePageElementTransformRequest_ApplyMode_Absolute,
  UpdatePageElementTransformRequest_ApplyMode #-}

-- | The Z-order operation to apply on the page elements. When applying the operation on multiple page elements, the relative Z-orders within these page elements before the operation is maintained.
newtype UpdatePageElementsZOrderRequest_Operation = UpdatePageElementsZOrderRequest_Operation { fromUpdatePageElementsZOrderRequest_Operation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified operation.
pattern UpdatePageElementsZOrderRequest_Operation_ZORDEROPERATIONUNSPECIFIED :: UpdatePageElementsZOrderRequest_Operation
pattern UpdatePageElementsZOrderRequest_Operation_ZORDEROPERATIONUNSPECIFIED = UpdatePageElementsZOrderRequest_Operation "Z_ORDER_OPERATION_UNSPECIFIED"

-- | Brings the page elements to the front of the page.
pattern UpdatePageElementsZOrderRequest_Operation_BRINGTOFRONT :: UpdatePageElementsZOrderRequest_Operation
pattern UpdatePageElementsZOrderRequest_Operation_BRINGTOFRONT = UpdatePageElementsZOrderRequest_Operation "BRING_TO_FRONT"

-- | Brings the page elements forward on the page by one element relative to the forwardmost one in the specified page elements.
pattern UpdatePageElementsZOrderRequest_Operation_BRINGFORWARD :: UpdatePageElementsZOrderRequest_Operation
pattern UpdatePageElementsZOrderRequest_Operation_BRINGFORWARD = UpdatePageElementsZOrderRequest_Operation "BRING_FORWARD"

-- | Sends the page elements backward on the page by one element relative to the furthest behind one in the specified page elements.
pattern UpdatePageElementsZOrderRequest_Operation_SENDBACKWARD :: UpdatePageElementsZOrderRequest_Operation
pattern UpdatePageElementsZOrderRequest_Operation_SENDBACKWARD = UpdatePageElementsZOrderRequest_Operation "SEND_BACKWARD"

-- | Sends the page elements to the back of the page.
pattern UpdatePageElementsZOrderRequest_Operation_SENDTOBACK :: UpdatePageElementsZOrderRequest_Operation
pattern UpdatePageElementsZOrderRequest_Operation_SENDTOBACK = UpdatePageElementsZOrderRequest_Operation "SEND_TO_BACK"

{-# COMPLETE
  UpdatePageElementsZOrderRequest_Operation_ZORDEROPERATIONUNSPECIFIED,
  UpdatePageElementsZOrderRequest_Operation_BRINGTOFRONT,
  UpdatePageElementsZOrderRequest_Operation_BRINGFORWARD,
  UpdatePageElementsZOrderRequest_Operation_SENDBACKWARD,
  UpdatePageElementsZOrderRequest_Operation_SENDTOBACK,
  UpdatePageElementsZOrderRequest_Operation #-}

-- | The border position in the table range the updates should apply to. If a border position is not specified, the updates will apply to all borders in the table range.
newtype UpdateTableBorderPropertiesRequest_BorderPosition = UpdateTableBorderPropertiesRequest_BorderPosition { fromUpdateTableBorderPropertiesRequest_BorderPosition :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | All borders in the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_All :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_All = UpdateTableBorderPropertiesRequest_BorderPosition "ALL"

-- | Borders at the bottom of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Bottom :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Bottom = UpdateTableBorderPropertiesRequest_BorderPosition "BOTTOM"

-- | Borders on the inside of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Inner :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Inner = UpdateTableBorderPropertiesRequest_BorderPosition "INNER"

-- | Horizontal borders on the inside of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_INNERHORIZONTAL :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_INNERHORIZONTAL = UpdateTableBorderPropertiesRequest_BorderPosition "INNER_HORIZONTAL"

-- | Vertical borders on the inside of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_INNERVERTICAL :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_INNERVERTICAL = UpdateTableBorderPropertiesRequest_BorderPosition "INNER_VERTICAL"

-- | Borders at the left of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Left' :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Left' = UpdateTableBorderPropertiesRequest_BorderPosition "LEFT"

-- | Borders along the outside of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Outer :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Outer = UpdateTableBorderPropertiesRequest_BorderPosition "OUTER"

-- | Borders at the right of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Right' :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Right' = UpdateTableBorderPropertiesRequest_BorderPosition "RIGHT"

-- | Borders at the top of the range.
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Top :: UpdateTableBorderPropertiesRequest_BorderPosition
pattern UpdateTableBorderPropertiesRequest_BorderPosition_Top = UpdateTableBorderPropertiesRequest_BorderPosition "TOP"

{-# COMPLETE
  UpdateTableBorderPropertiesRequest_BorderPosition_All,
  UpdateTableBorderPropertiesRequest_BorderPosition_Bottom,
  UpdateTableBorderPropertiesRequest_BorderPosition_Inner,
  UpdateTableBorderPropertiesRequest_BorderPosition_INNERHORIZONTAL,
  UpdateTableBorderPropertiesRequest_BorderPosition_INNERVERTICAL,
  UpdateTableBorderPropertiesRequest_BorderPosition_Left',
  UpdateTableBorderPropertiesRequest_BorderPosition_Outer,
  UpdateTableBorderPropertiesRequest_BorderPosition_Right',
  UpdateTableBorderPropertiesRequest_BorderPosition_Top,
  UpdateTableBorderPropertiesRequest_BorderPosition #-}

-- | The video source.
newtype Video_Source = Video_Source { fromVideo_Source :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The video source is unspecified.
pattern Video_Source_SOURCEUNSPECIFIED :: Video_Source
pattern Video_Source_SOURCEUNSPECIFIED = Video_Source "SOURCE_UNSPECIFIED"

-- | The video source is YouTube.
pattern Video_Source_Youtube :: Video_Source
pattern Video_Source_Youtube = Video_Source "YOUTUBE"

-- | The video source is Google Drive.
pattern Video_Source_Drive :: Video_Source
pattern Video_Source_Drive = Video_Source "DRIVE"

{-# COMPLETE
  Video_Source_SOURCEUNSPECIFIED,
  Video_Source_Youtube,
  Video_Source_Drive,
  Video_Source #-}

-- | The optional mime type of the thumbnail image. If you don\'t specify the mime type, the mime type defaults to PNG.
newtype PresentationsPagesGetThumbnailThumbnailPropertiesMimeType = PresentationsPagesGetThumbnailThumbnailPropertiesMimeType { fromPresentationsPagesGetThumbnailThumbnailPropertiesMimeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The default mime type.
pattern PresentationsPagesGetThumbnailThumbnailPropertiesMimeType_Png :: PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
pattern PresentationsPagesGetThumbnailThumbnailPropertiesMimeType_Png = PresentationsPagesGetThumbnailThumbnailPropertiesMimeType "PNG"

{-# COMPLETE
  PresentationsPagesGetThumbnailThumbnailPropertiesMimeType_Png,
  PresentationsPagesGetThumbnailThumbnailPropertiesMimeType #-}

-- | The optional thumbnail image size. If you don\'t specify the size, the server chooses a default size of the image.
newtype PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize = PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize { fromPresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The default thumbnail image size. The unspecified thumbnail size implies that the server chooses the size of the image in a way that might vary in the future.
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_THUMBNAILSIZEUNSPECIFIED :: PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_THUMBNAILSIZEUNSPECIFIED = PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize "THUMBNAIL_SIZE_UNSPECIFIED"

-- | The thumbnail image width of 1600px.
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Large :: PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Large = PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize "LARGE"

-- | The thumbnail image width of 800px.
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Medium :: PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Medium = PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize "MEDIUM"

-- | The thumbnail image width of 200px.
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Small :: PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
pattern PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Small = PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize "SMALL"

{-# COMPLETE
  PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_THUMBNAILSIZEUNSPECIFIED,
  PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Large,
  PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Medium,
  PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize_Small,
  PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize #-}
