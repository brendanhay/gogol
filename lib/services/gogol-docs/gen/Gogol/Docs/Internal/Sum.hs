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
-- Module      : Gogol.Docs.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Docs.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AutoText_Type
    AutoText_Type
      (
        AutoText_Type_TYPEUNSPECIFIED,
        AutoText_Type_PAGENUMBER,
        AutoText_Type_PAGECOUNT,
        ..
      ),

    -- * CreateFooterRequest_Type
    CreateFooterRequest_Type
      (
        CreateFooterRequest_Type_HEADERFOOTERTYPEUNSPECIFIED,
        CreateFooterRequest_Type_Default,
        ..
      ),

    -- * CreateHeaderRequest_Type
    CreateHeaderRequest_Type
      (
        CreateHeaderRequest_Type_HEADERFOOTERTYPEUNSPECIFIED,
        CreateHeaderRequest_Type_Default,
        ..
      ),

    -- * CreateParagraphBulletsRequest_BulletPreset
    CreateParagraphBulletsRequest_BulletPreset
      (
        CreateParagraphBulletsRequest_BulletPreset_BULLETGLYPHPRESETUNSPECIFIED,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX,
        CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC,
        CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE,
        CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMAN,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMANPARENS,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALNESTED,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADECIMAL,
        CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODECIMALALPHAROMAN,
        ..
      ),

    -- * Dimension_Unit
    Dimension_Unit
      (
        Dimension_Unit_UNITUNSPECIFIED,
        Dimension_Unit_PT,
        ..
      ),

    -- * Document_SuggestionsViewMode
    Document_SuggestionsViewMode
      (
        Document_SuggestionsViewMode_DEFAULTFORCURRENTACCESS,
        Document_SuggestionsViewMode_SUGGESTIONSINLINE,
        Document_SuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED,
        Document_SuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS,
        ..
      ),

    -- * EmbeddedObjectBorder_DashStyle
    EmbeddedObjectBorder_DashStyle
      (
        EmbeddedObjectBorder_DashStyle_DASHSTYLEUNSPECIFIED,
        EmbeddedObjectBorder_DashStyle_Solid,
        EmbeddedObjectBorder_DashStyle_Dot,
        EmbeddedObjectBorder_DashStyle_Dash,
        ..
      ),

    -- * EmbeddedObjectBorder_PropertyState
    EmbeddedObjectBorder_PropertyState
      (
        EmbeddedObjectBorder_PropertyState_Rendered,
        EmbeddedObjectBorder_PropertyState_NOTRENDERED,
        ..
      ),

    -- * InsertSectionBreakRequest_SectionType
    InsertSectionBreakRequest_SectionType
      (
        InsertSectionBreakRequest_SectionType_SECTIONTYPEUNSPECIFIED,
        InsertSectionBreakRequest_SectionType_Continuous,
        InsertSectionBreakRequest_SectionType_NEXTPAGE,
        ..
      ),

    -- * NamedStyle_NamedStyleType
    NamedStyle_NamedStyleType
      (
        NamedStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
        NamedStyle_NamedStyleType_NORMALTEXT,
        NamedStyle_NamedStyleType_Title,
        NamedStyle_NamedStyleType_Subtitle,
        NamedStyle_NamedStyleType_HEADING_1,
        NamedStyle_NamedStyleType_HEADING_2,
        NamedStyle_NamedStyleType_HEADING_3,
        NamedStyle_NamedStyleType_HEADING_4,
        NamedStyle_NamedStyleType_HEADING_5,
        NamedStyle_NamedStyleType_HEADING_6,
        ..
      ),

    -- * NamedStyleSuggestionState_NamedStyleType
    NamedStyleSuggestionState_NamedStyleType
      (
        NamedStyleSuggestionState_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
        NamedStyleSuggestionState_NamedStyleType_NORMALTEXT,
        NamedStyleSuggestionState_NamedStyleType_Title,
        NamedStyleSuggestionState_NamedStyleType_Subtitle,
        NamedStyleSuggestionState_NamedStyleType_HEADING_1,
        NamedStyleSuggestionState_NamedStyleType_HEADING_2,
        NamedStyleSuggestionState_NamedStyleType_HEADING_3,
        NamedStyleSuggestionState_NamedStyleType_HEADING_4,
        NamedStyleSuggestionState_NamedStyleType_HEADING_5,
        NamedStyleSuggestionState_NamedStyleType_HEADING_6,
        ..
      ),

    -- * NestingLevel_BulletAlignment
    NestingLevel_BulletAlignment
      (
        NestingLevel_BulletAlignment_BULLETALIGNMENTUNSPECIFIED,
        NestingLevel_BulletAlignment_Start,
        NestingLevel_BulletAlignment_Center,
        NestingLevel_BulletAlignment_End,
        ..
      ),

    -- * NestingLevel_GlyphType
    NestingLevel_GlyphType
      (
        NestingLevel_GlyphType_GLYPHTYPEUNSPECIFIED,
        NestingLevel_GlyphType_None,
        NestingLevel_GlyphType_Decimal,
        NestingLevel_GlyphType_ZERODECIMAL,
        NestingLevel_GlyphType_UPPERALPHA,
        NestingLevel_GlyphType_Alpha,
        NestingLevel_GlyphType_UPPERROMAN,
        NestingLevel_GlyphType_Roman,
        ..
      ),

    -- * ParagraphBorder_DashStyle
    ParagraphBorder_DashStyle
      (
        ParagraphBorder_DashStyle_DASHSTYLEUNSPECIFIED,
        ParagraphBorder_DashStyle_Solid,
        ParagraphBorder_DashStyle_Dot,
        ParagraphBorder_DashStyle_Dash,
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
        ParagraphStyle_Direction_CONTENTDIRECTIONUNSPECIFIED,
        ParagraphStyle_Direction_LEFTTORIGHT,
        ParagraphStyle_Direction_RIGHTTOLEFT,
        ..
      ),

    -- * ParagraphStyle_NamedStyleType
    ParagraphStyle_NamedStyleType
      (
        ParagraphStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
        ParagraphStyle_NamedStyleType_NORMALTEXT,
        ParagraphStyle_NamedStyleType_Title,
        ParagraphStyle_NamedStyleType_Subtitle,
        ParagraphStyle_NamedStyleType_HEADING_1,
        ParagraphStyle_NamedStyleType_HEADING_2,
        ParagraphStyle_NamedStyleType_HEADING_3,
        ParagraphStyle_NamedStyleType_HEADING_4,
        ParagraphStyle_NamedStyleType_HEADING_5,
        ParagraphStyle_NamedStyleType_HEADING_6,
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

    -- * PositionedObjectPositioning_Layout
    PositionedObjectPositioning_Layout
      (
        PositionedObjectPositioning_Layout_POSITIONEDOBJECTLAYOUTUNSPECIFIED,
        PositionedObjectPositioning_Layout_WRAPTEXT,
        PositionedObjectPositioning_Layout_BREAKLEFT,
        PositionedObjectPositioning_Layout_BREAKRIGHT,
        PositionedObjectPositioning_Layout_BREAKLEFTRIGHT,
        PositionedObjectPositioning_Layout_INFRONTOFTEXT,
        PositionedObjectPositioning_Layout_BEHINDTEXT,
        ..
      ),

    -- * ReplaceImageRequest_ImageReplaceMethod
    ReplaceImageRequest_ImageReplaceMethod
      (
        ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
        ReplaceImageRequest_ImageReplaceMethod_CENTERCROP,
        ..
      ),

    -- * SectionStyle_ColumnSeparatorStyle
    SectionStyle_ColumnSeparatorStyle
      (
        SectionStyle_ColumnSeparatorStyle_COLUMNSEPARATORSTYLEUNSPECIFIED,
        SectionStyle_ColumnSeparatorStyle_None,
        SectionStyle_ColumnSeparatorStyle_BETWEENEACHCOLUMN,
        ..
      ),

    -- * SectionStyle_ContentDirection
    SectionStyle_ContentDirection
      (
        SectionStyle_ContentDirection_CONTENTDIRECTIONUNSPECIFIED,
        SectionStyle_ContentDirection_LEFTTORIGHT,
        SectionStyle_ContentDirection_RIGHTTOLEFT,
        ..
      ),

    -- * SectionStyle_SectionType
    SectionStyle_SectionType
      (
        SectionStyle_SectionType_SECTIONTYPEUNSPECIFIED,
        SectionStyle_SectionType_Continuous,
        SectionStyle_SectionType_NEXTPAGE,
        ..
      ),

    -- * TabStop_Alignment
    TabStop_Alignment
      (
        TabStop_Alignment_TABSTOPALIGNMENTUNSPECIFIED,
        TabStop_Alignment_Start,
        TabStop_Alignment_Center,
        TabStop_Alignment_End,
        ..
      ),

    -- * TableCellBorder_DashStyle
    TableCellBorder_DashStyle
      (
        TableCellBorder_DashStyle_DASHSTYLEUNSPECIFIED,
        TableCellBorder_DashStyle_Solid,
        TableCellBorder_DashStyle_Dot,
        TableCellBorder_DashStyle_Dash,
        ..
      ),

    -- * TableCellStyle_ContentAlignment
    TableCellStyle_ContentAlignment
      (
        TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
        TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
        TableCellStyle_ContentAlignment_Top,
        TableCellStyle_ContentAlignment_Middle,
        TableCellStyle_ContentAlignment_Bottom,
        ..
      ),

    -- * TableColumnProperties_WidthType
    TableColumnProperties_WidthType
      (
        TableColumnProperties_WidthType_WIDTHTYPEUNSPECIFIED,
        TableColumnProperties_WidthType_EVENLYDISTRIBUTED,
        TableColumnProperties_WidthType_FIXEDWIDTH,
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

    -- * DocumentsGetSuggestionsViewMode
    DocumentsGetSuggestionsViewMode
      (
        DocumentsGetSuggestionsViewMode_DEFAULTFORCURRENTACCESS,
        DocumentsGetSuggestionsViewMode_SUGGESTIONSINLINE,
        DocumentsGetSuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED,
        DocumentsGetSuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS,
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

-- | An unspecified auto text type.
pattern AutoText_Type_TYPEUNSPECIFIED :: AutoText_Type
pattern AutoText_Type_TYPEUNSPECIFIED = AutoText_Type "TYPE_UNSPECIFIED"

-- | Type for auto text that represents the current page number.
pattern AutoText_Type_PAGENUMBER :: AutoText_Type
pattern AutoText_Type_PAGENUMBER = AutoText_Type "PAGE_NUMBER"

-- | Type for auto text that represents the total number of pages in the document.
pattern AutoText_Type_PAGECOUNT :: AutoText_Type
pattern AutoText_Type_PAGECOUNT = AutoText_Type "PAGE_COUNT"

{-# COMPLETE
  AutoText_Type_TYPEUNSPECIFIED,
  AutoText_Type_PAGENUMBER,
  AutoText_Type_PAGECOUNT,
  AutoText_Type #-}

-- | The type of footer to create.
newtype CreateFooterRequest_Type = CreateFooterRequest_Type { fromCreateFooterRequest_Type :: Core.Text }
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

-- | The header\/footer type is unspecified.
pattern CreateFooterRequest_Type_HEADERFOOTERTYPEUNSPECIFIED :: CreateFooterRequest_Type
pattern CreateFooterRequest_Type_HEADERFOOTERTYPEUNSPECIFIED = CreateFooterRequest_Type "HEADER_FOOTER_TYPE_UNSPECIFIED"

-- | A default header\/footer.
pattern CreateFooterRequest_Type_Default :: CreateFooterRequest_Type
pattern CreateFooterRequest_Type_Default = CreateFooterRequest_Type "DEFAULT"

{-# COMPLETE
  CreateFooterRequest_Type_HEADERFOOTERTYPEUNSPECIFIED,
  CreateFooterRequest_Type_Default,
  CreateFooterRequest_Type #-}

-- | The type of header to create.
newtype CreateHeaderRequest_Type = CreateHeaderRequest_Type { fromCreateHeaderRequest_Type :: Core.Text }
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

-- | The header\/footer type is unspecified.
pattern CreateHeaderRequest_Type_HEADERFOOTERTYPEUNSPECIFIED :: CreateHeaderRequest_Type
pattern CreateHeaderRequest_Type_HEADERFOOTERTYPEUNSPECIFIED = CreateHeaderRequest_Type "HEADER_FOOTER_TYPE_UNSPECIFIED"

-- | A default header\/footer.
pattern CreateHeaderRequest_Type_Default :: CreateHeaderRequest_Type
pattern CreateHeaderRequest_Type_Default = CreateHeaderRequest_Type "DEFAULT"

{-# COMPLETE
  CreateHeaderRequest_Type_HEADERFOOTERTYPEUNSPECIFIED,
  CreateHeaderRequest_Type_Default,
  CreateHeaderRequest_Type #-}

-- | The kinds of bullet glyphs to be used.
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

-- | The bullet glyph preset is unspecified.
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETGLYPHPRESETUNSPECIFIED :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_BULLETGLYPHPRESETUNSPECIFIED = CreateParagraphBulletsRequest_BulletPreset "BULLET_GLYPH_PRESET_UNSPECIFIED"

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

-- | A numbered list with @DECIMAL@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DECIMAL_ALPHA_ROMAN"

-- | A numbered list with @DECIMAL@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by parenthesis.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMANPARENS :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMANPARENS = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DECIMAL_ALPHA_ROMAN_PARENS"

-- | A numbered list with @DECIMAL@ numeric glyphs separated by periods, where each nesting level uses the previous nesting level\'s glyph as a prefix. For example: \'1.\', \'1.1.\', \'2.\', \'2.2.\'.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALNESTED :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALNESTED = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_DECIMAL_NESTED"

-- | A numbered list with @UPPERALPHA@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_UPPERALPHA_ALPHA_ROMAN"

-- | A numbered list with @UPPERROMAN@, @UPPERALPHA@ and @DECIMAL@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADECIMAL :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADECIMAL = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_UPPERROMAN_UPPERALPHA_DECIMAL"

-- | A numbered list with @ZERODECIMAL@, @ALPHA@ and @ROMAN@ numeric glyphs for the first 3 list nesting levels, followed by periods.
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODECIMALALPHAROMAN :: CreateParagraphBulletsRequest_BulletPreset
pattern CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODECIMALALPHAROMAN = CreateParagraphBulletsRequest_BulletPreset "NUMBERED_ZERODECIMAL_ALPHA_ROMAN"

{-# COMPLETE
  CreateParagraphBulletsRequest_BulletPreset_BULLETGLYPHPRESETUNSPECIFIED,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDISCCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXARROW3DSQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETCHECKBOX,
  CreateParagraphBulletsRequest_BulletPreset_BULLETARROWDIAMONDDISC,
  CreateParagraphBulletsRequest_BulletPreset_BULLETSTARCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETARROW3DCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETLEFTTRIANGLEDIAMONDDISC,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDXHOLLOWDIAMONDSQUARE,
  CreateParagraphBulletsRequest_BulletPreset_BULLETDIAMONDCIRCLESQUARE,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALALPHAROMANPARENS,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDDECIMALNESTED,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERALPHAALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDUPPERROMANUPPERALPHADECIMAL,
  CreateParagraphBulletsRequest_BulletPreset_NUMBEREDZERODECIMALALPHAROMAN,
  CreateParagraphBulletsRequest_BulletPreset #-}

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

-- | A point, 1\/72 of an inch.
pattern Dimension_Unit_PT :: Dimension_Unit
pattern Dimension_Unit_PT = Dimension_Unit "PT"

{-# COMPLETE
  Dimension_Unit_UNITUNSPECIFIED,
  Dimension_Unit_PT,
  Dimension_Unit #-}

-- | Output only. The suggestions view mode applied to the document. Note: When editing a document, changes must be based on a document with SUGGESTIONS_INLINE.
newtype Document_SuggestionsViewMode = Document_SuggestionsViewMode { fromDocument_SuggestionsViewMode :: Core.Text }
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

-- | The SuggestionsViewMode applied to the returned document depends on the user\'s current access level. If the user only has view access, PREVIEW/WITHOUT/SUGGESTIONS is applied. Otherwise, SUGGESTIONS_INLINE is applied. This is the default suggestions view mode.
pattern Document_SuggestionsViewMode_DEFAULTFORCURRENTACCESS :: Document_SuggestionsViewMode
pattern Document_SuggestionsViewMode_DEFAULTFORCURRENTACCESS = Document_SuggestionsViewMode "DEFAULT_FOR_CURRENT_ACCESS"

-- | The returned document has suggestions inline. Suggested changes will be differentiated from base content within the document. Requests to retrieve a document using this mode will return a 403 error if the user does not have permission to view suggested changes.
pattern Document_SuggestionsViewMode_SUGGESTIONSINLINE :: Document_SuggestionsViewMode
pattern Document_SuggestionsViewMode_SUGGESTIONSINLINE = Document_SuggestionsViewMode "SUGGESTIONS_INLINE"

-- | The returned document is a preview with all suggested changes accepted. Requests to retrieve a document using this mode will return a 403 error if the user does not have permission to view suggested changes.
pattern Document_SuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED :: Document_SuggestionsViewMode
pattern Document_SuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED = Document_SuggestionsViewMode "PREVIEW_SUGGESTIONS_ACCEPTED"

-- | The returned document is a preview with all suggested changes rejected if there are any suggestions in the document.
pattern Document_SuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS :: Document_SuggestionsViewMode
pattern Document_SuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS = Document_SuggestionsViewMode "PREVIEW_WITHOUT_SUGGESTIONS"

{-# COMPLETE
  Document_SuggestionsViewMode_DEFAULTFORCURRENTACCESS,
  Document_SuggestionsViewMode_SUGGESTIONSINLINE,
  Document_SuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED,
  Document_SuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS,
  Document_SuggestionsViewMode #-}

-- | The dash style of the border.
newtype EmbeddedObjectBorder_DashStyle = EmbeddedObjectBorder_DashStyle { fromEmbeddedObjectBorder_DashStyle :: Core.Text }
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
pattern EmbeddedObjectBorder_DashStyle_DASHSTYLEUNSPECIFIED :: EmbeddedObjectBorder_DashStyle
pattern EmbeddedObjectBorder_DashStyle_DASHSTYLEUNSPECIFIED = EmbeddedObjectBorder_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern EmbeddedObjectBorder_DashStyle_Solid :: EmbeddedObjectBorder_DashStyle
pattern EmbeddedObjectBorder_DashStyle_Solid = EmbeddedObjectBorder_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern EmbeddedObjectBorder_DashStyle_Dot :: EmbeddedObjectBorder_DashStyle
pattern EmbeddedObjectBorder_DashStyle_Dot = EmbeddedObjectBorder_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern EmbeddedObjectBorder_DashStyle_Dash :: EmbeddedObjectBorder_DashStyle
pattern EmbeddedObjectBorder_DashStyle_Dash = EmbeddedObjectBorder_DashStyle "DASH"

{-# COMPLETE
  EmbeddedObjectBorder_DashStyle_DASHSTYLEUNSPECIFIED,
  EmbeddedObjectBorder_DashStyle_Solid,
  EmbeddedObjectBorder_DashStyle_Dot,
  EmbeddedObjectBorder_DashStyle_Dash,
  EmbeddedObjectBorder_DashStyle #-}

-- | The property state of the border property.
newtype EmbeddedObjectBorder_PropertyState = EmbeddedObjectBorder_PropertyState { fromEmbeddedObjectBorder_PropertyState :: Core.Text }
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

-- | If a property\'s state is RENDERED, then the element has the corresponding property when rendered in the document. This is the default value.
pattern EmbeddedObjectBorder_PropertyState_Rendered :: EmbeddedObjectBorder_PropertyState
pattern EmbeddedObjectBorder_PropertyState_Rendered = EmbeddedObjectBorder_PropertyState "RENDERED"

-- | If a property\'s state is NOT_RENDERED, then the element does not have the corresponding property when rendered in the document.
pattern EmbeddedObjectBorder_PropertyState_NOTRENDERED :: EmbeddedObjectBorder_PropertyState
pattern EmbeddedObjectBorder_PropertyState_NOTRENDERED = EmbeddedObjectBorder_PropertyState "NOT_RENDERED"

{-# COMPLETE
  EmbeddedObjectBorder_PropertyState_Rendered,
  EmbeddedObjectBorder_PropertyState_NOTRENDERED,
  EmbeddedObjectBorder_PropertyState #-}

-- | The type of section to insert.
newtype InsertSectionBreakRequest_SectionType = InsertSectionBreakRequest_SectionType { fromInsertSectionBreakRequest_SectionType :: Core.Text }
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

-- | The section type is unspecified.
pattern InsertSectionBreakRequest_SectionType_SECTIONTYPEUNSPECIFIED :: InsertSectionBreakRequest_SectionType
pattern InsertSectionBreakRequest_SectionType_SECTIONTYPEUNSPECIFIED = InsertSectionBreakRequest_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | The section starts immediately after the last paragraph of the previous section.
pattern InsertSectionBreakRequest_SectionType_Continuous :: InsertSectionBreakRequest_SectionType
pattern InsertSectionBreakRequest_SectionType_Continuous = InsertSectionBreakRequest_SectionType "CONTINUOUS"

-- | The section starts on the next page.
pattern InsertSectionBreakRequest_SectionType_NEXTPAGE :: InsertSectionBreakRequest_SectionType
pattern InsertSectionBreakRequest_SectionType_NEXTPAGE = InsertSectionBreakRequest_SectionType "NEXT_PAGE"

{-# COMPLETE
  InsertSectionBreakRequest_SectionType_SECTIONTYPEUNSPECIFIED,
  InsertSectionBreakRequest_SectionType_Continuous,
  InsertSectionBreakRequest_SectionType_NEXTPAGE,
  InsertSectionBreakRequest_SectionType #-}

-- | The type of this named style.
newtype NamedStyle_NamedStyleType = NamedStyle_NamedStyleType { fromNamedStyle_NamedStyleType :: Core.Text }
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

-- | The type of named style is unspecified.
pattern NamedStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED = NamedStyle_NamedStyleType "NAMED_STYLE_TYPE_UNSPECIFIED"

-- | Normal text.
pattern NamedStyle_NamedStyleType_NORMALTEXT :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_NORMALTEXT = NamedStyle_NamedStyleType "NORMAL_TEXT"

-- | Title.
pattern NamedStyle_NamedStyleType_Title :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_Title = NamedStyle_NamedStyleType "TITLE"

-- | Subtitle.
pattern NamedStyle_NamedStyleType_Subtitle :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_Subtitle = NamedStyle_NamedStyleType "SUBTITLE"

-- | Heading 1.
pattern NamedStyle_NamedStyleType_HEADING_1 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_1 = NamedStyle_NamedStyleType "HEADING_1"

-- | Heading 2.
pattern NamedStyle_NamedStyleType_HEADING_2 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_2 = NamedStyle_NamedStyleType "HEADING_2"

-- | Heading 3.
pattern NamedStyle_NamedStyleType_HEADING_3 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_3 = NamedStyle_NamedStyleType "HEADING_3"

-- | Heading 4.
pattern NamedStyle_NamedStyleType_HEADING_4 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_4 = NamedStyle_NamedStyleType "HEADING_4"

-- | Heading 5.
pattern NamedStyle_NamedStyleType_HEADING_5 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_5 = NamedStyle_NamedStyleType "HEADING_5"

-- | Heading 6.
pattern NamedStyle_NamedStyleType_HEADING_6 :: NamedStyle_NamedStyleType
pattern NamedStyle_NamedStyleType_HEADING_6 = NamedStyle_NamedStyleType "HEADING_6"

{-# COMPLETE
  NamedStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
  NamedStyle_NamedStyleType_NORMALTEXT,
  NamedStyle_NamedStyleType_Title,
  NamedStyle_NamedStyleType_Subtitle,
  NamedStyle_NamedStyleType_HEADING_1,
  NamedStyle_NamedStyleType_HEADING_2,
  NamedStyle_NamedStyleType_HEADING_3,
  NamedStyle_NamedStyleType_HEADING_4,
  NamedStyle_NamedStyleType_HEADING_5,
  NamedStyle_NamedStyleType_HEADING_6,
  NamedStyle_NamedStyleType #-}

-- | The named style type that this suggestion state corresponds to. This field is provided as a convenience for matching the NamedStyleSuggestionState with its corresponding NamedStyle.
newtype NamedStyleSuggestionState_NamedStyleType = NamedStyleSuggestionState_NamedStyleType { fromNamedStyleSuggestionState_NamedStyleType :: Core.Text }
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

-- | The type of named style is unspecified.
pattern NamedStyleSuggestionState_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED = NamedStyleSuggestionState_NamedStyleType "NAMED_STYLE_TYPE_UNSPECIFIED"

-- | Normal text.
pattern NamedStyleSuggestionState_NamedStyleType_NORMALTEXT :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_NORMALTEXT = NamedStyleSuggestionState_NamedStyleType "NORMAL_TEXT"

-- | Title.
pattern NamedStyleSuggestionState_NamedStyleType_Title :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_Title = NamedStyleSuggestionState_NamedStyleType "TITLE"

-- | Subtitle.
pattern NamedStyleSuggestionState_NamedStyleType_Subtitle :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_Subtitle = NamedStyleSuggestionState_NamedStyleType "SUBTITLE"

-- | Heading 1.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_1 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_1 = NamedStyleSuggestionState_NamedStyleType "HEADING_1"

-- | Heading 2.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_2 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_2 = NamedStyleSuggestionState_NamedStyleType "HEADING_2"

-- | Heading 3.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_3 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_3 = NamedStyleSuggestionState_NamedStyleType "HEADING_3"

-- | Heading 4.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_4 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_4 = NamedStyleSuggestionState_NamedStyleType "HEADING_4"

-- | Heading 5.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_5 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_5 = NamedStyleSuggestionState_NamedStyleType "HEADING_5"

-- | Heading 6.
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_6 :: NamedStyleSuggestionState_NamedStyleType
pattern NamedStyleSuggestionState_NamedStyleType_HEADING_6 = NamedStyleSuggestionState_NamedStyleType "HEADING_6"

{-# COMPLETE
  NamedStyleSuggestionState_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
  NamedStyleSuggestionState_NamedStyleType_NORMALTEXT,
  NamedStyleSuggestionState_NamedStyleType_Title,
  NamedStyleSuggestionState_NamedStyleType_Subtitle,
  NamedStyleSuggestionState_NamedStyleType_HEADING_1,
  NamedStyleSuggestionState_NamedStyleType_HEADING_2,
  NamedStyleSuggestionState_NamedStyleType_HEADING_3,
  NamedStyleSuggestionState_NamedStyleType_HEADING_4,
  NamedStyleSuggestionState_NamedStyleType_HEADING_5,
  NamedStyleSuggestionState_NamedStyleType_HEADING_6,
  NamedStyleSuggestionState_NamedStyleType #-}

-- | The alignment of the bullet within the space allotted for rendering the bullet.
newtype NestingLevel_BulletAlignment = NestingLevel_BulletAlignment { fromNestingLevel_BulletAlignment :: Core.Text }
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

-- | The bullet alignment is unspecified.
pattern NestingLevel_BulletAlignment_BULLETALIGNMENTUNSPECIFIED :: NestingLevel_BulletAlignment
pattern NestingLevel_BulletAlignment_BULLETALIGNMENTUNSPECIFIED = NestingLevel_BulletAlignment "BULLET_ALIGNMENT_UNSPECIFIED"

-- | The bullet is aligned to the start of the space allotted for rendering the bullet. Left-aligned for LTR text, right-aligned otherwise.
pattern NestingLevel_BulletAlignment_Start :: NestingLevel_BulletAlignment
pattern NestingLevel_BulletAlignment_Start = NestingLevel_BulletAlignment "START"

-- | The bullet is aligned to the center of the space allotted for rendering the bullet.
pattern NestingLevel_BulletAlignment_Center :: NestingLevel_BulletAlignment
pattern NestingLevel_BulletAlignment_Center = NestingLevel_BulletAlignment "CENTER"

-- | The bullet is aligned to the end of the space allotted for rendering the bullet. Right-aligned for LTR text, left-aligned otherwise.
pattern NestingLevel_BulletAlignment_End :: NestingLevel_BulletAlignment
pattern NestingLevel_BulletAlignment_End = NestingLevel_BulletAlignment "END"

{-# COMPLETE
  NestingLevel_BulletAlignment_BULLETALIGNMENTUNSPECIFIED,
  NestingLevel_BulletAlignment_Start,
  NestingLevel_BulletAlignment_Center,
  NestingLevel_BulletAlignment_End,
  NestingLevel_BulletAlignment #-}

-- | The type of glyph used by bullets when paragraphs at this level of nesting are ordered. The glyph type determines the type of glyph used to replace placeholders within the glyph/format when paragraphs at this level of nesting are ordered. For example, if the nesting level is 0, the glyph/format is @%0.@ and the glyph type is DECIMAL, then the rendered glyph would replace the placeholder @%0@ in the glyph format with a number corresponding to list item\'s order within the list.
newtype NestingLevel_GlyphType = NestingLevel_GlyphType { fromNestingLevel_GlyphType :: Core.Text }
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

-- | The glyph type is unspecified or unsupported.
pattern NestingLevel_GlyphType_GLYPHTYPEUNSPECIFIED :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_GLYPHTYPEUNSPECIFIED = NestingLevel_GlyphType "GLYPH_TYPE_UNSPECIFIED"

-- | An empty string.
pattern NestingLevel_GlyphType_None :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_None = NestingLevel_GlyphType "NONE"

-- | A number, like @1@, @2@, or @3@.
pattern NestingLevel_GlyphType_Decimal :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_Decimal = NestingLevel_GlyphType "DECIMAL"

-- | A number where single digit numbers are prefixed with a zero, like @01@, @02@, or @03@. Numbers with more than one digit are not prefixed with a zero.
pattern NestingLevel_GlyphType_ZERODECIMAL :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_ZERODECIMAL = NestingLevel_GlyphType "ZERO_DECIMAL"

-- | An uppercase letter, like @A@, @B@, or @C@.
pattern NestingLevel_GlyphType_UPPERALPHA :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_UPPERALPHA = NestingLevel_GlyphType "UPPER_ALPHA"

-- | A lowercase letter, like @a@, @b@, or @c@.
pattern NestingLevel_GlyphType_Alpha :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_Alpha = NestingLevel_GlyphType "ALPHA"

-- | An uppercase Roman numeral, like @I@, @II@, or @III@.
pattern NestingLevel_GlyphType_UPPERROMAN :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_UPPERROMAN = NestingLevel_GlyphType "UPPER_ROMAN"

-- | A lowercase Roman numeral, like @i@, @ii@, or @iii@.
pattern NestingLevel_GlyphType_Roman :: NestingLevel_GlyphType
pattern NestingLevel_GlyphType_Roman = NestingLevel_GlyphType "ROMAN"

{-# COMPLETE
  NestingLevel_GlyphType_GLYPHTYPEUNSPECIFIED,
  NestingLevel_GlyphType_None,
  NestingLevel_GlyphType_Decimal,
  NestingLevel_GlyphType_ZERODECIMAL,
  NestingLevel_GlyphType_UPPERALPHA,
  NestingLevel_GlyphType_Alpha,
  NestingLevel_GlyphType_UPPERROMAN,
  NestingLevel_GlyphType_Roman,
  NestingLevel_GlyphType #-}

-- | The dash style of the border.
newtype ParagraphBorder_DashStyle = ParagraphBorder_DashStyle { fromParagraphBorder_DashStyle :: Core.Text }
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
pattern ParagraphBorder_DashStyle_DASHSTYLEUNSPECIFIED :: ParagraphBorder_DashStyle
pattern ParagraphBorder_DashStyle_DASHSTYLEUNSPECIFIED = ParagraphBorder_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern ParagraphBorder_DashStyle_Solid :: ParagraphBorder_DashStyle
pattern ParagraphBorder_DashStyle_Solid = ParagraphBorder_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern ParagraphBorder_DashStyle_Dot :: ParagraphBorder_DashStyle
pattern ParagraphBorder_DashStyle_Dot = ParagraphBorder_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern ParagraphBorder_DashStyle_Dash :: ParagraphBorder_DashStyle
pattern ParagraphBorder_DashStyle_Dash = ParagraphBorder_DashStyle "DASH"

{-# COMPLETE
  ParagraphBorder_DashStyle_DASHSTYLEUNSPECIFIED,
  ParagraphBorder_DashStyle_Solid,
  ParagraphBorder_DashStyle_Dot,
  ParagraphBorder_DashStyle_Dash,
  ParagraphBorder_DashStyle #-}

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

-- | The text direction of this paragraph. If unset, the value defaults to LEFT/TO/RIGHT since paragraph direction is not inherited.
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

-- | The content direction is unspecified.
pattern ParagraphStyle_Direction_CONTENTDIRECTIONUNSPECIFIED :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_CONTENTDIRECTIONUNSPECIFIED = ParagraphStyle_Direction "CONTENT_DIRECTION_UNSPECIFIED"

-- | The content goes from left to right.
pattern ParagraphStyle_Direction_LEFTTORIGHT :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_LEFTTORIGHT = ParagraphStyle_Direction "LEFT_TO_RIGHT"

-- | The content goes from right to left.
pattern ParagraphStyle_Direction_RIGHTTOLEFT :: ParagraphStyle_Direction
pattern ParagraphStyle_Direction_RIGHTTOLEFT = ParagraphStyle_Direction "RIGHT_TO_LEFT"

{-# COMPLETE
  ParagraphStyle_Direction_CONTENTDIRECTIONUNSPECIFIED,
  ParagraphStyle_Direction_LEFTTORIGHT,
  ParagraphStyle_Direction_RIGHTTOLEFT,
  ParagraphStyle_Direction #-}

-- | The named style type of the paragraph. Since updating the named style type affects other properties within ParagraphStyle, the named style type is applied before the other properties are updated.
newtype ParagraphStyle_NamedStyleType = ParagraphStyle_NamedStyleType { fromParagraphStyle_NamedStyleType :: Core.Text }
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

-- | The type of named style is unspecified.
pattern ParagraphStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED = ParagraphStyle_NamedStyleType "NAMED_STYLE_TYPE_UNSPECIFIED"

-- | Normal text.
pattern ParagraphStyle_NamedStyleType_NORMALTEXT :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_NORMALTEXT = ParagraphStyle_NamedStyleType "NORMAL_TEXT"

-- | Title.
pattern ParagraphStyle_NamedStyleType_Title :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_Title = ParagraphStyle_NamedStyleType "TITLE"

-- | Subtitle.
pattern ParagraphStyle_NamedStyleType_Subtitle :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_Subtitle = ParagraphStyle_NamedStyleType "SUBTITLE"

-- | Heading 1.
pattern ParagraphStyle_NamedStyleType_HEADING_1 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_1 = ParagraphStyle_NamedStyleType "HEADING_1"

-- | Heading 2.
pattern ParagraphStyle_NamedStyleType_HEADING_2 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_2 = ParagraphStyle_NamedStyleType "HEADING_2"

-- | Heading 3.
pattern ParagraphStyle_NamedStyleType_HEADING_3 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_3 = ParagraphStyle_NamedStyleType "HEADING_3"

-- | Heading 4.
pattern ParagraphStyle_NamedStyleType_HEADING_4 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_4 = ParagraphStyle_NamedStyleType "HEADING_4"

-- | Heading 5.
pattern ParagraphStyle_NamedStyleType_HEADING_5 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_5 = ParagraphStyle_NamedStyleType "HEADING_5"

-- | Heading 6.
pattern ParagraphStyle_NamedStyleType_HEADING_6 :: ParagraphStyle_NamedStyleType
pattern ParagraphStyle_NamedStyleType_HEADING_6 = ParagraphStyle_NamedStyleType "HEADING_6"

{-# COMPLETE
  ParagraphStyle_NamedStyleType_NAMEDSTYLETYPEUNSPECIFIED,
  ParagraphStyle_NamedStyleType_NORMALTEXT,
  ParagraphStyle_NamedStyleType_Title,
  ParagraphStyle_NamedStyleType_Subtitle,
  ParagraphStyle_NamedStyleType_HEADING_1,
  ParagraphStyle_NamedStyleType_HEADING_2,
  ParagraphStyle_NamedStyleType_HEADING_3,
  ParagraphStyle_NamedStyleType_HEADING_4,
  ParagraphStyle_NamedStyleType_HEADING_5,
  ParagraphStyle_NamedStyleType_HEADING_6,
  ParagraphStyle_NamedStyleType #-}

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

-- | The layout of this positioned object.
newtype PositionedObjectPositioning_Layout = PositionedObjectPositioning_Layout { fromPositionedObjectPositioning_Layout :: Core.Text }
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

-- | The layout is unspecified.
pattern PositionedObjectPositioning_Layout_POSITIONEDOBJECTLAYOUTUNSPECIFIED :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_POSITIONEDOBJECTLAYOUTUNSPECIFIED = PositionedObjectPositioning_Layout "POSITIONED_OBJECT_LAYOUT_UNSPECIFIED"

-- | The text wraps around the positioned object.
pattern PositionedObjectPositioning_Layout_WRAPTEXT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_WRAPTEXT = PositionedObjectPositioning_Layout "WRAP_TEXT"

-- | Breaks text such that the positioned object is on the left and text is on the right.
pattern PositionedObjectPositioning_Layout_BREAKLEFT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_BREAKLEFT = PositionedObjectPositioning_Layout "BREAK_LEFT"

-- | Breaks text such that the positioned object is on the right and text is on the left.
pattern PositionedObjectPositioning_Layout_BREAKRIGHT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_BREAKRIGHT = PositionedObjectPositioning_Layout "BREAK_RIGHT"

-- | Breaks text such that there\'s no text on the left or right of the positioned object.
pattern PositionedObjectPositioning_Layout_BREAKLEFTRIGHT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_BREAKLEFTRIGHT = PositionedObjectPositioning_Layout "BREAK_LEFT_RIGHT"

-- | The positioned object is in front of the text.
pattern PositionedObjectPositioning_Layout_INFRONTOFTEXT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_INFRONTOFTEXT = PositionedObjectPositioning_Layout "IN_FRONT_OF_TEXT"

-- | The positioned object is behind the text.
pattern PositionedObjectPositioning_Layout_BEHINDTEXT :: PositionedObjectPositioning_Layout
pattern PositionedObjectPositioning_Layout_BEHINDTEXT = PositionedObjectPositioning_Layout "BEHIND_TEXT"

{-# COMPLETE
  PositionedObjectPositioning_Layout_POSITIONEDOBJECTLAYOUTUNSPECIFIED,
  PositionedObjectPositioning_Layout_WRAPTEXT,
  PositionedObjectPositioning_Layout_BREAKLEFT,
  PositionedObjectPositioning_Layout_BREAKRIGHT,
  PositionedObjectPositioning_Layout_BREAKLEFTRIGHT,
  PositionedObjectPositioning_Layout_INFRONTOFTEXT,
  PositionedObjectPositioning_Layout_BEHINDTEXT,
  PositionedObjectPositioning_Layout #-}

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

-- | Scales and centers the image to fill the bounds of the original image. The image may be cropped in order to fill the original image\'s bounds. The rendered size of the image will be the same as the original image.
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERCROP :: ReplaceImageRequest_ImageReplaceMethod
pattern ReplaceImageRequest_ImageReplaceMethod_CENTERCROP = ReplaceImageRequest_ImageReplaceMethod "CENTER_CROP"

{-# COMPLETE
  ReplaceImageRequest_ImageReplaceMethod_IMAGEREPLACEMETHODUNSPECIFIED,
  ReplaceImageRequest_ImageReplaceMethod_CENTERCROP,
  ReplaceImageRequest_ImageReplaceMethod #-}

-- | The style of column separators. This style can be set even when there\'s one column in the section. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
newtype SectionStyle_ColumnSeparatorStyle = SectionStyle_ColumnSeparatorStyle { fromSectionStyle_ColumnSeparatorStyle :: Core.Text }
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

-- | An unspecified column separator style.
pattern SectionStyle_ColumnSeparatorStyle_COLUMNSEPARATORSTYLEUNSPECIFIED :: SectionStyle_ColumnSeparatorStyle
pattern SectionStyle_ColumnSeparatorStyle_COLUMNSEPARATORSTYLEUNSPECIFIED = SectionStyle_ColumnSeparatorStyle "COLUMN_SEPARATOR_STYLE_UNSPECIFIED"

-- | No column separator lines between columns.
pattern SectionStyle_ColumnSeparatorStyle_None :: SectionStyle_ColumnSeparatorStyle
pattern SectionStyle_ColumnSeparatorStyle_None = SectionStyle_ColumnSeparatorStyle "NONE"

-- | Renders a column separator line between each column.
pattern SectionStyle_ColumnSeparatorStyle_BETWEENEACHCOLUMN :: SectionStyle_ColumnSeparatorStyle
pattern SectionStyle_ColumnSeparatorStyle_BETWEENEACHCOLUMN = SectionStyle_ColumnSeparatorStyle "BETWEEN_EACH_COLUMN"

{-# COMPLETE
  SectionStyle_ColumnSeparatorStyle_COLUMNSEPARATORSTYLEUNSPECIFIED,
  SectionStyle_ColumnSeparatorStyle_None,
  SectionStyle_ColumnSeparatorStyle_BETWEENEACHCOLUMN,
  SectionStyle_ColumnSeparatorStyle #-}

-- | The content direction of this section. If unset, the value defaults to LEFT/TO/RIGHT. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
newtype SectionStyle_ContentDirection = SectionStyle_ContentDirection { fromSectionStyle_ContentDirection :: Core.Text }
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

-- | The content direction is unspecified.
pattern SectionStyle_ContentDirection_CONTENTDIRECTIONUNSPECIFIED :: SectionStyle_ContentDirection
pattern SectionStyle_ContentDirection_CONTENTDIRECTIONUNSPECIFIED = SectionStyle_ContentDirection "CONTENT_DIRECTION_UNSPECIFIED"

-- | The content goes from left to right.
pattern SectionStyle_ContentDirection_LEFTTORIGHT :: SectionStyle_ContentDirection
pattern SectionStyle_ContentDirection_LEFTTORIGHT = SectionStyle_ContentDirection "LEFT_TO_RIGHT"

-- | The content goes from right to left.
pattern SectionStyle_ContentDirection_RIGHTTOLEFT :: SectionStyle_ContentDirection
pattern SectionStyle_ContentDirection_RIGHTTOLEFT = SectionStyle_ContentDirection "RIGHT_TO_LEFT"

{-# COMPLETE
  SectionStyle_ContentDirection_CONTENTDIRECTIONUNSPECIFIED,
  SectionStyle_ContentDirection_LEFTTORIGHT,
  SectionStyle_ContentDirection_RIGHTTOLEFT,
  SectionStyle_ContentDirection #-}

-- | Output only. The type of section.
newtype SectionStyle_SectionType = SectionStyle_SectionType { fromSectionStyle_SectionType :: Core.Text }
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

-- | The section type is unspecified.
pattern SectionStyle_SectionType_SECTIONTYPEUNSPECIFIED :: SectionStyle_SectionType
pattern SectionStyle_SectionType_SECTIONTYPEUNSPECIFIED = SectionStyle_SectionType "SECTION_TYPE_UNSPECIFIED"

-- | The section starts immediately after the last paragraph of the previous section.
pattern SectionStyle_SectionType_Continuous :: SectionStyle_SectionType
pattern SectionStyle_SectionType_Continuous = SectionStyle_SectionType "CONTINUOUS"

-- | The section starts on the next page.
pattern SectionStyle_SectionType_NEXTPAGE :: SectionStyle_SectionType
pattern SectionStyle_SectionType_NEXTPAGE = SectionStyle_SectionType "NEXT_PAGE"

{-# COMPLETE
  SectionStyle_SectionType_SECTIONTYPEUNSPECIFIED,
  SectionStyle_SectionType_Continuous,
  SectionStyle_SectionType_NEXTPAGE,
  SectionStyle_SectionType #-}

-- | The alignment of this tab stop. If unset, the value defaults to START.
newtype TabStop_Alignment = TabStop_Alignment { fromTabStop_Alignment :: Core.Text }
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

-- | The tab stop alignment is unspecified.
pattern TabStop_Alignment_TABSTOPALIGNMENTUNSPECIFIED :: TabStop_Alignment
pattern TabStop_Alignment_TABSTOPALIGNMENTUNSPECIFIED = TabStop_Alignment "TAB_STOP_ALIGNMENT_UNSPECIFIED"

-- | The tab stop is aligned to the start of the line. This is the default.
pattern TabStop_Alignment_Start :: TabStop_Alignment
pattern TabStop_Alignment_Start = TabStop_Alignment "START"

-- | The tab stop is aligned to the center of the line.
pattern TabStop_Alignment_Center :: TabStop_Alignment
pattern TabStop_Alignment_Center = TabStop_Alignment "CENTER"

-- | The tab stop is aligned to the end of the line.
pattern TabStop_Alignment_End :: TabStop_Alignment
pattern TabStop_Alignment_End = TabStop_Alignment "END"

{-# COMPLETE
  TabStop_Alignment_TABSTOPALIGNMENTUNSPECIFIED,
  TabStop_Alignment_Start,
  TabStop_Alignment_Center,
  TabStop_Alignment_End,
  TabStop_Alignment #-}

-- | The dash style of the border.
newtype TableCellBorder_DashStyle = TableCellBorder_DashStyle { fromTableCellBorder_DashStyle :: Core.Text }
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
pattern TableCellBorder_DashStyle_DASHSTYLEUNSPECIFIED :: TableCellBorder_DashStyle
pattern TableCellBorder_DashStyle_DASHSTYLEUNSPECIFIED = TableCellBorder_DashStyle "DASH_STYLE_UNSPECIFIED"

-- | Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'solid\'. This is the default dash style.
pattern TableCellBorder_DashStyle_Solid :: TableCellBorder_DashStyle
pattern TableCellBorder_DashStyle_Solid = TableCellBorder_DashStyle "SOLID"

-- | Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
pattern TableCellBorder_DashStyle_Dot :: TableCellBorder_DashStyle
pattern TableCellBorder_DashStyle_Dot = TableCellBorder_DashStyle "DOT"

-- | Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dash\'.
pattern TableCellBorder_DashStyle_Dash :: TableCellBorder_DashStyle
pattern TableCellBorder_DashStyle_Dash = TableCellBorder_DashStyle "DASH"

{-# COMPLETE
  TableCellBorder_DashStyle_DASHSTYLEUNSPECIFIED,
  TableCellBorder_DashStyle_Solid,
  TableCellBorder_DashStyle_Dot,
  TableCellBorder_DashStyle_Dash,
  TableCellBorder_DashStyle #-}

-- | The alignment of the content in the table cell. The default alignment matches the alignment for newly created table cells in the Docs editor.
newtype TableCellStyle_ContentAlignment = TableCellStyle_ContentAlignment { fromTableCellStyle_ContentAlignment :: Core.Text }
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

-- | An unspecified content alignment. The content alignment is inherited from the parent if one exists.
pattern TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED :: TableCellStyle_ContentAlignment
pattern TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED = TableCellStyle_ContentAlignment "CONTENT_ALIGNMENT_UNSPECIFIED"

-- | An unsupported content alignment.
pattern TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED :: TableCellStyle_ContentAlignment
pattern TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED = TableCellStyle_ContentAlignment "CONTENT_ALIGNMENT_UNSUPPORTED"

-- | An alignment that aligns the content to the top of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'t\'.
pattern TableCellStyle_ContentAlignment_Top :: TableCellStyle_ContentAlignment
pattern TableCellStyle_ContentAlignment_Top = TableCellStyle_ContentAlignment "TOP"

-- | An alignment that aligns the content to the middle of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'ctr\'.
pattern TableCellStyle_ContentAlignment_Middle :: TableCellStyle_ContentAlignment
pattern TableCellStyle_ContentAlignment_Middle = TableCellStyle_ContentAlignment "MIDDLE"

-- | An alignment that aligns the content to the bottom of the content holder. Corresponds to ECMA-376 ST_TextAnchoringType \'b\'.
pattern TableCellStyle_ContentAlignment_Bottom :: TableCellStyle_ContentAlignment
pattern TableCellStyle_ContentAlignment_Bottom = TableCellStyle_ContentAlignment "BOTTOM"

{-# COMPLETE
  TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSPECIFIED,
  TableCellStyle_ContentAlignment_CONTENTALIGNMENTUNSUPPORTED,
  TableCellStyle_ContentAlignment_Top,
  TableCellStyle_ContentAlignment_Middle,
  TableCellStyle_ContentAlignment_Bottom,
  TableCellStyle_ContentAlignment #-}

-- | The width type of the column.
newtype TableColumnProperties_WidthType = TableColumnProperties_WidthType { fromTableColumnProperties_WidthType :: Core.Text }
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

-- | The column width type is unspecified.
pattern TableColumnProperties_WidthType_WIDTHTYPEUNSPECIFIED :: TableColumnProperties_WidthType
pattern TableColumnProperties_WidthType_WIDTHTYPEUNSPECIFIED = TableColumnProperties_WidthType "WIDTH_TYPE_UNSPECIFIED"

-- | The column width is evenly distributed among the other evenly distributed columns. The width of the column is automatically determined and will have an equal portion of the width remaining for the table after accounting for all columns with specified widths.
pattern TableColumnProperties_WidthType_EVENLYDISTRIBUTED :: TableColumnProperties_WidthType
pattern TableColumnProperties_WidthType_EVENLYDISTRIBUTED = TableColumnProperties_WidthType "EVENLY_DISTRIBUTED"

-- | A fixed column width. The width property contains the column\'s width.
pattern TableColumnProperties_WidthType_FIXEDWIDTH :: TableColumnProperties_WidthType
pattern TableColumnProperties_WidthType_FIXEDWIDTH = TableColumnProperties_WidthType "FIXED_WIDTH"

{-# COMPLETE
  TableColumnProperties_WidthType_WIDTHTYPEUNSPECIFIED,
  TableColumnProperties_WidthType_EVENLYDISTRIBUTED,
  TableColumnProperties_WidthType_FIXEDWIDTH,
  TableColumnProperties_WidthType #-}

-- | The text\'s vertical offset from its normal position. Text with @SUPERSCRIPT@ or @SUBSCRIPT@ baseline offsets is automatically rendered in a smaller font size, computed based on the @font_size@ field. Changes in this field don\'t affect the @font_size@.
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

-- | The suggestions view mode to apply to the document. This allows viewing the document with all suggestions inline, accepted or rejected. If one is not specified, DEFAULT/FOR/CURRENT_ACCESS is used.
newtype DocumentsGetSuggestionsViewMode = DocumentsGetSuggestionsViewMode { fromDocumentsGetSuggestionsViewMode :: Core.Text }
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

-- | The SuggestionsViewMode applied to the returned document depends on the user\'s current access level. If the user only has view access, PREVIEW/WITHOUT/SUGGESTIONS is applied. Otherwise, SUGGESTIONS_INLINE is applied. This is the default suggestions view mode.
pattern DocumentsGetSuggestionsViewMode_DEFAULTFORCURRENTACCESS :: DocumentsGetSuggestionsViewMode
pattern DocumentsGetSuggestionsViewMode_DEFAULTFORCURRENTACCESS = DocumentsGetSuggestionsViewMode "DEFAULT_FOR_CURRENT_ACCESS"

-- | The returned document has suggestions inline. Suggested changes will be differentiated from base content within the document. Requests to retrieve a document using this mode will return a 403 error if the user does not have permission to view suggested changes.
pattern DocumentsGetSuggestionsViewMode_SUGGESTIONSINLINE :: DocumentsGetSuggestionsViewMode
pattern DocumentsGetSuggestionsViewMode_SUGGESTIONSINLINE = DocumentsGetSuggestionsViewMode "SUGGESTIONS_INLINE"

-- | The returned document is a preview with all suggested changes accepted. Requests to retrieve a document using this mode will return a 403 error if the user does not have permission to view suggested changes.
pattern DocumentsGetSuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED :: DocumentsGetSuggestionsViewMode
pattern DocumentsGetSuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED = DocumentsGetSuggestionsViewMode "PREVIEW_SUGGESTIONS_ACCEPTED"

-- | The returned document is a preview with all suggested changes rejected if there are any suggestions in the document.
pattern DocumentsGetSuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS :: DocumentsGetSuggestionsViewMode
pattern DocumentsGetSuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS = DocumentsGetSuggestionsViewMode "PREVIEW_WITHOUT_SUGGESTIONS"

{-# COMPLETE
  DocumentsGetSuggestionsViewMode_DEFAULTFORCURRENTACCESS,
  DocumentsGetSuggestionsViewMode_SUGGESTIONSINLINE,
  DocumentsGetSuggestionsViewMode_PREVIEWSUGGESTIONSACCEPTED,
  DocumentsGetSuggestionsViewMode_PREVIEWWITHOUTSUGGESTIONS,
  DocumentsGetSuggestionsViewMode #-}
