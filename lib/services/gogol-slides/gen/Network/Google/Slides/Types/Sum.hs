{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Slides.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Slides.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The text direction of this paragraph. If unset, the value defaults to
-- LEFT_TO_RIGHT since text direction is not inherited.
data ParagraphStyleDirection
    = TextDirectionUnspecified
      -- ^ @TEXT_DIRECTION_UNSPECIFIED@
      -- The text direction is inherited from the parent.
    | LeftToRight
      -- ^ @LEFT_TO_RIGHT@
      -- The text goes from left to right.
    | RightToLeft
      -- ^ @RIGHT_TO_LEFT@
      -- The text goes from right to left.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleDirection

instance FromHttpApiData ParagraphStyleDirection where
    parseQueryParam = \case
        "TEXT_DIRECTION_UNSPECIFIED" -> Right TextDirectionUnspecified
        "LEFT_TO_RIGHT" -> Right LeftToRight
        "RIGHT_TO_LEFT" -> Right RightToLeft
        x -> Left ("Unable to parse ParagraphStyleDirection from: " <> x)

instance ToHttpApiData ParagraphStyleDirection where
    toQueryParam = \case
        TextDirectionUnspecified -> "TEXT_DIRECTION_UNSPECIFIED"
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

-- | The alignment of the content in the table cell. The default alignment
-- matches the alignment for newly created table cells in the Slides
-- editor.
data TableCellPropertiesContentAlignment
    = ContentAlignmentUnspecified
      -- ^ @CONTENT_ALIGNMENT_UNSPECIFIED@
      -- An unspecified content alignment. The content alignment is inherited
      -- from the parent if it exists.
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

instance Hashable TableCellPropertiesContentAlignment

instance FromHttpApiData TableCellPropertiesContentAlignment where
    parseQueryParam = \case
        "CONTENT_ALIGNMENT_UNSPECIFIED" -> Right ContentAlignmentUnspecified
        "CONTENT_ALIGNMENT_UNSUPPORTED" -> Right ContentAlignmentUnsupported
        "TOP" -> Right Top
        "MIDDLE" -> Right Middle
        "BOTTOM" -> Right Bottom
        x -> Left ("Unable to parse TableCellPropertiesContentAlignment from: " <> x)

instance ToHttpApiData TableCellPropertiesContentAlignment where
    toQueryParam = \case
        ContentAlignmentUnspecified -> "CONTENT_ALIGNMENT_UNSPECIFIED"
        ContentAlignmentUnsupported -> "CONTENT_ALIGNMENT_UNSUPPORTED"
        Top -> "TOP"
        Middle -> "MIDDLE"
        Bottom -> "BOTTOM"

instance FromJSON TableCellPropertiesContentAlignment where
    parseJSON = parseJSONText "TableCellPropertiesContentAlignment"

instance ToJSON TableCellPropertiesContentAlignment where
    toJSON = toJSONText

-- | The type of range.
data RangeType
    = RangeTypeUnspecified
      -- ^ @RANGE_TYPE_UNSPECIFIED@
      -- Unspecified range type. This value must not be used.
    | FixedRange
      -- ^ @FIXED_RANGE@
      -- A fixed range. Both the \`start_index\` and \`end_index\` must be
      -- specified.
    | FromStartIndex
      -- ^ @FROM_START_INDEX@
      -- Starts the range at \`start_index\` and continues until the end of the
      -- collection. The \`end_index\` must not be specified.
    | All
      -- ^ @ALL@
      -- Sets the range to be the whole length of the collection. Both the
      -- \`start_index\` and the \`end_index\` must not be specified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RangeType

instance FromHttpApiData RangeType where
    parseQueryParam = \case
        "RANGE_TYPE_UNSPECIFIED" -> Right RangeTypeUnspecified
        "FIXED_RANGE" -> Right FixedRange
        "FROM_START_INDEX" -> Right FromStartIndex
        "ALL" -> Right All
        x -> Left ("Unable to parse RangeType from: " <> x)

instance ToHttpApiData RangeType where
    toQueryParam = \case
        RangeTypeUnspecified -> "RANGE_TYPE_UNSPECIFIED"
        FixedRange -> "FIXED_RANGE"
        FromStartIndex -> "FROM_START_INDEX"
        All -> "ALL"

instance FromJSON RangeType where
    parseJSON = parseJSONText "RangeType"

instance ToJSON RangeType where
    toJSON = toJSONText

-- | The Z-order operation to apply on the page elements. When applying the
-- operation on multiple page elements, the relative Z-orders within these
-- page elements before the operation is maintained.
data UpdatePageElementsZOrderRequestOperation
    = ZOrderOperationUnspecified
      -- ^ @Z_ORDER_OPERATION_UNSPECIFIED@
      -- Unspecified operation.
    | BringToFront
      -- ^ @BRING_TO_FRONT@
      -- Brings the page elements to the front of the page.
    | BringForward
      -- ^ @BRING_FORWARD@
      -- Brings the page elements forward on the page by one element relative to
      -- the forwardmost one in the specified page elements.
    | SendBackward
      -- ^ @SEND_BACKWARD@
      -- Sends the page elements backward on the page by one element relative to
      -- the furthest behind one in the specified page elements.
    | SendToBack
      -- ^ @SEND_TO_BACK@
      -- Sends the page elements to the back of the page.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdatePageElementsZOrderRequestOperation

instance FromHttpApiData UpdatePageElementsZOrderRequestOperation where
    parseQueryParam = \case
        "Z_ORDER_OPERATION_UNSPECIFIED" -> Right ZOrderOperationUnspecified
        "BRING_TO_FRONT" -> Right BringToFront
        "BRING_FORWARD" -> Right BringForward
        "SEND_BACKWARD" -> Right SendBackward
        "SEND_TO_BACK" -> Right SendToBack
        x -> Left ("Unable to parse UpdatePageElementsZOrderRequestOperation from: " <> x)

instance ToHttpApiData UpdatePageElementsZOrderRequestOperation where
    toQueryParam = \case
        ZOrderOperationUnspecified -> "Z_ORDER_OPERATION_UNSPECIFIED"
        BringToFront -> "BRING_TO_FRONT"
        BringForward -> "BRING_FORWARD"
        SendBackward -> "SEND_BACKWARD"
        SendToBack -> "SEND_TO_BACK"

instance FromJSON UpdatePageElementsZOrderRequestOperation where
    parseJSON = parseJSONText "UpdatePageElementsZOrderRequestOperation"

instance ToJSON UpdatePageElementsZOrderRequestOperation where
    toJSON = toJSONText

-- | The background fill property state. Updating the fill on a page will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no fill on a page, set this field
-- to \`NOT_RENDERED\`. In this case, any other fill fields set in the same
-- request will be ignored.
data PageBackgRoundFillPropertyState
    = Rendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered on a page. If the element is a
      -- placeholder shape as determined by the placeholder field, and it
      -- inherits from a placeholder shape, the corresponding field may be unset,
      -- meaning that the property value is inherited from a parent placeholder.
      -- If the element does not inherit, then the field will contain the
      -- rendered value. This is the default value.
    | NotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered on a page. However, the field
      -- may still be set so it can be inherited by child shapes. To remove a
      -- property from a rendered element, set its property_state to
      -- NOT_RENDERED.
    | Inherit
      -- ^ @INHERIT@
      -- If a property\'s state is INHERIT, then the property state uses the
      -- value of corresponding \`property_state\` field on the parent shape.
      -- Elements that do not inherit will never have an INHERIT property state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PageBackgRoundFillPropertyState

instance FromHttpApiData PageBackgRoundFillPropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right Rendered
        "NOT_RENDERED" -> Right NotRendered
        "INHERIT" -> Right Inherit
        x -> Left ("Unable to parse PageBackgRoundFillPropertyState from: " <> x)

instance ToHttpApiData PageBackgRoundFillPropertyState where
    toQueryParam = \case
        Rendered -> "RENDERED"
        NotRendered -> "NOT_RENDERED"
        Inherit -> "INHERIT"

instance FromJSON PageBackgRoundFillPropertyState where
    parseJSON = parseJSONText "PageBackgRoundFillPropertyState"

instance ToJSON PageBackgRoundFillPropertyState where
    toJSON = toJSONText

-- | The name of the recolor effect. The name is determined from the
-- \`recolor_stops\` by matching the gradient against the colors in the
-- page\'s current color scheme. This property is read-only.
data RecolorName
    = RNNone
      -- ^ @NONE@
      -- No recolor effect. The default value.
    | RNLIGHT1
      -- ^ @LIGHT1@
      -- A recolor effect that lightens the image using the page\'s first
      -- available color from its color scheme.
    | RNLIGHT2
      -- ^ @LIGHT2@
      -- A recolor effect that lightens the image using the page\'s second
      -- available color from its color scheme.
    | RNLIGHT3
      -- ^ @LIGHT3@
      -- A recolor effect that lightens the image using the page\'s third
      -- available color from its color scheme.
    | RNLIGHT4
      -- ^ @LIGHT4@
      -- A recolor effect that lightens the image using the page\'s forth
      -- available color from its color scheme.
    | RNLIGHT5
      -- ^ @LIGHT5@
      -- A recolor effect that lightens the image using the page\'s fifth
      -- available color from its color scheme.
    | RNLIGHT6
      -- ^ @LIGHT6@
      -- A recolor effect that lightens the image using the page\'s sixth
      -- available color from its color scheme.
    | RNLIGHT7
      -- ^ @LIGHT7@
      -- A recolor effect that lightens the image using the page\'s seventh
      -- available color from its color scheme.
    | RNLIGHT8
      -- ^ @LIGHT8@
      -- A recolor effect that lightens the image using the page\'s eighth
      -- available color from its color scheme.
    | RNLIGHT9
      -- ^ @LIGHT9@
      -- A recolor effect that lightens the image using the page\'s ninth
      -- available color from its color scheme.
    | RNLIGHT10
      -- ^ @LIGHT10@
      -- A recolor effect that lightens the image using the page\'s tenth
      -- available color from its color scheme.
    | RNDARK1
      -- ^ @DARK1@
      -- A recolor effect that darkens the image using the page\'s first
      -- available color from its color scheme.
    | RNDARK2
      -- ^ @DARK2@
      -- A recolor effect that darkens the image using the page\'s second
      -- available color from its color scheme.
    | RNDARK3
      -- ^ @DARK3@
      -- A recolor effect that darkens the image using the page\'s third
      -- available color from its color scheme.
    | RNDARK4
      -- ^ @DARK4@
      -- A recolor effect that darkens the image using the page\'s fourth
      -- available color from its color scheme.
    | RNDARK5
      -- ^ @DARK5@
      -- A recolor effect that darkens the image using the page\'s fifth
      -- available color from its color scheme.
    | RNDARK6
      -- ^ @DARK6@
      -- A recolor effect that darkens the image using the page\'s sixth
      -- available color from its color scheme.
    | RNDARK7
      -- ^ @DARK7@
      -- A recolor effect that darkens the image using the page\'s seventh
      -- available color from its color scheme.
    | RNDARK8
      -- ^ @DARK8@
      -- A recolor effect that darkens the image using the page\'s eighth
      -- available color from its color scheme.
    | RNDARK9
      -- ^ @DARK9@
      -- A recolor effect that darkens the image using the page\'s ninth
      -- available color from its color scheme.
    | RNDARK10
      -- ^ @DARK10@
      -- A recolor effect that darkens the image using the page\'s tenth
      -- available color from its color scheme.
    | RNGrayscale
      -- ^ @GRAYSCALE@
      -- A recolor effect that recolors the image to grayscale.
    | RNNegative
      -- ^ @NEGATIVE@
      -- A recolor effect that recolors the image to negative grayscale.
    | RNSepia
      -- ^ @SEPIA@
      -- A recolor effect that recolors the image using the sepia color.
    | RNCustom
      -- ^ @CUSTOM@
      -- Custom recolor effect. Refer to \`recolor_stops\` for the concrete
      -- gradient.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RecolorName

instance FromHttpApiData RecolorName where
    parseQueryParam = \case
        "NONE" -> Right RNNone
        "LIGHT1" -> Right RNLIGHT1
        "LIGHT2" -> Right RNLIGHT2
        "LIGHT3" -> Right RNLIGHT3
        "LIGHT4" -> Right RNLIGHT4
        "LIGHT5" -> Right RNLIGHT5
        "LIGHT6" -> Right RNLIGHT6
        "LIGHT7" -> Right RNLIGHT7
        "LIGHT8" -> Right RNLIGHT8
        "LIGHT9" -> Right RNLIGHT9
        "LIGHT10" -> Right RNLIGHT10
        "DARK1" -> Right RNDARK1
        "DARK2" -> Right RNDARK2
        "DARK3" -> Right RNDARK3
        "DARK4" -> Right RNDARK4
        "DARK5" -> Right RNDARK5
        "DARK6" -> Right RNDARK6
        "DARK7" -> Right RNDARK7
        "DARK8" -> Right RNDARK8
        "DARK9" -> Right RNDARK9
        "DARK10" -> Right RNDARK10
        "GRAYSCALE" -> Right RNGrayscale
        "NEGATIVE" -> Right RNNegative
        "SEPIA" -> Right RNSepia
        "CUSTOM" -> Right RNCustom
        x -> Left ("Unable to parse RecolorName from: " <> x)

instance ToHttpApiData RecolorName where
    toQueryParam = \case
        RNNone -> "NONE"
        RNLIGHT1 -> "LIGHT1"
        RNLIGHT2 -> "LIGHT2"
        RNLIGHT3 -> "LIGHT3"
        RNLIGHT4 -> "LIGHT4"
        RNLIGHT5 -> "LIGHT5"
        RNLIGHT6 -> "LIGHT6"
        RNLIGHT7 -> "LIGHT7"
        RNLIGHT8 -> "LIGHT8"
        RNLIGHT9 -> "LIGHT9"
        RNLIGHT10 -> "LIGHT10"
        RNDARK1 -> "DARK1"
        RNDARK2 -> "DARK2"
        RNDARK3 -> "DARK3"
        RNDARK4 -> "DARK4"
        RNDARK5 -> "DARK5"
        RNDARK6 -> "DARK6"
        RNDARK7 -> "DARK7"
        RNDARK8 -> "DARK8"
        RNDARK9 -> "DARK9"
        RNDARK10 -> "DARK10"
        RNGrayscale -> "GRAYSCALE"
        RNNegative -> "NEGATIVE"
        RNSepia -> "SEPIA"
        RNCustom -> "CUSTOM"

instance FromJSON RecolorName where
    parseJSON = parseJSONText "RecolorName"

instance ToJSON RecolorName where
    toJSON = toJSONText

-- | The kinds of bullet glyphs to be used. Defaults to the
-- \`BULLET_DISC_CIRCLE_SQUARE\` preset.
data CreateParagraphBulletsRequestBulletPreset
    = BulletDiscCircleSquare
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
    | NumberedDigitAlphaRoman
      -- ^ @NUMBERED_DIGIT_ALPHA_ROMAN@
      -- A numbered list with \`DIGIT\`, \`ALPHA\` and \`ROMAN\` numeric glyphs
      -- for the first 3 list nesting levels, followed by periods.
    | NumberedDigitAlphaRomanParens
      -- ^ @NUMBERED_DIGIT_ALPHA_ROMAN_PARENS@
      -- A numbered list with \`DIGIT\`, \`ALPHA\` and \`ROMAN\` numeric glyphs
      -- for the first 3 list nesting levels, followed by parenthesis.
    | NumberedDigitNested
      -- ^ @NUMBERED_DIGIT_NESTED@
      -- A numbered list with \`DIGIT\` numeric glyphs separated by periods,
      -- where each nesting level uses the previous nesting level\'s glyph as a
      -- prefix. For example: \'1.\', \'1.1.\', \'2.\', \'2.2.\'.
    | NumberedUpperalphaAlphaRoman
      -- ^ @NUMBERED_UPPERALPHA_ALPHA_ROMAN@
      -- A numbered list with \`UPPERALPHA\`, \`ALPHA\` and \`ROMAN\` numeric
      -- glyphs for the first 3 list nesting levels, followed by periods.
    | NumberedUpperromanUpperalphaDigit
      -- ^ @NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT@
      -- A numbered list with \`UPPERROMAN\`, \`UPPERALPHA\` and \`DIGIT\`
      -- numeric glyphs for the first 3 list nesting levels, followed by periods.
    | NumberedZerodigitAlphaRoman
      -- ^ @NUMBERED_ZERODIGIT_ALPHA_ROMAN@
      -- A numbered list with \`ZERODIGIT\`, \`ALPHA\` and \`ROMAN\` numeric
      -- glyphs for the first 3 list nesting levels, followed by periods.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateParagraphBulletsRequestBulletPreset

instance FromHttpApiData CreateParagraphBulletsRequestBulletPreset where
    parseQueryParam = \case
        "BULLET_DISC_CIRCLE_SQUARE" -> Right BulletDiscCircleSquare
        "BULLET_DIAMONDX_ARROW3D_SQUARE" -> Right BulletDiamondxARROW3DSquare
        "BULLET_CHECKBOX" -> Right BulletCheckbox
        "BULLET_ARROW_DIAMOND_DISC" -> Right BulletArrowDiamondDisc
        "BULLET_STAR_CIRCLE_SQUARE" -> Right BulletStarCircleSquare
        "BULLET_ARROW3D_CIRCLE_SQUARE" -> Right BulletARROW3DCircleSquare
        "BULLET_LEFTTRIANGLE_DIAMOND_DISC" -> Right BulletLefttriangleDiamondDisc
        "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE" -> Right BulletDiamondxHollowdiamondSquare
        "BULLET_DIAMOND_CIRCLE_SQUARE" -> Right BulletDiamondCircleSquare
        "NUMBERED_DIGIT_ALPHA_ROMAN" -> Right NumberedDigitAlphaRoman
        "NUMBERED_DIGIT_ALPHA_ROMAN_PARENS" -> Right NumberedDigitAlphaRomanParens
        "NUMBERED_DIGIT_NESTED" -> Right NumberedDigitNested
        "NUMBERED_UPPERALPHA_ALPHA_ROMAN" -> Right NumberedUpperalphaAlphaRoman
        "NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT" -> Right NumberedUpperromanUpperalphaDigit
        "NUMBERED_ZERODIGIT_ALPHA_ROMAN" -> Right NumberedZerodigitAlphaRoman
        x -> Left ("Unable to parse CreateParagraphBulletsRequestBulletPreset from: " <> x)

instance ToHttpApiData CreateParagraphBulletsRequestBulletPreset where
    toQueryParam = \case
        BulletDiscCircleSquare -> "BULLET_DISC_CIRCLE_SQUARE"
        BulletDiamondxARROW3DSquare -> "BULLET_DIAMONDX_ARROW3D_SQUARE"
        BulletCheckbox -> "BULLET_CHECKBOX"
        BulletArrowDiamondDisc -> "BULLET_ARROW_DIAMOND_DISC"
        BulletStarCircleSquare -> "BULLET_STAR_CIRCLE_SQUARE"
        BulletARROW3DCircleSquare -> "BULLET_ARROW3D_CIRCLE_SQUARE"
        BulletLefttriangleDiamondDisc -> "BULLET_LEFTTRIANGLE_DIAMOND_DISC"
        BulletDiamondxHollowdiamondSquare -> "BULLET_DIAMONDX_HOLLOWDIAMOND_SQUARE"
        BulletDiamondCircleSquare -> "BULLET_DIAMOND_CIRCLE_SQUARE"
        NumberedDigitAlphaRoman -> "NUMBERED_DIGIT_ALPHA_ROMAN"
        NumberedDigitAlphaRomanParens -> "NUMBERED_DIGIT_ALPHA_ROMAN_PARENS"
        NumberedDigitNested -> "NUMBERED_DIGIT_NESTED"
        NumberedUpperalphaAlphaRoman -> "NUMBERED_UPPERALPHA_ALPHA_ROMAN"
        NumberedUpperromanUpperalphaDigit -> "NUMBERED_UPPERROMAN_UPPERALPHA_DIGIT"
        NumberedZerodigitAlphaRoman -> "NUMBERED_ZERODIGIT_ALPHA_ROMAN"

instance FromJSON CreateParagraphBulletsRequestBulletPreset where
    parseJSON = parseJSONText "CreateParagraphBulletsRequestBulletPreset"

instance ToJSON CreateParagraphBulletsRequestBulletPreset where
    toJSON = toJSONText

-- | The shape type.
data CreateShapeRequestShapeType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The shape type that is not predefined.
    | TextBox
      -- ^ @TEXT_BOX@
      -- Text box shape.
    | Rectangle
      -- ^ @RECTANGLE@
      -- Rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'rect\'.
    | RoundRectangle
      -- ^ @ROUND_RECTANGLE@
      -- Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'roundRect\'
    | Ellipse
      -- ^ @ELLIPSE@
      -- Ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'ellipse\'
    | Arc
      -- ^ @ARC@
      -- Curved arc shape. Corresponds to ECMA-376 ST_ShapeType \'arc\'
    | BentArrow
      -- ^ @BENT_ARROW@
      -- Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentArrow\'
    | BentUpArrow
      -- ^ @BENT_UP_ARROW@
      -- Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentUpArrow\'
    | Bevel
      -- ^ @BEVEL@
      -- Bevel shape. Corresponds to ECMA-376 ST_ShapeType \'bevel\'
    | BlockArc
      -- ^ @BLOCK_ARC@
      -- Block arc shape. Corresponds to ECMA-376 ST_ShapeType \'blockArc\'
    | BracePair
      -- ^ @BRACE_PAIR@
      -- Brace pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracePair\'
    | BracketPair
      -- ^ @BRACKET_PAIR@
      -- Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracketPair\'
    | Can
      -- ^ @CAN@
      -- Can shape. Corresponds to ECMA-376 ST_ShapeType \'can\'
    | Chevron
      -- ^ @CHEVRON@
      -- Chevron shape. Corresponds to ECMA-376 ST_ShapeType \'chevron\'
    | Chord
      -- ^ @CHORD@
      -- Chord shape. Corresponds to ECMA-376 ST_ShapeType \'chord\'
    | Cloud
      -- ^ @CLOUD@
      -- Cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloud\'
    | Corner
      -- ^ @CORNER@
      -- Corner shape. Corresponds to ECMA-376 ST_ShapeType \'corner\'
    | Cube
      -- ^ @CUBE@
      -- Cube shape. Corresponds to ECMA-376 ST_ShapeType \'cube\'
    | CurvedDownArrow
      -- ^ @CURVED_DOWN_ARROW@
      -- Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedDownArrow\'
    | CurvedLeftArrow
      -- ^ @CURVED_LEFT_ARROW@
      -- Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedLeftArrow\'
    | CurvedRightArrow
      -- ^ @CURVED_RIGHT_ARROW@
      -- Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedRightArrow\'
    | CurvedUpArrow
      -- ^ @CURVED_UP_ARROW@
      -- Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedUpArrow\'
    | Decagon
      -- ^ @DECAGON@
      -- Decagon shape. Corresponds to ECMA-376 ST_ShapeType \'decagon\'
    | DiagonalStripe
      -- ^ @DIAGONAL_STRIPE@
      -- Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'diagStripe\'
    | Diamond
      -- ^ @DIAMOND@
      -- Diamond shape. Corresponds to ECMA-376 ST_ShapeType \'diamond\'
    | Dodecagon
      -- ^ @DODECAGON@
      -- Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType \'dodecagon\'
    | Donut
      -- ^ @DONUT@
      -- Donut shape. Corresponds to ECMA-376 ST_ShapeType \'donut\'
    | DoubleWave
      -- ^ @DOUBLE_WAVE@
      -- Double wave shape. Corresponds to ECMA-376 ST_ShapeType \'doubleWave\'
    | DownArrow
      -- ^ @DOWN_ARROW@
      -- Down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrow\'
    | DownArrowCallout
      -- ^ @DOWN_ARROW_CALLOUT@
      -- Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'downArrowCallout\'
    | FoldedCorner
      -- ^ @FOLDED_CORNER@
      -- Folded corner shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'foldedCorner\'
    | Frame
      -- ^ @FRAME@
      -- Frame shape. Corresponds to ECMA-376 ST_ShapeType \'frame\'
    | HalfFrame
      -- ^ @HALF_FRAME@
      -- Half frame shape. Corresponds to ECMA-376 ST_ShapeType \'halfFrame\'
    | Heart
      -- ^ @HEART@
      -- Heart shape. Corresponds to ECMA-376 ST_ShapeType \'heart\'
    | Heptagon
      -- ^ @HEPTAGON@
      -- Heptagon shape. Corresponds to ECMA-376 ST_ShapeType \'heptagon\'
    | Hexagon
      -- ^ @HEXAGON@
      -- Hexagon shape. Corresponds to ECMA-376 ST_ShapeType \'hexagon\'
    | HomePlate
      -- ^ @HOME_PLATE@
      -- Home plate shape. Corresponds to ECMA-376 ST_ShapeType \'homePlate\'
    | HorizontalScroll
      -- ^ @HORIZONTAL_SCROLL@
      -- Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'horizontalScroll\'
    | IrregularSeal1
      -- ^ @IRREGULAR_SEAL_1@
      -- Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'irregularSeal1\'
    | IrregularSeal2
      -- ^ @IRREGULAR_SEAL_2@
      -- Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'irregularSeal2\'
    | LeftArrow
      -- ^ @LEFT_ARROW@
      -- Left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrow\'
    | LeftArrowCallout
      -- ^ @LEFT_ARROW_CALLOUT@
      -- Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftArrowCallout\'
    | LeftBrace
      -- ^ @LEFT_BRACE@
      -- Left brace shape. Corresponds to ECMA-376 ST_ShapeType \'leftBrace\'
    | LeftBracket
      -- ^ @LEFT_BRACKET@
      -- Left bracket shape. Corresponds to ECMA-376 ST_ShapeType \'leftBracket\'
    | LeftRightArrow
      -- ^ @LEFT_RIGHT_ARROW@
      -- Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightArrow\'
    | LeftRightArrowCallout
      -- ^ @LEFT_RIGHT_ARROW_CALLOUT@
      -- Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightArrowCallout\'
    | LeftRightUpArrow
      -- ^ @LEFT_RIGHT_UP_ARROW@
      -- Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightUpArrow\'
    | LeftUpArrow
      -- ^ @LEFT_UP_ARROW@
      -- Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftUpArrow\'
    | LightningBolt
      -- ^ @LIGHTNING_BOLT@
      -- Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'lightningBolt\'
    | MathDivide
      -- ^ @MATH_DIVIDE@
      -- Divide math shape. Corresponds to ECMA-376 ST_ShapeType \'mathDivide\'
    | MathEqual
      -- ^ @MATH_EQUAL@
      -- Equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathEqual\'
    | MathMinus
      -- ^ @MATH_MINUS@
      -- Minus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMinus\'
    | MathMultiply
      -- ^ @MATH_MULTIPLY@
      -- Multiply math shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'mathMultiply\'
    | MathNotEqual
      -- ^ @MATH_NOT_EQUAL@
      -- Not equal math shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'mathNotEqual\'
    | MathPlus
      -- ^ @MATH_PLUS@
      -- Plus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathPlus\'
    | Moon
      -- ^ @MOON@
      -- Moon shape. Corresponds to ECMA-376 ST_ShapeType \'moon\'
    | NoSmoking
      -- ^ @NO_SMOKING@
      -- No smoking shape. Corresponds to ECMA-376 ST_ShapeType \'noSmoking\'
    | NotchedRightArrow
      -- ^ @NOTCHED_RIGHT_ARROW@
      -- Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'notchedRightArrow\'
    | Octagon
      -- ^ @OCTAGON@
      -- Octagon shape. Corresponds to ECMA-376 ST_ShapeType \'octagon\'
    | Parallelogram
      -- ^ @PARALLELOGRAM@
      -- Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'parallelogram\'
    | Pentagon
      -- ^ @PENTAGON@
      -- Pentagon shape. Corresponds to ECMA-376 ST_ShapeType \'pentagon\'
    | Pie
      -- ^ @PIE@
      -- Pie shape. Corresponds to ECMA-376 ST_ShapeType \'pie\'
    | Plaque
      -- ^ @PLAQUE@
      -- Plaque shape. Corresponds to ECMA-376 ST_ShapeType \'plaque\'
    | Plus
      -- ^ @PLUS@
      -- Plus shape. Corresponds to ECMA-376 ST_ShapeType \'plus\'
    | QuadArrow
      -- ^ @QUAD_ARROW@
      -- Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrow\'
    | QuadArrowCallout
      -- ^ @QUAD_ARROW_CALLOUT@
      -- Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'quadArrowCallout\'
    | Ribbon
      -- ^ @RIBBON@
      -- Ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon\'
    | Ribbon2
      -- ^ @RIBBON_2@
      -- Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon2\'
    | RightArrow
      -- ^ @RIGHT_ARROW@
      -- Right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrow\'
    | RightArrowCallout
      -- ^ @RIGHT_ARROW_CALLOUT@
      -- Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rightArrowCallout\'
    | RightBrace
      -- ^ @RIGHT_BRACE@
      -- Right brace shape. Corresponds to ECMA-376 ST_ShapeType \'rightBrace\'
    | RightBracket
      -- ^ @RIGHT_BRACKET@
      -- Right bracket shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rightBracket\'
    | Round1Rectangle
      -- ^ @ROUND_1_RECTANGLE@
      -- One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'round1Rect\'
    | Round2DiagonalRectangle
      -- ^ @ROUND_2_DIAGONAL_RECTANGLE@
      -- Two diagonal round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'round2DiagRect\'
    | Round2SameRectangle
      -- ^ @ROUND_2_SAME_RECTANGLE@
      -- Two same-side round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'round2SameRect\'
    | RightTriangle
      -- ^ @RIGHT_TRIANGLE@
      -- Right triangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rtTriangle\'
    | SmileyFace
      -- ^ @SMILEY_FACE@
      -- Smiley face shape. Corresponds to ECMA-376 ST_ShapeType \'smileyFace\'
    | Snip1Rectangle
      -- ^ @SNIP_1_RECTANGLE@
      -- One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'snip1Rect\'
    | Snip2DiagonalRectangle
      -- ^ @SNIP_2_DIAGONAL_RECTANGLE@
      -- Two diagonal snip corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snip2DiagRect\'
    | Snip2SameRectangle
      -- ^ @SNIP_2_SAME_RECTANGLE@
      -- Two same-side snip corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snip2SameRect\'
    | SnipRoundRectangle
      -- ^ @SNIP_ROUND_RECTANGLE@
      -- One snip one round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snipRoundRect\'
    | Star10
      -- ^ @STAR_10@
      -- Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star10\'
    | Star12
      -- ^ @STAR_12@
      -- Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star12\'
    | Star16
      -- ^ @STAR_16@
      -- Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star16\'
    | Star24
      -- ^ @STAR_24@
      -- Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star24\'
    | Star32
      -- ^ @STAR_32@
      -- Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star32\'
    | Star4
      -- ^ @STAR_4@
      -- Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star4\'
    | Star5
      -- ^ @STAR_5@
      -- Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star5\'
    | Star6
      -- ^ @STAR_6@
      -- Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star6\'
    | Star7
      -- ^ @STAR_7@
      -- Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star7\'
    | Star8
      -- ^ @STAR_8@
      -- Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star8\'
    | StripedRightArrow
      -- ^ @STRIPED_RIGHT_ARROW@
      -- Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'stripedRightArrow\'
    | Sun
      -- ^ @SUN@
      -- Sun shape. Corresponds to ECMA-376 ST_ShapeType \'sun\'
    | Trapezoid
      -- ^ @TRAPEZOID@
      -- Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType \'trapezoid\'
    | Triangle
      -- ^ @TRIANGLE@
      -- Triangle shape. Corresponds to ECMA-376 ST_ShapeType \'triangle\'
    | UpArrow
      -- ^ @UP_ARROW@
      -- Up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrow\'
    | UpArrowCallout
      -- ^ @UP_ARROW_CALLOUT@
      -- Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'upArrowCallout\'
    | UpDownArrow
      -- ^ @UP_DOWN_ARROW@
      -- Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'upDownArrow\'
    | UturnArrow
      -- ^ @UTURN_ARROW@
      -- U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType \'uturnArrow\'
    | VerticalScroll
      -- ^ @VERTICAL_SCROLL@
      -- Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'verticalScroll\'
    | Wave
      -- ^ @WAVE@
      -- Wave shape. Corresponds to ECMA-376 ST_ShapeType \'wave\'
    | WedgeEllipseCallout
      -- ^ @WEDGE_ELLIPSE_CALLOUT@
      -- Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'wedgeEllipseCallout\'
    | WedgeRectangleCallout
      -- ^ @WEDGE_RECTANGLE_CALLOUT@
      -- Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'wedgeRectCallout\'
    | WedgeRoundRectangleCallout
      -- ^ @WEDGE_ROUND_RECTANGLE_CALLOUT@
      -- Callout wedge round rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'wedgeRoundRectCallout\'
    | FlowChartAlternateProcess
      -- ^ @FLOW_CHART_ALTERNATE_PROCESS@
      -- Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartAlternateProcess\'
    | FlowChartCollate
      -- ^ @FLOW_CHART_COLLATE@
      -- Collate flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartCollate\'
    | FlowChartConnector
      -- ^ @FLOW_CHART_CONNECTOR@
      -- Connector flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartConnector\'
    | FlowChartDecision
      -- ^ @FLOW_CHART_DECISION@
      -- Decision flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDecision\'
    | FlowChartDelay
      -- ^ @FLOW_CHART_DELAY@
      -- Delay flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDelay\'
    | FlowChartDisplay
      -- ^ @FLOW_CHART_DISPLAY@
      -- Display flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDisplay\'
    | FlowChartDocument
      -- ^ @FLOW_CHART_DOCUMENT@
      -- Document flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDocument\'
    | FlowChartExtract
      -- ^ @FLOW_CHART_EXTRACT@
      -- Extract flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartExtract\'
    | FlowChartInputOutput
      -- ^ @FLOW_CHART_INPUT_OUTPUT@
      -- Input output flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartInputOutput\'
    | FlowChartInternalStorage
      -- ^ @FLOW_CHART_INTERNAL_STORAGE@
      -- Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartInternalStorage\'
    | FlowChartMagneticDisk
      -- ^ @FLOW_CHART_MAGNETIC_DISK@
      -- Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticDisk\'
    | FlowChartMagneticDrum
      -- ^ @FLOW_CHART_MAGNETIC_DRUM@
      -- Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticDrum\'
    | FlowChartMagneticTape
      -- ^ @FLOW_CHART_MAGNETIC_TAPE@
      -- Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticTape\'
    | FlowChartManualInput
      -- ^ @FLOW_CHART_MANUAL_INPUT@
      -- Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartManualInput\'
    | FlowChartManualOperation
      -- ^ @FLOW_CHART_MANUAL_OPERATION@
      -- Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartManualOperation\'
    | FlowChartMerge
      -- ^ @FLOW_CHART_MERGE@
      -- Merge flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMerge\'
    | FlowChartMultidocument
      -- ^ @FLOW_CHART_MULTIDOCUMENT@
      -- Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMultidocument\'
    | FlowChartOfflineStorage
      -- ^ @FLOW_CHART_OFFLINE_STORAGE@
      -- Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOfflineStorage\'
    | FlowChartOffpageConnector
      -- ^ @FLOW_CHART_OFFPAGE_CONNECTOR@
      -- Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOffpageConnector\'
    | FlowChartOnlineStorage
      -- ^ @FLOW_CHART_ONLINE_STORAGE@
      -- Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOnlineStorage\'
    | FlowChartOr
      -- ^ @FLOW_CHART_OR@
      -- Or flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOr\'
    | FlowChartPredefinedProcess
      -- ^ @FLOW_CHART_PREDEFINED_PROCESS@
      -- Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPredefinedProcess\'
    | FlowChartPreparation
      -- ^ @FLOW_CHART_PREPARATION@
      -- Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPreparation\'
    | FlowChartProcess
      -- ^ @FLOW_CHART_PROCESS@
      -- Process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartProcess\'
    | FlowChartPunchedCard
      -- ^ @FLOW_CHART_PUNCHED_CARD@
      -- Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPunchedCard\'
    | FlowChartPunchedTape
      -- ^ @FLOW_CHART_PUNCHED_TAPE@
      -- Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPunchedTape\'
    | FlowChartSort
      -- ^ @FLOW_CHART_SORT@
      -- Sort flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSort\'
    | FlowChartSummingJunction
      -- ^ @FLOW_CHART_SUMMING_JUNCTION@
      -- Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartSummingJunction\'
    | FlowChartTerminator
      -- ^ @FLOW_CHART_TERMINATOR@
      -- Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartTerminator\'
    | ArrowEast
      -- ^ @ARROW_EAST@
      -- East arrow shape.
    | ArrowNorthEast
      -- ^ @ARROW_NORTH_EAST@
      -- Northeast arrow shape.
    | ArrowNorth
      -- ^ @ARROW_NORTH@
      -- North arrow shape.
    | Speech
      -- ^ @SPEECH@
      -- Speech shape.
    | Starburst
      -- ^ @STARBURST@
      -- Star burst shape.
    | Teardrop
      -- ^ @TEARDROP@
      -- Teardrop shape. Corresponds to ECMA-376 ST_ShapeType \'teardrop\'
    | EllipseRibbon
      -- ^ @ELLIPSE_RIBBON@
      -- Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'ellipseRibbon\'
    | EllipseRibbon2
      -- ^ @ELLIPSE_RIBBON_2@
      -- Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'ellipseRibbon2\'
    | CloudCallout
      -- ^ @CLOUD_CALLOUT@
      -- Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'cloudCallout\'
    | Custom
      -- ^ @CUSTOM@
      -- Custom shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateShapeRequestShapeType

instance FromHttpApiData CreateShapeRequestShapeType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "TEXT_BOX" -> Right TextBox
        "RECTANGLE" -> Right Rectangle
        "ROUND_RECTANGLE" -> Right RoundRectangle
        "ELLIPSE" -> Right Ellipse
        "ARC" -> Right Arc
        "BENT_ARROW" -> Right BentArrow
        "BENT_UP_ARROW" -> Right BentUpArrow
        "BEVEL" -> Right Bevel
        "BLOCK_ARC" -> Right BlockArc
        "BRACE_PAIR" -> Right BracePair
        "BRACKET_PAIR" -> Right BracketPair
        "CAN" -> Right Can
        "CHEVRON" -> Right Chevron
        "CHORD" -> Right Chord
        "CLOUD" -> Right Cloud
        "CORNER" -> Right Corner
        "CUBE" -> Right Cube
        "CURVED_DOWN_ARROW" -> Right CurvedDownArrow
        "CURVED_LEFT_ARROW" -> Right CurvedLeftArrow
        "CURVED_RIGHT_ARROW" -> Right CurvedRightArrow
        "CURVED_UP_ARROW" -> Right CurvedUpArrow
        "DECAGON" -> Right Decagon
        "DIAGONAL_STRIPE" -> Right DiagonalStripe
        "DIAMOND" -> Right Diamond
        "DODECAGON" -> Right Dodecagon
        "DONUT" -> Right Donut
        "DOUBLE_WAVE" -> Right DoubleWave
        "DOWN_ARROW" -> Right DownArrow
        "DOWN_ARROW_CALLOUT" -> Right DownArrowCallout
        "FOLDED_CORNER" -> Right FoldedCorner
        "FRAME" -> Right Frame
        "HALF_FRAME" -> Right HalfFrame
        "HEART" -> Right Heart
        "HEPTAGON" -> Right Heptagon
        "HEXAGON" -> Right Hexagon
        "HOME_PLATE" -> Right HomePlate
        "HORIZONTAL_SCROLL" -> Right HorizontalScroll
        "IRREGULAR_SEAL_1" -> Right IrregularSeal1
        "IRREGULAR_SEAL_2" -> Right IrregularSeal2
        "LEFT_ARROW" -> Right LeftArrow
        "LEFT_ARROW_CALLOUT" -> Right LeftArrowCallout
        "LEFT_BRACE" -> Right LeftBrace
        "LEFT_BRACKET" -> Right LeftBracket
        "LEFT_RIGHT_ARROW" -> Right LeftRightArrow
        "LEFT_RIGHT_ARROW_CALLOUT" -> Right LeftRightArrowCallout
        "LEFT_RIGHT_UP_ARROW" -> Right LeftRightUpArrow
        "LEFT_UP_ARROW" -> Right LeftUpArrow
        "LIGHTNING_BOLT" -> Right LightningBolt
        "MATH_DIVIDE" -> Right MathDivide
        "MATH_EQUAL" -> Right MathEqual
        "MATH_MINUS" -> Right MathMinus
        "MATH_MULTIPLY" -> Right MathMultiply
        "MATH_NOT_EQUAL" -> Right MathNotEqual
        "MATH_PLUS" -> Right MathPlus
        "MOON" -> Right Moon
        "NO_SMOKING" -> Right NoSmoking
        "NOTCHED_RIGHT_ARROW" -> Right NotchedRightArrow
        "OCTAGON" -> Right Octagon
        "PARALLELOGRAM" -> Right Parallelogram
        "PENTAGON" -> Right Pentagon
        "PIE" -> Right Pie
        "PLAQUE" -> Right Plaque
        "PLUS" -> Right Plus
        "QUAD_ARROW" -> Right QuadArrow
        "QUAD_ARROW_CALLOUT" -> Right QuadArrowCallout
        "RIBBON" -> Right Ribbon
        "RIBBON_2" -> Right Ribbon2
        "RIGHT_ARROW" -> Right RightArrow
        "RIGHT_ARROW_CALLOUT" -> Right RightArrowCallout
        "RIGHT_BRACE" -> Right RightBrace
        "RIGHT_BRACKET" -> Right RightBracket
        "ROUND_1_RECTANGLE" -> Right Round1Rectangle
        "ROUND_2_DIAGONAL_RECTANGLE" -> Right Round2DiagonalRectangle
        "ROUND_2_SAME_RECTANGLE" -> Right Round2SameRectangle
        "RIGHT_TRIANGLE" -> Right RightTriangle
        "SMILEY_FACE" -> Right SmileyFace
        "SNIP_1_RECTANGLE" -> Right Snip1Rectangle
        "SNIP_2_DIAGONAL_RECTANGLE" -> Right Snip2DiagonalRectangle
        "SNIP_2_SAME_RECTANGLE" -> Right Snip2SameRectangle
        "SNIP_ROUND_RECTANGLE" -> Right SnipRoundRectangle
        "STAR_10" -> Right Star10
        "STAR_12" -> Right Star12
        "STAR_16" -> Right Star16
        "STAR_24" -> Right Star24
        "STAR_32" -> Right Star32
        "STAR_4" -> Right Star4
        "STAR_5" -> Right Star5
        "STAR_6" -> Right Star6
        "STAR_7" -> Right Star7
        "STAR_8" -> Right Star8
        "STRIPED_RIGHT_ARROW" -> Right StripedRightArrow
        "SUN" -> Right Sun
        "TRAPEZOID" -> Right Trapezoid
        "TRIANGLE" -> Right Triangle
        "UP_ARROW" -> Right UpArrow
        "UP_ARROW_CALLOUT" -> Right UpArrowCallout
        "UP_DOWN_ARROW" -> Right UpDownArrow
        "UTURN_ARROW" -> Right UturnArrow
        "VERTICAL_SCROLL" -> Right VerticalScroll
        "WAVE" -> Right Wave
        "WEDGE_ELLIPSE_CALLOUT" -> Right WedgeEllipseCallout
        "WEDGE_RECTANGLE_CALLOUT" -> Right WedgeRectangleCallout
        "WEDGE_ROUND_RECTANGLE_CALLOUT" -> Right WedgeRoundRectangleCallout
        "FLOW_CHART_ALTERNATE_PROCESS" -> Right FlowChartAlternateProcess
        "FLOW_CHART_COLLATE" -> Right FlowChartCollate
        "FLOW_CHART_CONNECTOR" -> Right FlowChartConnector
        "FLOW_CHART_DECISION" -> Right FlowChartDecision
        "FLOW_CHART_DELAY" -> Right FlowChartDelay
        "FLOW_CHART_DISPLAY" -> Right FlowChartDisplay
        "FLOW_CHART_DOCUMENT" -> Right FlowChartDocument
        "FLOW_CHART_EXTRACT" -> Right FlowChartExtract
        "FLOW_CHART_INPUT_OUTPUT" -> Right FlowChartInputOutput
        "FLOW_CHART_INTERNAL_STORAGE" -> Right FlowChartInternalStorage
        "FLOW_CHART_MAGNETIC_DISK" -> Right FlowChartMagneticDisk
        "FLOW_CHART_MAGNETIC_DRUM" -> Right FlowChartMagneticDrum
        "FLOW_CHART_MAGNETIC_TAPE" -> Right FlowChartMagneticTape
        "FLOW_CHART_MANUAL_INPUT" -> Right FlowChartManualInput
        "FLOW_CHART_MANUAL_OPERATION" -> Right FlowChartManualOperation
        "FLOW_CHART_MERGE" -> Right FlowChartMerge
        "FLOW_CHART_MULTIDOCUMENT" -> Right FlowChartMultidocument
        "FLOW_CHART_OFFLINE_STORAGE" -> Right FlowChartOfflineStorage
        "FLOW_CHART_OFFPAGE_CONNECTOR" -> Right FlowChartOffpageConnector
        "FLOW_CHART_ONLINE_STORAGE" -> Right FlowChartOnlineStorage
        "FLOW_CHART_OR" -> Right FlowChartOr
        "FLOW_CHART_PREDEFINED_PROCESS" -> Right FlowChartPredefinedProcess
        "FLOW_CHART_PREPARATION" -> Right FlowChartPreparation
        "FLOW_CHART_PROCESS" -> Right FlowChartProcess
        "FLOW_CHART_PUNCHED_CARD" -> Right FlowChartPunchedCard
        "FLOW_CHART_PUNCHED_TAPE" -> Right FlowChartPunchedTape
        "FLOW_CHART_SORT" -> Right FlowChartSort
        "FLOW_CHART_SUMMING_JUNCTION" -> Right FlowChartSummingJunction
        "FLOW_CHART_TERMINATOR" -> Right FlowChartTerminator
        "ARROW_EAST" -> Right ArrowEast
        "ARROW_NORTH_EAST" -> Right ArrowNorthEast
        "ARROW_NORTH" -> Right ArrowNorth
        "SPEECH" -> Right Speech
        "STARBURST" -> Right Starburst
        "TEARDROP" -> Right Teardrop
        "ELLIPSE_RIBBON" -> Right EllipseRibbon
        "ELLIPSE_RIBBON_2" -> Right EllipseRibbon2
        "CLOUD_CALLOUT" -> Right CloudCallout
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse CreateShapeRequestShapeType from: " <> x)

instance ToHttpApiData CreateShapeRequestShapeType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        TextBox -> "TEXT_BOX"
        Rectangle -> "RECTANGLE"
        RoundRectangle -> "ROUND_RECTANGLE"
        Ellipse -> "ELLIPSE"
        Arc -> "ARC"
        BentArrow -> "BENT_ARROW"
        BentUpArrow -> "BENT_UP_ARROW"
        Bevel -> "BEVEL"
        BlockArc -> "BLOCK_ARC"
        BracePair -> "BRACE_PAIR"
        BracketPair -> "BRACKET_PAIR"
        Can -> "CAN"
        Chevron -> "CHEVRON"
        Chord -> "CHORD"
        Cloud -> "CLOUD"
        Corner -> "CORNER"
        Cube -> "CUBE"
        CurvedDownArrow -> "CURVED_DOWN_ARROW"
        CurvedLeftArrow -> "CURVED_LEFT_ARROW"
        CurvedRightArrow -> "CURVED_RIGHT_ARROW"
        CurvedUpArrow -> "CURVED_UP_ARROW"
        Decagon -> "DECAGON"
        DiagonalStripe -> "DIAGONAL_STRIPE"
        Diamond -> "DIAMOND"
        Dodecagon -> "DODECAGON"
        Donut -> "DONUT"
        DoubleWave -> "DOUBLE_WAVE"
        DownArrow -> "DOWN_ARROW"
        DownArrowCallout -> "DOWN_ARROW_CALLOUT"
        FoldedCorner -> "FOLDED_CORNER"
        Frame -> "FRAME"
        HalfFrame -> "HALF_FRAME"
        Heart -> "HEART"
        Heptagon -> "HEPTAGON"
        Hexagon -> "HEXAGON"
        HomePlate -> "HOME_PLATE"
        HorizontalScroll -> "HORIZONTAL_SCROLL"
        IrregularSeal1 -> "IRREGULAR_SEAL_1"
        IrregularSeal2 -> "IRREGULAR_SEAL_2"
        LeftArrow -> "LEFT_ARROW"
        LeftArrowCallout -> "LEFT_ARROW_CALLOUT"
        LeftBrace -> "LEFT_BRACE"
        LeftBracket -> "LEFT_BRACKET"
        LeftRightArrow -> "LEFT_RIGHT_ARROW"
        LeftRightArrowCallout -> "LEFT_RIGHT_ARROW_CALLOUT"
        LeftRightUpArrow -> "LEFT_RIGHT_UP_ARROW"
        LeftUpArrow -> "LEFT_UP_ARROW"
        LightningBolt -> "LIGHTNING_BOLT"
        MathDivide -> "MATH_DIVIDE"
        MathEqual -> "MATH_EQUAL"
        MathMinus -> "MATH_MINUS"
        MathMultiply -> "MATH_MULTIPLY"
        MathNotEqual -> "MATH_NOT_EQUAL"
        MathPlus -> "MATH_PLUS"
        Moon -> "MOON"
        NoSmoking -> "NO_SMOKING"
        NotchedRightArrow -> "NOTCHED_RIGHT_ARROW"
        Octagon -> "OCTAGON"
        Parallelogram -> "PARALLELOGRAM"
        Pentagon -> "PENTAGON"
        Pie -> "PIE"
        Plaque -> "PLAQUE"
        Plus -> "PLUS"
        QuadArrow -> "QUAD_ARROW"
        QuadArrowCallout -> "QUAD_ARROW_CALLOUT"
        Ribbon -> "RIBBON"
        Ribbon2 -> "RIBBON_2"
        RightArrow -> "RIGHT_ARROW"
        RightArrowCallout -> "RIGHT_ARROW_CALLOUT"
        RightBrace -> "RIGHT_BRACE"
        RightBracket -> "RIGHT_BRACKET"
        Round1Rectangle -> "ROUND_1_RECTANGLE"
        Round2DiagonalRectangle -> "ROUND_2_DIAGONAL_RECTANGLE"
        Round2SameRectangle -> "ROUND_2_SAME_RECTANGLE"
        RightTriangle -> "RIGHT_TRIANGLE"
        SmileyFace -> "SMILEY_FACE"
        Snip1Rectangle -> "SNIP_1_RECTANGLE"
        Snip2DiagonalRectangle -> "SNIP_2_DIAGONAL_RECTANGLE"
        Snip2SameRectangle -> "SNIP_2_SAME_RECTANGLE"
        SnipRoundRectangle -> "SNIP_ROUND_RECTANGLE"
        Star10 -> "STAR_10"
        Star12 -> "STAR_12"
        Star16 -> "STAR_16"
        Star24 -> "STAR_24"
        Star32 -> "STAR_32"
        Star4 -> "STAR_4"
        Star5 -> "STAR_5"
        Star6 -> "STAR_6"
        Star7 -> "STAR_7"
        Star8 -> "STAR_8"
        StripedRightArrow -> "STRIPED_RIGHT_ARROW"
        Sun -> "SUN"
        Trapezoid -> "TRAPEZOID"
        Triangle -> "TRIANGLE"
        UpArrow -> "UP_ARROW"
        UpArrowCallout -> "UP_ARROW_CALLOUT"
        UpDownArrow -> "UP_DOWN_ARROW"
        UturnArrow -> "UTURN_ARROW"
        VerticalScroll -> "VERTICAL_SCROLL"
        Wave -> "WAVE"
        WedgeEllipseCallout -> "WEDGE_ELLIPSE_CALLOUT"
        WedgeRectangleCallout -> "WEDGE_RECTANGLE_CALLOUT"
        WedgeRoundRectangleCallout -> "WEDGE_ROUND_RECTANGLE_CALLOUT"
        FlowChartAlternateProcess -> "FLOW_CHART_ALTERNATE_PROCESS"
        FlowChartCollate -> "FLOW_CHART_COLLATE"
        FlowChartConnector -> "FLOW_CHART_CONNECTOR"
        FlowChartDecision -> "FLOW_CHART_DECISION"
        FlowChartDelay -> "FLOW_CHART_DELAY"
        FlowChartDisplay -> "FLOW_CHART_DISPLAY"
        FlowChartDocument -> "FLOW_CHART_DOCUMENT"
        FlowChartExtract -> "FLOW_CHART_EXTRACT"
        FlowChartInputOutput -> "FLOW_CHART_INPUT_OUTPUT"
        FlowChartInternalStorage -> "FLOW_CHART_INTERNAL_STORAGE"
        FlowChartMagneticDisk -> "FLOW_CHART_MAGNETIC_DISK"
        FlowChartMagneticDrum -> "FLOW_CHART_MAGNETIC_DRUM"
        FlowChartMagneticTape -> "FLOW_CHART_MAGNETIC_TAPE"
        FlowChartManualInput -> "FLOW_CHART_MANUAL_INPUT"
        FlowChartManualOperation -> "FLOW_CHART_MANUAL_OPERATION"
        FlowChartMerge -> "FLOW_CHART_MERGE"
        FlowChartMultidocument -> "FLOW_CHART_MULTIDOCUMENT"
        FlowChartOfflineStorage -> "FLOW_CHART_OFFLINE_STORAGE"
        FlowChartOffpageConnector -> "FLOW_CHART_OFFPAGE_CONNECTOR"
        FlowChartOnlineStorage -> "FLOW_CHART_ONLINE_STORAGE"
        FlowChartOr -> "FLOW_CHART_OR"
        FlowChartPredefinedProcess -> "FLOW_CHART_PREDEFINED_PROCESS"
        FlowChartPreparation -> "FLOW_CHART_PREPARATION"
        FlowChartProcess -> "FLOW_CHART_PROCESS"
        FlowChartPunchedCard -> "FLOW_CHART_PUNCHED_CARD"
        FlowChartPunchedTape -> "FLOW_CHART_PUNCHED_TAPE"
        FlowChartSort -> "FLOW_CHART_SORT"
        FlowChartSummingJunction -> "FLOW_CHART_SUMMING_JUNCTION"
        FlowChartTerminator -> "FLOW_CHART_TERMINATOR"
        ArrowEast -> "ARROW_EAST"
        ArrowNorthEast -> "ARROW_NORTH_EAST"
        ArrowNorth -> "ARROW_NORTH"
        Speech -> "SPEECH"
        Starburst -> "STARBURST"
        Teardrop -> "TEARDROP"
        EllipseRibbon -> "ELLIPSE_RIBBON"
        EllipseRibbon2 -> "ELLIPSE_RIBBON_2"
        CloudCallout -> "CLOUD_CALLOUT"
        Custom -> "CUSTOM"

instance FromJSON CreateShapeRequestShapeType where
    parseJSON = parseJSONText "CreateShapeRequestShapeType"

instance ToJSON CreateShapeRequestShapeType where
    toJSON = toJSONText

-- | Predefined layout.
data LayoutReferencePredefinedLayout
    = PredefinedLayoutUnspecified
      -- ^ @PREDEFINED_LAYOUT_UNSPECIFIED@
      -- Unspecified layout.
    | Blank
      -- ^ @BLANK@
      -- Blank layout, with no placeholders.
    | CaptionOnly
      -- ^ @CAPTION_ONLY@
      -- Layout with a caption at the bottom.
    | Title
      -- ^ @TITLE@
      -- Layout with a title and a subtitle.
    | TitleAndBody
      -- ^ @TITLE_AND_BODY@
      -- Layout with a title and body.
    | TitleAndTwoColumns
      -- ^ @TITLE_AND_TWO_COLUMNS@
      -- Layout with a title and two columns.
    | TitleOnly
      -- ^ @TITLE_ONLY@
      -- Layout with only a title.
    | SectionHeader
      -- ^ @SECTION_HEADER@
      -- Layout with a section title.
    | SectionTitleAndDescription
      -- ^ @SECTION_TITLE_AND_DESCRIPTION@
      -- Layout with a title and subtitle on one side and description on the
      -- other.
    | OneColumnText
      -- ^ @ONE_COLUMN_TEXT@
      -- Layout with one title and one body, arranged in a single column.
    | MainPoint
      -- ^ @MAIN_POINT@
      -- Layout with a main point.
    | BigNumber
      -- ^ @BIG_NUMBER@
      -- Layout with a big number heading.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LayoutReferencePredefinedLayout

instance FromHttpApiData LayoutReferencePredefinedLayout where
    parseQueryParam = \case
        "PREDEFINED_LAYOUT_UNSPECIFIED" -> Right PredefinedLayoutUnspecified
        "BLANK" -> Right Blank
        "CAPTION_ONLY" -> Right CaptionOnly
        "TITLE" -> Right Title
        "TITLE_AND_BODY" -> Right TitleAndBody
        "TITLE_AND_TWO_COLUMNS" -> Right TitleAndTwoColumns
        "TITLE_ONLY" -> Right TitleOnly
        "SECTION_HEADER" -> Right SectionHeader
        "SECTION_TITLE_AND_DESCRIPTION" -> Right SectionTitleAndDescription
        "ONE_COLUMN_TEXT" -> Right OneColumnText
        "MAIN_POINT" -> Right MainPoint
        "BIG_NUMBER" -> Right BigNumber
        x -> Left ("Unable to parse LayoutReferencePredefinedLayout from: " <> x)

instance ToHttpApiData LayoutReferencePredefinedLayout where
    toQueryParam = \case
        PredefinedLayoutUnspecified -> "PREDEFINED_LAYOUT_UNSPECIFIED"
        Blank -> "BLANK"
        CaptionOnly -> "CAPTION_ONLY"
        Title -> "TITLE"
        TitleAndBody -> "TITLE_AND_BODY"
        TitleAndTwoColumns -> "TITLE_AND_TWO_COLUMNS"
        TitleOnly -> "TITLE_ONLY"
        SectionHeader -> "SECTION_HEADER"
        SectionTitleAndDescription -> "SECTION_TITLE_AND_DESCRIPTION"
        OneColumnText -> "ONE_COLUMN_TEXT"
        MainPoint -> "MAIN_POINT"
        BigNumber -> "BIG_NUMBER"

instance FromJSON LayoutReferencePredefinedLayout where
    parseJSON = parseJSONText "LayoutReferencePredefinedLayout"

instance ToJSON LayoutReferencePredefinedLayout where
    toJSON = toJSONText

-- | The category of the line to be created. *Deprecated*: use \`category\`
-- instead. The exact line type created is determined based on the category
-- and how it\'s routed to connect to other page elements. If you specify
-- both a \`category\` and a \`line_category\`, the \`category\` takes
-- precedence.
data CreateLineRequestLineCategory
    = Straight
      -- ^ @STRAIGHT@
      -- Straight connectors, including straight connector 1. The is the default
      -- category when one is not specified.
    | Bent
      -- ^ @BENT@
      -- Bent connectors, including bent connector 2 to 5.
    | Curved
      -- ^ @CURVED@
      -- Curved connectors, including curved connector 2 to 5.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateLineRequestLineCategory

instance FromHttpApiData CreateLineRequestLineCategory where
    parseQueryParam = \case
        "STRAIGHT" -> Right Straight
        "BENT" -> Right Bent
        "CURVED" -> Right Curved
        x -> Left ("Unable to parse CreateLineRequestLineCategory from: " <> x)

instance ToHttpApiData CreateLineRequestLineCategory where
    toQueryParam = \case
        Straight -> "STRAIGHT"
        Bent -> "BENT"
        Curved -> "CURVED"

instance FromJSON CreateLineRequestLineCategory where
    parseJSON = parseJSONText "CreateLineRequestLineCategory"

instance ToJSON CreateLineRequestLineCategory where
    toJSON = toJSONText

-- | The type of the shape.
data ShapeShapeType
    = SSTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- The shape type that is not predefined.
    | SSTTextBox
      -- ^ @TEXT_BOX@
      -- Text box shape.
    | SSTRectangle
      -- ^ @RECTANGLE@
      -- Rectangle shape. Corresponds to ECMA-376 ST_ShapeType \'rect\'.
    | SSTRoundRectangle
      -- ^ @ROUND_RECTANGLE@
      -- Round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'roundRect\'
    | SSTEllipse
      -- ^ @ELLIPSE@
      -- Ellipse shape. Corresponds to ECMA-376 ST_ShapeType \'ellipse\'
    | SSTArc
      -- ^ @ARC@
      -- Curved arc shape. Corresponds to ECMA-376 ST_ShapeType \'arc\'
    | SSTBentArrow
      -- ^ @BENT_ARROW@
      -- Bent arrow shape. Corresponds to ECMA-376 ST_ShapeType \'bentArrow\'
    | SSTBentUpArrow
      -- ^ @BENT_UP_ARROW@
      -- Bent up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentUpArrow\'
    | SSTBevel
      -- ^ @BEVEL@
      -- Bevel shape. Corresponds to ECMA-376 ST_ShapeType \'bevel\'
    | SSTBlockArc
      -- ^ @BLOCK_ARC@
      -- Block arc shape. Corresponds to ECMA-376 ST_ShapeType \'blockArc\'
    | SSTBracePair
      -- ^ @BRACE_PAIR@
      -- Brace pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracePair\'
    | SSTBracketPair
      -- ^ @BRACKET_PAIR@
      -- Bracket pair shape. Corresponds to ECMA-376 ST_ShapeType \'bracketPair\'
    | SSTCan
      -- ^ @CAN@
      -- Can shape. Corresponds to ECMA-376 ST_ShapeType \'can\'
    | SSTChevron
      -- ^ @CHEVRON@
      -- Chevron shape. Corresponds to ECMA-376 ST_ShapeType \'chevron\'
    | SSTChord
      -- ^ @CHORD@
      -- Chord shape. Corresponds to ECMA-376 ST_ShapeType \'chord\'
    | SSTCloud
      -- ^ @CLOUD@
      -- Cloud shape. Corresponds to ECMA-376 ST_ShapeType \'cloud\'
    | SSTCorner
      -- ^ @CORNER@
      -- Corner shape. Corresponds to ECMA-376 ST_ShapeType \'corner\'
    | SSTCube
      -- ^ @CUBE@
      -- Cube shape. Corresponds to ECMA-376 ST_ShapeType \'cube\'
    | SSTCurvedDownArrow
      -- ^ @CURVED_DOWN_ARROW@
      -- Curved down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedDownArrow\'
    | SSTCurvedLeftArrow
      -- ^ @CURVED_LEFT_ARROW@
      -- Curved left arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedLeftArrow\'
    | SSTCurvedRightArrow
      -- ^ @CURVED_RIGHT_ARROW@
      -- Curved right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedRightArrow\'
    | SSTCurvedUpArrow
      -- ^ @CURVED_UP_ARROW@
      -- Curved up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedUpArrow\'
    | SSTDecagon
      -- ^ @DECAGON@
      -- Decagon shape. Corresponds to ECMA-376 ST_ShapeType \'decagon\'
    | SSTDiagonalStripe
      -- ^ @DIAGONAL_STRIPE@
      -- Diagonal stripe shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'diagStripe\'
    | SSTDiamond
      -- ^ @DIAMOND@
      -- Diamond shape. Corresponds to ECMA-376 ST_ShapeType \'diamond\'
    | SSTDodecagon
      -- ^ @DODECAGON@
      -- Dodecagon shape. Corresponds to ECMA-376 ST_ShapeType \'dodecagon\'
    | SSTDonut
      -- ^ @DONUT@
      -- Donut shape. Corresponds to ECMA-376 ST_ShapeType \'donut\'
    | SSTDoubleWave
      -- ^ @DOUBLE_WAVE@
      -- Double wave shape. Corresponds to ECMA-376 ST_ShapeType \'doubleWave\'
    | SSTDownArrow
      -- ^ @DOWN_ARROW@
      -- Down arrow shape. Corresponds to ECMA-376 ST_ShapeType \'downArrow\'
    | SSTDownArrowCallout
      -- ^ @DOWN_ARROW_CALLOUT@
      -- Callout down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'downArrowCallout\'
    | SSTFoldedCorner
      -- ^ @FOLDED_CORNER@
      -- Folded corner shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'foldedCorner\'
    | SSTFrame
      -- ^ @FRAME@
      -- Frame shape. Corresponds to ECMA-376 ST_ShapeType \'frame\'
    | SSTHalfFrame
      -- ^ @HALF_FRAME@
      -- Half frame shape. Corresponds to ECMA-376 ST_ShapeType \'halfFrame\'
    | SSTHeart
      -- ^ @HEART@
      -- Heart shape. Corresponds to ECMA-376 ST_ShapeType \'heart\'
    | SSTHeptagon
      -- ^ @HEPTAGON@
      -- Heptagon shape. Corresponds to ECMA-376 ST_ShapeType \'heptagon\'
    | SSTHexagon
      -- ^ @HEXAGON@
      -- Hexagon shape. Corresponds to ECMA-376 ST_ShapeType \'hexagon\'
    | SSTHomePlate
      -- ^ @HOME_PLATE@
      -- Home plate shape. Corresponds to ECMA-376 ST_ShapeType \'homePlate\'
    | SSTHorizontalScroll
      -- ^ @HORIZONTAL_SCROLL@
      -- Horizontal scroll shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'horizontalScroll\'
    | SSTIrregularSeal1
      -- ^ @IRREGULAR_SEAL_1@
      -- Irregular seal 1 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'irregularSeal1\'
    | SSTIrregularSeal2
      -- ^ @IRREGULAR_SEAL_2@
      -- Irregular seal 2 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'irregularSeal2\'
    | SSTLeftArrow
      -- ^ @LEFT_ARROW@
      -- Left arrow shape. Corresponds to ECMA-376 ST_ShapeType \'leftArrow\'
    | SSTLeftArrowCallout
      -- ^ @LEFT_ARROW_CALLOUT@
      -- Callout left arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftArrowCallout\'
    | SSTLeftBrace
      -- ^ @LEFT_BRACE@
      -- Left brace shape. Corresponds to ECMA-376 ST_ShapeType \'leftBrace\'
    | SSTLeftBracket
      -- ^ @LEFT_BRACKET@
      -- Left bracket shape. Corresponds to ECMA-376 ST_ShapeType \'leftBracket\'
    | SSTLeftRightArrow
      -- ^ @LEFT_RIGHT_ARROW@
      -- Left right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightArrow\'
    | SSTLeftRightArrowCallout
      -- ^ @LEFT_RIGHT_ARROW_CALLOUT@
      -- Callout left right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightArrowCallout\'
    | SSTLeftRightUpArrow
      -- ^ @LEFT_RIGHT_UP_ARROW@
      -- Left right up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftRightUpArrow\'
    | SSTLeftUpArrow
      -- ^ @LEFT_UP_ARROW@
      -- Left up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'leftUpArrow\'
    | SSTLightningBolt
      -- ^ @LIGHTNING_BOLT@
      -- Lightning bolt shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'lightningBolt\'
    | SSTMathDivide
      -- ^ @MATH_DIVIDE@
      -- Divide math shape. Corresponds to ECMA-376 ST_ShapeType \'mathDivide\'
    | SSTMathEqual
      -- ^ @MATH_EQUAL@
      -- Equal math shape. Corresponds to ECMA-376 ST_ShapeType \'mathEqual\'
    | SSTMathMinus
      -- ^ @MATH_MINUS@
      -- Minus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathMinus\'
    | SSTMathMultiply
      -- ^ @MATH_MULTIPLY@
      -- Multiply math shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'mathMultiply\'
    | SSTMathNotEqual
      -- ^ @MATH_NOT_EQUAL@
      -- Not equal math shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'mathNotEqual\'
    | SSTMathPlus
      -- ^ @MATH_PLUS@
      -- Plus math shape. Corresponds to ECMA-376 ST_ShapeType \'mathPlus\'
    | SSTMoon
      -- ^ @MOON@
      -- Moon shape. Corresponds to ECMA-376 ST_ShapeType \'moon\'
    | SSTNoSmoking
      -- ^ @NO_SMOKING@
      -- No smoking shape. Corresponds to ECMA-376 ST_ShapeType \'noSmoking\'
    | SSTNotchedRightArrow
      -- ^ @NOTCHED_RIGHT_ARROW@
      -- Notched right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'notchedRightArrow\'
    | SSTOctagon
      -- ^ @OCTAGON@
      -- Octagon shape. Corresponds to ECMA-376 ST_ShapeType \'octagon\'
    | SSTParallelogram
      -- ^ @PARALLELOGRAM@
      -- Parallelogram shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'parallelogram\'
    | SSTPentagon
      -- ^ @PENTAGON@
      -- Pentagon shape. Corresponds to ECMA-376 ST_ShapeType \'pentagon\'
    | SSTPie
      -- ^ @PIE@
      -- Pie shape. Corresponds to ECMA-376 ST_ShapeType \'pie\'
    | SSTPlaque
      -- ^ @PLAQUE@
      -- Plaque shape. Corresponds to ECMA-376 ST_ShapeType \'plaque\'
    | SSTPlus
      -- ^ @PLUS@
      -- Plus shape. Corresponds to ECMA-376 ST_ShapeType \'plus\'
    | SSTQuadArrow
      -- ^ @QUAD_ARROW@
      -- Quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType \'quadArrow\'
    | SSTQuadArrowCallout
      -- ^ @QUAD_ARROW_CALLOUT@
      -- Callout quad-arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'quadArrowCallout\'
    | SSTRibbon
      -- ^ @RIBBON@
      -- Ribbon shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon\'
    | SSTRibbon2
      -- ^ @RIBBON_2@
      -- Ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType \'ribbon2\'
    | SSTRightArrow
      -- ^ @RIGHT_ARROW@
      -- Right arrow shape. Corresponds to ECMA-376 ST_ShapeType \'rightArrow\'
    | SSTRightArrowCallout
      -- ^ @RIGHT_ARROW_CALLOUT@
      -- Callout right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rightArrowCallout\'
    | SSTRightBrace
      -- ^ @RIGHT_BRACE@
      -- Right brace shape. Corresponds to ECMA-376 ST_ShapeType \'rightBrace\'
    | SSTRightBracket
      -- ^ @RIGHT_BRACKET@
      -- Right bracket shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rightBracket\'
    | SSTRound1Rectangle
      -- ^ @ROUND_1_RECTANGLE@
      -- One round corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'round1Rect\'
    | SSTRound2DiagonalRectangle
      -- ^ @ROUND_2_DIAGONAL_RECTANGLE@
      -- Two diagonal round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'round2DiagRect\'
    | SSTRound2SameRectangle
      -- ^ @ROUND_2_SAME_RECTANGLE@
      -- Two same-side round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'round2SameRect\'
    | SSTRightTriangle
      -- ^ @RIGHT_TRIANGLE@
      -- Right triangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'rtTriangle\'
    | SSTSmileyFace
      -- ^ @SMILEY_FACE@
      -- Smiley face shape. Corresponds to ECMA-376 ST_ShapeType \'smileyFace\'
    | SSTSnip1Rectangle
      -- ^ @SNIP_1_RECTANGLE@
      -- One snip corner rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'snip1Rect\'
    | SSTSnip2DiagonalRectangle
      -- ^ @SNIP_2_DIAGONAL_RECTANGLE@
      -- Two diagonal snip corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snip2DiagRect\'
    | SSTSnip2SameRectangle
      -- ^ @SNIP_2_SAME_RECTANGLE@
      -- Two same-side snip corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snip2SameRect\'
    | SSTSnipRoundRectangle
      -- ^ @SNIP_ROUND_RECTANGLE@
      -- One snip one round corner rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'snipRoundRect\'
    | SSTStar10
      -- ^ @STAR_10@
      -- Ten pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star10\'
    | SSTStar12
      -- ^ @STAR_12@
      -- Twelve pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star12\'
    | SSTStar16
      -- ^ @STAR_16@
      -- Sixteen pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star16\'
    | SSTStar24
      -- ^ @STAR_24@
      -- Twenty four pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star24\'
    | SSTStar32
      -- ^ @STAR_32@
      -- Thirty two pointed star shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'star32\'
    | SSTStar4
      -- ^ @STAR_4@
      -- Four pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star4\'
    | SSTStar5
      -- ^ @STAR_5@
      -- Five pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star5\'
    | SSTStar6
      -- ^ @STAR_6@
      -- Six pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star6\'
    | SSTStar7
      -- ^ @STAR_7@
      -- Seven pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star7\'
    | SSTStar8
      -- ^ @STAR_8@
      -- Eight pointed star shape. Corresponds to ECMA-376 ST_ShapeType \'star8\'
    | SSTStripedRightArrow
      -- ^ @STRIPED_RIGHT_ARROW@
      -- Striped right arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'stripedRightArrow\'
    | SSTSun
      -- ^ @SUN@
      -- Sun shape. Corresponds to ECMA-376 ST_ShapeType \'sun\'
    | SSTTrapezoid
      -- ^ @TRAPEZOID@
      -- Trapezoid shape. Corresponds to ECMA-376 ST_ShapeType \'trapezoid\'
    | SSTTriangle
      -- ^ @TRIANGLE@
      -- Triangle shape. Corresponds to ECMA-376 ST_ShapeType \'triangle\'
    | SSTUpArrow
      -- ^ @UP_ARROW@
      -- Up arrow shape. Corresponds to ECMA-376 ST_ShapeType \'upArrow\'
    | SSTUpArrowCallout
      -- ^ @UP_ARROW_CALLOUT@
      -- Callout up arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'upArrowCallout\'
    | SSTUpDownArrow
      -- ^ @UP_DOWN_ARROW@
      -- Up down arrow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'upDownArrow\'
    | SSTUturnArrow
      -- ^ @UTURN_ARROW@
      -- U-turn arrow shape. Corresponds to ECMA-376 ST_ShapeType \'uturnArrow\'
    | SSTVerticalScroll
      -- ^ @VERTICAL_SCROLL@
      -- Vertical scroll shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'verticalScroll\'
    | SSTWave
      -- ^ @WAVE@
      -- Wave shape. Corresponds to ECMA-376 ST_ShapeType \'wave\'
    | SSTWedgeEllipseCallout
      -- ^ @WEDGE_ELLIPSE_CALLOUT@
      -- Callout wedge ellipse shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'wedgeEllipseCallout\'
    | SSTWedgeRectangleCallout
      -- ^ @WEDGE_RECTANGLE_CALLOUT@
      -- Callout wedge rectangle shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'wedgeRectCallout\'
    | SSTWedgeRoundRectangleCallout
      -- ^ @WEDGE_ROUND_RECTANGLE_CALLOUT@
      -- Callout wedge round rectangle shape. Corresponds to ECMA-376
      -- ST_ShapeType \'wedgeRoundRectCallout\'
    | SSTFlowChartAlternateProcess
      -- ^ @FLOW_CHART_ALTERNATE_PROCESS@
      -- Alternate process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartAlternateProcess\'
    | SSTFlowChartCollate
      -- ^ @FLOW_CHART_COLLATE@
      -- Collate flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartCollate\'
    | SSTFlowChartConnector
      -- ^ @FLOW_CHART_CONNECTOR@
      -- Connector flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartConnector\'
    | SSTFlowChartDecision
      -- ^ @FLOW_CHART_DECISION@
      -- Decision flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDecision\'
    | SSTFlowChartDelay
      -- ^ @FLOW_CHART_DELAY@
      -- Delay flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDelay\'
    | SSTFlowChartDisplay
      -- ^ @FLOW_CHART_DISPLAY@
      -- Display flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDisplay\'
    | SSTFlowChartDocument
      -- ^ @FLOW_CHART_DOCUMENT@
      -- Document flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartDocument\'
    | SSTFlowChartExtract
      -- ^ @FLOW_CHART_EXTRACT@
      -- Extract flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartExtract\'
    | SSTFlowChartInputOutput
      -- ^ @FLOW_CHART_INPUT_OUTPUT@
      -- Input output flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartInputOutput\'
    | SSTFlowChartInternalStorage
      -- ^ @FLOW_CHART_INTERNAL_STORAGE@
      -- Internal storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartInternalStorage\'
    | SSTFlowChartMagneticDisk
      -- ^ @FLOW_CHART_MAGNETIC_DISK@
      -- Magnetic disk flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticDisk\'
    | SSTFlowChartMagneticDrum
      -- ^ @FLOW_CHART_MAGNETIC_DRUM@
      -- Magnetic drum flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticDrum\'
    | SSTFlowChartMagneticTape
      -- ^ @FLOW_CHART_MAGNETIC_TAPE@
      -- Magnetic tape flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMagneticTape\'
    | SSTFlowChartManualInput
      -- ^ @FLOW_CHART_MANUAL_INPUT@
      -- Manual input flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartManualInput\'
    | SSTFlowChartManualOperation
      -- ^ @FLOW_CHART_MANUAL_OPERATION@
      -- Manual operation flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartManualOperation\'
    | SSTFlowChartMerge
      -- ^ @FLOW_CHART_MERGE@
      -- Merge flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMerge\'
    | SSTFlowChartMultidocument
      -- ^ @FLOW_CHART_MULTIDOCUMENT@
      -- Multi-document flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartMultidocument\'
    | SSTFlowChartOfflineStorage
      -- ^ @FLOW_CHART_OFFLINE_STORAGE@
      -- Offline storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOfflineStorage\'
    | SSTFlowChartOffpageConnector
      -- ^ @FLOW_CHART_OFFPAGE_CONNECTOR@
      -- Off-page connector flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOffpageConnector\'
    | SSTFlowChartOnlineStorage
      -- ^ @FLOW_CHART_ONLINE_STORAGE@
      -- Online storage flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartOnlineStorage\'
    | SSTFlowChartOr
      -- ^ @FLOW_CHART_OR@
      -- Or flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartOr\'
    | SSTFlowChartPredefinedProcess
      -- ^ @FLOW_CHART_PREDEFINED_PROCESS@
      -- Predefined process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPredefinedProcess\'
    | SSTFlowChartPreparation
      -- ^ @FLOW_CHART_PREPARATION@
      -- Preparation flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPreparation\'
    | SSTFlowChartProcess
      -- ^ @FLOW_CHART_PROCESS@
      -- Process flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartProcess\'
    | SSTFlowChartPunchedCard
      -- ^ @FLOW_CHART_PUNCHED_CARD@
      -- Punched card flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPunchedCard\'
    | SSTFlowChartPunchedTape
      -- ^ @FLOW_CHART_PUNCHED_TAPE@
      -- Punched tape flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartPunchedTape\'
    | SSTFlowChartSort
      -- ^ @FLOW_CHART_SORT@
      -- Sort flow shape. Corresponds to ECMA-376 ST_ShapeType \'flowChartSort\'
    | SSTFlowChartSummingJunction
      -- ^ @FLOW_CHART_SUMMING_JUNCTION@
      -- Summing junction flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartSummingJunction\'
    | SSTFlowChartTerminator
      -- ^ @FLOW_CHART_TERMINATOR@
      -- Terminator flow shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'flowChartTerminator\'
    | SSTArrowEast
      -- ^ @ARROW_EAST@
      -- East arrow shape.
    | SSTArrowNorthEast
      -- ^ @ARROW_NORTH_EAST@
      -- Northeast arrow shape.
    | SSTArrowNorth
      -- ^ @ARROW_NORTH@
      -- North arrow shape.
    | SSTSpeech
      -- ^ @SPEECH@
      -- Speech shape.
    | SSTStarburst
      -- ^ @STARBURST@
      -- Star burst shape.
    | SSTTeardrop
      -- ^ @TEARDROP@
      -- Teardrop shape. Corresponds to ECMA-376 ST_ShapeType \'teardrop\'
    | SSTEllipseRibbon
      -- ^ @ELLIPSE_RIBBON@
      -- Ellipse ribbon shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'ellipseRibbon\'
    | SSTEllipseRibbon2
      -- ^ @ELLIPSE_RIBBON_2@
      -- Ellipse ribbon 2 shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'ellipseRibbon2\'
    | SSTCloudCallout
      -- ^ @CLOUD_CALLOUT@
      -- Callout cloud shape. Corresponds to ECMA-376 ST_ShapeType
      -- \'cloudCallout\'
    | SSTCustom
      -- ^ @CUSTOM@
      -- Custom shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShapeShapeType

instance FromHttpApiData ShapeShapeType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right SSTTypeUnspecified
        "TEXT_BOX" -> Right SSTTextBox
        "RECTANGLE" -> Right SSTRectangle
        "ROUND_RECTANGLE" -> Right SSTRoundRectangle
        "ELLIPSE" -> Right SSTEllipse
        "ARC" -> Right SSTArc
        "BENT_ARROW" -> Right SSTBentArrow
        "BENT_UP_ARROW" -> Right SSTBentUpArrow
        "BEVEL" -> Right SSTBevel
        "BLOCK_ARC" -> Right SSTBlockArc
        "BRACE_PAIR" -> Right SSTBracePair
        "BRACKET_PAIR" -> Right SSTBracketPair
        "CAN" -> Right SSTCan
        "CHEVRON" -> Right SSTChevron
        "CHORD" -> Right SSTChord
        "CLOUD" -> Right SSTCloud
        "CORNER" -> Right SSTCorner
        "CUBE" -> Right SSTCube
        "CURVED_DOWN_ARROW" -> Right SSTCurvedDownArrow
        "CURVED_LEFT_ARROW" -> Right SSTCurvedLeftArrow
        "CURVED_RIGHT_ARROW" -> Right SSTCurvedRightArrow
        "CURVED_UP_ARROW" -> Right SSTCurvedUpArrow
        "DECAGON" -> Right SSTDecagon
        "DIAGONAL_STRIPE" -> Right SSTDiagonalStripe
        "DIAMOND" -> Right SSTDiamond
        "DODECAGON" -> Right SSTDodecagon
        "DONUT" -> Right SSTDonut
        "DOUBLE_WAVE" -> Right SSTDoubleWave
        "DOWN_ARROW" -> Right SSTDownArrow
        "DOWN_ARROW_CALLOUT" -> Right SSTDownArrowCallout
        "FOLDED_CORNER" -> Right SSTFoldedCorner
        "FRAME" -> Right SSTFrame
        "HALF_FRAME" -> Right SSTHalfFrame
        "HEART" -> Right SSTHeart
        "HEPTAGON" -> Right SSTHeptagon
        "HEXAGON" -> Right SSTHexagon
        "HOME_PLATE" -> Right SSTHomePlate
        "HORIZONTAL_SCROLL" -> Right SSTHorizontalScroll
        "IRREGULAR_SEAL_1" -> Right SSTIrregularSeal1
        "IRREGULAR_SEAL_2" -> Right SSTIrregularSeal2
        "LEFT_ARROW" -> Right SSTLeftArrow
        "LEFT_ARROW_CALLOUT" -> Right SSTLeftArrowCallout
        "LEFT_BRACE" -> Right SSTLeftBrace
        "LEFT_BRACKET" -> Right SSTLeftBracket
        "LEFT_RIGHT_ARROW" -> Right SSTLeftRightArrow
        "LEFT_RIGHT_ARROW_CALLOUT" -> Right SSTLeftRightArrowCallout
        "LEFT_RIGHT_UP_ARROW" -> Right SSTLeftRightUpArrow
        "LEFT_UP_ARROW" -> Right SSTLeftUpArrow
        "LIGHTNING_BOLT" -> Right SSTLightningBolt
        "MATH_DIVIDE" -> Right SSTMathDivide
        "MATH_EQUAL" -> Right SSTMathEqual
        "MATH_MINUS" -> Right SSTMathMinus
        "MATH_MULTIPLY" -> Right SSTMathMultiply
        "MATH_NOT_EQUAL" -> Right SSTMathNotEqual
        "MATH_PLUS" -> Right SSTMathPlus
        "MOON" -> Right SSTMoon
        "NO_SMOKING" -> Right SSTNoSmoking
        "NOTCHED_RIGHT_ARROW" -> Right SSTNotchedRightArrow
        "OCTAGON" -> Right SSTOctagon
        "PARALLELOGRAM" -> Right SSTParallelogram
        "PENTAGON" -> Right SSTPentagon
        "PIE" -> Right SSTPie
        "PLAQUE" -> Right SSTPlaque
        "PLUS" -> Right SSTPlus
        "QUAD_ARROW" -> Right SSTQuadArrow
        "QUAD_ARROW_CALLOUT" -> Right SSTQuadArrowCallout
        "RIBBON" -> Right SSTRibbon
        "RIBBON_2" -> Right SSTRibbon2
        "RIGHT_ARROW" -> Right SSTRightArrow
        "RIGHT_ARROW_CALLOUT" -> Right SSTRightArrowCallout
        "RIGHT_BRACE" -> Right SSTRightBrace
        "RIGHT_BRACKET" -> Right SSTRightBracket
        "ROUND_1_RECTANGLE" -> Right SSTRound1Rectangle
        "ROUND_2_DIAGONAL_RECTANGLE" -> Right SSTRound2DiagonalRectangle
        "ROUND_2_SAME_RECTANGLE" -> Right SSTRound2SameRectangle
        "RIGHT_TRIANGLE" -> Right SSTRightTriangle
        "SMILEY_FACE" -> Right SSTSmileyFace
        "SNIP_1_RECTANGLE" -> Right SSTSnip1Rectangle
        "SNIP_2_DIAGONAL_RECTANGLE" -> Right SSTSnip2DiagonalRectangle
        "SNIP_2_SAME_RECTANGLE" -> Right SSTSnip2SameRectangle
        "SNIP_ROUND_RECTANGLE" -> Right SSTSnipRoundRectangle
        "STAR_10" -> Right SSTStar10
        "STAR_12" -> Right SSTStar12
        "STAR_16" -> Right SSTStar16
        "STAR_24" -> Right SSTStar24
        "STAR_32" -> Right SSTStar32
        "STAR_4" -> Right SSTStar4
        "STAR_5" -> Right SSTStar5
        "STAR_6" -> Right SSTStar6
        "STAR_7" -> Right SSTStar7
        "STAR_8" -> Right SSTStar8
        "STRIPED_RIGHT_ARROW" -> Right SSTStripedRightArrow
        "SUN" -> Right SSTSun
        "TRAPEZOID" -> Right SSTTrapezoid
        "TRIANGLE" -> Right SSTTriangle
        "UP_ARROW" -> Right SSTUpArrow
        "UP_ARROW_CALLOUT" -> Right SSTUpArrowCallout
        "UP_DOWN_ARROW" -> Right SSTUpDownArrow
        "UTURN_ARROW" -> Right SSTUturnArrow
        "VERTICAL_SCROLL" -> Right SSTVerticalScroll
        "WAVE" -> Right SSTWave
        "WEDGE_ELLIPSE_CALLOUT" -> Right SSTWedgeEllipseCallout
        "WEDGE_RECTANGLE_CALLOUT" -> Right SSTWedgeRectangleCallout
        "WEDGE_ROUND_RECTANGLE_CALLOUT" -> Right SSTWedgeRoundRectangleCallout
        "FLOW_CHART_ALTERNATE_PROCESS" -> Right SSTFlowChartAlternateProcess
        "FLOW_CHART_COLLATE" -> Right SSTFlowChartCollate
        "FLOW_CHART_CONNECTOR" -> Right SSTFlowChartConnector
        "FLOW_CHART_DECISION" -> Right SSTFlowChartDecision
        "FLOW_CHART_DELAY" -> Right SSTFlowChartDelay
        "FLOW_CHART_DISPLAY" -> Right SSTFlowChartDisplay
        "FLOW_CHART_DOCUMENT" -> Right SSTFlowChartDocument
        "FLOW_CHART_EXTRACT" -> Right SSTFlowChartExtract
        "FLOW_CHART_INPUT_OUTPUT" -> Right SSTFlowChartInputOutput
        "FLOW_CHART_INTERNAL_STORAGE" -> Right SSTFlowChartInternalStorage
        "FLOW_CHART_MAGNETIC_DISK" -> Right SSTFlowChartMagneticDisk
        "FLOW_CHART_MAGNETIC_DRUM" -> Right SSTFlowChartMagneticDrum
        "FLOW_CHART_MAGNETIC_TAPE" -> Right SSTFlowChartMagneticTape
        "FLOW_CHART_MANUAL_INPUT" -> Right SSTFlowChartManualInput
        "FLOW_CHART_MANUAL_OPERATION" -> Right SSTFlowChartManualOperation
        "FLOW_CHART_MERGE" -> Right SSTFlowChartMerge
        "FLOW_CHART_MULTIDOCUMENT" -> Right SSTFlowChartMultidocument
        "FLOW_CHART_OFFLINE_STORAGE" -> Right SSTFlowChartOfflineStorage
        "FLOW_CHART_OFFPAGE_CONNECTOR" -> Right SSTFlowChartOffpageConnector
        "FLOW_CHART_ONLINE_STORAGE" -> Right SSTFlowChartOnlineStorage
        "FLOW_CHART_OR" -> Right SSTFlowChartOr
        "FLOW_CHART_PREDEFINED_PROCESS" -> Right SSTFlowChartPredefinedProcess
        "FLOW_CHART_PREPARATION" -> Right SSTFlowChartPreparation
        "FLOW_CHART_PROCESS" -> Right SSTFlowChartProcess
        "FLOW_CHART_PUNCHED_CARD" -> Right SSTFlowChartPunchedCard
        "FLOW_CHART_PUNCHED_TAPE" -> Right SSTFlowChartPunchedTape
        "FLOW_CHART_SORT" -> Right SSTFlowChartSort
        "FLOW_CHART_SUMMING_JUNCTION" -> Right SSTFlowChartSummingJunction
        "FLOW_CHART_TERMINATOR" -> Right SSTFlowChartTerminator
        "ARROW_EAST" -> Right SSTArrowEast
        "ARROW_NORTH_EAST" -> Right SSTArrowNorthEast
        "ARROW_NORTH" -> Right SSTArrowNorth
        "SPEECH" -> Right SSTSpeech
        "STARBURST" -> Right SSTStarburst
        "TEARDROP" -> Right SSTTeardrop
        "ELLIPSE_RIBBON" -> Right SSTEllipseRibbon
        "ELLIPSE_RIBBON_2" -> Right SSTEllipseRibbon2
        "CLOUD_CALLOUT" -> Right SSTCloudCallout
        "CUSTOM" -> Right SSTCustom
        x -> Left ("Unable to parse ShapeShapeType from: " <> x)

instance ToHttpApiData ShapeShapeType where
    toQueryParam = \case
        SSTTypeUnspecified -> "TYPE_UNSPECIFIED"
        SSTTextBox -> "TEXT_BOX"
        SSTRectangle -> "RECTANGLE"
        SSTRoundRectangle -> "ROUND_RECTANGLE"
        SSTEllipse -> "ELLIPSE"
        SSTArc -> "ARC"
        SSTBentArrow -> "BENT_ARROW"
        SSTBentUpArrow -> "BENT_UP_ARROW"
        SSTBevel -> "BEVEL"
        SSTBlockArc -> "BLOCK_ARC"
        SSTBracePair -> "BRACE_PAIR"
        SSTBracketPair -> "BRACKET_PAIR"
        SSTCan -> "CAN"
        SSTChevron -> "CHEVRON"
        SSTChord -> "CHORD"
        SSTCloud -> "CLOUD"
        SSTCorner -> "CORNER"
        SSTCube -> "CUBE"
        SSTCurvedDownArrow -> "CURVED_DOWN_ARROW"
        SSTCurvedLeftArrow -> "CURVED_LEFT_ARROW"
        SSTCurvedRightArrow -> "CURVED_RIGHT_ARROW"
        SSTCurvedUpArrow -> "CURVED_UP_ARROW"
        SSTDecagon -> "DECAGON"
        SSTDiagonalStripe -> "DIAGONAL_STRIPE"
        SSTDiamond -> "DIAMOND"
        SSTDodecagon -> "DODECAGON"
        SSTDonut -> "DONUT"
        SSTDoubleWave -> "DOUBLE_WAVE"
        SSTDownArrow -> "DOWN_ARROW"
        SSTDownArrowCallout -> "DOWN_ARROW_CALLOUT"
        SSTFoldedCorner -> "FOLDED_CORNER"
        SSTFrame -> "FRAME"
        SSTHalfFrame -> "HALF_FRAME"
        SSTHeart -> "HEART"
        SSTHeptagon -> "HEPTAGON"
        SSTHexagon -> "HEXAGON"
        SSTHomePlate -> "HOME_PLATE"
        SSTHorizontalScroll -> "HORIZONTAL_SCROLL"
        SSTIrregularSeal1 -> "IRREGULAR_SEAL_1"
        SSTIrregularSeal2 -> "IRREGULAR_SEAL_2"
        SSTLeftArrow -> "LEFT_ARROW"
        SSTLeftArrowCallout -> "LEFT_ARROW_CALLOUT"
        SSTLeftBrace -> "LEFT_BRACE"
        SSTLeftBracket -> "LEFT_BRACKET"
        SSTLeftRightArrow -> "LEFT_RIGHT_ARROW"
        SSTLeftRightArrowCallout -> "LEFT_RIGHT_ARROW_CALLOUT"
        SSTLeftRightUpArrow -> "LEFT_RIGHT_UP_ARROW"
        SSTLeftUpArrow -> "LEFT_UP_ARROW"
        SSTLightningBolt -> "LIGHTNING_BOLT"
        SSTMathDivide -> "MATH_DIVIDE"
        SSTMathEqual -> "MATH_EQUAL"
        SSTMathMinus -> "MATH_MINUS"
        SSTMathMultiply -> "MATH_MULTIPLY"
        SSTMathNotEqual -> "MATH_NOT_EQUAL"
        SSTMathPlus -> "MATH_PLUS"
        SSTMoon -> "MOON"
        SSTNoSmoking -> "NO_SMOKING"
        SSTNotchedRightArrow -> "NOTCHED_RIGHT_ARROW"
        SSTOctagon -> "OCTAGON"
        SSTParallelogram -> "PARALLELOGRAM"
        SSTPentagon -> "PENTAGON"
        SSTPie -> "PIE"
        SSTPlaque -> "PLAQUE"
        SSTPlus -> "PLUS"
        SSTQuadArrow -> "QUAD_ARROW"
        SSTQuadArrowCallout -> "QUAD_ARROW_CALLOUT"
        SSTRibbon -> "RIBBON"
        SSTRibbon2 -> "RIBBON_2"
        SSTRightArrow -> "RIGHT_ARROW"
        SSTRightArrowCallout -> "RIGHT_ARROW_CALLOUT"
        SSTRightBrace -> "RIGHT_BRACE"
        SSTRightBracket -> "RIGHT_BRACKET"
        SSTRound1Rectangle -> "ROUND_1_RECTANGLE"
        SSTRound2DiagonalRectangle -> "ROUND_2_DIAGONAL_RECTANGLE"
        SSTRound2SameRectangle -> "ROUND_2_SAME_RECTANGLE"
        SSTRightTriangle -> "RIGHT_TRIANGLE"
        SSTSmileyFace -> "SMILEY_FACE"
        SSTSnip1Rectangle -> "SNIP_1_RECTANGLE"
        SSTSnip2DiagonalRectangle -> "SNIP_2_DIAGONAL_RECTANGLE"
        SSTSnip2SameRectangle -> "SNIP_2_SAME_RECTANGLE"
        SSTSnipRoundRectangle -> "SNIP_ROUND_RECTANGLE"
        SSTStar10 -> "STAR_10"
        SSTStar12 -> "STAR_12"
        SSTStar16 -> "STAR_16"
        SSTStar24 -> "STAR_24"
        SSTStar32 -> "STAR_32"
        SSTStar4 -> "STAR_4"
        SSTStar5 -> "STAR_5"
        SSTStar6 -> "STAR_6"
        SSTStar7 -> "STAR_7"
        SSTStar8 -> "STAR_8"
        SSTStripedRightArrow -> "STRIPED_RIGHT_ARROW"
        SSTSun -> "SUN"
        SSTTrapezoid -> "TRAPEZOID"
        SSTTriangle -> "TRIANGLE"
        SSTUpArrow -> "UP_ARROW"
        SSTUpArrowCallout -> "UP_ARROW_CALLOUT"
        SSTUpDownArrow -> "UP_DOWN_ARROW"
        SSTUturnArrow -> "UTURN_ARROW"
        SSTVerticalScroll -> "VERTICAL_SCROLL"
        SSTWave -> "WAVE"
        SSTWedgeEllipseCallout -> "WEDGE_ELLIPSE_CALLOUT"
        SSTWedgeRectangleCallout -> "WEDGE_RECTANGLE_CALLOUT"
        SSTWedgeRoundRectangleCallout -> "WEDGE_ROUND_RECTANGLE_CALLOUT"
        SSTFlowChartAlternateProcess -> "FLOW_CHART_ALTERNATE_PROCESS"
        SSTFlowChartCollate -> "FLOW_CHART_COLLATE"
        SSTFlowChartConnector -> "FLOW_CHART_CONNECTOR"
        SSTFlowChartDecision -> "FLOW_CHART_DECISION"
        SSTFlowChartDelay -> "FLOW_CHART_DELAY"
        SSTFlowChartDisplay -> "FLOW_CHART_DISPLAY"
        SSTFlowChartDocument -> "FLOW_CHART_DOCUMENT"
        SSTFlowChartExtract -> "FLOW_CHART_EXTRACT"
        SSTFlowChartInputOutput -> "FLOW_CHART_INPUT_OUTPUT"
        SSTFlowChartInternalStorage -> "FLOW_CHART_INTERNAL_STORAGE"
        SSTFlowChartMagneticDisk -> "FLOW_CHART_MAGNETIC_DISK"
        SSTFlowChartMagneticDrum -> "FLOW_CHART_MAGNETIC_DRUM"
        SSTFlowChartMagneticTape -> "FLOW_CHART_MAGNETIC_TAPE"
        SSTFlowChartManualInput -> "FLOW_CHART_MANUAL_INPUT"
        SSTFlowChartManualOperation -> "FLOW_CHART_MANUAL_OPERATION"
        SSTFlowChartMerge -> "FLOW_CHART_MERGE"
        SSTFlowChartMultidocument -> "FLOW_CHART_MULTIDOCUMENT"
        SSTFlowChartOfflineStorage -> "FLOW_CHART_OFFLINE_STORAGE"
        SSTFlowChartOffpageConnector -> "FLOW_CHART_OFFPAGE_CONNECTOR"
        SSTFlowChartOnlineStorage -> "FLOW_CHART_ONLINE_STORAGE"
        SSTFlowChartOr -> "FLOW_CHART_OR"
        SSTFlowChartPredefinedProcess -> "FLOW_CHART_PREDEFINED_PROCESS"
        SSTFlowChartPreparation -> "FLOW_CHART_PREPARATION"
        SSTFlowChartProcess -> "FLOW_CHART_PROCESS"
        SSTFlowChartPunchedCard -> "FLOW_CHART_PUNCHED_CARD"
        SSTFlowChartPunchedTape -> "FLOW_CHART_PUNCHED_TAPE"
        SSTFlowChartSort -> "FLOW_CHART_SORT"
        SSTFlowChartSummingJunction -> "FLOW_CHART_SUMMING_JUNCTION"
        SSTFlowChartTerminator -> "FLOW_CHART_TERMINATOR"
        SSTArrowEast -> "ARROW_EAST"
        SSTArrowNorthEast -> "ARROW_NORTH_EAST"
        SSTArrowNorth -> "ARROW_NORTH"
        SSTSpeech -> "SPEECH"
        SSTStarburst -> "STARBURST"
        SSTTeardrop -> "TEARDROP"
        SSTEllipseRibbon -> "ELLIPSE_RIBBON"
        SSTEllipseRibbon2 -> "ELLIPSE_RIBBON_2"
        SSTCloudCallout -> "CLOUD_CALLOUT"
        SSTCustom -> "CUSTOM"

instance FromJSON ShapeShapeType where
    parseJSON = parseJSONText "ShapeShapeType"

instance ToJSON ShapeShapeType where
    toJSON = toJSONText

-- | The alignment of the content in the shape. If unspecified, the alignment
-- is inherited from a parent placeholder if it exists. If the shape has no
-- parent, the default alignment matches the alignment for new shapes
-- created in the Slides editor.
data ShapePropertiesContentAlignment
    = SPCAContentAlignmentUnspecified
      -- ^ @CONTENT_ALIGNMENT_UNSPECIFIED@
      -- An unspecified content alignment. The content alignment is inherited
      -- from the parent if it exists.
    | SPCAContentAlignmentUnsupported
      -- ^ @CONTENT_ALIGNMENT_UNSUPPORTED@
      -- An unsupported content alignment.
    | SPCATop
      -- ^ @TOP@
      -- An alignment that aligns the content to the top of the content holder.
      -- Corresponds to ECMA-376 ST_TextAnchoringType \'t\'.
    | SPCAMiddle
      -- ^ @MIDDLE@
      -- An alignment that aligns the content to the middle of the content
      -- holder. Corresponds to ECMA-376 ST_TextAnchoringType \'ctr\'.
    | SPCABottom
      -- ^ @BOTTOM@
      -- An alignment that aligns the content to the bottom of the content
      -- holder. Corresponds to ECMA-376 ST_TextAnchoringType \'b\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShapePropertiesContentAlignment

instance FromHttpApiData ShapePropertiesContentAlignment where
    parseQueryParam = \case
        "CONTENT_ALIGNMENT_UNSPECIFIED" -> Right SPCAContentAlignmentUnspecified
        "CONTENT_ALIGNMENT_UNSUPPORTED" -> Right SPCAContentAlignmentUnsupported
        "TOP" -> Right SPCATop
        "MIDDLE" -> Right SPCAMiddle
        "BOTTOM" -> Right SPCABottom
        x -> Left ("Unable to parse ShapePropertiesContentAlignment from: " <> x)

instance ToHttpApiData ShapePropertiesContentAlignment where
    toQueryParam = \case
        SPCAContentAlignmentUnspecified -> "CONTENT_ALIGNMENT_UNSPECIFIED"
        SPCAContentAlignmentUnsupported -> "CONTENT_ALIGNMENT_UNSUPPORTED"
        SPCATop -> "TOP"
        SPCAMiddle -> "MIDDLE"
        SPCABottom -> "BOTTOM"

instance FromJSON ShapePropertiesContentAlignment where
    parseJSON = parseJSONText "ShapePropertiesContentAlignment"

instance ToJSON ShapePropertiesContentAlignment where
    toJSON = toJSONText

-- | The outline property state. Updating the outline on a page element will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no outline on a page element, set
-- this field to \`NOT_RENDERED\`. In this case, any other outline fields
-- set in the same request will be ignored.
data OutlinePropertyState
    = OPSRendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered on a page. If the element is a
      -- placeholder shape as determined by the placeholder field, and it
      -- inherits from a placeholder shape, the corresponding field may be unset,
      -- meaning that the property value is inherited from a parent placeholder.
      -- If the element does not inherit, then the field will contain the
      -- rendered value. This is the default value.
    | OPSNotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered on a page. However, the field
      -- may still be set so it can be inherited by child shapes. To remove a
      -- property from a rendered element, set its property_state to
      -- NOT_RENDERED.
    | OPSInherit
      -- ^ @INHERIT@
      -- If a property\'s state is INHERIT, then the property state uses the
      -- value of corresponding \`property_state\` field on the parent shape.
      -- Elements that do not inherit will never have an INHERIT property state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OutlinePropertyState

instance FromHttpApiData OutlinePropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right OPSRendered
        "NOT_RENDERED" -> Right OPSNotRendered
        "INHERIT" -> Right OPSInherit
        x -> Left ("Unable to parse OutlinePropertyState from: " <> x)

instance ToHttpApiData OutlinePropertyState where
    toQueryParam = \case
        OPSRendered -> "RENDERED"
        OPSNotRendered -> "NOT_RENDERED"
        OPSInherit -> "INHERIT"

instance FromJSON OutlinePropertyState where
    parseJSON = parseJSONText "OutlinePropertyState"

instance ToJSON OutlinePropertyState where
    toJSON = toJSONText

-- | The category of the line. It matches the \`category\` specified in
-- CreateLineRequest, and can be updated with UpdateLineCategoryRequest.
data LineLineCategory
    = LLCLineCategoryUnspecified
      -- ^ @LINE_CATEGORY_UNSPECIFIED@
      -- Unspecified line category.
    | LLCStraight
      -- ^ @STRAIGHT@
      -- Straight connectors, including straight connector 1.
    | LLCBent
      -- ^ @BENT@
      -- Bent connectors, including bent connector 2 to 5.
    | LLCCurved
      -- ^ @CURVED@
      -- Curved connectors, including curved connector 2 to 5.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LineLineCategory

instance FromHttpApiData LineLineCategory where
    parseQueryParam = \case
        "LINE_CATEGORY_UNSPECIFIED" -> Right LLCLineCategoryUnspecified
        "STRAIGHT" -> Right LLCStraight
        "BENT" -> Right LLCBent
        "CURVED" -> Right LLCCurved
        x -> Left ("Unable to parse LineLineCategory from: " <> x)

instance ToHttpApiData LineLineCategory where
    toQueryParam = \case
        LLCLineCategoryUnspecified -> "LINE_CATEGORY_UNSPECIFIED"
        LLCStraight -> "STRAIGHT"
        LLCBent -> "BENT"
        LLCCurved -> "CURVED"

instance FromJSON LineLineCategory where
    parseJSON = parseJSONText "LineLineCategory"

instance ToJSON LineLineCategory where
    toJSON = toJSONText

-- | The optional thumbnail image size. If you don\'t specify the size, the
-- server chooses a default size of the image.
data PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
    = ThumbnailSizeUnspecified
      -- ^ @THUMBNAIL_SIZE_UNSPECIFIED@
      -- The default thumbnail image size. The unspecified thumbnail size implies
      -- that the server chooses the size of the image in a way that might vary
      -- in the future.
    | Large
      -- ^ @LARGE@
      -- The thumbnail image width of 1600px.
    | Medium
      -- ^ @MEDIUM@
      -- The thumbnail image width of 800px.
    | Small
      -- ^ @SMALL@
      -- The thumbnail image width of 200px.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize

instance FromHttpApiData PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize where
    parseQueryParam = \case
        "THUMBNAIL_SIZE_UNSPECIFIED" -> Right ThumbnailSizeUnspecified
        "LARGE" -> Right Large
        "MEDIUM" -> Right Medium
        "SMALL" -> Right Small
        x -> Left ("Unable to parse PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize from: " <> x)

instance ToHttpApiData PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize where
    toQueryParam = \case
        ThumbnailSizeUnspecified -> "THUMBNAIL_SIZE_UNSPECIFIED"
        Large -> "LARGE"
        Medium -> "MEDIUM"
        Small -> "SMALL"

instance FromJSON PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize where
    parseJSON = parseJSONText "PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize"

instance ToJSON PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize where
    toJSON = toJSONText

-- | The type of the placeholder.
data PlaceholderType
    = PTNone
      -- ^ @NONE@
      -- Default value, signifies it is not a placeholder.
    | PTBody
      -- ^ @BODY@
      -- Body text.
    | PTChart
      -- ^ @CHART@
      -- Chart or graph.
    | PTClipArt
      -- ^ @CLIP_ART@
      -- Clip art image.
    | PTCenteredTitle
      -- ^ @CENTERED_TITLE@
      -- Title centered.
    | PTDiagram
      -- ^ @DIAGRAM@
      -- Diagram.
    | PTDateAndTime
      -- ^ @DATE_AND_TIME@
      -- Date and time.
    | PTFooter
      -- ^ @FOOTER@
      -- Footer text.
    | PTHeader
      -- ^ @HEADER@
      -- Header text.
    | PTMedia
      -- ^ @MEDIA@
      -- Multimedia.
    | PTObject
      -- ^ @OBJECT@
      -- Any content type.
    | PTPicture
      -- ^ @PICTURE@
      -- Picture.
    | PTSlideNumber
      -- ^ @SLIDE_NUMBER@
      -- Number of a slide.
    | PTSubtitle
      -- ^ @SUBTITLE@
      -- Subtitle.
    | PTTable
      -- ^ @TABLE@
      -- Table.
    | PTTitle
      -- ^ @TITLE@
      -- Slide title.
    | PTSlideImage
      -- ^ @SLIDE_IMAGE@
      -- Slide image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PlaceholderType

instance FromHttpApiData PlaceholderType where
    parseQueryParam = \case
        "NONE" -> Right PTNone
        "BODY" -> Right PTBody
        "CHART" -> Right PTChart
        "CLIP_ART" -> Right PTClipArt
        "CENTERED_TITLE" -> Right PTCenteredTitle
        "DIAGRAM" -> Right PTDiagram
        "DATE_AND_TIME" -> Right PTDateAndTime
        "FOOTER" -> Right PTFooter
        "HEADER" -> Right PTHeader
        "MEDIA" -> Right PTMedia
        "OBJECT" -> Right PTObject
        "PICTURE" -> Right PTPicture
        "SLIDE_NUMBER" -> Right PTSlideNumber
        "SUBTITLE" -> Right PTSubtitle
        "TABLE" -> Right PTTable
        "TITLE" -> Right PTTitle
        "SLIDE_IMAGE" -> Right PTSlideImage
        x -> Left ("Unable to parse PlaceholderType from: " <> x)

instance ToHttpApiData PlaceholderType where
    toQueryParam = \case
        PTNone -> "NONE"
        PTBody -> "BODY"
        PTChart -> "CHART"
        PTClipArt -> "CLIP_ART"
        PTCenteredTitle -> "CENTERED_TITLE"
        PTDiagram -> "DIAGRAM"
        PTDateAndTime -> "DATE_AND_TIME"
        PTFooter -> "FOOTER"
        PTHeader -> "HEADER"
        PTMedia -> "MEDIA"
        PTObject -> "OBJECT"
        PTPicture -> "PICTURE"
        PTSlideNumber -> "SLIDE_NUMBER"
        PTSubtitle -> "SUBTITLE"
        PTTable -> "TABLE"
        PTTitle -> "TITLE"
        PTSlideImage -> "SLIDE_IMAGE"

instance FromJSON PlaceholderType where
    parseJSON = parseJSONText "PlaceholderType"

instance ToJSON PlaceholderType where
    toJSON = toJSONText

-- | The replace method. *Deprecated*: use \`image_replace_method\` instead.
-- If you specify both a \`replace_method\` and an
-- \`image_replace_method\`, the \`image_replace_method\` takes precedence.
data ReplaceAllShapesWithImageRequestReplaceMethod
    = CenterInside
      -- ^ @CENTER_INSIDE@
      -- Scales and centers the image to fit within the bounds of the original
      -- shape and maintains the image\'s aspect ratio. The rendered size of the
      -- image may be smaller than the size of the shape. This is the default
      -- method when one is not specified.
    | CenterCrop
      -- ^ @CENTER_CROP@
      -- Scales and centers the image to fill the bounds of the original shape.
      -- The image may be cropped in order to fill the shape. The rendered size
      -- of the image will be the same as that of the original shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReplaceAllShapesWithImageRequestReplaceMethod

instance FromHttpApiData ReplaceAllShapesWithImageRequestReplaceMethod where
    parseQueryParam = \case
        "CENTER_INSIDE" -> Right CenterInside
        "CENTER_CROP" -> Right CenterCrop
        x -> Left ("Unable to parse ReplaceAllShapesWithImageRequestReplaceMethod from: " <> x)

instance ToHttpApiData ReplaceAllShapesWithImageRequestReplaceMethod where
    toQueryParam = \case
        CenterInside -> "CENTER_INSIDE"
        CenterCrop -> "CENTER_CROP"

instance FromJSON ReplaceAllShapesWithImageRequestReplaceMethod where
    parseJSON = parseJSONText "ReplaceAllShapesWithImageRequestReplaceMethod"

instance ToJSON ReplaceAllShapesWithImageRequestReplaceMethod where
    toJSON = toJSONText

-- | The mode with which the chart is linked to the source spreadsheet. When
-- not specified, the chart will be an image that is not linked.
data CreateSheetsChartRequestLinkingMode
    = NotLinkedImage
      -- ^ @NOT_LINKED_IMAGE@
      -- The chart is not associated with the source spreadsheet and cannot be
      -- updated. A chart that is not linked will be inserted as an image.
    | Linked
      -- ^ @LINKED@
      -- Linking the chart allows it to be updated, and other collaborators will
      -- see a link to the spreadsheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateSheetsChartRequestLinkingMode

instance FromHttpApiData CreateSheetsChartRequestLinkingMode where
    parseQueryParam = \case
        "NOT_LINKED_IMAGE" -> Right NotLinkedImage
        "LINKED" -> Right Linked
        x -> Left ("Unable to parse CreateSheetsChartRequestLinkingMode from: " <> x)

instance ToHttpApiData CreateSheetsChartRequestLinkingMode where
    toQueryParam = \case
        NotLinkedImage -> "NOT_LINKED_IMAGE"
        Linked -> "LINKED"

instance FromJSON CreateSheetsChartRequestLinkingMode where
    parseJSON = parseJSONText "CreateSheetsChartRequestLinkingMode"

instance ToJSON CreateSheetsChartRequestLinkingMode where
    toJSON = toJSONText

-- | The background fill property state. Updating the fill on a shape will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no fill on a shape, set this
-- field to \`NOT_RENDERED\`. In this case, any other fill fields set in
-- the same request will be ignored.
data ShapeBackgRoundFillPropertyState
    = SBRFPSRendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered on a page. If the element is a
      -- placeholder shape as determined by the placeholder field, and it
      -- inherits from a placeholder shape, the corresponding field may be unset,
      -- meaning that the property value is inherited from a parent placeholder.
      -- If the element does not inherit, then the field will contain the
      -- rendered value. This is the default value.
    | SBRFPSNotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered on a page. However, the field
      -- may still be set so it can be inherited by child shapes. To remove a
      -- property from a rendered element, set its property_state to
      -- NOT_RENDERED.
    | SBRFPSInherit
      -- ^ @INHERIT@
      -- If a property\'s state is INHERIT, then the property state uses the
      -- value of corresponding \`property_state\` field on the parent shape.
      -- Elements that do not inherit will never have an INHERIT property state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShapeBackgRoundFillPropertyState

instance FromHttpApiData ShapeBackgRoundFillPropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right SBRFPSRendered
        "NOT_RENDERED" -> Right SBRFPSNotRendered
        "INHERIT" -> Right SBRFPSInherit
        x -> Left ("Unable to parse ShapeBackgRoundFillPropertyState from: " <> x)

instance ToHttpApiData ShapeBackgRoundFillPropertyState where
    toQueryParam = \case
        SBRFPSRendered -> "RENDERED"
        SBRFPSNotRendered -> "NOT_RENDERED"
        SBRFPSInherit -> "INHERIT"

instance FromJSON ShapeBackgRoundFillPropertyState where
    parseJSON = parseJSONText "ShapeBackgRoundFillPropertyState"

instance ToJSON ShapeBackgRoundFillPropertyState where
    toJSON = toJSONText

-- | An opaque theme color.
data OpaqueColorThemeColor
    = ThemeColorTypeUnspecified
      -- ^ @THEME_COLOR_TYPE_UNSPECIFIED@
      -- Unspecified theme color. This value should not be used.
    | DARK1
      -- ^ @DARK1@
      -- Represents the first dark color.
    | LIGHT1
      -- ^ @LIGHT1@
      -- Represents the first light color.
    | DARK2
      -- ^ @DARK2@
      -- Represents the second dark color.
    | LIGHT2
      -- ^ @LIGHT2@
      -- Represents the second light color.
    | ACCENT1
      -- ^ @ACCENT1@
      -- Represents the first accent color.
    | ACCENT2
      -- ^ @ACCENT2@
      -- Represents the second accent color.
    | ACCENT3
      -- ^ @ACCENT3@
      -- Represents the third accent color.
    | ACCENT4
      -- ^ @ACCENT4@
      -- Represents the fourth accent color.
    | ACCENT5
      -- ^ @ACCENT5@
      -- Represents the fifth accent color.
    | ACCENT6
      -- ^ @ACCENT6@
      -- Represents the sixth accent color.
    | Hyperlink
      -- ^ @HYPERLINK@
      -- Represents the color to use for hyperlinks.
    | FollowedHyperlink
      -- ^ @FOLLOWED_HYPERLINK@
      -- Represents the color to use for visited hyperlinks.
    | TEXT1
      -- ^ @TEXT1@
      -- Represents the first text color.
    | BACKGROUND1
      -- ^ @BACKGROUND1@
      -- Represents the first background color.
    | TEXT2
      -- ^ @TEXT2@
      -- Represents the second text color.
    | BACKGROUND2
      -- ^ @BACKGROUND2@
      -- Represents the second background color.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OpaqueColorThemeColor

instance FromHttpApiData OpaqueColorThemeColor where
    parseQueryParam = \case
        "THEME_COLOR_TYPE_UNSPECIFIED" -> Right ThemeColorTypeUnspecified
        "DARK1" -> Right DARK1
        "LIGHT1" -> Right LIGHT1
        "DARK2" -> Right DARK2
        "LIGHT2" -> Right LIGHT2
        "ACCENT1" -> Right ACCENT1
        "ACCENT2" -> Right ACCENT2
        "ACCENT3" -> Right ACCENT3
        "ACCENT4" -> Right ACCENT4
        "ACCENT5" -> Right ACCENT5
        "ACCENT6" -> Right ACCENT6
        "HYPERLINK" -> Right Hyperlink
        "FOLLOWED_HYPERLINK" -> Right FollowedHyperlink
        "TEXT1" -> Right TEXT1
        "BACKGROUND1" -> Right BACKGROUND1
        "TEXT2" -> Right TEXT2
        "BACKGROUND2" -> Right BACKGROUND2
        x -> Left ("Unable to parse OpaqueColorThemeColor from: " <> x)

instance ToHttpApiData OpaqueColorThemeColor where
    toQueryParam = \case
        ThemeColorTypeUnspecified -> "THEME_COLOR_TYPE_UNSPECIFIED"
        DARK1 -> "DARK1"
        LIGHT1 -> "LIGHT1"
        DARK2 -> "DARK2"
        LIGHT2 -> "LIGHT2"
        ACCENT1 -> "ACCENT1"
        ACCENT2 -> "ACCENT2"
        ACCENT3 -> "ACCENT3"
        ACCENT4 -> "ACCENT4"
        ACCENT5 -> "ACCENT5"
        ACCENT6 -> "ACCENT6"
        Hyperlink -> "HYPERLINK"
        FollowedHyperlink -> "FOLLOWED_HYPERLINK"
        TEXT1 -> "TEXT1"
        BACKGROUND1 -> "BACKGROUND1"
        TEXT2 -> "TEXT2"
        BACKGROUND2 -> "BACKGROUND2"

instance FromJSON OpaqueColorThemeColor where
    parseJSON = parseJSONText "OpaqueColorThemeColor"

instance ToJSON OpaqueColorThemeColor where
    toJSON = toJSONText

-- | The dash style of the line.
data LinePropertiesDashStyle
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
    | DashDot
      -- ^ @DASH_DOT@
      -- Alternating dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'dashDot\'.
    | LongDash
      -- ^ @LONG_DASH@
      -- Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal
      -- value \'lgDash\'.
    | LongDashDot
      -- ^ @LONG_DASH_DOT@
      -- Alternating large dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'lgDashDot\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinePropertiesDashStyle

instance FromHttpApiData LinePropertiesDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right DashStyleUnspecified
        "SOLID" -> Right Solid
        "DOT" -> Right Dot
        "DASH" -> Right Dash
        "DASH_DOT" -> Right DashDot
        "LONG_DASH" -> Right LongDash
        "LONG_DASH_DOT" -> Right LongDashDot
        x -> Left ("Unable to parse LinePropertiesDashStyle from: " <> x)

instance ToHttpApiData LinePropertiesDashStyle where
    toQueryParam = \case
        DashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        Solid -> "SOLID"
        Dot -> "DOT"
        Dash -> "DASH"
        DashDot -> "DASH_DOT"
        LongDash -> "LONG_DASH"
        LongDashDot -> "LONG_DASH_DOT"

instance FromJSON LinePropertiesDashStyle where
    parseJSON = parseJSONText "LinePropertiesDashStyle"

instance ToJSON LinePropertiesDashStyle where
    toJSON = toJSONText

-- | The optional mime type of the thumbnail image. If you don\'t specify the
-- mime type, the mime type defaults to PNG.
data PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
    = Png
      -- ^ @PNG@
      -- The default mime type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PresentationsPagesGetThumbnailThumbnailPropertiesMimeType

instance FromHttpApiData PresentationsPagesGetThumbnailThumbnailPropertiesMimeType where
    parseQueryParam = \case
        "PNG" -> Right Png
        x -> Left ("Unable to parse PresentationsPagesGetThumbnailThumbnailPropertiesMimeType from: " <> x)

instance ToHttpApiData PresentationsPagesGetThumbnailThumbnailPropertiesMimeType where
    toQueryParam = \case
        Png -> "PNG"

instance FromJSON PresentationsPagesGetThumbnailThumbnailPropertiesMimeType where
    parseJSON = parseJSONText "PresentationsPagesGetThumbnailThumbnailPropertiesMimeType"

instance ToJSON PresentationsPagesGetThumbnailThumbnailPropertiesMimeType where
    toJSON = toJSONText

-- | The text alignment for this paragraph.
data ParagraphStyleAlignment
    = AlignmentUnspecified
      -- ^ @ALIGNMENT_UNSPECIFIED@
      -- The paragraph alignment is inherited from the parent.
    | Start
      -- ^ @START@
      -- The paragraph is aligned to the start of the line. Left-aligned for LTR
      -- text, right-aligned otherwise.
    | Center
      -- ^ @CENTER@
      -- The paragraph is centered.
    | End
      -- ^ @END@
      -- The paragraph is aligned to the end of the line. Right-aligned for LTR
      -- text, left-aligned otherwise.
    | Justified
      -- ^ @JUSTIFIED@
      -- The paragraph is justified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ParagraphStyleAlignment

instance FromHttpApiData ParagraphStyleAlignment where
    parseQueryParam = \case
        "ALIGNMENT_UNSPECIFIED" -> Right AlignmentUnspecified
        "START" -> Right Start
        "CENTER" -> Right Center
        "END" -> Right End
        "JUSTIFIED" -> Right Justified
        x -> Left ("Unable to parse ParagraphStyleAlignment from: " <> x)

instance ToHttpApiData ParagraphStyleAlignment where
    toQueryParam = \case
        AlignmentUnspecified -> "ALIGNMENT_UNSPECIFIED"
        Start -> "START"
        Center -> "CENTER"
        End -> "END"
        Justified -> "JUSTIFIED"

instance FromJSON ParagraphStyleAlignment where
    parseJSON = parseJSONText "ParagraphStyleAlignment"

instance ToJSON ParagraphStyleAlignment where
    toJSON = toJSONText

-- | The border position in the table range the updates should apply to. If a
-- border position is not specified, the updates will apply to all borders
-- in the table range.
data UpdateTableBOrderPropertiesRequestBOrderPosition
    = UTBOPRBOPAll
      -- ^ @ALL@
      -- All borders in the range.
    | UTBOPRBOPBottom
      -- ^ @BOTTOM@
      -- Borders at the bottom of the range.
    | UTBOPRBOPInner
      -- ^ @INNER@
      -- Borders on the inside of the range.
    | UTBOPRBOPInnerHorizontal
      -- ^ @INNER_HORIZONTAL@
      -- Horizontal borders on the inside of the range.
    | UTBOPRBOPInnerVertical
      -- ^ @INNER_VERTICAL@
      -- Vertical borders on the inside of the range.
    | UTBOPRBOPLeft'
      -- ^ @LEFT@
      -- Borders at the left of the range.
    | UTBOPRBOPOuter
      -- ^ @OUTER@
      -- Borders along the outside of the range.
    | UTBOPRBOPRight'
      -- ^ @RIGHT@
      -- Borders at the right of the range.
    | UTBOPRBOPTop
      -- ^ @TOP@
      -- Borders at the top of the range.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdateTableBOrderPropertiesRequestBOrderPosition

instance FromHttpApiData UpdateTableBOrderPropertiesRequestBOrderPosition where
    parseQueryParam = \case
        "ALL" -> Right UTBOPRBOPAll
        "BOTTOM" -> Right UTBOPRBOPBottom
        "INNER" -> Right UTBOPRBOPInner
        "INNER_HORIZONTAL" -> Right UTBOPRBOPInnerHorizontal
        "INNER_VERTICAL" -> Right UTBOPRBOPInnerVertical
        "LEFT" -> Right UTBOPRBOPLeft'
        "OUTER" -> Right UTBOPRBOPOuter
        "RIGHT" -> Right UTBOPRBOPRight'
        "TOP" -> Right UTBOPRBOPTop
        x -> Left ("Unable to parse UpdateTableBOrderPropertiesRequestBOrderPosition from: " <> x)

instance ToHttpApiData UpdateTableBOrderPropertiesRequestBOrderPosition where
    toQueryParam = \case
        UTBOPRBOPAll -> "ALL"
        UTBOPRBOPBottom -> "BOTTOM"
        UTBOPRBOPInner -> "INNER"
        UTBOPRBOPInnerHorizontal -> "INNER_HORIZONTAL"
        UTBOPRBOPInnerVertical -> "INNER_VERTICAL"
        UTBOPRBOPLeft' -> "LEFT"
        UTBOPRBOPOuter -> "OUTER"
        UTBOPRBOPRight' -> "RIGHT"
        UTBOPRBOPTop -> "TOP"

instance FromJSON UpdateTableBOrderPropertiesRequestBOrderPosition where
    parseJSON = parseJSONText "UpdateTableBOrderPropertiesRequestBOrderPosition"

instance ToJSON UpdateTableBOrderPropertiesRequestBOrderPosition where
    toJSON = toJSONText

-- | The alignment point of the shadow, that sets the origin for translate,
-- scale and skew of the shadow. This property is read-only.
data ShadowAlignment
    = SARectanglePositionUnspecified
      -- ^ @RECTANGLE_POSITION_UNSPECIFIED@
      -- Unspecified.
    | SATopLeft
      -- ^ @TOP_LEFT@
      -- Top left.
    | SATopCenter
      -- ^ @TOP_CENTER@
      -- Top center.
    | SATopRight
      -- ^ @TOP_RIGHT@
      -- Top right.
    | SALeftCenter
      -- ^ @LEFT_CENTER@
      -- Left center.
    | SACenter
      -- ^ @CENTER@
      -- Center.
    | SARightCenter
      -- ^ @RIGHT_CENTER@
      -- Right center.
    | SABottomLeft
      -- ^ @BOTTOM_LEFT@
      -- Bottom left.
    | SABottomCenter
      -- ^ @BOTTOM_CENTER@
      -- Bottom center.
    | SABottomRight
      -- ^ @BOTTOM_RIGHT@
      -- Bottom right.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShadowAlignment

instance FromHttpApiData ShadowAlignment where
    parseQueryParam = \case
        "RECTANGLE_POSITION_UNSPECIFIED" -> Right SARectanglePositionUnspecified
        "TOP_LEFT" -> Right SATopLeft
        "TOP_CENTER" -> Right SATopCenter
        "TOP_RIGHT" -> Right SATopRight
        "LEFT_CENTER" -> Right SALeftCenter
        "CENTER" -> Right SACenter
        "RIGHT_CENTER" -> Right SARightCenter
        "BOTTOM_LEFT" -> Right SABottomLeft
        "BOTTOM_CENTER" -> Right SABottomCenter
        "BOTTOM_RIGHT" -> Right SABottomRight
        x -> Left ("Unable to parse ShadowAlignment from: " <> x)

instance ToHttpApiData ShadowAlignment where
    toQueryParam = \case
        SARectanglePositionUnspecified -> "RECTANGLE_POSITION_UNSPECIFIED"
        SATopLeft -> "TOP_LEFT"
        SATopCenter -> "TOP_CENTER"
        SATopRight -> "TOP_RIGHT"
        SALeftCenter -> "LEFT_CENTER"
        SACenter -> "CENTER"
        SARightCenter -> "RIGHT_CENTER"
        SABottomLeft -> "BOTTOM_LEFT"
        SABottomCenter -> "BOTTOM_CENTER"
        SABottomRight -> "BOTTOM_RIGHT"

instance FromJSON ShadowAlignment where
    parseJSON = parseJSONText "ShadowAlignment"

instance ToJSON ShadowAlignment where
    toJSON = toJSONText

-- | The mode with which the chart is linked to the source spreadsheet. When
-- not specified, the chart will be an image that is not linked.
data ReplaceAllShapesWithSheetsChartRequestLinkingMode
    = RASWSCRLMNotLinkedImage
      -- ^ @NOT_LINKED_IMAGE@
      -- The chart is not associated with the source spreadsheet and cannot be
      -- updated. A chart that is not linked will be inserted as an image.
    | RASWSCRLMLinked
      -- ^ @LINKED@
      -- Linking the chart allows it to be updated, and other collaborators will
      -- see a link to the spreadsheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReplaceAllShapesWithSheetsChartRequestLinkingMode

instance FromHttpApiData ReplaceAllShapesWithSheetsChartRequestLinkingMode where
    parseQueryParam = \case
        "NOT_LINKED_IMAGE" -> Right RASWSCRLMNotLinkedImage
        "LINKED" -> Right RASWSCRLMLinked
        x -> Left ("Unable to parse ReplaceAllShapesWithSheetsChartRequestLinkingMode from: " <> x)

instance ToHttpApiData ReplaceAllShapesWithSheetsChartRequestLinkingMode where
    toQueryParam = \case
        RASWSCRLMNotLinkedImage -> "NOT_LINKED_IMAGE"
        RASWSCRLMLinked -> "LINKED"

instance FromJSON ReplaceAllShapesWithSheetsChartRequestLinkingMode where
    parseJSON = parseJSONText "ReplaceAllShapesWithSheetsChartRequestLinkingMode"

instance ToJSON ReplaceAllShapesWithSheetsChartRequestLinkingMode where
    toJSON = toJSONText

-- | The style of the arrow at the end of the line.
data LinePropertiesEndArrow
    = LPEAArrowStyleUnspecified
      -- ^ @ARROW_STYLE_UNSPECIFIED@
      -- An unspecified arrow style.
    | LPEANone
      -- ^ @NONE@
      -- No arrow.
    | LPEAStealthArrow
      -- ^ @STEALTH_ARROW@
      -- Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value
      -- \'stealth\'.
    | LPEAFillArrow
      -- ^ @FILL_ARROW@
      -- Filled arrow. Corresponds to ECMA-376 ST_LineEndType value \'triangle\'.
    | LPEAFillCircle
      -- ^ @FILL_CIRCLE@
      -- Filled circle. Corresponds to ECMA-376 ST_LineEndType value \'oval\'.
    | LPEAFillSquare
      -- ^ @FILL_SQUARE@
      -- Filled square.
    | LPEAFillDiamond
      -- ^ @FILL_DIAMOND@
      -- Filled diamond. Corresponds to ECMA-376 ST_LineEndType value
      -- \'diamond\'.
    | LPEAOpenArrow
      -- ^ @OPEN_ARROW@
      -- Hollow arrow.
    | LPEAOpenCircle
      -- ^ @OPEN_CIRCLE@
      -- Hollow circle.
    | LPEAOpenSquare
      -- ^ @OPEN_SQUARE@
      -- Hollow square.
    | LPEAOpenDiamond
      -- ^ @OPEN_DIAMOND@
      -- Hollow diamond.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinePropertiesEndArrow

instance FromHttpApiData LinePropertiesEndArrow where
    parseQueryParam = \case
        "ARROW_STYLE_UNSPECIFIED" -> Right LPEAArrowStyleUnspecified
        "NONE" -> Right LPEANone
        "STEALTH_ARROW" -> Right LPEAStealthArrow
        "FILL_ARROW" -> Right LPEAFillArrow
        "FILL_CIRCLE" -> Right LPEAFillCircle
        "FILL_SQUARE" -> Right LPEAFillSquare
        "FILL_DIAMOND" -> Right LPEAFillDiamond
        "OPEN_ARROW" -> Right LPEAOpenArrow
        "OPEN_CIRCLE" -> Right LPEAOpenCircle
        "OPEN_SQUARE" -> Right LPEAOpenSquare
        "OPEN_DIAMOND" -> Right LPEAOpenDiamond
        x -> Left ("Unable to parse LinePropertiesEndArrow from: " <> x)

instance ToHttpApiData LinePropertiesEndArrow where
    toQueryParam = \case
        LPEAArrowStyleUnspecified -> "ARROW_STYLE_UNSPECIFIED"
        LPEANone -> "NONE"
        LPEAStealthArrow -> "STEALTH_ARROW"
        LPEAFillArrow -> "FILL_ARROW"
        LPEAFillCircle -> "FILL_CIRCLE"
        LPEAFillSquare -> "FILL_SQUARE"
        LPEAFillDiamond -> "FILL_DIAMOND"
        LPEAOpenArrow -> "OPEN_ARROW"
        LPEAOpenCircle -> "OPEN_CIRCLE"
        LPEAOpenSquare -> "OPEN_SQUARE"
        LPEAOpenDiamond -> "OPEN_DIAMOND"

instance FromJSON LinePropertiesEndArrow where
    parseJSON = parseJSONText "LinePropertiesEndArrow"

instance ToJSON LinePropertiesEndArrow where
    toJSON = toJSONText

-- | The background fill property state. Updating the fill on a table cell
-- will implicitly update this field to \`RENDERED\`, unless another value
-- is specified in the same request. To have no fill on a table cell, set
-- this field to \`NOT_RENDERED\`. In this case, any other fill fields set
-- in the same request will be ignored.
data TableCellBackgRoundFillPropertyState
    = TCBRFPSRendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered on a page. If the element is a
      -- placeholder shape as determined by the placeholder field, and it
      -- inherits from a placeholder shape, the corresponding field may be unset,
      -- meaning that the property value is inherited from a parent placeholder.
      -- If the element does not inherit, then the field will contain the
      -- rendered value. This is the default value.
    | TCBRFPSNotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered on a page. However, the field
      -- may still be set so it can be inherited by child shapes. To remove a
      -- property from a rendered element, set its property_state to
      -- NOT_RENDERED.
    | TCBRFPSInherit
      -- ^ @INHERIT@
      -- If a property\'s state is INHERIT, then the property state uses the
      -- value of corresponding \`property_state\` field on the parent shape.
      -- Elements that do not inherit will never have an INHERIT property state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableCellBackgRoundFillPropertyState

instance FromHttpApiData TableCellBackgRoundFillPropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right TCBRFPSRendered
        "NOT_RENDERED" -> Right TCBRFPSNotRendered
        "INHERIT" -> Right TCBRFPSInherit
        x -> Left ("Unable to parse TableCellBackgRoundFillPropertyState from: " <> x)

instance ToHttpApiData TableCellBackgRoundFillPropertyState where
    toQueryParam = \case
        TCBRFPSRendered -> "RENDERED"
        TCBRFPSNotRendered -> "NOT_RENDERED"
        TCBRFPSInherit -> "INHERIT"

instance FromJSON TableCellBackgRoundFillPropertyState where
    parseJSON = parseJSONText "TableCellBackgRoundFillPropertyState"

instance ToJSON TableCellBackgRoundFillPropertyState where
    toJSON = toJSONText

-- | The video source.
data CreateVideoRequestSource
    = SourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
      -- The video source is unspecified.
    | YouTube
      -- ^ @YOUTUBE@
      -- The video source is YouTube.
    | Drive
      -- ^ @DRIVE@
      -- The video source is Google Drive.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateVideoRequestSource

instance FromHttpApiData CreateVideoRequestSource where
    parseQueryParam = \case
        "SOURCE_UNSPECIFIED" -> Right SourceUnspecified
        "YOUTUBE" -> Right YouTube
        "DRIVE" -> Right Drive
        x -> Left ("Unable to parse CreateVideoRequestSource from: " <> x)

instance ToHttpApiData CreateVideoRequestSource where
    toQueryParam = \case
        SourceUnspecified -> "SOURCE_UNSPECIFIED"
        YouTube -> "YOUTUBE"
        Drive -> "DRIVE"

instance FromJSON CreateVideoRequestSource where
    parseJSON = parseJSONText "CreateVideoRequestSource"

instance ToJSON CreateVideoRequestSource where
    toJSON = toJSONText

-- | If set, indicates this is a link to a slide in this presentation,
-- addressed by its position.
data LinkRelativeLink
    = RelativeSlideLinkUnspecified
      -- ^ @RELATIVE_SLIDE_LINK_UNSPECIFIED@
      -- An unspecified relative slide link.
    | NextSlide
      -- ^ @NEXT_SLIDE@
      -- A link to the next slide.
    | PreviousSlide
      -- ^ @PREVIOUS_SLIDE@
      -- A link to the previous slide.
    | FirstSlide
      -- ^ @FIRST_SLIDE@
      -- A link to the first slide in the presentation.
    | LastSlide
      -- ^ @LAST_SLIDE@
      -- A link to the last slide in the presentation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinkRelativeLink

instance FromHttpApiData LinkRelativeLink where
    parseQueryParam = \case
        "RELATIVE_SLIDE_LINK_UNSPECIFIED" -> Right RelativeSlideLinkUnspecified
        "NEXT_SLIDE" -> Right NextSlide
        "PREVIOUS_SLIDE" -> Right PreviousSlide
        "FIRST_SLIDE" -> Right FirstSlide
        "LAST_SLIDE" -> Right LastSlide
        x -> Left ("Unable to parse LinkRelativeLink from: " <> x)

instance ToHttpApiData LinkRelativeLink where
    toQueryParam = \case
        RelativeSlideLinkUnspecified -> "RELATIVE_SLIDE_LINK_UNSPECIFIED"
        NextSlide -> "NEXT_SLIDE"
        PreviousSlide -> "PREVIOUS_SLIDE"
        FirstSlide -> "FIRST_SLIDE"
        LastSlide -> "LAST_SLIDE"

instance FromJSON LinkRelativeLink where
    parseJSON = parseJSONText "LinkRelativeLink"

instance ToJSON LinkRelativeLink where
    toJSON = toJSONText

-- | The video source.
data VideoSource
    = VSSourceUnspecified
      -- ^ @SOURCE_UNSPECIFIED@
      -- The video source is unspecified.
    | VSYouTube
      -- ^ @YOUTUBE@
      -- The video source is YouTube.
    | VSDrive
      -- ^ @DRIVE@
      -- The video source is Google Drive.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VideoSource

instance FromHttpApiData VideoSource where
    parseQueryParam = \case
        "SOURCE_UNSPECIFIED" -> Right VSSourceUnspecified
        "YOUTUBE" -> Right VSYouTube
        "DRIVE" -> Right VSDrive
        x -> Left ("Unable to parse VideoSource from: " <> x)

instance ToHttpApiData VideoSource where
    toQueryParam = \case
        VSSourceUnspecified -> "SOURCE_UNSPECIFIED"
        VSYouTube -> "YOUTUBE"
        VSDrive -> "DRIVE"

instance FromJSON VideoSource where
    parseJSON = parseJSONText "VideoSource"

instance ToJSON VideoSource where
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
    = ATTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- An unspecified autotext type.
    | ATTSlideNumber
      -- ^ @SLIDE_NUMBER@
      -- Type for autotext that represents the current slide number.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoTextType

instance FromHttpApiData AutoTextType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right ATTTypeUnspecified
        "SLIDE_NUMBER" -> Right ATTSlideNumber
        x -> Left ("Unable to parse AutoTextType from: " <> x)

instance ToHttpApiData AutoTextType where
    toQueryParam = \case
        ATTTypeUnspecified -> "TYPE_UNSPECIFIED"
        ATTSlideNumber -> "SLIDE_NUMBER"

instance FromJSON AutoTextType where
    parseJSON = parseJSONText "AutoTextType"

instance ToJSON AutoTextType where
    toJSON = toJSONText

-- | The dash style of the border.
data TableBOrderPropertiesDashStyle
    = TBOPDSDashStyleUnspecified
      -- ^ @DASH_STYLE_UNSPECIFIED@
      -- Unspecified dash style.
    | TBOPDSSolid
      -- ^ @SOLID@
      -- Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'solid\'. This is the default dash style.
    | TBOPDSDot
      -- ^ @DOT@
      -- Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
    | TBOPDSDash
      -- ^ @DASH@
      -- Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'dash\'.
    | TBOPDSDashDot
      -- ^ @DASH_DOT@
      -- Alternating dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'dashDot\'.
    | TBOPDSLongDash
      -- ^ @LONG_DASH@
      -- Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal
      -- value \'lgDash\'.
    | TBOPDSLongDashDot
      -- ^ @LONG_DASH_DOT@
      -- Alternating large dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'lgDashDot\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TableBOrderPropertiesDashStyle

instance FromHttpApiData TableBOrderPropertiesDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right TBOPDSDashStyleUnspecified
        "SOLID" -> Right TBOPDSSolid
        "DOT" -> Right TBOPDSDot
        "DASH" -> Right TBOPDSDash
        "DASH_DOT" -> Right TBOPDSDashDot
        "LONG_DASH" -> Right TBOPDSLongDash
        "LONG_DASH_DOT" -> Right TBOPDSLongDashDot
        x -> Left ("Unable to parse TableBOrderPropertiesDashStyle from: " <> x)

instance ToHttpApiData TableBOrderPropertiesDashStyle where
    toQueryParam = \case
        TBOPDSDashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        TBOPDSSolid -> "SOLID"
        TBOPDSDot -> "DOT"
        TBOPDSDash -> "DASH"
        TBOPDSDashDot -> "DASH_DOT"
        TBOPDSLongDash -> "LONG_DASH"
        TBOPDSLongDashDot -> "LONG_DASH_DOT"

instance FromJSON TableBOrderPropertiesDashStyle where
    parseJSON = parseJSONText "TableBOrderPropertiesDashStyle"

instance ToJSON TableBOrderPropertiesDashStyle where
    toJSON = toJSONText

-- | The autofit type of the shape. If the autofit type is
-- AUTOFIT_TYPE_UNSPECIFIED, the autofit type is inherited from a parent
-- placeholder if it exists. The field is automatically set to NONE if a
-- request is made that might affect text fitting within its bounding text
-- box. In this case the font_scale is applied to the font_size and the
-- line_spacing_reduction is applied to the line_spacing. Both properties
-- are also reset to default values.
data AutofitAutofitType
    = AATAutofitTypeUnspecified
      -- ^ @AUTOFIT_TYPE_UNSPECIFIED@
      -- The autofit type is unspecified.
    | AATNone
      -- ^ @NONE@
      -- Do not autofit.
    | AATTextAutofit
      -- ^ @TEXT_AUTOFIT@
      -- Shrink text on overflow to fit the shape.
    | AATShapeAutofit
      -- ^ @SHAPE_AUTOFIT@
      -- Resize the shape to fit the text.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutofitAutofitType

instance FromHttpApiData AutofitAutofitType where
    parseQueryParam = \case
        "AUTOFIT_TYPE_UNSPECIFIED" -> Right AATAutofitTypeUnspecified
        "NONE" -> Right AATNone
        "TEXT_AUTOFIT" -> Right AATTextAutofit
        "SHAPE_AUTOFIT" -> Right AATShapeAutofit
        x -> Left ("Unable to parse AutofitAutofitType from: " <> x)

instance ToHttpApiData AutofitAutofitType where
    toQueryParam = \case
        AATAutofitTypeUnspecified -> "AUTOFIT_TYPE_UNSPECIFIED"
        AATNone -> "NONE"
        AATTextAutofit -> "TEXT_AUTOFIT"
        AATShapeAutofit -> "SHAPE_AUTOFIT"

instance FromJSON AutofitAutofitType where
    parseJSON = parseJSONText "AutofitAutofitType"

instance ToJSON AutofitAutofitType where
    toJSON = toJSONText

-- | The line category to update to. The exact line type is determined based
-- on the category to update to and how it\'s routed to connect to other
-- page elements.
data UpdateLineCategoryRequestLineCategory
    = ULCRLCLineCategoryUnspecified
      -- ^ @LINE_CATEGORY_UNSPECIFIED@
      -- Unspecified line category.
    | ULCRLCStraight
      -- ^ @STRAIGHT@
      -- Straight connectors, including straight connector 1.
    | ULCRLCBent
      -- ^ @BENT@
      -- Bent connectors, including bent connector 2 to 5.
    | ULCRLCCurved
      -- ^ @CURVED@
      -- Curved connectors, including curved connector 2 to 5.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdateLineCategoryRequestLineCategory

instance FromHttpApiData UpdateLineCategoryRequestLineCategory where
    parseQueryParam = \case
        "LINE_CATEGORY_UNSPECIFIED" -> Right ULCRLCLineCategoryUnspecified
        "STRAIGHT" -> Right ULCRLCStraight
        "BENT" -> Right ULCRLCBent
        "CURVED" -> Right ULCRLCCurved
        x -> Left ("Unable to parse UpdateLineCategoryRequestLineCategory from: " <> x)

instance ToHttpApiData UpdateLineCategoryRequestLineCategory where
    toQueryParam = \case
        ULCRLCLineCategoryUnspecified -> "LINE_CATEGORY_UNSPECIFIED"
        ULCRLCStraight -> "STRAIGHT"
        ULCRLCBent -> "BENT"
        ULCRLCCurved -> "CURVED"

instance FromJSON UpdateLineCategoryRequestLineCategory where
    parseJSON = parseJSONText "UpdateLineCategoryRequestLineCategory"

instance ToJSON UpdateLineCategoryRequestLineCategory where
    toJSON = toJSONText

-- | The type of the line.
data LineLineType
    = LLTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- An unspecified line type.
    | LLTStraightConnector1
      -- ^ @STRAIGHT_CONNECTOR_1@
      -- Straight connector 1 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'straightConnector1\'.
    | LLTBentConnector2
      -- ^ @BENT_CONNECTOR_2@
      -- Bent connector 2 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentConnector2\'.
    | LLTBentConnector3
      -- ^ @BENT_CONNECTOR_3@
      -- Bent connector 3 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentConnector3\'.
    | LLTBentConnector4
      -- ^ @BENT_CONNECTOR_4@
      -- Bent connector 4 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentConnector4\'.
    | LLTBentConnector5
      -- ^ @BENT_CONNECTOR_5@
      -- Bent connector 5 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'bentConnector5\'.
    | LLTCurvedConnector2
      -- ^ @CURVED_CONNECTOR_2@
      -- Curved connector 2 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedConnector2\'.
    | LLTCurvedConnector3
      -- ^ @CURVED_CONNECTOR_3@
      -- Curved connector 3 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedConnector3\'.
    | LLTCurvedConnector4
      -- ^ @CURVED_CONNECTOR_4@
      -- Curved connector 4 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedConnector4\'.
    | LLTCurvedConnector5
      -- ^ @CURVED_CONNECTOR_5@
      -- Curved connector 5 form. Corresponds to ECMA-376 ST_ShapeType
      -- \'curvedConnector5\'.
    | LLTStraightLine
      -- ^ @STRAIGHT_LINE@
      -- Straight line. Corresponds to ECMA-376 ST_ShapeType \'line\'. This line
      -- type is not a connector.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LineLineType

instance FromHttpApiData LineLineType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right LLTTypeUnspecified
        "STRAIGHT_CONNECTOR_1" -> Right LLTStraightConnector1
        "BENT_CONNECTOR_2" -> Right LLTBentConnector2
        "BENT_CONNECTOR_3" -> Right LLTBentConnector3
        "BENT_CONNECTOR_4" -> Right LLTBentConnector4
        "BENT_CONNECTOR_5" -> Right LLTBentConnector5
        "CURVED_CONNECTOR_2" -> Right LLTCurvedConnector2
        "CURVED_CONNECTOR_3" -> Right LLTCurvedConnector3
        "CURVED_CONNECTOR_4" -> Right LLTCurvedConnector4
        "CURVED_CONNECTOR_5" -> Right LLTCurvedConnector5
        "STRAIGHT_LINE" -> Right LLTStraightLine
        x -> Left ("Unable to parse LineLineType from: " <> x)

instance ToHttpApiData LineLineType where
    toQueryParam = \case
        LLTTypeUnspecified -> "TYPE_UNSPECIFIED"
        LLTStraightConnector1 -> "STRAIGHT_CONNECTOR_1"
        LLTBentConnector2 -> "BENT_CONNECTOR_2"
        LLTBentConnector3 -> "BENT_CONNECTOR_3"
        LLTBentConnector4 -> "BENT_CONNECTOR_4"
        LLTBentConnector5 -> "BENT_CONNECTOR_5"
        LLTCurvedConnector2 -> "CURVED_CONNECTOR_2"
        LLTCurvedConnector3 -> "CURVED_CONNECTOR_3"
        LLTCurvedConnector4 -> "CURVED_CONNECTOR_4"
        LLTCurvedConnector5 -> "CURVED_CONNECTOR_5"
        LLTStraightLine -> "STRAIGHT_LINE"

instance FromJSON LineLineType where
    parseJSON = parseJSONText "LineLineType"

instance ToJSON LineLineType where
    toJSON = toJSONText

-- | The type of the page.
data PagePageType
    = Slide
      -- ^ @SLIDE@
      -- A slide page.
    | Master
      -- ^ @MASTER@
      -- A master slide page.
    | Layout
      -- ^ @LAYOUT@
      -- A layout page.
    | Notes
      -- ^ @NOTES@
      -- A notes page.
    | NotesMaster
      -- ^ @NOTES_MASTER@
      -- A notes master page.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagePageType

instance FromHttpApiData PagePageType where
    parseQueryParam = \case
        "SLIDE" -> Right Slide
        "MASTER" -> Right Master
        "LAYOUT" -> Right Layout
        "NOTES" -> Right Notes
        "NOTES_MASTER" -> Right NotesMaster
        x -> Left ("Unable to parse PagePageType from: " <> x)

instance ToHttpApiData PagePageType where
    toQueryParam = \case
        Slide -> "SLIDE"
        Master -> "MASTER"
        Layout -> "LAYOUT"
        Notes -> "NOTES"
        NotesMaster -> "NOTES_MASTER"

instance FromJSON PagePageType where
    parseJSON = parseJSONText "PagePageType"

instance ToJSON PagePageType where
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

-- | The category of the line to be created. The exact line type created is
-- determined based on the category and how it\'s routed to connect to
-- other page elements. If you specify both a \`category\` and a
-- \`line_category\`, the \`category\` takes precedence. If you do not
-- specify a value for \`category\`, but specify a value for
-- \`line_category\`, then the specified \`line_category\` value is used.
-- If you do not specify either, then STRAIGHT is used.
data CreateLineRequestCategory
    = CLRCLineCategoryUnspecified
      -- ^ @LINE_CATEGORY_UNSPECIFIED@
      -- Unspecified line category.
    | CLRCStraight
      -- ^ @STRAIGHT@
      -- Straight connectors, including straight connector 1.
    | CLRCBent
      -- ^ @BENT@
      -- Bent connectors, including bent connector 2 to 5.
    | CLRCCurved
      -- ^ @CURVED@
      -- Curved connectors, including curved connector 2 to 5.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreateLineRequestCategory

instance FromHttpApiData CreateLineRequestCategory where
    parseQueryParam = \case
        "LINE_CATEGORY_UNSPECIFIED" -> Right CLRCLineCategoryUnspecified
        "STRAIGHT" -> Right CLRCStraight
        "BENT" -> Right CLRCBent
        "CURVED" -> Right CLRCCurved
        x -> Left ("Unable to parse CreateLineRequestCategory from: " <> x)

instance ToHttpApiData CreateLineRequestCategory where
    toQueryParam = \case
        CLRCLineCategoryUnspecified -> "LINE_CATEGORY_UNSPECIFIED"
        CLRCStraight -> "STRAIGHT"
        CLRCBent -> "BENT"
        CLRCCurved -> "CURVED"

instance FromJSON CreateLineRequestCategory where
    parseJSON = parseJSONText "CreateLineRequestCategory"

instance ToJSON CreateLineRequestCategory where
    toJSON = toJSONText

-- | The type of the theme color.
data ThemeColorPairType
    = TCPTThemeColorTypeUnspecified
      -- ^ @THEME_COLOR_TYPE_UNSPECIFIED@
      -- Unspecified theme color. This value should not be used.
    | TCPTDARK1
      -- ^ @DARK1@
      -- Represents the first dark color.
    | TCPTLIGHT1
      -- ^ @LIGHT1@
      -- Represents the first light color.
    | TCPTDARK2
      -- ^ @DARK2@
      -- Represents the second dark color.
    | TCPTLIGHT2
      -- ^ @LIGHT2@
      -- Represents the second light color.
    | TCPTACCENT1
      -- ^ @ACCENT1@
      -- Represents the first accent color.
    | TCPTACCENT2
      -- ^ @ACCENT2@
      -- Represents the second accent color.
    | TCPTACCENT3
      -- ^ @ACCENT3@
      -- Represents the third accent color.
    | TCPTACCENT4
      -- ^ @ACCENT4@
      -- Represents the fourth accent color.
    | TCPTACCENT5
      -- ^ @ACCENT5@
      -- Represents the fifth accent color.
    | TCPTACCENT6
      -- ^ @ACCENT6@
      -- Represents the sixth accent color.
    | TCPTHyperlink
      -- ^ @HYPERLINK@
      -- Represents the color to use for hyperlinks.
    | TCPTFollowedHyperlink
      -- ^ @FOLLOWED_HYPERLINK@
      -- Represents the color to use for visited hyperlinks.
    | TCPTTEXT1
      -- ^ @TEXT1@
      -- Represents the first text color.
    | TCPTBACKGROUND1
      -- ^ @BACKGROUND1@
      -- Represents the first background color.
    | TCPTTEXT2
      -- ^ @TEXT2@
      -- Represents the second text color.
    | TCPTBACKGROUND2
      -- ^ @BACKGROUND2@
      -- Represents the second background color.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThemeColorPairType

instance FromHttpApiData ThemeColorPairType where
    parseQueryParam = \case
        "THEME_COLOR_TYPE_UNSPECIFIED" -> Right TCPTThemeColorTypeUnspecified
        "DARK1" -> Right TCPTDARK1
        "LIGHT1" -> Right TCPTLIGHT1
        "DARK2" -> Right TCPTDARK2
        "LIGHT2" -> Right TCPTLIGHT2
        "ACCENT1" -> Right TCPTACCENT1
        "ACCENT2" -> Right TCPTACCENT2
        "ACCENT3" -> Right TCPTACCENT3
        "ACCENT4" -> Right TCPTACCENT4
        "ACCENT5" -> Right TCPTACCENT5
        "ACCENT6" -> Right TCPTACCENT6
        "HYPERLINK" -> Right TCPTHyperlink
        "FOLLOWED_HYPERLINK" -> Right TCPTFollowedHyperlink
        "TEXT1" -> Right TCPTTEXT1
        "BACKGROUND1" -> Right TCPTBACKGROUND1
        "TEXT2" -> Right TCPTTEXT2
        "BACKGROUND2" -> Right TCPTBACKGROUND2
        x -> Left ("Unable to parse ThemeColorPairType from: " <> x)

instance ToHttpApiData ThemeColorPairType where
    toQueryParam = \case
        TCPTThemeColorTypeUnspecified -> "THEME_COLOR_TYPE_UNSPECIFIED"
        TCPTDARK1 -> "DARK1"
        TCPTLIGHT1 -> "LIGHT1"
        TCPTDARK2 -> "DARK2"
        TCPTLIGHT2 -> "LIGHT2"
        TCPTACCENT1 -> "ACCENT1"
        TCPTACCENT2 -> "ACCENT2"
        TCPTACCENT3 -> "ACCENT3"
        TCPTACCENT4 -> "ACCENT4"
        TCPTACCENT5 -> "ACCENT5"
        TCPTACCENT6 -> "ACCENT6"
        TCPTHyperlink -> "HYPERLINK"
        TCPTFollowedHyperlink -> "FOLLOWED_HYPERLINK"
        TCPTTEXT1 -> "TEXT1"
        TCPTBACKGROUND1 -> "BACKGROUND1"
        TCPTTEXT2 -> "TEXT2"
        TCPTBACKGROUND2 -> "BACKGROUND2"

instance FromJSON ThemeColorPairType where
    parseJSON = parseJSONText "ThemeColorPairType"

instance ToJSON ThemeColorPairType where
    toJSON = toJSONText

-- | The style of the arrow at the beginning of the line.
data LinePropertiesStartArrow
    = LPSAArrowStyleUnspecified
      -- ^ @ARROW_STYLE_UNSPECIFIED@
      -- An unspecified arrow style.
    | LPSANone
      -- ^ @NONE@
      -- No arrow.
    | LPSAStealthArrow
      -- ^ @STEALTH_ARROW@
      -- Arrow with notched back. Corresponds to ECMA-376 ST_LineEndType value
      -- \'stealth\'.
    | LPSAFillArrow
      -- ^ @FILL_ARROW@
      -- Filled arrow. Corresponds to ECMA-376 ST_LineEndType value \'triangle\'.
    | LPSAFillCircle
      -- ^ @FILL_CIRCLE@
      -- Filled circle. Corresponds to ECMA-376 ST_LineEndType value \'oval\'.
    | LPSAFillSquare
      -- ^ @FILL_SQUARE@
      -- Filled square.
    | LPSAFillDiamond
      -- ^ @FILL_DIAMOND@
      -- Filled diamond. Corresponds to ECMA-376 ST_LineEndType value
      -- \'diamond\'.
    | LPSAOpenArrow
      -- ^ @OPEN_ARROW@
      -- Hollow arrow.
    | LPSAOpenCircle
      -- ^ @OPEN_CIRCLE@
      -- Hollow circle.
    | LPSAOpenSquare
      -- ^ @OPEN_SQUARE@
      -- Hollow square.
    | LPSAOpenDiamond
      -- ^ @OPEN_DIAMOND@
      -- Hollow diamond.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LinePropertiesStartArrow

instance FromHttpApiData LinePropertiesStartArrow where
    parseQueryParam = \case
        "ARROW_STYLE_UNSPECIFIED" -> Right LPSAArrowStyleUnspecified
        "NONE" -> Right LPSANone
        "STEALTH_ARROW" -> Right LPSAStealthArrow
        "FILL_ARROW" -> Right LPSAFillArrow
        "FILL_CIRCLE" -> Right LPSAFillCircle
        "FILL_SQUARE" -> Right LPSAFillSquare
        "FILL_DIAMOND" -> Right LPSAFillDiamond
        "OPEN_ARROW" -> Right LPSAOpenArrow
        "OPEN_CIRCLE" -> Right LPSAOpenCircle
        "OPEN_SQUARE" -> Right LPSAOpenSquare
        "OPEN_DIAMOND" -> Right LPSAOpenDiamond
        x -> Left ("Unable to parse LinePropertiesStartArrow from: " <> x)

instance ToHttpApiData LinePropertiesStartArrow where
    toQueryParam = \case
        LPSAArrowStyleUnspecified -> "ARROW_STYLE_UNSPECIFIED"
        LPSANone -> "NONE"
        LPSAStealthArrow -> "STEALTH_ARROW"
        LPSAFillArrow -> "FILL_ARROW"
        LPSAFillCircle -> "FILL_CIRCLE"
        LPSAFillSquare -> "FILL_SQUARE"
        LPSAFillDiamond -> "FILL_DIAMOND"
        LPSAOpenArrow -> "OPEN_ARROW"
        LPSAOpenCircle -> "OPEN_CIRCLE"
        LPSAOpenSquare -> "OPEN_SQUARE"
        LPSAOpenDiamond -> "OPEN_DIAMOND"

instance FromJSON LinePropertiesStartArrow where
    parseJSON = parseJSONText "LinePropertiesStartArrow"

instance ToJSON LinePropertiesStartArrow where
    toJSON = toJSONText

-- | The shadow property state. Updating the shadow on a page element will
-- implicitly update this field to \`RENDERED\`, unless another value is
-- specified in the same request. To have no shadow on a page element, set
-- this field to \`NOT_RENDERED\`. In this case, any other shadow fields
-- set in the same request will be ignored.
data ShadowPropertyState
    = SPSRendered
      -- ^ @RENDERED@
      -- If a property\'s state is RENDERED, then the element has the
      -- corresponding property when rendered on a page. If the element is a
      -- placeholder shape as determined by the placeholder field, and it
      -- inherits from a placeholder shape, the corresponding field may be unset,
      -- meaning that the property value is inherited from a parent placeholder.
      -- If the element does not inherit, then the field will contain the
      -- rendered value. This is the default value.
    | SPSNotRendered
      -- ^ @NOT_RENDERED@
      -- If a property\'s state is NOT_RENDERED, then the element does not have
      -- the corresponding property when rendered on a page. However, the field
      -- may still be set so it can be inherited by child shapes. To remove a
      -- property from a rendered element, set its property_state to
      -- NOT_RENDERED.
    | SPSInherit
      -- ^ @INHERIT@
      -- If a property\'s state is INHERIT, then the property state uses the
      -- value of corresponding \`property_state\` field on the parent shape.
      -- Elements that do not inherit will never have an INHERIT property state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShadowPropertyState

instance FromHttpApiData ShadowPropertyState where
    parseQueryParam = \case
        "RENDERED" -> Right SPSRendered
        "NOT_RENDERED" -> Right SPSNotRendered
        "INHERIT" -> Right SPSInherit
        x -> Left ("Unable to parse ShadowPropertyState from: " <> x)

instance ToHttpApiData ShadowPropertyState where
    toQueryParam = \case
        SPSRendered -> "RENDERED"
        SPSNotRendered -> "NOT_RENDERED"
        SPSInherit -> "INHERIT"

instance FromJSON ShadowPropertyState where
    parseJSON = parseJSONText "ShadowPropertyState"

instance ToJSON ShadowPropertyState where
    toJSON = toJSONText

-- | The type of the shadow. This property is read-only.
data ShadowType
    = ShadowTypeUnspecified
      -- ^ @SHADOW_TYPE_UNSPECIFIED@
      -- Unspecified shadow type.
    | Outer
      -- ^ @OUTER@
      -- Outer shadow.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShadowType

instance FromHttpApiData ShadowType where
    parseQueryParam = \case
        "SHADOW_TYPE_UNSPECIFIED" -> Right ShadowTypeUnspecified
        "OUTER" -> Right Outer
        x -> Left ("Unable to parse ShadowType from: " <> x)

instance ToHttpApiData ShadowType where
    toQueryParam = \case
        ShadowTypeUnspecified -> "SHADOW_TYPE_UNSPECIFIED"
        Outer -> "OUTER"

instance FromJSON ShadowType where
    parseJSON = parseJSONText "ShadowType"

instance ToJSON ShadowType where
    toJSON = toJSONText

-- | The apply mode of the transform update.
data UpdatePageElementTransformRequestApplyMode
    = ApplyModeUnspecified
      -- ^ @APPLY_MODE_UNSPECIFIED@
      -- Unspecified mode.
    | Relative
      -- ^ @RELATIVE@
      -- Applies the new AffineTransform matrix to the existing one, and replaces
      -- the existing one with the resulting concatenation.
    | Absolute
      -- ^ @ABSOLUTE@
      -- Replaces the existing AffineTransform matrix with the new one.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UpdatePageElementTransformRequestApplyMode

instance FromHttpApiData UpdatePageElementTransformRequestApplyMode where
    parseQueryParam = \case
        "APPLY_MODE_UNSPECIFIED" -> Right ApplyModeUnspecified
        "RELATIVE" -> Right Relative
        "ABSOLUTE" -> Right Absolute
        x -> Left ("Unable to parse UpdatePageElementTransformRequestApplyMode from: " <> x)

instance ToHttpApiData UpdatePageElementTransformRequestApplyMode where
    toQueryParam = \case
        ApplyModeUnspecified -> "APPLY_MODE_UNSPECIFIED"
        Relative -> "RELATIVE"
        Absolute -> "ABSOLUTE"

instance FromJSON UpdatePageElementTransformRequestApplyMode where
    parseJSON = parseJSONText "UpdatePageElementTransformRequestApplyMode"

instance ToJSON UpdatePageElementTransformRequestApplyMode where
    toJSON = toJSONText

-- | The units for magnitude.
data DimensionUnit
    = UnitUnspecified
      -- ^ @UNIT_UNSPECIFIED@
      -- The units are unknown.
    | Emu
      -- ^ @EMU@
      -- An English Metric Unit (EMU) is defined as 1\/360,000 of a centimeter
      -- and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.
    | PT
      -- ^ @PT@
      -- A point, 1\/72 of an inch.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionUnit

instance FromHttpApiData DimensionUnit where
    parseQueryParam = \case
        "UNIT_UNSPECIFIED" -> Right UnitUnspecified
        "EMU" -> Right Emu
        "PT" -> Right PT
        x -> Left ("Unable to parse DimensionUnit from: " <> x)

instance ToHttpApiData DimensionUnit where
    toQueryParam = \case
        UnitUnspecified -> "UNIT_UNSPECIFIED"
        Emu -> "EMU"
        PT -> "PT"

instance FromJSON DimensionUnit where
    parseJSON = parseJSONText "DimensionUnit"

instance ToJSON DimensionUnit where
    toJSON = toJSONText

-- | The replacement method.
data ReplaceImageRequestImageReplaceMethod
    = RIRIRMImageReplaceMethodUnspecified
      -- ^ @IMAGE_REPLACE_METHOD_UNSPECIFIED@
      -- Unspecified image replace method. This value must not be used.
    | RIRIRMCenterInside
      -- ^ @CENTER_INSIDE@
      -- Scales and centers the image to fit within the bounds of the original
      -- shape and maintains the image\'s aspect ratio. The rendered size of the
      -- image may be smaller than the size of the shape. This is the default
      -- method when one is not specified.
    | RIRIRMCenterCrop
      -- ^ @CENTER_CROP@
      -- Scales and centers the image to fill the bounds of the original shape.
      -- The image may be cropped in order to fill the shape. The rendered size
      -- of the image will be the same as that of the original shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReplaceImageRequestImageReplaceMethod

instance FromHttpApiData ReplaceImageRequestImageReplaceMethod where
    parseQueryParam = \case
        "IMAGE_REPLACE_METHOD_UNSPECIFIED" -> Right RIRIRMImageReplaceMethodUnspecified
        "CENTER_INSIDE" -> Right RIRIRMCenterInside
        "CENTER_CROP" -> Right RIRIRMCenterCrop
        x -> Left ("Unable to parse ReplaceImageRequestImageReplaceMethod from: " <> x)

instance ToHttpApiData ReplaceImageRequestImageReplaceMethod where
    toQueryParam = \case
        RIRIRMImageReplaceMethodUnspecified -> "IMAGE_REPLACE_METHOD_UNSPECIFIED"
        RIRIRMCenterInside -> "CENTER_INSIDE"
        RIRIRMCenterCrop -> "CENTER_CROP"

instance FromJSON ReplaceImageRequestImageReplaceMethod where
    parseJSON = parseJSONText "ReplaceImageRequestImageReplaceMethod"

instance ToJSON ReplaceImageRequestImageReplaceMethod where
    toJSON = toJSONText

-- | The dash style of the outline.
data OutlineDashStyle
    = ODSDashStyleUnspecified
      -- ^ @DASH_STYLE_UNSPECIFIED@
      -- Unspecified dash style.
    | ODSSolid
      -- ^ @SOLID@
      -- Solid line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'solid\'. This is the default dash style.
    | ODSDot
      -- ^ @DOT@
      -- Dotted line. Corresponds to ECMA-376 ST_PresetLineDashVal value \'dot\'.
    | ODSDash
      -- ^ @DASH@
      -- Dashed line. Corresponds to ECMA-376 ST_PresetLineDashVal value
      -- \'dash\'.
    | ODSDashDot
      -- ^ @DASH_DOT@
      -- Alternating dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'dashDot\'.
    | ODSLongDash
      -- ^ @LONG_DASH@
      -- Line with large dashes. Corresponds to ECMA-376 ST_PresetLineDashVal
      -- value \'lgDash\'.
    | ODSLongDashDot
      -- ^ @LONG_DASH_DOT@
      -- Alternating large dashes and dots. Corresponds to ECMA-376
      -- ST_PresetLineDashVal value \'lgDashDot\'.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OutlineDashStyle

instance FromHttpApiData OutlineDashStyle where
    parseQueryParam = \case
        "DASH_STYLE_UNSPECIFIED" -> Right ODSDashStyleUnspecified
        "SOLID" -> Right ODSSolid
        "DOT" -> Right ODSDot
        "DASH" -> Right ODSDash
        "DASH_DOT" -> Right ODSDashDot
        "LONG_DASH" -> Right ODSLongDash
        "LONG_DASH_DOT" -> Right ODSLongDashDot
        x -> Left ("Unable to parse OutlineDashStyle from: " <> x)

instance ToHttpApiData OutlineDashStyle where
    toQueryParam = \case
        ODSDashStyleUnspecified -> "DASH_STYLE_UNSPECIFIED"
        ODSSolid -> "SOLID"
        ODSDot -> "DOT"
        ODSDash -> "DASH"
        ODSDashDot -> "DASH_DOT"
        ODSLongDash -> "LONG_DASH"
        ODSLongDashDot -> "LONG_DASH_DOT"

instance FromJSON OutlineDashStyle where
    parseJSON = parseJSONText "OutlineDashStyle"

instance ToJSON OutlineDashStyle where
    toJSON = toJSONText

-- | The units for translate elements.
data AffineTransformUnit
    = ATUUnitUnspecified
      -- ^ @UNIT_UNSPECIFIED@
      -- The units are unknown.
    | ATUEmu
      -- ^ @EMU@
      -- An English Metric Unit (EMU) is defined as 1\/360,000 of a centimeter
      -- and thus there are 914,400 EMUs per inch, and 12,700 EMUs per point.
    | ATUPT
      -- ^ @PT@
      -- A point, 1\/72 of an inch.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AffineTransformUnit

instance FromHttpApiData AffineTransformUnit where
    parseQueryParam = \case
        "UNIT_UNSPECIFIED" -> Right ATUUnitUnspecified
        "EMU" -> Right ATUEmu
        "PT" -> Right ATUPT
        x -> Left ("Unable to parse AffineTransformUnit from: " <> x)

instance ToHttpApiData AffineTransformUnit where
    toQueryParam = \case
        ATUUnitUnspecified -> "UNIT_UNSPECIFIED"
        ATUEmu -> "EMU"
        ATUPT -> "PT"

instance FromJSON AffineTransformUnit where
    parseJSON = parseJSONText "AffineTransformUnit"

instance ToJSON AffineTransformUnit where
    toJSON = toJSONText

-- | The image replace method. If you specify both a \`replace_method\` and
-- an \`image_replace_method\`, the \`image_replace_method\` takes
-- precedence. If you do not specify a value for \`image_replace_method\`,
-- but specify a value for \`replace_method\`, then the specified
-- \`replace_method\` value is used. If you do not specify either, then
-- CENTER_INSIDE is used.
data ReplaceAllShapesWithImageRequestImageReplaceMethod
    = RASWIRIRMImageReplaceMethodUnspecified
      -- ^ @IMAGE_REPLACE_METHOD_UNSPECIFIED@
      -- Unspecified image replace method. This value must not be used.
    | RASWIRIRMCenterInside
      -- ^ @CENTER_INSIDE@
      -- Scales and centers the image to fit within the bounds of the original
      -- shape and maintains the image\'s aspect ratio. The rendered size of the
      -- image may be smaller than the size of the shape. This is the default
      -- method when one is not specified.
    | RASWIRIRMCenterCrop
      -- ^ @CENTER_CROP@
      -- Scales and centers the image to fill the bounds of the original shape.
      -- The image may be cropped in order to fill the shape. The rendered size
      -- of the image will be the same as that of the original shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReplaceAllShapesWithImageRequestImageReplaceMethod

instance FromHttpApiData ReplaceAllShapesWithImageRequestImageReplaceMethod where
    parseQueryParam = \case
        "IMAGE_REPLACE_METHOD_UNSPECIFIED" -> Right RASWIRIRMImageReplaceMethodUnspecified
        "CENTER_INSIDE" -> Right RASWIRIRMCenterInside
        "CENTER_CROP" -> Right RASWIRIRMCenterCrop
        x -> Left ("Unable to parse ReplaceAllShapesWithImageRequestImageReplaceMethod from: " <> x)

instance ToHttpApiData ReplaceAllShapesWithImageRequestImageReplaceMethod where
    toQueryParam = \case
        RASWIRIRMImageReplaceMethodUnspecified -> "IMAGE_REPLACE_METHOD_UNSPECIFIED"
        RASWIRIRMCenterInside -> "CENTER_INSIDE"
        RASWIRIRMCenterCrop -> "CENTER_CROP"

instance FromJSON ReplaceAllShapesWithImageRequestImageReplaceMethod where
    parseJSON = parseJSONText "ReplaceAllShapesWithImageRequestImageReplaceMethod"

instance ToJSON ReplaceAllShapesWithImageRequestImageReplaceMethod where
    toJSON = toJSONText
