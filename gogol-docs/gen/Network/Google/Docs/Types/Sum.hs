{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Docs.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Docs.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | The text direction of this paragraph. If unset, the value defaults to
-- LEFT_TO_RIGHT since paragraph direction is not inherited.
data ParagraphStyleDirection
    = ContentDirectionUnspecified
      -- ^ @CONTENT_DIRECTION_UNSPECIFIED@
      -- The content direction is unspecified.
    | LeftToRight
      -- ^ @LEFT_TO_RIGHT@
      -- The content goes from left to right.
    | RightToLeft
      -- ^ @RIGHT_TO_LEFT@
      -- The content goes from right to left.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleDirection

instance FromHttpApiData ParagraphStyleDirection where
    parseQueryParam = \case
        "CONTENT_DIRECTION_UNSPECIFIED" -> Right ContentDirectionUnspecified
        "LEFT_TO_RIGHT" -> Right LeftToRight
        "RIGHT_TO_LEFT" -> Right RightToLeft
        x -> Left ("Unable to parse ParagraphStyleDirection from: " <> x)

instance ToHttpApiData ParagraphStyleDirection where
    toQueryParam = \case
        ContentDirectionUnspecified -> "CONTENT_DIRECTION_UNSPECIFIED"
        LeftToRight -> "LEFT_TO_RIGHT"
        RightToLeft -> "RIGHT_TO_LEFT"

instance FromJSON ParagraphStyleDirection where
    parseJSON = parseJSONText "ParagraphStyleDirection"

instance ToJSON ParagraphStyleDirection where
    toJSON = toJSONText

-- | The text\'s vertical offset from its normal position. Text with
-- \`SUPERSCRIPT\` or \`SUBSCRIPT\` baseline offsets is automatically
-- rendered in a smaller font size, computed based on the \`font_size\`
-- field. The \`font_size\` itself is not affected by changes in this
-- field.
data TextStyleBaselineOffSet
    = BaselineOffSetUnspecified
      -- ^ @BASELINE_OFFSET_UNSPECIFIED@
      -- The text\'s baseline offset is inherited from the parent.
    | None
      -- ^ @NONE@
      -- The text is not vertically offset.
    | Superscript
      -- ^ @SUPERSCRIPT@
      -- The text is vertically offset upwards (superscript).
    | Subscript
      -- ^ @SUBSCRIPT@
      -- The text is vertically offset downwards (subscript).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TextStyleBaselineOffSet

instance FromHttpApiData TextStyleBaselineOffSet where
    parseQueryParam = \case
        "BASELINE_OFFSET_UNSPECIFIED" -> Right BaselineOffSetUnspecified
        "NONE" -> Right None
        "SUPERSCRIPT" -> Right Superscript
        "SUBSCRIPT" -> Right Subscript
        x -> Left ("Unable to parse TextStyleBaselineOffSet from: " <> x)

instance ToHttpApiData TextStyleBaselineOffSet where
    toQueryParam = \case
        BaselineOffSetUnspecified -> "BASELINE_OFFSET_UNSPECIFIED"
        None -> "NONE"
        Superscript -> "SUPERSCRIPT"
        Subscript -> "SUBSCRIPT"

instance FromJSON TextStyleBaselineOffSet where
    parseJSON = parseJSONText "TextStyleBaselineOffSet"

instance ToJSON TextStyleBaselineOffSet where
    toJSON = toJSONText

-- | The width type of the column.
data TableColumnPropertiesWidthType
    = WidthTypeUnspecified
      -- ^ @WIDTH_TYPE_UNSPECIFIED@
      -- The column width type is unspecified.
    | EvenlyDistributed
      -- ^ @EVENLY_DISTRIBUTED@
      -- The column width is evenly distributed among the other evenly distrubted
      -- columns. The width of the column is automatically determined and will
      -- have an equal portion of the width remaining for the table after
      -- accounting for all columns with specified widths.
    | FixedWidth
      -- ^ @FIXED_WIDTH@
      -- A fixed column width. The width property contains the column\'s width.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableColumnPropertiesWidthType

instance FromHttpApiData TableColumnPropertiesWidthType where
    parseQueryParam = \case
        "WIDTH_TYPE_UNSPECIFIED" -> Right WidthTypeUnspecified
        "EVENLY_DISTRIBUTED" -> Right EvenlyDistributed
        "FIXED_WIDTH" -> Right FixedWidth
        x -> Left ("Unable to parse TableColumnPropertiesWidthType from: " <> x)

instance ToHttpApiData TableColumnPropertiesWidthType where
    toQueryParam = \case
        WidthTypeUnspecified -> "WIDTH_TYPE_UNSPECIFIED"
        EvenlyDistributed -> "EVENLY_DISTRIBUTED"
        FixedWidth -> "FIXED_WIDTH"

instance FromJSON TableColumnPropertiesWidthType where
    parseJSON = parseJSONText "TableColumnPropertiesWidthType"

instance ToJSON TableColumnPropertiesWidthType where
    toJSON = toJSONText

-- | The kinds of bullet glyphs to be used.
data CreateParagraphBulletsRequestBulletPreset
    = BulletGlyphPresetUnspecified
      -- ^ @BULLET_GLYPH_PRESET_UNSPECIFIED@
      -- The bullet glyph preset is unspecified.
    | BulletDiscCircleSquare
      -- ^ @BULLET_DISC_CIRCLE_SQUARE@
      -- A bulleted list with a \`DISC\`, \`CIRCLE\` and \`SQUARE\` bullet glyph
      -- for the first 3 list nesting levels.
    | BulletDiamondxARROW3DSquare
      -- ^ @BULLET_DIAMONDX_ARROW3D_SQUARE@
      -- A bulleted list with a \`DIAMONDX\`, \`ARROW3D\` and \`SQUARE\` bullet
      -- glyph for the first 3 list nesting levels.
    | BulletCheckbox
      -- ^ @BULLET_CHECKBOX@
      -- A bulleted list with \`CHECKBOX\` bullet glyphs for all list nesting
      -- levels.
    | BulletArrowDiamondDisc
      -- ^ @BULLET_ARROW_DIAMOND_DISC@
      -- A bulleted list with a \`ARROW\`, \`DIAMOND\` and \`DISC\` bullet glyph
      -- for the first 3 list nesting levels.
    | BulletStarCircleSquare
      -- ^ @BULLET_STAR_CIRCLE_SQUARE@
      -- A bulleted list with a \`STAR\`, \`CIRCLE\` and \`SQUARE\` bullet glyph
      -- for the first 3 list nesting levels.
    | BulletARROW3DCircleSquare
      -- ^ @BULLET_ARROW3D_CIRCLE_SQUARE@
      -- A bulleted list with a \`ARROW3D\`, \`CIRCLE\` and \`SQUARE\` bullet
      -- glyph for the first 3 list nesting levels.
    | BulletLefttriangleDiamondDisc
      -- ^ @BULLET_LEFTTRIANGLE_DIAMOND_DISC@
      -- A bulleted list with a \`LEFTTRIANGLE\`, \`DIAMOND\` and \`DISC\` bullet
      -- glyph for the first 3 list nesting levels.
    | BulletDiamondxHollowdiamondSquare
      -- ^ @BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE@
      -- A bulleted list with a \`DIAMONDX\`, \`HOLLOWDIAMOND\` and \`SQUARE\`
      -- bullet glyph for the first 3 list nesting levels.
    | BulletDiamondCircleSquare
      -- ^ @BULLET_DIAMOND_CIRCLE_SQUARE@
      -- A bulleted list with a \`DIAMOND\`, \`CIRCLE\` and \`SQUARE\` bullet
      -- glyph for the first 3 list nesting levels.
    | NumberedDecimalAlphaRoman
      -- ^ @NUMBERED_DECIMAL_ALPHA_ROMAN@
      -- A numbered list with \`DECIMAL\`, \`ALPHA\` and \`ROMAN\` numeric glyphs
      -- for the first 3 list nesting levels, followed by periods.
    | NumberedDecimalAlphaRomanParens
      -- ^ @NUMBERED_DECIMAL_ALPHA_ROMAN_PARENS@
      -- A numbered list with \`DECIMAL\`, \`ALPHA\` and \`ROMAN\` numeric glyphs
      -- for the first 3 list nesting levels, followed by parenthesis.
    | NumberedDecimalNested
      -- ^ @NUMBERED_DECIMAL_NESTED@
      -- A numbered list with \`DECIMAL\` numeric glyphs separated by periods,
      -- where each nesting level uses the previous nesting level\'s glyph as a
      -- prefix. For example: \'1.\', \'1.1.\', \'2.\', \'2.2.\'.
    | NumberedUpperalphaAlphaRoman
      -- ^ @NUMBERED_UPPERALPHA_ALPHA_ROMAN@
      -- A numbered list with \`UPPERALPHA\`, \`ALPHA\` and \`ROMAN\` numeric
      -- glyphs for the first 3 list nesting levels, followed by periods.
    | NumberedUpperromanUpperalphaDecimal
      -- ^ @NUMBERED_UPPERROMAN_UPPERALPHA_DECIMAL@
      -- A numbered list with \`UPPERROMAN\`, \`UPPERALPHA\` and \`DECIMAL\`
      -- numeric glyphs for the first 3 list nesting levels, followed by periods.
    | NumberedZerodecimalAlphaRoman
      -- ^ @NUMBERED_ZERODECIMAL_ALPHA_ROMAN@
      -- A numbered list with \`ZERODECIMAL\`, \`ALPHA\` and \`ROMAN\` numeric
      -- glyphs for the first 3 list nesting levels, followed by periods.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateParagraphBulletsRequestBulletPreset

instance FromHttpApiData CreateParagraphBulletsRequestBulletPreset where
    parseQueryParam = \case
        "BULLET_GLYPH_PRESET_UNSPECIFIED" -> Right BulletGlyphPresetUnspecified
        "BULLET_DISC_CIRCLE_SQUARE" -> Right BulletDiscCircleSquare
        "BULLET_DIAMONDX_ARROW3D_SQUARE" -> Right BulletDiamondxARROW3DSquare
        "BULLET_CHECKBOX" -> Right BulletCheckbox
        "BULLET_ARROW_DIAMOND_DISC" -> Right BulletArrowDiamondDisc
        "BULLET_STAR_CIRCLE_SQUARE" -> Right BulletStarCircleSquare
        "BULLET_ARROW3D_CIRCLE_SQUARE" -> Right BulletARROW3DCircleSquare
        "BULLET_LEFTTRIANGLE_DIAMOND_DISC" -> Right BulletLefttriangleDiamondDisc
        "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE" -> Right BulletDiamondxHollowdiamondSquare
        "BULLET_DIAMOND_CIRCLE_SQUARE" -> Right BulletDiamondCircleSquare
        "NUMBERED_DECIMAL_ALPHA_ROMAN" -> Right NumberedDecimalAlphaRoman
        "NUMBERED_DECIMAL_ALPHA_ROMAN_PARENS" -> Right NumberedDecimalAlphaRomanParens
        "NUMBERED_DECIMAL_NESTED" -> Right NumberedDecimalNested
        "NUMBERED_UPPERALPHA_ALPHA_ROMAN" -> Right NumberedUpperalphaAlphaRoman
        "NUMBERED_UPPERROMAN_UPPERALPHA_DECIMAL" -> Right NumberedUpperromanUpperalphaDecimal
        "NUMBERED_ZERODECIMAL_ALPHA_ROMAN" -> Right NumberedZerodecimalAlphaRoman
        x -> Left ("Unable to parse CreateParagraphBulletsRequestBulletPreset from: " <> x)

instance ToHttpApiData CreateParagraphBulletsRequestBulletPreset where
    toQueryParam = \case
        BulletGlyphPresetUnspecified -> "BULLET_GLYPH_PRESET_UNSPECIFIED"
        BulletDiscCircleSquare -> "BULLET_DISC_CIRCLE_SQUARE"
        BulletDiamondxARROW3DSquare -> "BULLET_DIAMONDX_ARROW3D_SQUARE"
        BulletCheckbox -> "BULLET_CHECKBOX"
        BulletArrowDiamondDisc -> "BULLET_ARROW_DIAMOND_DISC"
        BulletStarCircleSquare -> "BULLET_STAR_CIRCLE_SQUARE"
        BulletARROW3DCircleSquare -> "BULLET_ARROW3D_CIRCLE_SQUARE"
        BulletLefttriangleDiamondDisc -> "BULLET_LEFTTRIANGLE_DIAMOND_DISC"
        BulletDiamondxHollowdiamondSquare -> "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE"
        BulletDiamondCircleSquare -> "BULLET_DIAMOND_CIRCLE_SQUARE"
        NumberedDecimalAlphaRoman -> "NUMBERED_DECIMAL_ALPHA_ROMAN"
        NumberedDecimalAlphaRomanParens -> "NUMBERED_DECIMAL_ALPHA_ROMAN_PARENS"
        NumberedDecimalNested -> "NUMBERED_DECIMAL_NESTED"
        NumberedUpperalphaAlphaRoman -> "NUMBERED_UPPERALPHA_ALPHA_ROMAN"
        NumberedUpperromanUpperalphaDecimal -> "NUMBERED_UPPERROMAN_UPPERALPHA_DECIMAL"
        NumberedZerodecimalAlphaRoman -> "NUMBERED_ZERODECIMAL_ALPHA_ROMAN"

instance FromJSON CreateParagraphBulletsRequestBulletPreset where
    parseJSON = parseJSONText "CreateParagraphBulletsRequestBulletPreset"

instance ToJSON CreateParagraphBulletsRequestBulletPreset where
    toJSON = toJSONText

-- | The dash style of the border.
data TableCellBOrderDashStyle
    = DashStyleUnspecified
      -- ^ @DASH_STYLE_UNSPECIFIED@
      -- Unspecified dash style.
    | Solid
      -- ^ @SOLID@
      -- Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'solid\'. This is the default dash style.
    | Dot
      -- ^ @DOT@
      -- Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
    | Dash
      -- ^ @DASH@
      -- Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'dash\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableCellBOrderDashStyle

instance FromHttpApiData TableCellBOrderDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right DashStyleUnspecified
        "SOLID" -> Right Solid
        "DOT" -> Right Dot
        "DASH" -> Right Dash
        x -> Left ("Unable to parse TableCellBOrderDashStyle from: " <> x)

instance ToHttpApiData TableCellBOrderDashStyle where
    toQueryParam = \case
        DashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        Solid -> "SOLID"
        Dot -> "DOT"
        Dash -> "DASH"

instance FromJSON TableCellBOrderDashStyle where
    parseJSON = parseJSONText "TableCellBOrderDashStyle"

instance ToJSON TableCellBOrderDashStyle where
    toJSON = toJSONText

-- | The named style type of the paragraph. Since updating the named style
-- type affects other properties within ParagraphStyle, the named style
-- type is applied before the other properties are updated.
data ParagraphStyleNamedStyleType
    = NamedStyleTypeUnspecified
      -- ^ @NAMED_STYLE_TYPE_UNSPECIFIED@
      -- The type of named style is unspecified.
    | NormalText
      -- ^ @NORMAL_TEXT@
      -- Normal text.
    | Title
      -- ^ @TITLE@
      -- Title.
    | Subtitle
      -- ^ @SUBTITLE@
      -- Subtitle.
    | Heading1
      -- ^ @HEADING_1@
      -- Heading 1.
    | Heading2
      -- ^ @HEADING_2@
      -- Heading 2.
    | Heading3
      -- ^ @HEADING_3@
      -- Heading 3.
    | Heading4
      -- ^ @HEADING_4@
      -- Heading 4.
    | Heading5
      -- ^ @HEADING_5@
      -- Heading 5.
    | Heading6
      -- ^ @HEADING_6@
      -- Heading 6.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleNamedStyleType

instance FromHttpApiData ParagraphStyleNamedStyleType where
    parseQueryParam = \case
        "NAMED_STYLE_TYPE_UNSPECIFIED" -> Right NamedStyleTypeUnspecified
        "NORMAL_TEXT" -> Right NormalText
        "TITLE" -> Right Title
        "SUBTITLE" -> Right Subtitle
        "HEADING_1" -> Right Heading1
        "HEADING_2" -> Right Heading2
        "HEADING_3" -> Right Heading3
        "HEADING_4" -> Right Heading4
        "HEADING_5" -> Right Heading5
        "HEADING_6" -> Right Heading6
        x -> Left ("Unable to parse ParagraphStyleNamedStyleType from: " <> x)

instance ToHttpApiData ParagraphStyleNamedStyleType where
    toQueryParam = \case
        NamedStyleTypeUnspecified -> "NAMED_STYLE_TYPE_UNSPECIFIED"
        NormalText -> "NORMAL_TEXT"
        Title -> "TITLE"
        Subtitle -> "SUBTITLE"
        Heading1 -> "HEADING_1"
        Heading2 -> "HEADING_2"
        Heading3 -> "HEADING_3"
        Heading4 -> "HEADING_4"
        Heading5 -> "HEADING_5"
        Heading6 -> "HEADING_6"

instance FromJSON ParagraphStyleNamedStyleType where
    parseJSON = parseJSONText "ParagraphStyleNamedStyleType"

instance ToJSON ParagraphStyleNamedStyleType where
    toJSON = toJSONText

-- | The alignment of this tab stop. If unset, the value defaults to START.
data TabStopAlignment
    = TabStopAlignmentUnspecified
      -- ^ @TAB_STOP_ALIGNMENT_UNSPECIFIED@
      -- The tab stop alignment is unspecified.
    | Start
      -- ^ @START@
      -- The tab stop is aligned to the start of the line. This is the default.
    | Center
      -- ^ @CENTER@
      -- The tab stop is aligned to the center of the line.
    | End
      -- ^ @END@
      -- The tab stop is aligned to the end of the line.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TabStopAlignment

instance FromHttpApiData TabStopAlignment where
    parseQueryParam = \case
        "TAB_STOP_ALIGNMENT_UNSPECIFIED" -> Right TabStopAlignmentUnspecified
        "START" -> Right Start
        "CENTER" -> Right Center
        "END" -> Right End
        x -> Left ("Unable to parse TabStopAlignment from: " <> x)

instance ToHttpApiData TabStopAlignment where
    toQueryParam = \case
        TabStopAlignmentUnspecified -> "TAB_STOP_ALIGNMENT_UNSPECIFIED"
        Start -> "START"
        Center -> "CENTER"
        End -> "END"

instance FromJSON TabStopAlignment where
    parseJSON = parseJSONText "TabStopAlignment"

instance ToJSON TabStopAlignment where
    toJSON = toJSONText

-- | The type of glyph used by bullets when paragraphs at this level of
-- nesting are ordered. The glyph type determines the type of glyph used to
-- replace placeholders within the glyph_format when paragraphs at this
-- level of nesting are ordered. For example, if the nesting level is 0,
-- the glyph_format is \`%0.\` and the glyph type is DECIMAL, then the
-- rendered glyph would replace the placeholder \`%0\` in the glyph format
-- with a number corresponding to list item\'s order within the list.
data NestingLevelGlyphType
    = NLGTGlyphTypeUnspecified
      -- ^ @GLYPH_TYPE_UNSPECIFIED@
      -- The glyph type is unspecified or unsupported.
    | NLGTNone
      -- ^ @NONE@
      -- An empty string.
    | NLGTDecimal
      -- ^ @DECIMAL@
      -- A number, like \`1\`, \`2\`, or \`3\`.
    | NLGTZeroDecimal
      -- ^ @ZERO_DECIMAL@
      -- A number where single digit numbers are prefixed with a zero, like
      -- \`01\`, \`02\`, or \`03\`. Numbers with more than one digit are not
      -- prefixed with a zero.
    | NLGTUpperAlpha
      -- ^ @UPPER_ALPHA@
      -- An uppercase letter, like \`A\`, \`B\`, or \`C\`.
    | NLGTAlpha
      -- ^ @ALPHA@
      -- A lowercase letter, like \`a\`, \`b\`, or \`c\`.
    | NLGTUpperRoman
      -- ^ @UPPER_ROMAN@
      -- An uppercase Roman numeral, like \`I\`, \`II\`, or \`III\`.
    | NLGTRoman
      -- ^ @ROMAN@
      -- A lowercase Roman numeral, like \`i\`, \`ii\`, or \`iii\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NestingLevelGlyphType

instance FromHttpApiData NestingLevelGlyphType where
    parseQueryParam = \case
        "GLYPH_TYPE_UNSPECIFIED" -> Right NLGTGlyphTypeUnspecified
        "NONE" -> Right NLGTNone
        "DECIMAL" -> Right NLGTDecimal
        "ZERO_DECIMAL" -> Right NLGTZeroDecimal
        "UPPER_ALPHA" -> Right NLGTUpperAlpha
        "ALPHA" -> Right NLGTAlpha
        "UPPER_ROMAN" -> Right NLGTUpperRoman
        "ROMAN" -> Right NLGTRoman
        x -> Left ("Unable to parse NestingLevelGlyphType from: " <> x)

instance ToHttpApiData NestingLevelGlyphType where
    toQueryParam = \case
        NLGTGlyphTypeUnspecified -> "GLYPH_TYPE_UNSPECIFIED"
        NLGTNone -> "NONE"
        NLGTDecimal -> "DECIMAL"
        NLGTZeroDecimal -> "ZERO_DECIMAL"
        NLGTUpperAlpha -> "UPPER_ALPHA"
        NLGTAlpha -> "ALPHA"
        NLGTUpperRoman -> "UPPER_ROMAN"
        NLGTRoman -> "ROMAN"

instance FromJSON NestingLevelGlyphType where
    parseJSON = parseJSONText "NestingLevelGlyphType"

instance ToJSON NestingLevelGlyphType where
    toJSON = toJSONText

-- | The dash style of the border.
data ParagraphBOrderDashStyle
    = PBODSDashStyleUnspecified
      -- ^ @DASH_STYLE_UNSPECIFIED@
      -- Unspecified dash style.
    | PBODSSolid
      -- ^ @SOLID@
      -- Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'solid\'. This is the default dash style.
    | PBODSDot
      -- ^ @DOT@
      -- Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
    | PBODSDash
      -- ^ @DASH@
      -- Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'dash\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphBOrderDashStyle

instance FromHttpApiData ParagraphBOrderDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right PBODSDashStyleUnspecified
        "SOLID" -> Right PBODSSolid
        "DOT" -> Right PBODSDot
        "DASH" -> Right PBODSDash
        x -> Left ("Unable to parse ParagraphBOrderDashStyle from: " <> x)

instance ToHttpApiData ParagraphBOrderDashStyle where
    toQueryParam = \case
        PBODSDashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        PBODSSolid -> "SOLID"
        PBODSDot -> "DOT"
        PBODSDash -> "DASH"

instance FromJSON ParagraphBOrderDashStyle where
    parseJSON = parseJSONText "ParagraphBOrderDashStyle"

instance ToJSON ParagraphBOrderDashStyle where
    toJSON = toJSONText

-- | The text alignment for this paragraph.
data ParagraphStyleAlignment
    = PSAAlignmentUnspecified
      -- ^ @ALIGNMENT_UNSPECIFIED@
      -- The paragraph alignment is inherited from the parent.
    | PSAStart
      -- ^ @START@
      -- The paragraph is aligned to the start of the line. Left-aligned for LTR
      -- text, right-aligned otherwise.
    | PSACenter
      -- ^ @CENTER@
      -- The paragraph is centered.
    | PSAEnd
      -- ^ @END@
      -- The paragraph is aligned to the end of the line. Right-aligned for LTR
      -- text, left-aligned otherwise.
    | PSAJustified
      -- ^ @JUSTIFIED@
      -- The paragraph is justified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleAlignment

instance FromHttpApiData ParagraphStyleAlignment where
    parseQueryParam = \case
        "ALIGNMENT_UNSPECIFIED" -> Right PSAAlignmentUnspecified
        "START" -> Right PSAStart
        "CENTER" -> Right PSACenter
        "END" -> Right PSAEnd
        "JUSTIFIED" -> Right PSAJustified
        x -> Left ("Unable to parse ParagraphStyleAlignment from: " <> x)

instance ToHttpApiData ParagraphStyleAlignment where
    toQueryParam = \case
        PSAAlignmentUnspecified -> "ALIGNMENT_UNSPECIFIED"
        PSAStart -> "START"
        PSACenter -> "CENTER"
        PSAEnd -> "END"
        PSAJustified -> "JUSTIFIED"

instance FromJSON ParagraphStyleAlignment where
    parseJSON = parseJSONText "ParagraphStyleAlignment"

instance ToJSON ParagraphStyleAlignment where
    toJSON = toJSONText

-- | The property state of the border property.
data EmbeddedObjectBOrderPropertyState
    = Rendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered in the document. This is the
      -- default value.
    | NotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered in the document.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EmbeddedObjectBOrderPropertyState

instance FromHttpApiData EmbeddedObjectBOrderPropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right Rendered
        "NOT_RENDERED" -> Right NotRendered
        x -> Left ("Unable to parse EmbeddedObjectBOrderPropertyState from: " <> x)

instance ToHttpApiData EmbeddedObjectBOrderPropertyState where
    toQueryParam = \case
        Rendered -> "RENDERED"
        NotRendered -> "NOT_RENDERED"

instance FromJSON EmbeddedObjectBOrderPropertyState where
    parseJSON = parseJSONText "EmbeddedObjectBOrderPropertyState"

instance ToJSON EmbeddedObjectBOrderPropertyState where
    toJSON = toJSONText

-- | The style of column separators. This style can be set even when there is
-- one column in the section.
data SectionStyleColumnSeparatorStyle
    = SSCSSColumnSeparatorStyleUnspecified
      -- ^ @COLUMN_SEPARATOR_STYLE_UNSPECIFIED@
      -- An unspecified column separator style.
    | SSCSSNone
      -- ^ @NONE@
      -- No column separator lines between columns.
    | SSCSSBetweenEachColumn
      -- ^ @BETWEEN_EACH_COLUMN@
      -- Renders a column separator line between each column.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SectionStyleColumnSeparatorStyle

instance FromHttpApiData SectionStyleColumnSeparatorStyle where
    parseQueryParam = \case
        "COLUMN_SEPARATOR_STYLE_UNSPECIFIED" -> Right SSCSSColumnSeparatorStyleUnspecified
        "NONE" -> Right SSCSSNone
        "BETWEEN_EACH_COLUMN" -> Right SSCSSBetweenEachColumn
        x -> Left ("Unable to parse SectionStyleColumnSeparatorStyle from: " <> x)

instance ToHttpApiData SectionStyleColumnSeparatorStyle where
    toQueryParam = \case
        SSCSSColumnSeparatorStyleUnspecified -> "COLUMN_SEPARATOR_STYLE_UNSPECIFIED"
        SSCSSNone -> "NONE"
        SSCSSBetweenEachColumn -> "BETWEEN_EACH_COLUMN"

instance FromJSON SectionStyleColumnSeparatorStyle where
    parseJSON = parseJSONText "SectionStyleColumnSeparatorStyle"

instance ToJSON SectionStyleColumnSeparatorStyle where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The type of this auto text.
data AutoTextType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- An unspecified auto text type.
    | PageNumber
      -- ^ @PAGE_NUMBER@
      -- Type for auto text that represents the current page number.
    | PageCount
      -- ^ @PAGE_COUNT@
      -- Type for auto text that represents the total number of pages in the
      -- document.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoTextType

instance FromHttpApiData AutoTextType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "PAGE_NUMBER" -> Right PageNumber
        "PAGE_COUNT" -> Right PageCount
        x -> Left ("Unable to parse AutoTextType from: " <> x)

instance ToHttpApiData AutoTextType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        PageNumber -> "PAGE_NUMBER"
        PageCount -> "PAGE_COUNT"

instance FromJSON AutoTextType where
    parseJSON = parseJSONText "AutoTextType"

instance ToJSON AutoTextType where
    toJSON = toJSONText

-- | The content direction of this section. If unset, the value defaults to
-- LEFT_TO_RIGHT.
data SectionStyleContentDirection
    = SSCDContentDirectionUnspecified
      -- ^ @CONTENT_DIRECTION_UNSPECIFIED@
      -- The content direction is unspecified.
    | SSCDLeftToRight
      -- ^ @LEFT_TO_RIGHT@
      -- The content goes from left to right.
    | SSCDRightToLeft
      -- ^ @RIGHT_TO_LEFT@
      -- The content goes from right to left.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SectionStyleContentDirection

instance FromHttpApiData SectionStyleContentDirection where
    parseQueryParam = \case
        "CONTENT_DIRECTION_UNSPECIFIED" -> Right SSCDContentDirectionUnspecified
        "LEFT_TO_RIGHT" -> Right SSCDLeftToRight
        "RIGHT_TO_LEFT" -> Right SSCDRightToLeft
        x -> Left ("Unable to parse SectionStyleContentDirection from: " <> x)

instance ToHttpApiData SectionStyleContentDirection where
    toQueryParam = \case
        SSCDContentDirectionUnspecified -> "CONTENT_DIRECTION_UNSPECIFIED"
        SSCDLeftToRight -> "LEFT_TO_RIGHT"
        SSCDRightToLeft -> "RIGHT_TO_LEFT"

instance FromJSON SectionStyleContentDirection where
    parseJSON = parseJSONText "SectionStyleContentDirection"

instance ToJSON SectionStyleContentDirection where
    toJSON = toJSONText

-- | The type of this named style.
data NamedStyleNamedStyleType
    = NSNSTNamedStyleTypeUnspecified
      -- ^ @NAMED_STYLE_TYPE_UNSPECIFIED@
      -- The type of named style is unspecified.
    | NSNSTNormalText
      -- ^ @NORMAL_TEXT@
      -- Normal text.
    | NSNSTTitle
      -- ^ @TITLE@
      -- Title.
    | NSNSTSubtitle
      -- ^ @SUBTITLE@
      -- Subtitle.
    | NSNSTHeading1
      -- ^ @HEADING_1@
      -- Heading 1.
    | NSNSTHeading2
      -- ^ @HEADING_2@
      -- Heading 2.
    | NSNSTHeading3
      -- ^ @HEADING_3@
      -- Heading 3.
    | NSNSTHeading4
      -- ^ @HEADING_4@
      -- Heading 4.
    | NSNSTHeading5
      -- ^ @HEADING_5@
      -- Heading 5.
    | NSNSTHeading6
      -- ^ @HEADING_6@
      -- Heading 6.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NamedStyleNamedStyleType

instance FromHttpApiData NamedStyleNamedStyleType where
    parseQueryParam = \case
        "NAMED_STYLE_TYPE_UNSPECIFIED" -> Right NSNSTNamedStyleTypeUnspecified
        "NORMAL_TEXT" -> Right NSNSTNormalText
        "TITLE" -> Right NSNSTTitle
        "SUBTITLE" -> Right NSNSTSubtitle
        "HEADING_1" -> Right NSNSTHeading1
        "HEADING_2" -> Right NSNSTHeading2
        "HEADING_3" -> Right NSNSTHeading3
        "HEADING_4" -> Right NSNSTHeading4
        "HEADING_5" -> Right NSNSTHeading5
        "HEADING_6" -> Right NSNSTHeading6
        x -> Left ("Unable to parse NamedStyleNamedStyleType from: " <> x)

instance ToHttpApiData NamedStyleNamedStyleType where
    toQueryParam = \case
        NSNSTNamedStyleTypeUnspecified -> "NAMED_STYLE_TYPE_UNSPECIFIED"
        NSNSTNormalText -> "NORMAL_TEXT"
        NSNSTTitle -> "TITLE"
        NSNSTSubtitle -> "SUBTITLE"
        NSNSTHeading1 -> "HEADING_1"
        NSNSTHeading2 -> "HEADING_2"
        NSNSTHeading3 -> "HEADING_3"
        NSNSTHeading4 -> "HEADING_4"
        NSNSTHeading5 -> "HEADING_5"
        NSNSTHeading6 -> "HEADING_6"

instance FromJSON NamedStyleNamedStyleType where
    parseJSON = parseJSONText "NamedStyleNamedStyleType"

instance ToJSON NamedStyleNamedStyleType where
    toJSON = toJSONText

-- | The spacing mode for the paragraph.
data ParagraphStyleSpacingMode
    = SpacingModeUnspecified
      -- ^ @SPACING_MODE_UNSPECIFIED@
      -- The spacing mode is inherited from the parent.
    | NeverCollapse
      -- ^ @NEVER_COLLAPSE@
      -- Paragraph spacing is always rendered.
    | CollapseLists
      -- ^ @COLLAPSE_LISTS@
      -- Paragraph spacing is skipped between list elements.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleSpacingMode

instance FromHttpApiData ParagraphStyleSpacingMode where
    parseQueryParam = \case
        "SPACING_MODE_UNSPECIFIED" -> Right SpacingModeUnspecified
        "NEVER_COLLAPSE" -> Right NeverCollapse
        "COLLAPSE_LISTS" -> Right CollapseLists
        x -> Left ("Unable to parse ParagraphStyleSpacingMode from: " <> x)

instance ToHttpApiData ParagraphStyleSpacingMode where
    toQueryParam = \case
        SpacingModeUnspecified -> "SPACING_MODE_UNSPECIFIED"
        NeverCollapse -> "NEVER_COLLAPSE"
        CollapseLists -> "COLLAPSE_LISTS"

instance FromJSON ParagraphStyleSpacingMode where
    parseJSON = parseJSONText "ParagraphStyleSpacingMode"

instance ToJSON ParagraphStyleSpacingMode where
    toJSON = toJSONText

-- | The alignment of the bullet within the space allotted for rendering the
-- bullet.
data NestingLevelBulletAlignment
    = NLBABulletAlignmentUnspecified
      -- ^ @BULLET_ALIGNMENT_UNSPECIFIED@
      -- The bullet alignment is unspecified.
    | NLBAStart
      -- ^ @START@
      -- The bullet is aligned to the start of the space allotted for rendering
      -- the bullet. Left-aligned for LTR text, right-aligned otherwise.
    | NLBACenter
      -- ^ @CENTER@
      -- The bullet is aligned to the center of the space allotted for rendering
      -- the bullet.
    | NLBAEnd
      -- ^ @END@
      -- The bullet is aligned to the end of the space allotted for rendering the
      -- bullet. Right-aligned for LTR text, left-aligned otherwise.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NestingLevelBulletAlignment

instance FromHttpApiData NestingLevelBulletAlignment where
    parseQueryParam = \case
        "BULLET_ALIGNMENT_UNSPECIFIED" -> Right NLBABulletAlignmentUnspecified
        "START" -> Right NLBAStart
        "CENTER" -> Right NLBACenter
        "END" -> Right NLBAEnd
        x -> Left ("Unable to parse NestingLevelBulletAlignment from: " <> x)

instance ToHttpApiData NestingLevelBulletAlignment where
    toQueryParam = \case
        NLBABulletAlignmentUnspecified -> "BULLET_ALIGNMENT_UNSPECIFIED"
        NLBAStart -> "START"
        NLBACenter -> "CENTER"
        NLBAEnd -> "END"

instance FromJSON NestingLevelBulletAlignment where
    parseJSON = parseJSONText "NestingLevelBulletAlignment"

instance ToJSON NestingLevelBulletAlignment where
    toJSON = toJSONText

-- | The named style type that this suggestion state corresponds to. This
-- field is provided as a convenience for matching the
-- NamedStyleSuggestionState with its corresponding NamedStyle.
data NamedStyleSuggestionStateNamedStyleType
    = NSSSNSTNamedStyleTypeUnspecified
      -- ^ @NAMED_STYLE_TYPE_UNSPECIFIED@
      -- The type of named style is unspecified.
    | NSSSNSTNormalText
      -- ^ @NORMAL_TEXT@
      -- Normal text.
    | NSSSNSTTitle
      -- ^ @TITLE@
      -- Title.
    | NSSSNSTSubtitle
      -- ^ @SUBTITLE@
      -- Subtitle.
    | NSSSNSTHeading1
      -- ^ @HEADING_1@
      -- Heading 1.
    | NSSSNSTHeading2
      -- ^ @HEADING_2@
      -- Heading 2.
    | NSSSNSTHeading3
      -- ^ @HEADING_3@
      -- Heading 3.
    | NSSSNSTHeading4
      -- ^ @HEADING_4@
      -- Heading 4.
    | NSSSNSTHeading5
      -- ^ @HEADING_5@
      -- Heading 5.
    | NSSSNSTHeading6
      -- ^ @HEADING_6@
      -- Heading 6.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NamedStyleSuggestionStateNamedStyleType

instance FromHttpApiData NamedStyleSuggestionStateNamedStyleType where
    parseQueryParam = \case
        "NAMED_STYLE_TYPE_UNSPECIFIED" -> Right NSSSNSTNamedStyleTypeUnspecified
        "NORMAL_TEXT" -> Right NSSSNSTNormalText
        "TITLE" -> Right NSSSNSTTitle
        "SUBTITLE" -> Right NSSSNSTSubtitle
        "HEADING_1" -> Right NSSSNSTHeading1
        "HEADING_2" -> Right NSSSNSTHeading2
        "HEADING_3" -> Right NSSSNSTHeading3
        "HEADING_4" -> Right NSSSNSTHeading4
        "HEADING_5" -> Right NSSSNSTHeading5
        "HEADING_6" -> Right NSSSNSTHeading6
        x -> Left ("Unable to parse NamedStyleSuggestionStateNamedStyleType from: " <> x)

instance ToHttpApiData NamedStyleSuggestionStateNamedStyleType where
    toQueryParam = \case
        NSSSNSTNamedStyleTypeUnspecified -> "NAMED_STYLE_TYPE_UNSPECIFIED"
        NSSSNSTNormalText -> "NORMAL_TEXT"
        NSSSNSTTitle -> "TITLE"
        NSSSNSTSubtitle -> "SUBTITLE"
        NSSSNSTHeading1 -> "HEADING_1"
        NSSSNSTHeading2 -> "HEADING_2"
        NSSSNSTHeading3 -> "HEADING_3"
        NSSSNSTHeading4 -> "HEADING_4"
        NSSSNSTHeading5 -> "HEADING_5"
        NSSSNSTHeading6 -> "HEADING_6"

instance FromJSON NamedStyleSuggestionStateNamedStyleType where
    parseJSON = parseJSONText "NamedStyleSuggestionStateNamedStyleType"

instance ToJSON NamedStyleSuggestionStateNamedStyleType where
    toJSON = toJSONText

-- | The dash style of the border.
data EmbeddedObjectBOrderDashStyle
    = EOBODSDashStyleUnspecified
      -- ^ @DASH_STYLE_UNSPECIFIED@
      -- Unspecified dash style.
    | EOBODSSolid
      -- ^ @SOLID@
      -- Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'solid\'. This is the default dash style.
    | EOBODSDot
      -- ^ @DOT@
      -- Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
    | EOBODSDash
      -- ^ @DASH@
      -- Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'dash\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EmbeddedObjectBOrderDashStyle

instance FromHttpApiData EmbeddedObjectBOrderDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right EOBODSDashStyleUnspecified
        "SOLID" -> Right EOBODSSolid
        "DOT" -> Right EOBODSDot
        "DASH" -> Right EOBODSDash
        x -> Left ("Unable to parse EmbeddedObjectBOrderDashStyle from: " <> x)

instance ToHttpApiData EmbeddedObjectBOrderDashStyle where
    toQueryParam = \case
        EOBODSDashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        EOBODSSolid -> "SOLID"
        EOBODSDot -> "DOT"
        EOBODSDash -> "DASH"

instance FromJSON EmbeddedObjectBOrderDashStyle where
    parseJSON = parseJSONText "EmbeddedObjectBOrderDashStyle"

instance ToJSON EmbeddedObjectBOrderDashStyle where
    toJSON = toJSONText

-- | The suggestions view mode applied to the document. Note: When editing a
-- document, changes must be based on a document with SUGGESTIONS_INLINE.
data DocumentSuggestionsViewMode
    = DefaultForCurrentAccess
      -- ^ @DEFAULT_FOR_CURRENT_ACCESS@
      -- The SuggestionsViewMode applied to the returned document depends on the
      -- user\'s current access level. If the user only has view access,
      -- PREVIEW_WITHOUT_SUGGESTIONS is applied. Otherwise, SUGGESTIONS_INLINE is
      -- applied. This is the default suggestions view mode.
    | SuggestionsInline
      -- ^ @SUGGESTIONS_INLINE@
      -- The returned document has suggestions inline. Suggested changes will be
      -- differentiated from base content within the document. Requests to
      -- retrieve a document using this mode will return a 403 error if the user
      -- does not have permission to view suggested changes.
    | PreviewSuggestionsAccepted
      -- ^ @PREVIEW_SUGGESTIONS_ACCEPTED@
      -- The returned document is a preview with all suggested changes accepted.
      -- Requests to retrieve a document using this mode will return a 403 error
      -- if the user does not have permission to view suggested changes.
    | PreviewWithoutSuggestions
      -- ^ @PREVIEW_WITHOUT_SUGGESTIONS@
      -- The returned document is a preview with all suggested changes rejected
      -- if there are any suggestions in the document.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DocumentSuggestionsViewMode

instance FromHttpApiData DocumentSuggestionsViewMode where
    parseQueryParam = \case
        "DEFAULT_FOR_CURRENT_ACCESS" -> Right DefaultForCurrentAccess
        "SUGGESTIONS_INLINE" -> Right SuggestionsInline
        "PREVIEW_SUGGESTIONS_ACCEPTED" -> Right PreviewSuggestionsAccepted
        "PREVIEW_WITHOUT_SUGGESTIONS" -> Right PreviewWithoutSuggestions
        x -> Left ("Unable to parse DocumentSuggestionsViewMode from: " <> x)

instance ToHttpApiData DocumentSuggestionsViewMode where
    toQueryParam = \case
        DefaultForCurrentAccess -> "DEFAULT_FOR_CURRENT_ACCESS"
        SuggestionsInline -> "SUGGESTIONS_INLINE"
        PreviewSuggestionsAccepted -> "PREVIEW_SUGGESTIONS_ACCEPTED"
        PreviewWithoutSuggestions -> "PREVIEW_WITHOUT_SUGGESTIONS"

instance FromJSON DocumentSuggestionsViewMode where
    parseJSON = parseJSONText "DocumentSuggestionsViewMode"

instance ToJSON DocumentSuggestionsViewMode where
    toJSON = toJSONText

-- | The layout of this positioned object.
data PositionedObjectPositioningLayout
    = PositionedObjectLayoutUnspecified
      -- ^ @POSITIONED_OBJECT_LAYOUT_UNSPECIFIED@
      -- The layout is unspecified.
    | WrapText
      -- ^ @WRAP_TEXT@
      -- The text wraps around the positioned object.
    | BreakLeft
      -- ^ @BREAK_LEFT@
      -- Breaks text such that the positioned object is on the left and text is
      -- on the right.
    | BreakRight
      -- ^ @BREAK_RIGHT@
      -- Breaks text such that the positioned object is on the right and text is
      -- on the left.
    | BreakLeftRight
      -- ^ @BREAK_LEFT_RIGHT@
      -- Breaks text such that there is no text on the left or right of the
      -- positioned object.
    | InFrontOfText
      -- ^ @IN_FRONT_OF_TEXT@
      -- The positioned object is in front of the text.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PositionedObjectPositioningLayout

instance FromHttpApiData PositionedObjectPositioningLayout where
    parseQueryParam = \case
        "POSITIONED_OBJECT_LAYOUT_UNSPECIFIED" -> Right PositionedObjectLayoutUnspecified
        "WRAP_TEXT" -> Right WrapText
        "BREAK_LEFT" -> Right BreakLeft
        "BREAK_RIGHT" -> Right BreakRight
        "BREAK_LEFT_RIGHT" -> Right BreakLeftRight
        "IN_FRONT_OF_TEXT" -> Right InFrontOfText
        x -> Left ("Unable to parse PositionedObjectPositioningLayout from: " <> x)

instance ToHttpApiData PositionedObjectPositioningLayout where
    toQueryParam = \case
        PositionedObjectLayoutUnspecified -> "POSITIONED_OBJECT_LAYOUT_UNSPECIFIED"
        WrapText -> "WRAP_TEXT"
        BreakLeft -> "BREAK_LEFT"
        BreakRight -> "BREAK_RIGHT"
        BreakLeftRight -> "BREAK_LEFT_RIGHT"
        InFrontOfText -> "IN_FRONT_OF_TEXT"

instance FromJSON PositionedObjectPositioningLayout where
    parseJSON = parseJSONText "PositionedObjectPositioningLayout"

instance ToJSON PositionedObjectPositioningLayout where
    toJSON = toJSONText

-- | The units for magnitude.
data DimensionUnit
    = UnitUnspecified
      -- ^ @UNIT_UNSPECIFIED@
      -- The units are unknown.
    | PT
      -- ^ @PT@
      -- A point, 1\/72 of an inch.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionUnit

instance FromHttpApiData DimensionUnit where
    parseQueryParam = \case
        "UNIT_UNSPECIFIED" -> Right UnitUnspecified
        "PT" -> Right PT
        x -> Left ("Unable to parse DimensionUnit from: " <> x)

instance ToHttpApiData DimensionUnit where
    toQueryParam = \case
        UnitUnspecified -> "UNIT_UNSPECIFIED"
        PT -> "PT"

instance FromJSON DimensionUnit where
    parseJSON = parseJSONText "DimensionUnit"

instance ToJSON DimensionUnit where
    toJSON = toJSONText

-- | The alignment of the content in the table cell. The default alignment
-- matches the alignment for newly created table cells in the Docs editor.
data TableCellStyleContentAlignment
    = ContentAlignmentUnspecified
      -- ^ @CONTENT_ALIGNMENT_UNSPECIFIED@
      -- An unspecified content alignment. The content alignment is inherited
      -- from the parent if one exists.
    | ContentAlignmentUnsupported
      -- ^ @CONTENT_ALIGNMENT_UNSUPPORTED@
      -- An unsupported content alignment.
    | Top
      -- ^ @TOP@
      -- An alignment that aligns the content to the top of the content holder.
      -- Corresponds to ECMA-376 ST_TextAnchoringType \'t\'.
    | Middle
      -- ^ @MIDDLE@
      -- An alignment that aligns the content to the middle of the content
      -- holder. Corresponds to ECMA-376 ST_TextAnchoringType \'ctr\'.
    | Bottom
      -- ^ @BOTTOM@
      -- An alignment that aligns the content to the bottom of the content
      -- holder. Corresponds to ECMA-376 ST_TextAnchoringType \'b\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableCellStyleContentAlignment

instance FromHttpApiData TableCellStyleContentAlignment where
    parseQueryParam = \case
        "CONTENT_ALIGNMENT_UNSPECIFIED" -> Right ContentAlignmentUnspecified
        "CONTENT_ALIGNMENT_UNSUPPORTED" -> Right ContentAlignmentUnsupported
        "TOP" -> Right Top
        "MIDDLE" -> Right Middle
        "BOTTOM" -> Right Bottom
        x -> Left ("Unable to parse TableCellStyleContentAlignment from: " <> x)

instance ToHttpApiData TableCellStyleContentAlignment where
    toQueryParam = \case
        ContentAlignmentUnspecified -> "CONTENT_ALIGNMENT_UNSPECIFIED"
        ContentAlignmentUnsupported -> "CONTENT_ALIGNMENT_UNSUPPORTED"
        Top -> "TOP"
        Middle -> "MIDDLE"
        Bottom -> "BOTTOM"

instance FromJSON TableCellStyleContentAlignment where
    parseJSON = parseJSONText "TableCellStyleContentAlignment"

instance ToJSON TableCellStyleContentAlignment where
    toJSON = toJSONText
