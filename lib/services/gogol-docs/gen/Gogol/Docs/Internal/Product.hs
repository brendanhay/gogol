{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Docs.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Docs.Internal.Product
  ( -- * AutoText
    AutoText (..),
    newAutoText,

    -- * AutoText_SuggestedTextStyleChanges
    AutoText_SuggestedTextStyleChanges (..),
    newAutoText_SuggestedTextStyleChanges,

    -- * Background
    Background (..),
    newBackground,

    -- * BackgroundSuggestionState
    BackgroundSuggestionState (..),
    newBackgroundSuggestionState,

    -- * BatchUpdateDocumentRequest
    BatchUpdateDocumentRequest (..),
    newBatchUpdateDocumentRequest,

    -- * BatchUpdateDocumentResponse
    BatchUpdateDocumentResponse (..),
    newBatchUpdateDocumentResponse,

    -- * Body
    Body (..),
    newBody,

    -- * BookmarkLink
    BookmarkLink (..),
    newBookmarkLink,

    -- * Bullet
    Bullet (..),
    newBullet,

    -- * BulletSuggestionState
    BulletSuggestionState (..),
    newBulletSuggestionState,

    -- * Color
    Color (..),
    newColor,

    -- * ColumnBreak
    ColumnBreak (..),
    newColumnBreak,

    -- * ColumnBreak_SuggestedTextStyleChanges
    ColumnBreak_SuggestedTextStyleChanges (..),
    newColumnBreak_SuggestedTextStyleChanges,

    -- * CreateFooterRequest
    CreateFooterRequest (..),
    newCreateFooterRequest,

    -- * CreateFooterResponse
    CreateFooterResponse (..),
    newCreateFooterResponse,

    -- * CreateFootnoteRequest
    CreateFootnoteRequest (..),
    newCreateFootnoteRequest,

    -- * CreateFootnoteResponse
    CreateFootnoteResponse (..),
    newCreateFootnoteResponse,

    -- * CreateHeaderRequest
    CreateHeaderRequest (..),
    newCreateHeaderRequest,

    -- * CreateHeaderResponse
    CreateHeaderResponse (..),
    newCreateHeaderResponse,

    -- * CreateNamedRangeRequest
    CreateNamedRangeRequest (..),
    newCreateNamedRangeRequest,

    -- * CreateNamedRangeResponse
    CreateNamedRangeResponse (..),
    newCreateNamedRangeResponse,

    -- * CreateParagraphBulletsRequest
    CreateParagraphBulletsRequest (..),
    newCreateParagraphBulletsRequest,

    -- * CropProperties
    CropProperties (..),
    newCropProperties,

    -- * CropPropertiesSuggestionState
    CropPropertiesSuggestionState (..),
    newCropPropertiesSuggestionState,

    -- * DeleteContentRangeRequest
    DeleteContentRangeRequest (..),
    newDeleteContentRangeRequest,

    -- * DeleteFooterRequest
    DeleteFooterRequest (..),
    newDeleteFooterRequest,

    -- * DeleteHeaderRequest
    DeleteHeaderRequest (..),
    newDeleteHeaderRequest,

    -- * DeleteNamedRangeRequest
    DeleteNamedRangeRequest (..),
    newDeleteNamedRangeRequest,

    -- * DeleteParagraphBulletsRequest
    DeleteParagraphBulletsRequest (..),
    newDeleteParagraphBulletsRequest,

    -- * DeletePositionedObjectRequest
    DeletePositionedObjectRequest (..),
    newDeletePositionedObjectRequest,

    -- * DeleteTableColumnRequest
    DeleteTableColumnRequest (..),
    newDeleteTableColumnRequest,

    -- * DeleteTableRowRequest
    DeleteTableRowRequest (..),
    newDeleteTableRowRequest,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * Document
    Document (..),
    newDocument,

    -- * Document_Footers
    Document_Footers (..),
    newDocument_Footers,

    -- * Document_Footnotes
    Document_Footnotes (..),
    newDocument_Footnotes,

    -- * Document_Headers
    Document_Headers (..),
    newDocument_Headers,

    -- * Document_InlineObjects
    Document_InlineObjects (..),
    newDocument_InlineObjects,

    -- * Document_Lists
    Document_Lists (..),
    newDocument_Lists,

    -- * Document_NamedRanges
    Document_NamedRanges (..),
    newDocument_NamedRanges,

    -- * Document_PositionedObjects
    Document_PositionedObjects (..),
    newDocument_PositionedObjects,

    -- * Document_SuggestedDocumentStyleChanges
    Document_SuggestedDocumentStyleChanges (..),
    newDocument_SuggestedDocumentStyleChanges,

    -- * Document_SuggestedNamedStylesChanges
    Document_SuggestedNamedStylesChanges (..),
    newDocument_SuggestedNamedStylesChanges,

    -- * DocumentStyle
    DocumentStyle (..),
    newDocumentStyle,

    -- * DocumentStyleSuggestionState
    DocumentStyleSuggestionState (..),
    newDocumentStyleSuggestionState,

    -- * DocumentTab
    DocumentTab (..),
    newDocumentTab,

    -- * DocumentTab_Footers
    DocumentTab_Footers (..),
    newDocumentTab_Footers,

    -- * DocumentTab_Footnotes
    DocumentTab_Footnotes (..),
    newDocumentTab_Footnotes,

    -- * DocumentTab_Headers
    DocumentTab_Headers (..),
    newDocumentTab_Headers,

    -- * DocumentTab_InlineObjects
    DocumentTab_InlineObjects (..),
    newDocumentTab_InlineObjects,

    -- * DocumentTab_Lists
    DocumentTab_Lists (..),
    newDocumentTab_Lists,

    -- * DocumentTab_NamedRanges
    DocumentTab_NamedRanges (..),
    newDocumentTab_NamedRanges,

    -- * DocumentTab_PositionedObjects
    DocumentTab_PositionedObjects (..),
    newDocumentTab_PositionedObjects,

    -- * DocumentTab_SuggestedDocumentStyleChanges
    DocumentTab_SuggestedDocumentStyleChanges (..),
    newDocumentTab_SuggestedDocumentStyleChanges,

    -- * DocumentTab_SuggestedNamedStylesChanges
    DocumentTab_SuggestedNamedStylesChanges (..),
    newDocumentTab_SuggestedNamedStylesChanges,

    -- * EmbeddedDrawingProperties
    EmbeddedDrawingProperties (..),
    newEmbeddedDrawingProperties,

    -- * EmbeddedDrawingPropertiesSuggestionState
    EmbeddedDrawingPropertiesSuggestionState (..),
    newEmbeddedDrawingPropertiesSuggestionState,

    -- * EmbeddedObject
    EmbeddedObject (..),
    newEmbeddedObject,

    -- * EmbeddedObjectBorder
    EmbeddedObjectBorder (..),
    newEmbeddedObjectBorder,

    -- * EmbeddedObjectBorderSuggestionState
    EmbeddedObjectBorderSuggestionState (..),
    newEmbeddedObjectBorderSuggestionState,

    -- * EmbeddedObjectSuggestionState
    EmbeddedObjectSuggestionState (..),
    newEmbeddedObjectSuggestionState,

    -- * EndOfSegmentLocation
    EndOfSegmentLocation (..),
    newEndOfSegmentLocation,

    -- * Equation
    Equation (..),
    newEquation,

    -- * Footer
    Footer (..),
    newFooter,

    -- * Footnote
    Footnote (..),
    newFootnote,

    -- * FootnoteReference
    FootnoteReference (..),
    newFootnoteReference,

    -- * FootnoteReference_SuggestedTextStyleChanges
    FootnoteReference_SuggestedTextStyleChanges (..),
    newFootnoteReference_SuggestedTextStyleChanges,

    -- * Header
    Header (..),
    newHeader,

    -- * HeadingLink
    HeadingLink (..),
    newHeadingLink,

    -- * HorizontalRule
    HorizontalRule (..),
    newHorizontalRule,

    -- * HorizontalRule_SuggestedTextStyleChanges
    HorizontalRule_SuggestedTextStyleChanges (..),
    newHorizontalRule_SuggestedTextStyleChanges,

    -- * ImageProperties
    ImageProperties (..),
    newImageProperties,

    -- * ImagePropertiesSuggestionState
    ImagePropertiesSuggestionState (..),
    newImagePropertiesSuggestionState,

    -- * InlineObject
    InlineObject (..),
    newInlineObject,

    -- * InlineObject_SuggestedInlineObjectPropertiesChanges
    InlineObject_SuggestedInlineObjectPropertiesChanges (..),
    newInlineObject_SuggestedInlineObjectPropertiesChanges,

    -- * InlineObjectElement
    InlineObjectElement (..),
    newInlineObjectElement,

    -- * InlineObjectElement_SuggestedTextStyleChanges
    InlineObjectElement_SuggestedTextStyleChanges (..),
    newInlineObjectElement_SuggestedTextStyleChanges,

    -- * InlineObjectProperties
    InlineObjectProperties (..),
    newInlineObjectProperties,

    -- * InlineObjectPropertiesSuggestionState
    InlineObjectPropertiesSuggestionState (..),
    newInlineObjectPropertiesSuggestionState,

    -- * InsertInlineImageRequest
    InsertInlineImageRequest (..),
    newInsertInlineImageRequest,

    -- * InsertInlineImageResponse
    InsertInlineImageResponse (..),
    newInsertInlineImageResponse,

    -- * InsertInlineSheetsChartResponse
    InsertInlineSheetsChartResponse (..),
    newInsertInlineSheetsChartResponse,

    -- * InsertPageBreakRequest
    InsertPageBreakRequest (..),
    newInsertPageBreakRequest,

    -- * InsertSectionBreakRequest
    InsertSectionBreakRequest (..),
    newInsertSectionBreakRequest,

    -- * InsertTableColumnRequest
    InsertTableColumnRequest (..),
    newInsertTableColumnRequest,

    -- * InsertTableRequest
    InsertTableRequest (..),
    newInsertTableRequest,

    -- * InsertTableRowRequest
    InsertTableRowRequest (..),
    newInsertTableRowRequest,

    -- * InsertTextRequest
    InsertTextRequest (..),
    newInsertTextRequest,

    -- * Link
    Link (..),
    newLink,

    -- * LinkedContentReference
    LinkedContentReference (..),
    newLinkedContentReference,

    -- * LinkedContentReferenceSuggestionState
    LinkedContentReferenceSuggestionState (..),
    newLinkedContentReferenceSuggestionState,

    -- * List
    List (..),
    newList,

    -- * List_SuggestedListPropertiesChanges
    List_SuggestedListPropertiesChanges (..),
    newList_SuggestedListPropertiesChanges,

    -- * ListProperties
    ListProperties (..),
    newListProperties,

    -- * ListPropertiesSuggestionState
    ListPropertiesSuggestionState (..),
    newListPropertiesSuggestionState,

    -- * Location
    Location (..),
    newLocation,

    -- * MergeTableCellsRequest
    MergeTableCellsRequest (..),
    newMergeTableCellsRequest,

    -- * NamedRange
    NamedRange (..),
    newNamedRange,

    -- * NamedRanges
    NamedRanges (..),
    newNamedRanges,

    -- * NamedStyle
    NamedStyle (..),
    newNamedStyle,

    -- * NamedStyleSuggestionState
    NamedStyleSuggestionState (..),
    newNamedStyleSuggestionState,

    -- * NamedStyles
    NamedStyles (..),
    newNamedStyles,

    -- * NamedStylesSuggestionState
    NamedStylesSuggestionState (..),
    newNamedStylesSuggestionState,

    -- * NestingLevel
    NestingLevel (..),
    newNestingLevel,

    -- * NestingLevelSuggestionState
    NestingLevelSuggestionState (..),
    newNestingLevelSuggestionState,

    -- * ObjectReferences
    ObjectReferences (..),
    newObjectReferences,

    -- * OptionalColor
    OptionalColor (..),
    newOptionalColor,

    -- * PageBreak
    PageBreak (..),
    newPageBreak,

    -- * PageBreak_SuggestedTextStyleChanges
    PageBreak_SuggestedTextStyleChanges (..),
    newPageBreak_SuggestedTextStyleChanges,

    -- * Paragraph
    Paragraph (..),
    newParagraph,

    -- * Paragraph_SuggestedBulletChanges
    Paragraph_SuggestedBulletChanges (..),
    newParagraph_SuggestedBulletChanges,

    -- * Paragraph_SuggestedParagraphStyleChanges
    Paragraph_SuggestedParagraphStyleChanges (..),
    newParagraph_SuggestedParagraphStyleChanges,

    -- * Paragraph_SuggestedPositionedObjectIds
    Paragraph_SuggestedPositionedObjectIds (..),
    newParagraph_SuggestedPositionedObjectIds,

    -- * ParagraphBorder
    ParagraphBorder (..),
    newParagraphBorder,

    -- * ParagraphElement
    ParagraphElement (..),
    newParagraphElement,

    -- * ParagraphStyle
    ParagraphStyle (..),
    newParagraphStyle,

    -- * ParagraphStyleSuggestionState
    ParagraphStyleSuggestionState (..),
    newParagraphStyleSuggestionState,

    -- * Person
    Person (..),
    newPerson,

    -- * Person_SuggestedTextStyleChanges
    Person_SuggestedTextStyleChanges (..),
    newPerson_SuggestedTextStyleChanges,

    -- * PersonProperties
    PersonProperties (..),
    newPersonProperties,

    -- * PinTableHeaderRowsRequest
    PinTableHeaderRowsRequest (..),
    newPinTableHeaderRowsRequest,

    -- * PositionedObject
    PositionedObject (..),
    newPositionedObject,

    -- * PositionedObject_SuggestedPositionedObjectPropertiesChanges
    PositionedObject_SuggestedPositionedObjectPropertiesChanges (..),
    newPositionedObject_SuggestedPositionedObjectPropertiesChanges,

    -- * PositionedObjectPositioning
    PositionedObjectPositioning (..),
    newPositionedObjectPositioning,

    -- * PositionedObjectPositioningSuggestionState
    PositionedObjectPositioningSuggestionState (..),
    newPositionedObjectPositioningSuggestionState,

    -- * PositionedObjectProperties
    PositionedObjectProperties (..),
    newPositionedObjectProperties,

    -- * PositionedObjectPropertiesSuggestionState
    PositionedObjectPropertiesSuggestionState (..),
    newPositionedObjectPropertiesSuggestionState,

    -- * Range
    Range (..),
    newRange,

    -- * ReplaceAllTextRequest
    ReplaceAllTextRequest (..),
    newReplaceAllTextRequest,

    -- * ReplaceAllTextResponse
    ReplaceAllTextResponse (..),
    newReplaceAllTextResponse,

    -- * ReplaceImageRequest
    ReplaceImageRequest (..),
    newReplaceImageRequest,

    -- * ReplaceNamedRangeContentRequest
    ReplaceNamedRangeContentRequest (..),
    newReplaceNamedRangeContentRequest,

    -- * Request'
    Request' (..),
    newRequest,

    -- * Response
    Response (..),
    newResponse,

    -- * RgbColor
    RgbColor (..),
    newRgbColor,

    -- * RichLink
    RichLink (..),
    newRichLink,

    -- * RichLink_SuggestedTextStyleChanges
    RichLink_SuggestedTextStyleChanges (..),
    newRichLink_SuggestedTextStyleChanges,

    -- * RichLinkProperties
    RichLinkProperties (..),
    newRichLinkProperties,

    -- * SectionBreak
    SectionBreak (..),
    newSectionBreak,

    -- * SectionColumnProperties
    SectionColumnProperties (..),
    newSectionColumnProperties,

    -- * SectionStyle
    SectionStyle (..),
    newSectionStyle,

    -- * Shading
    Shading (..),
    newShading,

    -- * ShadingSuggestionState
    ShadingSuggestionState (..),
    newShadingSuggestionState,

    -- * SheetsChartReference
    SheetsChartReference (..),
    newSheetsChartReference,

    -- * SheetsChartReferenceSuggestionState
    SheetsChartReferenceSuggestionState (..),
    newSheetsChartReferenceSuggestionState,

    -- * Size
    Size (..),
    newSize,

    -- * SizeSuggestionState
    SizeSuggestionState (..),
    newSizeSuggestionState,

    -- * StructuralElement
    StructuralElement (..),
    newStructuralElement,

    -- * SubstringMatchCriteria
    SubstringMatchCriteria (..),
    newSubstringMatchCriteria,

    -- * SuggestedBullet
    SuggestedBullet (..),
    newSuggestedBullet,

    -- * SuggestedDocumentStyle
    SuggestedDocumentStyle (..),
    newSuggestedDocumentStyle,

    -- * SuggestedInlineObjectProperties
    SuggestedInlineObjectProperties (..),
    newSuggestedInlineObjectProperties,

    -- * SuggestedListProperties
    SuggestedListProperties (..),
    newSuggestedListProperties,

    -- * SuggestedNamedStyles
    SuggestedNamedStyles (..),
    newSuggestedNamedStyles,

    -- * SuggestedParagraphStyle
    SuggestedParagraphStyle (..),
    newSuggestedParagraphStyle,

    -- * SuggestedPositionedObjectProperties
    SuggestedPositionedObjectProperties (..),
    newSuggestedPositionedObjectProperties,

    -- * SuggestedTableCellStyle
    SuggestedTableCellStyle (..),
    newSuggestedTableCellStyle,

    -- * SuggestedTableRowStyle
    SuggestedTableRowStyle (..),
    newSuggestedTableRowStyle,

    -- * SuggestedTextStyle
    SuggestedTextStyle (..),
    newSuggestedTextStyle,

    -- * Tab
    Tab (..),
    newTab,

    -- * TabProperties
    TabProperties (..),
    newTabProperties,

    -- * TabStop
    TabStop (..),
    newTabStop,

    -- * Table
    Table (..),
    newTable,

    -- * TableCell
    TableCell (..),
    newTableCell,

    -- * TableCell_SuggestedTableCellStyleChanges
    TableCell_SuggestedTableCellStyleChanges (..),
    newTableCell_SuggestedTableCellStyleChanges,

    -- * TableCellBorder
    TableCellBorder (..),
    newTableCellBorder,

    -- * TableCellLocation
    TableCellLocation (..),
    newTableCellLocation,

    -- * TableCellStyle
    TableCellStyle (..),
    newTableCellStyle,

    -- * TableCellStyleSuggestionState
    TableCellStyleSuggestionState (..),
    newTableCellStyleSuggestionState,

    -- * TableColumnProperties
    TableColumnProperties (..),
    newTableColumnProperties,

    -- * TableOfContents
    TableOfContents (..),
    newTableOfContents,

    -- * TableRange
    TableRange (..),
    newTableRange,

    -- * TableRow
    TableRow (..),
    newTableRow,

    -- * TableRow_SuggestedTableRowStyleChanges
    TableRow_SuggestedTableRowStyleChanges (..),
    newTableRow_SuggestedTableRowStyleChanges,

    -- * TableRowStyle
    TableRowStyle (..),
    newTableRowStyle,

    -- * TableRowStyleSuggestionState
    TableRowStyleSuggestionState (..),
    newTableRowStyleSuggestionState,

    -- * TableStyle
    TableStyle (..),
    newTableStyle,

    -- * TabsCriteria
    TabsCriteria (..),
    newTabsCriteria,

    -- * TextRun
    TextRun (..),
    newTextRun,

    -- * TextRun_SuggestedTextStyleChanges
    TextRun_SuggestedTextStyleChanges (..),
    newTextRun_SuggestedTextStyleChanges,

    -- * TextStyle
    TextStyle (..),
    newTextStyle,

    -- * TextStyleSuggestionState
    TextStyleSuggestionState (..),
    newTextStyleSuggestionState,

    -- * UnmergeTableCellsRequest
    UnmergeTableCellsRequest (..),
    newUnmergeTableCellsRequest,

    -- * UpdateDocumentStyleRequest
    UpdateDocumentStyleRequest (..),
    newUpdateDocumentStyleRequest,

    -- * UpdateParagraphStyleRequest
    UpdateParagraphStyleRequest (..),
    newUpdateParagraphStyleRequest,

    -- * UpdateSectionStyleRequest
    UpdateSectionStyleRequest (..),
    newUpdateSectionStyleRequest,

    -- * UpdateTableCellStyleRequest
    UpdateTableCellStyleRequest (..),
    newUpdateTableCellStyleRequest,

    -- * UpdateTableColumnPropertiesRequest
    UpdateTableColumnPropertiesRequest (..),
    newUpdateTableColumnPropertiesRequest,

    -- * UpdateTableRowStyleRequest
    UpdateTableRowStyleRequest (..),
    newUpdateTableRowStyleRequest,

    -- * UpdateTextStyleRequest
    UpdateTextStyleRequest (..),
    newUpdateTextStyleRequest,

    -- * WeightedFontFamily
    WeightedFontFamily (..),
    newWeightedFontFamily,

    -- * WriteControl
    WriteControl (..),
    newWriteControl,
  )
where

import Gogol.Docs.Internal.Sum
import Gogol.Prelude qualified as Core

-- | A ParagraphElement representing a spot in the text that\'s dynamically replaced with content that can change over time, like a page number.
--
-- /See:/ 'newAutoText' smart constructor.
data AutoText = AutoText
  { -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. An AutoText may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this AutoText, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe AutoText_SuggestedTextStyleChanges),
    -- | The text style of this AutoText.
    textStyle :: (Core.Maybe TextStyle),
    -- | The type of this auto text.
    type' :: (Core.Maybe AutoText_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoText' with the minimum fields required to make a request.
newAutoText ::
  AutoText
newAutoText =
  AutoText
    { suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON AutoText where
  parseJSON =
    Core.withObject
      "AutoText"
      ( \o ->
          AutoText
            Core.<$> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AutoText where
  toJSON AutoText {..} =
    Core.object
      ( Core.catMaybes
          [ ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The suggested text style changes to this AutoText, keyed by suggestion ID.
--
-- /See:/ 'newAutoText_SuggestedTextStyleChanges' smart constructor.
newtype AutoText_SuggestedTextStyleChanges = AutoText_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoText_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newAutoText_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  AutoText_SuggestedTextStyleChanges
newAutoText_SuggestedTextStyleChanges additional =
  AutoText_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON AutoText_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "AutoText_SuggestedTextStyleChanges"
      ( \o ->
          AutoText_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON AutoText_SuggestedTextStyleChanges where
  toJSON AutoText_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Represents the background of a document.
--
-- /See:/ 'newBackground' smart constructor.
newtype Background = Background
  { -- | The background color.
    color :: (Core.Maybe OptionalColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Background' with the minimum fields required to make a request.
newBackground ::
  Background
newBackground = Background {color = Core.Nothing}

instance Core.FromJSON Background where
  parseJSON =
    Core.withObject
      "Background"
      (\o -> Background Core.<$> (o Core..:? "color"))

instance Core.ToJSON Background where
  toJSON Background {..} =
    Core.object (Core.catMaybes [("color" Core..=) Core.<$> color])

-- | A mask that indicates which of the fields on the base Background have been changed in this suggestion. For any field set to true, the Backgound has a new suggested value.
--
-- /See:/ 'newBackgroundSuggestionState' smart constructor.
newtype BackgroundSuggestionState = BackgroundSuggestionState
  { -- | Indicates whether the current background color has been modified in this suggestion.
    backgroundColorSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BackgroundSuggestionState' with the minimum fields required to make a request.
newBackgroundSuggestionState ::
  BackgroundSuggestionState
newBackgroundSuggestionState =
  BackgroundSuggestionState
    { backgroundColorSuggested =
        Core.Nothing
    }

instance Core.FromJSON BackgroundSuggestionState where
  parseJSON =
    Core.withObject
      "BackgroundSuggestionState"
      ( \o ->
          BackgroundSuggestionState
            Core.<$> (o Core..:? "backgroundColorSuggested")
      )

instance Core.ToJSON BackgroundSuggestionState where
  toJSON BackgroundSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColorSuggested" Core..=)
              Core.<$> backgroundColorSuggested
          ]
      )

-- | Request message for BatchUpdateDocument.
--
-- /See:/ 'newBatchUpdateDocumentRequest' smart constructor.
data BatchUpdateDocumentRequest = BatchUpdateDocumentRequest
  { -- | A list of updates to apply to the document.
    requests :: (Core.Maybe [Request']),
    -- | Provides control over how write requests are executed.
    writeControl :: (Core.Maybe WriteControl)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateDocumentRequest' with the minimum fields required to make a request.
newBatchUpdateDocumentRequest ::
  BatchUpdateDocumentRequest
newBatchUpdateDocumentRequest =
  BatchUpdateDocumentRequest
    { requests = Core.Nothing,
      writeControl = Core.Nothing
    }

instance Core.FromJSON BatchUpdateDocumentRequest where
  parseJSON =
    Core.withObject
      "BatchUpdateDocumentRequest"
      ( \o ->
          BatchUpdateDocumentRequest
            Core.<$> (o Core..:? "requests")
            Core.<*> (o Core..:? "writeControl")
      )

instance Core.ToJSON BatchUpdateDocumentRequest where
  toJSON BatchUpdateDocumentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("requests" Core..=) Core.<$> requests,
            ("writeControl" Core..=) Core.<$> writeControl
          ]
      )

-- | Response message from a BatchUpdateDocument request.
--
-- /See:/ 'newBatchUpdateDocumentResponse' smart constructor.
data BatchUpdateDocumentResponse = BatchUpdateDocumentResponse
  { -- | The ID of the document to which the updates were applied to.
    documentId :: (Core.Maybe Core.Text),
    -- | The reply of the updates. This maps 1:1 with the updates, although replies to some requests may be empty.
    replies :: (Core.Maybe [Response]),
    -- | The updated write control after applying the request.
    writeControl :: (Core.Maybe WriteControl)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdateDocumentResponse' with the minimum fields required to make a request.
newBatchUpdateDocumentResponse ::
  BatchUpdateDocumentResponse
newBatchUpdateDocumentResponse =
  BatchUpdateDocumentResponse
    { documentId = Core.Nothing,
      replies = Core.Nothing,
      writeControl = Core.Nothing
    }

instance Core.FromJSON BatchUpdateDocumentResponse where
  parseJSON =
    Core.withObject
      "BatchUpdateDocumentResponse"
      ( \o ->
          BatchUpdateDocumentResponse
            Core.<$> (o Core..:? "documentId")
            Core.<*> (o Core..:? "replies")
            Core.<*> (o Core..:? "writeControl")
      )

instance Core.ToJSON BatchUpdateDocumentResponse where
  toJSON BatchUpdateDocumentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentId" Core..=) Core.<$> documentId,
            ("replies" Core..=) Core.<$> replies,
            ("writeControl" Core..=) Core.<$> writeControl
          ]
      )

-- | The document body. The body typically contains the full document contents except for headers, footers, and footnotes.
--
-- /See:/ 'newBody' smart constructor.
newtype Body = Body
  { -- | The contents of the body. The indexes for the body\'s content begin at zero.
    content :: (Core.Maybe [StructuralElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Body' with the minimum fields required to make a request.
newBody ::
  Body
newBody = Body {content = Core.Nothing}

instance Core.FromJSON Body where
  parseJSON =
    Core.withObject
      "Body"
      (\o -> Body Core.<$> (o Core..:? "content"))

instance Core.ToJSON Body where
  toJSON Body {..} =
    Core.object
      (Core.catMaybes [("content" Core..=) Core.<$> content])

-- | A reference to a bookmark in this document.
--
-- /See:/ 'newBookmarkLink' smart constructor.
data BookmarkLink = BookmarkLink
  { -- | The ID of a bookmark in this document.
    id :: (Core.Maybe Core.Text),
    -- | The ID of the tab containing this bookmark.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BookmarkLink' with the minimum fields required to make a request.
newBookmarkLink ::
  BookmarkLink
newBookmarkLink =
  BookmarkLink {id = Core.Nothing, tabId = Core.Nothing}

instance Core.FromJSON BookmarkLink where
  parseJSON =
    Core.withObject
      "BookmarkLink"
      ( \o ->
          BookmarkLink
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON BookmarkLink where
  toJSON BookmarkLink {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("tabId" Core..=) Core.<$> tabId]
      )

-- | Describes the bullet of a paragraph.
--
-- /See:/ 'newBullet' smart constructor.
data Bullet = Bullet
  { -- | The ID of the list this paragraph belongs to.
    listId :: (Core.Maybe Core.Text),
    -- | The nesting level of this paragraph in the list.
    nestingLevel :: (Core.Maybe Core.Int32),
    -- | The paragraph-specific text style applied to this bullet.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bullet' with the minimum fields required to make a request.
newBullet ::
  Bullet
newBullet =
  Bullet
    { listId = Core.Nothing,
      nestingLevel = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON Bullet where
  parseJSON =
    Core.withObject
      "Bullet"
      ( \o ->
          Bullet
            Core.<$> (o Core..:? "listId")
            Core.<*> (o Core..:? "nestingLevel")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON Bullet where
  toJSON Bullet {..} =
    Core.object
      ( Core.catMaybes
          [ ("listId" Core..=) Core.<$> listId,
            ("nestingLevel" Core..=) Core.<$> nestingLevel,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | A mask that indicates which of the fields on the base Bullet have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newBulletSuggestionState' smart constructor.
data BulletSuggestionState = BulletSuggestionState
  { -- | Indicates if there was a suggested change to the list_id.
    listIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to the nesting_level.
    nestingLevelSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in text style have been changed in this suggestion.
    textStyleSuggestionState :: (Core.Maybe TextStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BulletSuggestionState' with the minimum fields required to make a request.
newBulletSuggestionState ::
  BulletSuggestionState
newBulletSuggestionState =
  BulletSuggestionState
    { listIdSuggested = Core.Nothing,
      nestingLevelSuggested = Core.Nothing,
      textStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON BulletSuggestionState where
  parseJSON =
    Core.withObject
      "BulletSuggestionState"
      ( \o ->
          BulletSuggestionState
            Core.<$> (o Core..:? "listIdSuggested")
            Core.<*> (o Core..:? "nestingLevelSuggested")
            Core.<*> (o Core..:? "textStyleSuggestionState")
      )

instance Core.ToJSON BulletSuggestionState where
  toJSON BulletSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("listIdSuggested" Core..=) Core.<$> listIdSuggested,
            ("nestingLevelSuggested" Core..=) Core.<$> nestingLevelSuggested,
            ("textStyleSuggestionState" Core..=)
              Core.<$> textStyleSuggestionState
          ]
      )

-- | A solid color.
--
-- /See:/ 'newColor' smart constructor.
newtype Color = Color
  { -- | The RGB color value.
    rgbColor :: (Core.Maybe RgbColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor ::
  Color
newColor = Color {rgbColor = Core.Nothing}

instance Core.FromJSON Color where
  parseJSON =
    Core.withObject
      "Color"
      (\o -> Color Core.<$> (o Core..:? "rgbColor"))

instance Core.ToJSON Color where
  toJSON Color {..} =
    Core.object
      (Core.catMaybes [("rgbColor" Core..=) Core.<$> rgbColor])

-- | A ParagraphElement representing a column break. A column break makes the subsequent text start at the top of the next column.
--
-- /See:/ 'newColumnBreak' smart constructor.
data ColumnBreak = ColumnBreak
  { -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A ColumnBreak may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this ColumnBreak, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe ColumnBreak_SuggestedTextStyleChanges),
    -- | The text style of this ColumnBreak. Similar to text content, like text runs and footnote references, the text style of a column break can affect content layout as well as the styling of text inserted next to it.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnBreak' with the minimum fields required to make a request.
newColumnBreak ::
  ColumnBreak
newColumnBreak =
  ColumnBreak
    { suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON ColumnBreak where
  parseJSON =
    Core.withObject
      "ColumnBreak"
      ( \o ->
          ColumnBreak
            Core.<$> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON ColumnBreak where
  toJSON ColumnBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this ColumnBreak, keyed by suggestion ID.
--
-- /See:/ 'newColumnBreak_SuggestedTextStyleChanges' smart constructor.
newtype ColumnBreak_SuggestedTextStyleChanges = ColumnBreak_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnBreak_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newColumnBreak_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  ColumnBreak_SuggestedTextStyleChanges
newColumnBreak_SuggestedTextStyleChanges additional =
  ColumnBreak_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON ColumnBreak_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "ColumnBreak_SuggestedTextStyleChanges"
      ( \o ->
          ColumnBreak_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON ColumnBreak_SuggestedTextStyleChanges where
  toJSON ColumnBreak_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Creates a Footer. The new footer is applied to the SectionStyle at the location of the SectionBreak if specified, otherwise it is applied to the DocumentStyle. If a footer of the specified type already exists, a 400 bad request error is returned.
--
-- /See:/ 'newCreateFooterRequest' smart constructor.
data CreateFooterRequest = CreateFooterRequest
  { -- | The location of the SectionBreak immediately preceding the section whose SectionStyle this footer should belong to. If this is unset or refers to the first section break in the document, the footer applies to the document style.
    sectionBreakLocation :: (Core.Maybe Location),
    -- | The type of footer to create.
    type' :: (Core.Maybe CreateFooterRequest_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateFooterRequest' with the minimum fields required to make a request.
newCreateFooterRequest ::
  CreateFooterRequest
newCreateFooterRequest =
  CreateFooterRequest
    { sectionBreakLocation = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON CreateFooterRequest where
  parseJSON =
    Core.withObject
      "CreateFooterRequest"
      ( \o ->
          CreateFooterRequest
            Core.<$> (o Core..:? "sectionBreakLocation")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CreateFooterRequest where
  toJSON CreateFooterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("sectionBreakLocation" Core..=) Core.<$> sectionBreakLocation,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The result of creating a footer.
--
-- /See:/ 'newCreateFooterResponse' smart constructor.
newtype CreateFooterResponse = CreateFooterResponse
  { -- | The ID of the created footer.
    footerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateFooterResponse' with the minimum fields required to make a request.
newCreateFooterResponse ::
  CreateFooterResponse
newCreateFooterResponse =
  CreateFooterResponse {footerId = Core.Nothing}

instance Core.FromJSON CreateFooterResponse where
  parseJSON =
    Core.withObject
      "CreateFooterResponse"
      (\o -> CreateFooterResponse Core.<$> (o Core..:? "footerId"))

instance Core.ToJSON CreateFooterResponse where
  toJSON CreateFooterResponse {..} =
    Core.object
      (Core.catMaybes [("footerId" Core..=) Core.<$> footerId])

-- | Creates a Footnote segment and inserts a new FootnoteReference to it at the given location. The new Footnote segment will contain a space followed by a newline character.
--
-- /See:/ 'newCreateFootnoteRequest' smart constructor.
data CreateFootnoteRequest = CreateFootnoteRequest
  { -- | Inserts the footnote reference at the end of the document body. Footnote references cannot be inserted inside a header, footer or footnote. Since footnote references can only be inserted in the body, the segment ID field must be empty.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts the footnote reference at a specific index in the document. The footnote reference must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table\'s start index (i.e. between the table and its preceding paragraph). Footnote references cannot be inserted inside an equation, header, footer or footnote. Since footnote references can only be inserted in the body, the segment ID field must be empty.
    location :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateFootnoteRequest' with the minimum fields required to make a request.
newCreateFootnoteRequest ::
  CreateFootnoteRequest
newCreateFootnoteRequest =
  CreateFootnoteRequest
    { endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing
    }

instance Core.FromJSON CreateFootnoteRequest where
  parseJSON =
    Core.withObject
      "CreateFootnoteRequest"
      ( \o ->
          CreateFootnoteRequest
            Core.<$> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
      )

instance Core.ToJSON CreateFootnoteRequest where
  toJSON CreateFootnoteRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location
          ]
      )

-- | The result of creating a footnote.
--
-- /See:/ 'newCreateFootnoteResponse' smart constructor.
newtype CreateFootnoteResponse = CreateFootnoteResponse
  { -- | The ID of the created footnote.
    footnoteId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateFootnoteResponse' with the minimum fields required to make a request.
newCreateFootnoteResponse ::
  CreateFootnoteResponse
newCreateFootnoteResponse =
  CreateFootnoteResponse {footnoteId = Core.Nothing}

instance Core.FromJSON CreateFootnoteResponse where
  parseJSON =
    Core.withObject
      "CreateFootnoteResponse"
      (\o -> CreateFootnoteResponse Core.<$> (o Core..:? "footnoteId"))

instance Core.ToJSON CreateFootnoteResponse where
  toJSON CreateFootnoteResponse {..} =
    Core.object
      (Core.catMaybes [("footnoteId" Core..=) Core.<$> footnoteId])

-- | Creates a Header. The new header is applied to the SectionStyle at the location of the SectionBreak if specified, otherwise it is applied to the DocumentStyle. If a header of the specified type already exists, a 400 bad request error is returned.
--
-- /See:/ 'newCreateHeaderRequest' smart constructor.
data CreateHeaderRequest = CreateHeaderRequest
  { -- | The location of the SectionBreak which begins the section this header should belong to. If \`section/break/location\' is unset or if it refers to the first section break in the document body, the header applies to the DocumentStyle
    sectionBreakLocation :: (Core.Maybe Location),
    -- | The type of header to create.
    type' :: (Core.Maybe CreateHeaderRequest_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateHeaderRequest' with the minimum fields required to make a request.
newCreateHeaderRequest ::
  CreateHeaderRequest
newCreateHeaderRequest =
  CreateHeaderRequest
    { sectionBreakLocation = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON CreateHeaderRequest where
  parseJSON =
    Core.withObject
      "CreateHeaderRequest"
      ( \o ->
          CreateHeaderRequest
            Core.<$> (o Core..:? "sectionBreakLocation")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON CreateHeaderRequest where
  toJSON CreateHeaderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("sectionBreakLocation" Core..=) Core.<$> sectionBreakLocation,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The result of creating a header.
--
-- /See:/ 'newCreateHeaderResponse' smart constructor.
newtype CreateHeaderResponse = CreateHeaderResponse
  { -- | The ID of the created header.
    headerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateHeaderResponse' with the minimum fields required to make a request.
newCreateHeaderResponse ::
  CreateHeaderResponse
newCreateHeaderResponse =
  CreateHeaderResponse {headerId = Core.Nothing}

instance Core.FromJSON CreateHeaderResponse where
  parseJSON =
    Core.withObject
      "CreateHeaderResponse"
      (\o -> CreateHeaderResponse Core.<$> (o Core..:? "headerId"))

instance Core.ToJSON CreateHeaderResponse where
  toJSON CreateHeaderResponse {..} =
    Core.object
      (Core.catMaybes [("headerId" Core..=) Core.<$> headerId])

-- | Creates a NamedRange referencing the given range.
--
-- /See:/ 'newCreateNamedRangeRequest' smart constructor.
data CreateNamedRangeRequest = CreateNamedRangeRequest
  { -- | The name of the NamedRange. Names do not need to be unique. Names must be at least 1 character and no more than 256 characters, measured in UTF-16 code units.
    name :: (Core.Maybe Core.Text),
    -- | The range to apply the name to.
    range :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateNamedRangeRequest' with the minimum fields required to make a request.
newCreateNamedRangeRequest ::
  CreateNamedRangeRequest
newCreateNamedRangeRequest =
  CreateNamedRangeRequest
    { name = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON CreateNamedRangeRequest where
  parseJSON =
    Core.withObject
      "CreateNamedRangeRequest"
      ( \o ->
          CreateNamedRangeRequest
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON CreateNamedRangeRequest where
  toJSON CreateNamedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("range" Core..=) Core.<$> range]
      )

-- | The result of creating a named range.
--
-- /See:/ 'newCreateNamedRangeResponse' smart constructor.
newtype CreateNamedRangeResponse = CreateNamedRangeResponse
  { -- | The ID of the created named range.
    namedRangeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateNamedRangeResponse' with the minimum fields required to make a request.
newCreateNamedRangeResponse ::
  CreateNamedRangeResponse
newCreateNamedRangeResponse =
  CreateNamedRangeResponse {namedRangeId = Core.Nothing}

instance Core.FromJSON CreateNamedRangeResponse where
  parseJSON =
    Core.withObject
      "CreateNamedRangeResponse"
      ( \o ->
          CreateNamedRangeResponse Core.<$> (o Core..:? "namedRangeId")
      )

instance Core.ToJSON CreateNamedRangeResponse where
  toJSON CreateNamedRangeResponse {..} =
    Core.object
      (Core.catMaybes [("namedRangeId" Core..=) Core.<$> namedRangeId])

-- | Creates bullets for all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.
--
-- /See:/ 'newCreateParagraphBulletsRequest' smart constructor.
data CreateParagraphBulletsRequest = CreateParagraphBulletsRequest
  { -- | The kinds of bullet glyphs to be used.
    bulletPreset :: (Core.Maybe CreateParagraphBulletsRequest_BulletPreset),
    -- | The range to apply the bullet preset to.
    range :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateParagraphBulletsRequest' with the minimum fields required to make a request.
newCreateParagraphBulletsRequest ::
  CreateParagraphBulletsRequest
newCreateParagraphBulletsRequest =
  CreateParagraphBulletsRequest
    { bulletPreset = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON CreateParagraphBulletsRequest where
  parseJSON =
    Core.withObject
      "CreateParagraphBulletsRequest"
      ( \o ->
          CreateParagraphBulletsRequest
            Core.<$> (o Core..:? "bulletPreset")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON CreateParagraphBulletsRequest where
  toJSON CreateParagraphBulletsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletPreset" Core..=) Core.<$> bulletPreset,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | The crop properties of an image. The crop rectangle is represented using fractional offsets from the original content\'s 4 edges. - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the image\'s original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the image\'s original bounding rectangle. - If all offsets and rotation angles are 0, the image is not cropped.
--
-- /See:/ 'newCropProperties' smart constructor.
data CropProperties = CropProperties
  { -- | The clockwise rotation angle of the crop rectangle around its center, in radians. Rotation is applied after the offsets.
    angle :: (Core.Maybe Core.Double),
    -- | The offset specifies how far inwards the bottom edge of the crop rectangle is from the bottom edge of the original content as a fraction of the original content\'s height.
    offsetBottom :: (Core.Maybe Core.Double),
    -- | The offset specifies how far inwards the left edge of the crop rectangle is from the left edge of the original content as a fraction of the original content\'s width.
    offsetLeft :: (Core.Maybe Core.Double),
    -- | The offset specifies how far inwards the right edge of the crop rectangle is from the right edge of the original content as a fraction of the original content\'s width.
    offsetRight :: (Core.Maybe Core.Double),
    -- | The offset specifies how far inwards the top edge of the crop rectangle is from the top edge of the original content as a fraction of the original content\'s height.
    offsetTop :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CropProperties' with the minimum fields required to make a request.
newCropProperties ::
  CropProperties
newCropProperties =
  CropProperties
    { angle = Core.Nothing,
      offsetBottom = Core.Nothing,
      offsetLeft = Core.Nothing,
      offsetRight = Core.Nothing,
      offsetTop = Core.Nothing
    }

instance Core.FromJSON CropProperties where
  parseJSON =
    Core.withObject
      "CropProperties"
      ( \o ->
          CropProperties
            Core.<$> (o Core..:? "angle")
            Core.<*> (o Core..:? "offsetBottom")
            Core.<*> (o Core..:? "offsetLeft")
            Core.<*> (o Core..:? "offsetRight")
            Core.<*> (o Core..:? "offsetTop")
      )

instance Core.ToJSON CropProperties where
  toJSON CropProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("angle" Core..=) Core.<$> angle,
            ("offsetBottom" Core..=) Core.<$> offsetBottom,
            ("offsetLeft" Core..=) Core.<$> offsetLeft,
            ("offsetRight" Core..=) Core.<$> offsetRight,
            ("offsetTop" Core..=) Core.<$> offsetTop
          ]
      )

-- | A mask that indicates which of the fields on the base CropProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newCropPropertiesSuggestionState' smart constructor.
data CropPropertiesSuggestionState = CropPropertiesSuggestionState
  { -- | Indicates if there was a suggested change to angle.
    angleSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to offset_bottom.
    offsetBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to offset_left.
    offsetLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to offset_right.
    offsetRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to offset_top.
    offsetTopSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CropPropertiesSuggestionState' with the minimum fields required to make a request.
newCropPropertiesSuggestionState ::
  CropPropertiesSuggestionState
newCropPropertiesSuggestionState =
  CropPropertiesSuggestionState
    { angleSuggested = Core.Nothing,
      offsetBottomSuggested = Core.Nothing,
      offsetLeftSuggested = Core.Nothing,
      offsetRightSuggested = Core.Nothing,
      offsetTopSuggested = Core.Nothing
    }

instance Core.FromJSON CropPropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "CropPropertiesSuggestionState"
      ( \o ->
          CropPropertiesSuggestionState
            Core.<$> (o Core..:? "angleSuggested")
            Core.<*> (o Core..:? "offsetBottomSuggested")
            Core.<*> (o Core..:? "offsetLeftSuggested")
            Core.<*> (o Core..:? "offsetRightSuggested")
            Core.<*> (o Core..:? "offsetTopSuggested")
      )

instance Core.ToJSON CropPropertiesSuggestionState where
  toJSON CropPropertiesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("angleSuggested" Core..=) Core.<$> angleSuggested,
            ("offsetBottomSuggested" Core..=) Core.<$> offsetBottomSuggested,
            ("offsetLeftSuggested" Core..=) Core.<$> offsetLeftSuggested,
            ("offsetRightSuggested" Core..=) Core.<$> offsetRightSuggested,
            ("offsetTopSuggested" Core..=) Core.<$> offsetTopSuggested
          ]
      )

-- | Deletes content from the document.
--
-- /See:/ 'newDeleteContentRangeRequest' smart constructor.
newtype DeleteContentRangeRequest = DeleteContentRangeRequest
  { -- | The range of content to delete. Deleting text that crosses a paragraph boundary may result in changes to paragraph styles, lists, positioned objects and bookmarks as the two paragraphs are merged. Attempting to delete certain ranges can result in an invalid document structure in which case a 400 bad request error is returned. Some examples of invalid delete requests include: * Deleting one code unit of a surrogate pair. * Deleting the last newline character of a Body, Header, Footer, Footnote, TableCell or TableOfContents. * Deleting the start or end of a Table, TableOfContents or Equation without deleting the entire element. * Deleting the newline character before a Table, TableOfContents or SectionBreak without deleting the element. * Deleting individual rows or cells of a table. Deleting the content within a table cell is allowed.
    range :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteContentRangeRequest' with the minimum fields required to make a request.
newDeleteContentRangeRequest ::
  DeleteContentRangeRequest
newDeleteContentRangeRequest =
  DeleteContentRangeRequest {range = Core.Nothing}

instance Core.FromJSON DeleteContentRangeRequest where
  parseJSON =
    Core.withObject
      "DeleteContentRangeRequest"
      (\o -> DeleteContentRangeRequest Core.<$> (o Core..:? "range"))

instance Core.ToJSON DeleteContentRangeRequest where
  toJSON DeleteContentRangeRequest {..} =
    Core.object (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | Deletes a Footer from the document.
--
-- /See:/ 'newDeleteFooterRequest' smart constructor.
data DeleteFooterRequest = DeleteFooterRequest
  { -- | The id of the footer to delete. If this footer is defined on DocumentStyle, the reference to this footer is removed, resulting in no footer of that type for the first section of the document. If this footer is defined on a SectionStyle, the reference to this footer is removed and the footer of that type is now continued from the previous section.
    footerId :: (Core.Maybe Core.Text),
    -- | The tab that contains the footer to delete. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteFooterRequest' with the minimum fields required to make a request.
newDeleteFooterRequest ::
  DeleteFooterRequest
newDeleteFooterRequest =
  DeleteFooterRequest
    { footerId = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON DeleteFooterRequest where
  parseJSON =
    Core.withObject
      "DeleteFooterRequest"
      ( \o ->
          DeleteFooterRequest
            Core.<$> (o Core..:? "footerId")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON DeleteFooterRequest where
  toJSON DeleteFooterRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("footerId" Core..=) Core.<$> footerId,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Deletes a Header from the document.
--
-- /See:/ 'newDeleteHeaderRequest' smart constructor.
data DeleteHeaderRequest = DeleteHeaderRequest
  { -- | The id of the header to delete. If this header is defined on DocumentStyle, the reference to this header is removed, resulting in no header of that type for the first section of the document. If this header is defined on a SectionStyle, the reference to this header is removed and the header of that type is now continued from the previous section.
    headerId :: (Core.Maybe Core.Text),
    -- | The tab containing the header to delete. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteHeaderRequest' with the minimum fields required to make a request.
newDeleteHeaderRequest ::
  DeleteHeaderRequest
newDeleteHeaderRequest =
  DeleteHeaderRequest
    { headerId = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON DeleteHeaderRequest where
  parseJSON =
    Core.withObject
      "DeleteHeaderRequest"
      ( \o ->
          DeleteHeaderRequest
            Core.<$> (o Core..:? "headerId")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON DeleteHeaderRequest where
  toJSON DeleteHeaderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("headerId" Core..=) Core.<$> headerId,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Deletes a NamedRange.
--
-- /See:/ 'newDeleteNamedRangeRequest' smart constructor.
data DeleteNamedRangeRequest = DeleteNamedRangeRequest
  { -- | The name of the range(s) to delete. All named ranges with the given name will be deleted.
    name :: (Core.Maybe Core.Text),
    -- | The ID of the named range to delete.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | Optional. The criteria used to specify which tab(s) the range deletion should occur in. When omitted, the range deletion is applied to all tabs. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the range deletion applies to the singular tab. In a document containing multiple tabs: - If provided, the range deletion applies to the specified tabs. - If not provided, the range deletion applies to all tabs.
    tabsCriteria :: (Core.Maybe TabsCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteNamedRangeRequest' with the minimum fields required to make a request.
newDeleteNamedRangeRequest ::
  DeleteNamedRangeRequest
newDeleteNamedRangeRequest =
  DeleteNamedRangeRequest
    { name = Core.Nothing,
      namedRangeId = Core.Nothing,
      tabsCriteria = Core.Nothing
    }

instance Core.FromJSON DeleteNamedRangeRequest where
  parseJSON =
    Core.withObject
      "DeleteNamedRangeRequest"
      ( \o ->
          DeleteNamedRangeRequest
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "tabsCriteria")
      )

instance Core.ToJSON DeleteNamedRangeRequest where
  toJSON DeleteNamedRangeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("tabsCriteria" Core..=) Core.<$> tabsCriteria
          ]
      )

-- | Deletes bullets from all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.
--
-- /See:/ 'newDeleteParagraphBulletsRequest' smart constructor.
newtype DeleteParagraphBulletsRequest = DeleteParagraphBulletsRequest
  { -- | The range to delete bullets from.
    range :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteParagraphBulletsRequest' with the minimum fields required to make a request.
newDeleteParagraphBulletsRequest ::
  DeleteParagraphBulletsRequest
newDeleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest {range = Core.Nothing}

instance Core.FromJSON DeleteParagraphBulletsRequest where
  parseJSON =
    Core.withObject
      "DeleteParagraphBulletsRequest"
      ( \o ->
          DeleteParagraphBulletsRequest Core.<$> (o Core..:? "range")
      )

instance Core.ToJSON DeleteParagraphBulletsRequest where
  toJSON DeleteParagraphBulletsRequest {..} =
    Core.object (Core.catMaybes [("range" Core..=) Core.<$> range])

-- | Deletes a PositionedObject from the document.
--
-- /See:/ 'newDeletePositionedObjectRequest' smart constructor.
data DeletePositionedObjectRequest = DeletePositionedObjectRequest
  { -- | The ID of the positioned object to delete.
    objectId :: (Core.Maybe Core.Text),
    -- | The tab that the positioned object to delete is in. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeletePositionedObjectRequest' with the minimum fields required to make a request.
newDeletePositionedObjectRequest ::
  DeletePositionedObjectRequest
newDeletePositionedObjectRequest =
  DeletePositionedObjectRequest
    { objectId = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON DeletePositionedObjectRequest where
  parseJSON =
    Core.withObject
      "DeletePositionedObjectRequest"
      ( \o ->
          DeletePositionedObjectRequest
            Core.<$> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON DeletePositionedObjectRequest where
  toJSON DeletePositionedObjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectId" Core..=) Core.<$> objectId,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Deletes a column from a table.
--
-- /See:/ 'newDeleteTableColumnRequest' smart constructor.
newtype DeleteTableColumnRequest = DeleteTableColumnRequest
  { -- | The reference table cell location from which the column will be deleted. The column this cell spans will be deleted. If this is a merged cell that spans multiple columns, all columns that the cell spans will be deleted. If no columns remain in the table after this deletion, the whole table is deleted.
    tableCellLocation :: (Core.Maybe TableCellLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTableColumnRequest' with the minimum fields required to make a request.
newDeleteTableColumnRequest ::
  DeleteTableColumnRequest
newDeleteTableColumnRequest =
  DeleteTableColumnRequest {tableCellLocation = Core.Nothing}

instance Core.FromJSON DeleteTableColumnRequest where
  parseJSON =
    Core.withObject
      "DeleteTableColumnRequest"
      ( \o ->
          DeleteTableColumnRequest Core.<$> (o Core..:? "tableCellLocation")
      )

instance Core.ToJSON DeleteTableColumnRequest where
  toJSON DeleteTableColumnRequest {..} =
    Core.object
      ( Core.catMaybes
          [("tableCellLocation" Core..=) Core.<$> tableCellLocation]
      )

-- | Deletes a row from a table.
--
-- /See:/ 'newDeleteTableRowRequest' smart constructor.
newtype DeleteTableRowRequest = DeleteTableRowRequest
  { -- | The reference table cell location from which the row will be deleted. The row this cell spans will be deleted. If this is a merged cell that spans multiple rows, all rows that the cell spans will be deleted. If no rows remain in the table after this deletion, the whole table is deleted.
    tableCellLocation :: (Core.Maybe TableCellLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTableRowRequest' with the minimum fields required to make a request.
newDeleteTableRowRequest ::
  DeleteTableRowRequest
newDeleteTableRowRequest =
  DeleteTableRowRequest {tableCellLocation = Core.Nothing}

instance Core.FromJSON DeleteTableRowRequest where
  parseJSON =
    Core.withObject
      "DeleteTableRowRequest"
      ( \o ->
          DeleteTableRowRequest Core.<$> (o Core..:? "tableCellLocation")
      )

instance Core.ToJSON DeleteTableRowRequest where
  toJSON DeleteTableRowRequest {..} =
    Core.object
      ( Core.catMaybes
          [("tableCellLocation" Core..=) Core.<$> tableCellLocation]
      )

-- | A magnitude in a single direction in the specified units.
--
-- /See:/ 'newDimension' smart constructor.
data Dimension = Dimension
  { -- | The magnitude.
    magnitude :: (Core.Maybe Core.Double),
    -- | The units for magnitude.
    unit :: (Core.Maybe Dimension_Unit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
newDimension ::
  Dimension
newDimension =
  Dimension {magnitude = Core.Nothing, unit = Core.Nothing}

instance Core.FromJSON Dimension where
  parseJSON =
    Core.withObject
      "Dimension"
      ( \o ->
          Dimension
            Core.<$> (o Core..:? "magnitude")
            Core.<*> (o Core..:? "unit")
      )

instance Core.ToJSON Dimension where
  toJSON Dimension {..} =
    Core.object
      ( Core.catMaybes
          [ ("magnitude" Core..=) Core.<$> magnitude,
            ("unit" Core..=) Core.<$> unit
          ]
      )

-- | A Google Docs document.
--
-- /See:/ 'newDocument' smart constructor.
data Document = Document
  { -- | Output only. The main body of the document. Legacy field: Instead, use Document.tabs.documentTab.body, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    body :: (Core.Maybe Body),
    -- | Output only. The ID of the document.
    documentId :: (Core.Maybe Core.Text),
    -- | Output only. The style of the document. Legacy field: Instead, use Document.tabs.documentTab.documentStyle, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    documentStyle :: (Core.Maybe DocumentStyle),
    -- | Output only. The footers in the document, keyed by footer ID. Legacy field: Instead, use Document.tabs.documentTab.footers, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    footers :: (Core.Maybe Document_Footers),
    -- | Output only. The footnotes in the document, keyed by footnote ID. Legacy field: Instead, use Document.tabs.documentTab.footnotes, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    footnotes :: (Core.Maybe Document_Footnotes),
    -- | Output only. The headers in the document, keyed by header ID. Legacy field: Instead, use Document.tabs.documentTab.headers, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    headers :: (Core.Maybe Document_Headers),
    -- | Output only. The inline objects in the document, keyed by object ID. Legacy field: Instead, use Document.tabs.documentTab.inlineObjects, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    inlineObjects :: (Core.Maybe Document_InlineObjects),
    -- | Output only. The lists in the document, keyed by list ID. Legacy field: Instead, use Document.tabs.documentTab.lists, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    lists :: (Core.Maybe Document_Lists),
    -- | Output only. The named ranges in the document, keyed by name. Legacy field: Instead, use Document.tabs.documentTab.namedRanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    namedRanges :: (Core.Maybe Document_NamedRanges),
    -- | Output only. The named styles of the document. Legacy field: Instead, use Document.tabs.documentTab.namedStyles, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    namedStyles :: (Core.Maybe NamedStyles),
    -- | Output only. The positioned objects in the document, keyed by object ID. Legacy field: Instead, use Document.tabs.documentTab.positionedObjects, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    positionedObjects :: (Core.Maybe Document_PositionedObjects),
    -- | Output only. The revision ID of the document. Can be used in update requests to specify which revision of a document to apply updates to and how the request should behave if the document has been edited since that revision. Only populated if the user has edit access to the document. The revision ID is not a sequential number but an opaque string. The format of the revision ID might change over time. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the document has not changed. Conversely, a changed ID (for the same document and user) usually means the document has been updated. However, a changed ID can also be due to internal factors such as ID format changes.
    revisionId :: (Core.Maybe Core.Text),
    -- | Output only. The suggested changes to the style of the document, keyed by suggestion ID. Legacy field: Instead, use Document.tabs.documentTab.suggestedDocumentStyleChanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    suggestedDocumentStyleChanges :: (Core.Maybe Document_SuggestedDocumentStyleChanges),
    -- | Output only. The suggested changes to the named styles of the document, keyed by suggestion ID. Legacy field: Instead, use Document.tabs.documentTab.suggestedNamedStylesChanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
    suggestedNamedStylesChanges :: (Core.Maybe Document_SuggestedNamedStylesChanges),
    -- | Output only. The suggestions view mode applied to the document. Note: When editing a document, changes must be based on a document with SUGGESTIONS_INLINE.
    suggestionsViewMode :: (Core.Maybe Document_SuggestionsViewMode),
    -- | Tabs that are part of a document. Tabs can contain child tabs, a tab nested within another tab. Child tabs are represented by the Tab.childTabs field.
    tabs :: (Core.Maybe [Tab]),
    -- | The title of the document.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document' with the minimum fields required to make a request.
newDocument ::
  Document
newDocument =
  Document
    { body = Core.Nothing,
      documentId = Core.Nothing,
      documentStyle = Core.Nothing,
      footers = Core.Nothing,
      footnotes = Core.Nothing,
      headers = Core.Nothing,
      inlineObjects = Core.Nothing,
      lists = Core.Nothing,
      namedRanges = Core.Nothing,
      namedStyles = Core.Nothing,
      positionedObjects = Core.Nothing,
      revisionId = Core.Nothing,
      suggestedDocumentStyleChanges = Core.Nothing,
      suggestedNamedStylesChanges = Core.Nothing,
      suggestionsViewMode = Core.Nothing,
      tabs = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Document where
  parseJSON =
    Core.withObject
      "Document"
      ( \o ->
          Document
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "documentId")
            Core.<*> (o Core..:? "documentStyle")
            Core.<*> (o Core..:? "footers")
            Core.<*> (o Core..:? "footnotes")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "inlineObjects")
            Core.<*> (o Core..:? "lists")
            Core.<*> (o Core..:? "namedRanges")
            Core.<*> (o Core..:? "namedStyles")
            Core.<*> (o Core..:? "positionedObjects")
            Core.<*> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "suggestedDocumentStyleChanges")
            Core.<*> (o Core..:? "suggestedNamedStylesChanges")
            Core.<*> (o Core..:? "suggestionsViewMode")
            Core.<*> (o Core..:? "tabs")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Document where
  toJSON Document {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("documentId" Core..=) Core.<$> documentId,
            ("documentStyle" Core..=) Core.<$> documentStyle,
            ("footers" Core..=) Core.<$> footers,
            ("footnotes" Core..=) Core.<$> footnotes,
            ("headers" Core..=) Core.<$> headers,
            ("inlineObjects" Core..=) Core.<$> inlineObjects,
            ("lists" Core..=) Core.<$> lists,
            ("namedRanges" Core..=) Core.<$> namedRanges,
            ("namedStyles" Core..=) Core.<$> namedStyles,
            ("positionedObjects" Core..=) Core.<$> positionedObjects,
            ("revisionId" Core..=) Core.<$> revisionId,
            ("suggestedDocumentStyleChanges" Core..=)
              Core.<$> suggestedDocumentStyleChanges,
            ("suggestedNamedStylesChanges" Core..=)
              Core.<$> suggestedNamedStylesChanges,
            ("suggestionsViewMode" Core..=) Core.<$> suggestionsViewMode,
            ("tabs" Core..=) Core.<$> tabs,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Output only. The footers in the document, keyed by footer ID. Legacy field: Instead, use Document.tabs.documentTab.footers, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_Footers' smart constructor.
newtype Document_Footers = Document_Footers
  { additional :: (Core.HashMap Core.Text Footer)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_Footers' with the minimum fields required to make a request.
newDocument_Footers ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Footer ->
  Document_Footers
newDocument_Footers additional =
  Document_Footers {additional = additional}

instance Core.FromJSON Document_Footers where
  parseJSON =
    Core.withObject
      "Document_Footers"
      (\o -> Document_Footers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_Footers where
  toJSON Document_Footers {..} = Core.toJSON additional

-- | Output only. The footnotes in the document, keyed by footnote ID. Legacy field: Instead, use Document.tabs.documentTab.footnotes, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_Footnotes' smart constructor.
newtype Document_Footnotes = Document_Footnotes
  { additional :: (Core.HashMap Core.Text Footnote)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_Footnotes' with the minimum fields required to make a request.
newDocument_Footnotes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Footnote ->
  Document_Footnotes
newDocument_Footnotes additional =
  Document_Footnotes {additional = additional}

instance Core.FromJSON Document_Footnotes where
  parseJSON =
    Core.withObject
      "Document_Footnotes"
      (\o -> Document_Footnotes Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_Footnotes where
  toJSON Document_Footnotes {..} = Core.toJSON additional

-- | Output only. The headers in the document, keyed by header ID. Legacy field: Instead, use Document.tabs.documentTab.headers, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_Headers' smart constructor.
newtype Document_Headers = Document_Headers
  { additional :: (Core.HashMap Core.Text Header)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_Headers' with the minimum fields required to make a request.
newDocument_Headers ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Header ->
  Document_Headers
newDocument_Headers additional =
  Document_Headers {additional = additional}

instance Core.FromJSON Document_Headers where
  parseJSON =
    Core.withObject
      "Document_Headers"
      (\o -> Document_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_Headers where
  toJSON Document_Headers {..} = Core.toJSON additional

-- | Output only. The inline objects in the document, keyed by object ID. Legacy field: Instead, use Document.tabs.documentTab.inlineObjects, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_InlineObjects' smart constructor.
newtype Document_InlineObjects = Document_InlineObjects
  { additional :: (Core.HashMap Core.Text InlineObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_InlineObjects' with the minimum fields required to make a request.
newDocument_InlineObjects ::
  -- |  See 'additional'.
  Core.HashMap Core.Text InlineObject ->
  Document_InlineObjects
newDocument_InlineObjects additional =
  Document_InlineObjects {additional = additional}

instance Core.FromJSON Document_InlineObjects where
  parseJSON =
    Core.withObject
      "Document_InlineObjects"
      (\o -> Document_InlineObjects Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_InlineObjects where
  toJSON Document_InlineObjects {..} = Core.toJSON additional

-- | Output only. The lists in the document, keyed by list ID. Legacy field: Instead, use Document.tabs.documentTab.lists, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_Lists' smart constructor.
newtype Document_Lists = Document_Lists
  { additional :: (Core.HashMap Core.Text List)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_Lists' with the minimum fields required to make a request.
newDocument_Lists ::
  -- |  See 'additional'.
  Core.HashMap Core.Text List ->
  Document_Lists
newDocument_Lists additional =
  Document_Lists {additional = additional}

instance Core.FromJSON Document_Lists where
  parseJSON =
    Core.withObject
      "Document_Lists"
      (\o -> Document_Lists Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_Lists where
  toJSON Document_Lists {..} = Core.toJSON additional

-- | Output only. The named ranges in the document, keyed by name. Legacy field: Instead, use Document.tabs.documentTab.namedRanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_NamedRanges' smart constructor.
newtype Document_NamedRanges = Document_NamedRanges
  { additional :: (Core.HashMap Core.Text NamedRanges)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_NamedRanges' with the minimum fields required to make a request.
newDocument_NamedRanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text NamedRanges ->
  Document_NamedRanges
newDocument_NamedRanges additional =
  Document_NamedRanges {additional = additional}

instance Core.FromJSON Document_NamedRanges where
  parseJSON =
    Core.withObject
      "Document_NamedRanges"
      (\o -> Document_NamedRanges Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Document_NamedRanges where
  toJSON Document_NamedRanges {..} = Core.toJSON additional

-- | Output only. The positioned objects in the document, keyed by object ID. Legacy field: Instead, use Document.tabs.documentTab.positionedObjects, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_PositionedObjects' smart constructor.
newtype Document_PositionedObjects = Document_PositionedObjects
  { additional :: (Core.HashMap Core.Text PositionedObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_PositionedObjects' with the minimum fields required to make a request.
newDocument_PositionedObjects ::
  -- |  See 'additional'.
  Core.HashMap Core.Text PositionedObject ->
  Document_PositionedObjects
newDocument_PositionedObjects additional =
  Document_PositionedObjects {additional = additional}

instance Core.FromJSON Document_PositionedObjects where
  parseJSON =
    Core.withObject
      "Document_PositionedObjects"
      ( \o ->
          Document_PositionedObjects Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Document_PositionedObjects where
  toJSON Document_PositionedObjects {..} = Core.toJSON additional

-- | Output only. The suggested changes to the style of the document, keyed by suggestion ID. Legacy field: Instead, use Document.tabs.documentTab.suggestedDocumentStyleChanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_SuggestedDocumentStyleChanges' smart constructor.
newtype Document_SuggestedDocumentStyleChanges = Document_SuggestedDocumentStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedDocumentStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_SuggestedDocumentStyleChanges' with the minimum fields required to make a request.
newDocument_SuggestedDocumentStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedDocumentStyle ->
  Document_SuggestedDocumentStyleChanges
newDocument_SuggestedDocumentStyleChanges additional =
  Document_SuggestedDocumentStyleChanges {additional = additional}

instance Core.FromJSON Document_SuggestedDocumentStyleChanges where
  parseJSON =
    Core.withObject
      "Document_SuggestedDocumentStyleChanges"
      ( \o ->
          Document_SuggestedDocumentStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Document_SuggestedDocumentStyleChanges where
  toJSON Document_SuggestedDocumentStyleChanges {..} =
    Core.toJSON additional

-- | Output only. The suggested changes to the named styles of the document, keyed by suggestion ID. Legacy field: Instead, use Document.tabs.documentTab.suggestedNamedStylesChanges, which exposes the actual document content from all tabs when the includeTabsContent parameter is set to @true@. If @false@ or unset, this field contains information about the first tab in the document.
--
-- /See:/ 'newDocument_SuggestedNamedStylesChanges' smart constructor.
newtype Document_SuggestedNamedStylesChanges = Document_SuggestedNamedStylesChanges
  { additional :: (Core.HashMap Core.Text SuggestedNamedStyles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document_SuggestedNamedStylesChanges' with the minimum fields required to make a request.
newDocument_SuggestedNamedStylesChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedNamedStyles ->
  Document_SuggestedNamedStylesChanges
newDocument_SuggestedNamedStylesChanges additional =
  Document_SuggestedNamedStylesChanges {additional = additional}

instance Core.FromJSON Document_SuggestedNamedStylesChanges where
  parseJSON =
    Core.withObject
      "Document_SuggestedNamedStylesChanges"
      ( \o ->
          Document_SuggestedNamedStylesChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Document_SuggestedNamedStylesChanges where
  toJSON Document_SuggestedNamedStylesChanges {..} =
    Core.toJSON additional

-- | The style of the document.
--
-- /See:/ 'newDocumentStyle' smart constructor.
data DocumentStyle = DocumentStyle
  { -- | The background of the document. Documents cannot have a transparent background color.
    background :: (Core.Maybe Background),
    -- | The ID of the default footer. If not set, there\'s no default footer. This property is read-only.
    defaultFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the default header. If not set, there\'s no default header. This property is read-only.
    defaultHeaderId :: (Core.Maybe Core.Text),
    -- | The ID of the footer used only for even pages. The value of use/even/page/header/footer determines whether to use the default/footer/id or this value for the footer on even pages. If not set, there\'s no even page footer. This property is read-only.
    evenPageFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the header used only for even pages. The value of use/even/page/header/footer determines whether to use the default/header/id or this value for the header on even pages. If not set, there\'s no even page header. This property is read-only.
    evenPageHeaderId :: (Core.Maybe Core.Text),
    -- | The ID of the footer used only for the first page. If not set then a unique footer for the first page does not exist. The value of use/first/page/header/footer determines whether to use the default/footer/id or this value for the footer on the first page. If not set, there\'s no first page footer. This property is read-only.
    firstPageFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the header used only for the first page. If not set then a unique header for the first page does not exist. The value of use/first/page/header/footer determines whether to use the default/header/id or this value for the header on the first page. If not set, there\'s no first page header. This property is read-only.
    firstPageHeaderId :: (Core.Maybe Core.Text),
    -- | Optional. Indicates whether to flip the dimensions of the page_size, which allows changing the page orientation between portrait and landscape.
    flipPageOrientation :: (Core.Maybe Core.Bool),
    -- | The bottom page margin. Updating the bottom page margin on the document style clears the bottom page margin on all section styles.
    marginBottom :: (Core.Maybe Dimension),
    -- | The amount of space between the bottom of the page and the contents of the footer.
    marginFooter :: (Core.Maybe Dimension),
    -- | The amount of space between the top of the page and the contents of the header.
    marginHeader :: (Core.Maybe Dimension),
    -- | The left page margin. Updating the left page margin on the document style clears the left page margin on all section styles. It may also cause columns to resize in all sections.
    marginLeft :: (Core.Maybe Dimension),
    -- | The right page margin. Updating the right page margin on the document style clears the right page margin on all section styles. It may also cause columns to resize in all sections.
    marginRight :: (Core.Maybe Dimension),
    -- | The top page margin. Updating the top page margin on the document style clears the top page margin on all section styles.
    marginTop :: (Core.Maybe Dimension),
    -- | The page number from which to start counting the number of pages.
    pageNumberStart :: (Core.Maybe Core.Int32),
    -- | The size of a page in the document.
    pageSize :: (Core.Maybe Size),
    -- | Indicates whether DocumentStyle margin/header, SectionStyle margin/header and DocumentStyle margin/footer, SectionStyle margin/footer are respected. When false, the default values in the Docs editor for header and footer margin is used. This property is read-only.
    useCustomHeaderFooterMargins :: (Core.Maybe Core.Bool),
    -- | Indicates whether to use the even page header \/ footer IDs for the even pages.
    useEvenPageHeaderFooter :: (Core.Maybe Core.Bool),
    -- | Indicates whether to use the first page header \/ footer IDs for the first page.
    useFirstPageHeaderFooter :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentStyle' with the minimum fields required to make a request.
newDocumentStyle ::
  DocumentStyle
newDocumentStyle =
  DocumentStyle
    { background = Core.Nothing,
      defaultFooterId = Core.Nothing,
      defaultHeaderId = Core.Nothing,
      evenPageFooterId = Core.Nothing,
      evenPageHeaderId = Core.Nothing,
      firstPageFooterId = Core.Nothing,
      firstPageHeaderId = Core.Nothing,
      flipPageOrientation = Core.Nothing,
      marginBottom = Core.Nothing,
      marginFooter = Core.Nothing,
      marginHeader = Core.Nothing,
      marginLeft = Core.Nothing,
      marginRight = Core.Nothing,
      marginTop = Core.Nothing,
      pageNumberStart = Core.Nothing,
      pageSize = Core.Nothing,
      useCustomHeaderFooterMargins = Core.Nothing,
      useEvenPageHeaderFooter = Core.Nothing,
      useFirstPageHeaderFooter = Core.Nothing
    }

instance Core.FromJSON DocumentStyle where
  parseJSON =
    Core.withObject
      "DocumentStyle"
      ( \o ->
          DocumentStyle
            Core.<$> (o Core..:? "background")
            Core.<*> (o Core..:? "defaultFooterId")
            Core.<*> (o Core..:? "defaultHeaderId")
            Core.<*> (o Core..:? "evenPageFooterId")
            Core.<*> (o Core..:? "evenPageHeaderId")
            Core.<*> (o Core..:? "firstPageFooterId")
            Core.<*> (o Core..:? "firstPageHeaderId")
            Core.<*> (o Core..:? "flipPageOrientation")
            Core.<*> (o Core..:? "marginBottom")
            Core.<*> (o Core..:? "marginFooter")
            Core.<*> (o Core..:? "marginHeader")
            Core.<*> (o Core..:? "marginLeft")
            Core.<*> (o Core..:? "marginRight")
            Core.<*> (o Core..:? "marginTop")
            Core.<*> (o Core..:? "pageNumberStart")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "useCustomHeaderFooterMargins")
            Core.<*> (o Core..:? "useEvenPageHeaderFooter")
            Core.<*> (o Core..:? "useFirstPageHeaderFooter")
      )

instance Core.ToJSON DocumentStyle where
  toJSON DocumentStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("background" Core..=) Core.<$> background,
            ("defaultFooterId" Core..=) Core.<$> defaultFooterId,
            ("defaultHeaderId" Core..=) Core.<$> defaultHeaderId,
            ("evenPageFooterId" Core..=) Core.<$> evenPageFooterId,
            ("evenPageHeaderId" Core..=) Core.<$> evenPageHeaderId,
            ("firstPageFooterId" Core..=) Core.<$> firstPageFooterId,
            ("firstPageHeaderId" Core..=) Core.<$> firstPageHeaderId,
            ("flipPageOrientation" Core..=) Core.<$> flipPageOrientation,
            ("marginBottom" Core..=) Core.<$> marginBottom,
            ("marginFooter" Core..=) Core.<$> marginFooter,
            ("marginHeader" Core..=) Core.<$> marginHeader,
            ("marginLeft" Core..=) Core.<$> marginLeft,
            ("marginRight" Core..=) Core.<$> marginRight,
            ("marginTop" Core..=) Core.<$> marginTop,
            ("pageNumberStart" Core..=) Core.<$> pageNumberStart,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("useCustomHeaderFooterMargins" Core..=)
              Core.<$> useCustomHeaderFooterMargins,
            ("useEvenPageHeaderFooter" Core..=)
              Core.<$> useEvenPageHeaderFooter,
            ("useFirstPageHeaderFooter" Core..=)
              Core.<$> useFirstPageHeaderFooter
          ]
      )

-- | A mask that indicates which of the fields on the base DocumentStyle have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newDocumentStyleSuggestionState' smart constructor.
data DocumentStyleSuggestionState = DocumentStyleSuggestionState
  { -- | A mask that indicates which of the fields in background have been changed in this suggestion.
    backgroundSuggestionState :: (Core.Maybe BackgroundSuggestionState),
    -- | Indicates if there was a suggested change to default/footer/id.
    defaultFooterIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to default/header/id.
    defaultHeaderIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to even/page/footer_id.
    evenPageFooterIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to even/page/header_id.
    evenPageHeaderIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to first/page/footer_id.
    firstPageFooterIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to first/page/header_id.
    firstPageHeaderIdSuggested :: (Core.Maybe Core.Bool),
    -- | Optional. Indicates if there was a suggested change to flip/page/orientation.
    flipPageOrientationSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_bottom.
    marginBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_footer.
    marginFooterSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_header.
    marginHeaderSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_left.
    marginLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_right.
    marginRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_top.
    marginTopSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to page/number/start.
    pageNumberStartSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in size have been changed in this suggestion.
    pageSizeSuggestionState :: (Core.Maybe SizeSuggestionState),
    -- | Indicates if there was a suggested change to use/custom/header/footer/margins.
    useCustomHeaderFooterMarginsSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to use/even/page/header/footer.
    useEvenPageHeaderFooterSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to use/first/page/header/footer.
    useFirstPageHeaderFooterSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentStyleSuggestionState' with the minimum fields required to make a request.
newDocumentStyleSuggestionState ::
  DocumentStyleSuggestionState
newDocumentStyleSuggestionState =
  DocumentStyleSuggestionState
    { backgroundSuggestionState =
        Core.Nothing,
      defaultFooterIdSuggested = Core.Nothing,
      defaultHeaderIdSuggested = Core.Nothing,
      evenPageFooterIdSuggested = Core.Nothing,
      evenPageHeaderIdSuggested = Core.Nothing,
      firstPageFooterIdSuggested = Core.Nothing,
      firstPageHeaderIdSuggested = Core.Nothing,
      flipPageOrientationSuggested = Core.Nothing,
      marginBottomSuggested = Core.Nothing,
      marginFooterSuggested = Core.Nothing,
      marginHeaderSuggested = Core.Nothing,
      marginLeftSuggested = Core.Nothing,
      marginRightSuggested = Core.Nothing,
      marginTopSuggested = Core.Nothing,
      pageNumberStartSuggested = Core.Nothing,
      pageSizeSuggestionState = Core.Nothing,
      useCustomHeaderFooterMarginsSuggested = Core.Nothing,
      useEvenPageHeaderFooterSuggested = Core.Nothing,
      useFirstPageHeaderFooterSuggested = Core.Nothing
    }

instance Core.FromJSON DocumentStyleSuggestionState where
  parseJSON =
    Core.withObject
      "DocumentStyleSuggestionState"
      ( \o ->
          DocumentStyleSuggestionState
            Core.<$> (o Core..:? "backgroundSuggestionState")
            Core.<*> (o Core..:? "defaultFooterIdSuggested")
            Core.<*> (o Core..:? "defaultHeaderIdSuggested")
            Core.<*> (o Core..:? "evenPageFooterIdSuggested")
            Core.<*> (o Core..:? "evenPageHeaderIdSuggested")
            Core.<*> (o Core..:? "firstPageFooterIdSuggested")
            Core.<*> (o Core..:? "firstPageHeaderIdSuggested")
            Core.<*> (o Core..:? "flipPageOrientationSuggested")
            Core.<*> (o Core..:? "marginBottomSuggested")
            Core.<*> (o Core..:? "marginFooterSuggested")
            Core.<*> (o Core..:? "marginHeaderSuggested")
            Core.<*> (o Core..:? "marginLeftSuggested")
            Core.<*> (o Core..:? "marginRightSuggested")
            Core.<*> (o Core..:? "marginTopSuggested")
            Core.<*> (o Core..:? "pageNumberStartSuggested")
            Core.<*> (o Core..:? "pageSizeSuggestionState")
            Core.<*> (o Core..:? "useCustomHeaderFooterMarginsSuggested")
            Core.<*> (o Core..:? "useEvenPageHeaderFooterSuggested")
            Core.<*> (o Core..:? "useFirstPageHeaderFooterSuggested")
      )

instance Core.ToJSON DocumentStyleSuggestionState where
  toJSON DocumentStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundSuggestionState" Core..=)
              Core.<$> backgroundSuggestionState,
            ("defaultFooterIdSuggested" Core..=)
              Core.<$> defaultFooterIdSuggested,
            ("defaultHeaderIdSuggested" Core..=)
              Core.<$> defaultHeaderIdSuggested,
            ("evenPageFooterIdSuggested" Core..=)
              Core.<$> evenPageFooterIdSuggested,
            ("evenPageHeaderIdSuggested" Core..=)
              Core.<$> evenPageHeaderIdSuggested,
            ("firstPageFooterIdSuggested" Core..=)
              Core.<$> firstPageFooterIdSuggested,
            ("firstPageHeaderIdSuggested" Core..=)
              Core.<$> firstPageHeaderIdSuggested,
            ("flipPageOrientationSuggested" Core..=)
              Core.<$> flipPageOrientationSuggested,
            ("marginBottomSuggested" Core..=) Core.<$> marginBottomSuggested,
            ("marginFooterSuggested" Core..=) Core.<$> marginFooterSuggested,
            ("marginHeaderSuggested" Core..=) Core.<$> marginHeaderSuggested,
            ("marginLeftSuggested" Core..=) Core.<$> marginLeftSuggested,
            ("marginRightSuggested" Core..=) Core.<$> marginRightSuggested,
            ("marginTopSuggested" Core..=) Core.<$> marginTopSuggested,
            ("pageNumberStartSuggested" Core..=)
              Core.<$> pageNumberStartSuggested,
            ("pageSizeSuggestionState" Core..=)
              Core.<$> pageSizeSuggestionState,
            ("useCustomHeaderFooterMarginsSuggested" Core..=)
              Core.<$> useCustomHeaderFooterMarginsSuggested,
            ("useEvenPageHeaderFooterSuggested" Core..=)
              Core.<$> useEvenPageHeaderFooterSuggested,
            ("useFirstPageHeaderFooterSuggested" Core..=)
              Core.<$> useFirstPageHeaderFooterSuggested
          ]
      )

-- | A tab with document contents.
--
-- /See:/ 'newDocumentTab' smart constructor.
data DocumentTab = DocumentTab
  { -- | The main body of the document tab.
    body :: (Core.Maybe Body),
    -- | The style of the document tab.
    documentStyle :: (Core.Maybe DocumentStyle),
    -- | The footers in the document tab, keyed by footer ID.
    footers :: (Core.Maybe DocumentTab_Footers),
    -- | The footnotes in the document tab, keyed by footnote ID.
    footnotes :: (Core.Maybe DocumentTab_Footnotes),
    -- | The headers in the document tab, keyed by header ID.
    headers :: (Core.Maybe DocumentTab_Headers),
    -- | The inline objects in the document tab, keyed by object ID.
    inlineObjects :: (Core.Maybe DocumentTab_InlineObjects),
    -- | The lists in the document tab, keyed by list ID.
    lists :: (Core.Maybe DocumentTab_Lists),
    -- | The named ranges in the document tab, keyed by name.
    namedRanges :: (Core.Maybe DocumentTab_NamedRanges),
    -- | The named styles of the document tab.
    namedStyles :: (Core.Maybe NamedStyles),
    -- | The positioned objects in the document tab, keyed by object ID.
    positionedObjects :: (Core.Maybe DocumentTab_PositionedObjects),
    -- | The suggested changes to the style of the document tab, keyed by suggestion ID.
    suggestedDocumentStyleChanges :: (Core.Maybe DocumentTab_SuggestedDocumentStyleChanges),
    -- | The suggested changes to the named styles of the document tab, keyed by suggestion ID.
    suggestedNamedStylesChanges :: (Core.Maybe DocumentTab_SuggestedNamedStylesChanges)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab' with the minimum fields required to make a request.
newDocumentTab ::
  DocumentTab
newDocumentTab =
  DocumentTab
    { body = Core.Nothing,
      documentStyle = Core.Nothing,
      footers = Core.Nothing,
      footnotes = Core.Nothing,
      headers = Core.Nothing,
      inlineObjects = Core.Nothing,
      lists = Core.Nothing,
      namedRanges = Core.Nothing,
      namedStyles = Core.Nothing,
      positionedObjects = Core.Nothing,
      suggestedDocumentStyleChanges = Core.Nothing,
      suggestedNamedStylesChanges = Core.Nothing
    }

instance Core.FromJSON DocumentTab where
  parseJSON =
    Core.withObject
      "DocumentTab"
      ( \o ->
          DocumentTab
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "documentStyle")
            Core.<*> (o Core..:? "footers")
            Core.<*> (o Core..:? "footnotes")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "inlineObjects")
            Core.<*> (o Core..:? "lists")
            Core.<*> (o Core..:? "namedRanges")
            Core.<*> (o Core..:? "namedStyles")
            Core.<*> (o Core..:? "positionedObjects")
            Core.<*> (o Core..:? "suggestedDocumentStyleChanges")
            Core.<*> (o Core..:? "suggestedNamedStylesChanges")
      )

instance Core.ToJSON DocumentTab where
  toJSON DocumentTab {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("documentStyle" Core..=) Core.<$> documentStyle,
            ("footers" Core..=) Core.<$> footers,
            ("footnotes" Core..=) Core.<$> footnotes,
            ("headers" Core..=) Core.<$> headers,
            ("inlineObjects" Core..=) Core.<$> inlineObjects,
            ("lists" Core..=) Core.<$> lists,
            ("namedRanges" Core..=) Core.<$> namedRanges,
            ("namedStyles" Core..=) Core.<$> namedStyles,
            ("positionedObjects" Core..=) Core.<$> positionedObjects,
            ("suggestedDocumentStyleChanges" Core..=)
              Core.<$> suggestedDocumentStyleChanges,
            ("suggestedNamedStylesChanges" Core..=)
              Core.<$> suggestedNamedStylesChanges
          ]
      )

-- | The footers in the document tab, keyed by footer ID.
--
-- /See:/ 'newDocumentTab_Footers' smart constructor.
newtype DocumentTab_Footers = DocumentTab_Footers
  { additional :: (Core.HashMap Core.Text Footer)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_Footers' with the minimum fields required to make a request.
newDocumentTab_Footers ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Footer ->
  DocumentTab_Footers
newDocumentTab_Footers additional =
  DocumentTab_Footers {additional = additional}

instance Core.FromJSON DocumentTab_Footers where
  parseJSON =
    Core.withObject
      "DocumentTab_Footers"
      (\o -> DocumentTab_Footers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON DocumentTab_Footers where
  toJSON DocumentTab_Footers {..} = Core.toJSON additional

-- | The footnotes in the document tab, keyed by footnote ID.
--
-- /See:/ 'newDocumentTab_Footnotes' smart constructor.
newtype DocumentTab_Footnotes = DocumentTab_Footnotes
  { additional :: (Core.HashMap Core.Text Footnote)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_Footnotes' with the minimum fields required to make a request.
newDocumentTab_Footnotes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Footnote ->
  DocumentTab_Footnotes
newDocumentTab_Footnotes additional =
  DocumentTab_Footnotes {additional = additional}

instance Core.FromJSON DocumentTab_Footnotes where
  parseJSON =
    Core.withObject
      "DocumentTab_Footnotes"
      (\o -> DocumentTab_Footnotes Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON DocumentTab_Footnotes where
  toJSON DocumentTab_Footnotes {..} = Core.toJSON additional

-- | The headers in the document tab, keyed by header ID.
--
-- /See:/ 'newDocumentTab_Headers' smart constructor.
newtype DocumentTab_Headers = DocumentTab_Headers
  { additional :: (Core.HashMap Core.Text Header)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_Headers' with the minimum fields required to make a request.
newDocumentTab_Headers ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Header ->
  DocumentTab_Headers
newDocumentTab_Headers additional =
  DocumentTab_Headers {additional = additional}

instance Core.FromJSON DocumentTab_Headers where
  parseJSON =
    Core.withObject
      "DocumentTab_Headers"
      (\o -> DocumentTab_Headers Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON DocumentTab_Headers where
  toJSON DocumentTab_Headers {..} = Core.toJSON additional

-- | The inline objects in the document tab, keyed by object ID.
--
-- /See:/ 'newDocumentTab_InlineObjects' smart constructor.
newtype DocumentTab_InlineObjects = DocumentTab_InlineObjects
  { additional :: (Core.HashMap Core.Text InlineObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_InlineObjects' with the minimum fields required to make a request.
newDocumentTab_InlineObjects ::
  -- |  See 'additional'.
  Core.HashMap Core.Text InlineObject ->
  DocumentTab_InlineObjects
newDocumentTab_InlineObjects additional =
  DocumentTab_InlineObjects {additional = additional}

instance Core.FromJSON DocumentTab_InlineObjects where
  parseJSON =
    Core.withObject
      "DocumentTab_InlineObjects"
      ( \o ->
          DocumentTab_InlineObjects Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DocumentTab_InlineObjects where
  toJSON DocumentTab_InlineObjects {..} = Core.toJSON additional

-- | The lists in the document tab, keyed by list ID.
--
-- /See:/ 'newDocumentTab_Lists' smart constructor.
newtype DocumentTab_Lists = DocumentTab_Lists
  { additional :: (Core.HashMap Core.Text List)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_Lists' with the minimum fields required to make a request.
newDocumentTab_Lists ::
  -- |  See 'additional'.
  Core.HashMap Core.Text List ->
  DocumentTab_Lists
newDocumentTab_Lists additional =
  DocumentTab_Lists {additional = additional}

instance Core.FromJSON DocumentTab_Lists where
  parseJSON =
    Core.withObject
      "DocumentTab_Lists"
      (\o -> DocumentTab_Lists Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON DocumentTab_Lists where
  toJSON DocumentTab_Lists {..} = Core.toJSON additional

-- | The named ranges in the document tab, keyed by name.
--
-- /See:/ 'newDocumentTab_NamedRanges' smart constructor.
newtype DocumentTab_NamedRanges = DocumentTab_NamedRanges
  { additional :: (Core.HashMap Core.Text NamedRanges)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_NamedRanges' with the minimum fields required to make a request.
newDocumentTab_NamedRanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text NamedRanges ->
  DocumentTab_NamedRanges
newDocumentTab_NamedRanges additional =
  DocumentTab_NamedRanges {additional = additional}

instance Core.FromJSON DocumentTab_NamedRanges where
  parseJSON =
    Core.withObject
      "DocumentTab_NamedRanges"
      (\o -> DocumentTab_NamedRanges Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON DocumentTab_NamedRanges where
  toJSON DocumentTab_NamedRanges {..} = Core.toJSON additional

-- | The positioned objects in the document tab, keyed by object ID.
--
-- /See:/ 'newDocumentTab_PositionedObjects' smart constructor.
newtype DocumentTab_PositionedObjects = DocumentTab_PositionedObjects
  { additional :: (Core.HashMap Core.Text PositionedObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_PositionedObjects' with the minimum fields required to make a request.
newDocumentTab_PositionedObjects ::
  -- |  See 'additional'.
  Core.HashMap Core.Text PositionedObject ->
  DocumentTab_PositionedObjects
newDocumentTab_PositionedObjects additional =
  DocumentTab_PositionedObjects {additional = additional}

instance Core.FromJSON DocumentTab_PositionedObjects where
  parseJSON =
    Core.withObject
      "DocumentTab_PositionedObjects"
      ( \o ->
          DocumentTab_PositionedObjects Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DocumentTab_PositionedObjects where
  toJSON DocumentTab_PositionedObjects {..} = Core.toJSON additional

-- | The suggested changes to the style of the document tab, keyed by suggestion ID.
--
-- /See:/ 'newDocumentTab_SuggestedDocumentStyleChanges' smart constructor.
newtype DocumentTab_SuggestedDocumentStyleChanges = DocumentTab_SuggestedDocumentStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedDocumentStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_SuggestedDocumentStyleChanges' with the minimum fields required to make a request.
newDocumentTab_SuggestedDocumentStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedDocumentStyle ->
  DocumentTab_SuggestedDocumentStyleChanges
newDocumentTab_SuggestedDocumentStyleChanges additional =
  DocumentTab_SuggestedDocumentStyleChanges
    { additional =
        additional
    }

instance Core.FromJSON DocumentTab_SuggestedDocumentStyleChanges where
  parseJSON =
    Core.withObject
      "DocumentTab_SuggestedDocumentStyleChanges"
      ( \o ->
          DocumentTab_SuggestedDocumentStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DocumentTab_SuggestedDocumentStyleChanges where
  toJSON DocumentTab_SuggestedDocumentStyleChanges {..} =
    Core.toJSON additional

-- | The suggested changes to the named styles of the document tab, keyed by suggestion ID.
--
-- /See:/ 'newDocumentTab_SuggestedNamedStylesChanges' smart constructor.
newtype DocumentTab_SuggestedNamedStylesChanges = DocumentTab_SuggestedNamedStylesChanges
  { additional :: (Core.HashMap Core.Text SuggestedNamedStyles)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DocumentTab_SuggestedNamedStylesChanges' with the minimum fields required to make a request.
newDocumentTab_SuggestedNamedStylesChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedNamedStyles ->
  DocumentTab_SuggestedNamedStylesChanges
newDocumentTab_SuggestedNamedStylesChanges additional =
  DocumentTab_SuggestedNamedStylesChanges {additional = additional}

instance Core.FromJSON DocumentTab_SuggestedNamedStylesChanges where
  parseJSON =
    Core.withObject
      "DocumentTab_SuggestedNamedStylesChanges"
      ( \o ->
          DocumentTab_SuggestedNamedStylesChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DocumentTab_SuggestedNamedStylesChanges where
  toJSON DocumentTab_SuggestedNamedStylesChanges {..} =
    Core.toJSON additional

-- | The properties of an embedded drawing and used to differentiate the object type. An embedded drawing is one that\'s created and edited within a document. Note that extensive details are not supported.
--
-- /See:/ 'newEmbeddedDrawingProperties' smart constructor.
data EmbeddedDrawingProperties = EmbeddedDrawingProperties
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedDrawingProperties' with the minimum fields required to make a request.
newEmbeddedDrawingProperties ::
  EmbeddedDrawingProperties
newEmbeddedDrawingProperties = EmbeddedDrawingProperties

instance Core.FromJSON EmbeddedDrawingProperties where
  parseJSON =
    Core.withObject
      "EmbeddedDrawingProperties"
      (\o -> Core.pure EmbeddedDrawingProperties)

instance Core.ToJSON EmbeddedDrawingProperties where
  toJSON = Core.const Core.emptyObject

-- | A mask that indicates which of the fields on the base EmbeddedDrawingProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newEmbeddedDrawingPropertiesSuggestionState' smart constructor.
data EmbeddedDrawingPropertiesSuggestionState = EmbeddedDrawingPropertiesSuggestionState
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedDrawingPropertiesSuggestionState' with the minimum fields required to make a request.
newEmbeddedDrawingPropertiesSuggestionState ::
  EmbeddedDrawingPropertiesSuggestionState
newEmbeddedDrawingPropertiesSuggestionState =
  EmbeddedDrawingPropertiesSuggestionState

instance Core.FromJSON EmbeddedDrawingPropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "EmbeddedDrawingPropertiesSuggestionState"
      (\o -> Core.pure EmbeddedDrawingPropertiesSuggestionState)

instance Core.ToJSON EmbeddedDrawingPropertiesSuggestionState where
  toJSON = Core.const Core.emptyObject

-- | An embedded object in the document.
--
-- /See:/ 'newEmbeddedObject' smart constructor.
data EmbeddedObject = EmbeddedObject
  { -- | The description of the embedded object. The @title@ and @description@ are both combined to display alt text.
    description :: (Core.Maybe Core.Text),
    -- | The properties of an embedded drawing.
    embeddedDrawingProperties :: (Core.Maybe EmbeddedDrawingProperties),
    -- | The border of the embedded object.
    embeddedObjectBorder :: (Core.Maybe EmbeddedObjectBorder),
    -- | The properties of an image.
    imageProperties :: (Core.Maybe ImageProperties),
    -- | A reference to the external linked source content. For example, it contains a reference to the source Google Sheets chart when the embedded object is a linked chart. If unset, then the embedded object is not linked.
    linkedContentReference :: (Core.Maybe LinkedContentReference),
    -- | The bottom margin of the embedded object.
    marginBottom :: (Core.Maybe Dimension),
    -- | The left margin of the embedded object.
    marginLeft :: (Core.Maybe Dimension),
    -- | The right margin of the embedded object.
    marginRight :: (Core.Maybe Dimension),
    -- | The top margin of the embedded object.
    marginTop :: (Core.Maybe Dimension),
    -- | The visible size of the image after cropping.
    size :: (Core.Maybe Size),
    -- | The title of the embedded object. The @title@ and @description@ are both combined to display alt text.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObject' with the minimum fields required to make a request.
newEmbeddedObject ::
  EmbeddedObject
newEmbeddedObject =
  EmbeddedObject
    { description = Core.Nothing,
      embeddedDrawingProperties = Core.Nothing,
      embeddedObjectBorder = Core.Nothing,
      imageProperties = Core.Nothing,
      linkedContentReference = Core.Nothing,
      marginBottom = Core.Nothing,
      marginLeft = Core.Nothing,
      marginRight = Core.Nothing,
      marginTop = Core.Nothing,
      size = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON EmbeddedObject where
  parseJSON =
    Core.withObject
      "EmbeddedObject"
      ( \o ->
          EmbeddedObject
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "embeddedDrawingProperties")
            Core.<*> (o Core..:? "embeddedObjectBorder")
            Core.<*> (o Core..:? "imageProperties")
            Core.<*> (o Core..:? "linkedContentReference")
            Core.<*> (o Core..:? "marginBottom")
            Core.<*> (o Core..:? "marginLeft")
            Core.<*> (o Core..:? "marginRight")
            Core.<*> (o Core..:? "marginTop")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON EmbeddedObject where
  toJSON EmbeddedObject {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("embeddedDrawingProperties" Core..=)
              Core.<$> embeddedDrawingProperties,
            ("embeddedObjectBorder" Core..=) Core.<$> embeddedObjectBorder,
            ("imageProperties" Core..=) Core.<$> imageProperties,
            ("linkedContentReference" Core..=) Core.<$> linkedContentReference,
            ("marginBottom" Core..=) Core.<$> marginBottom,
            ("marginLeft" Core..=) Core.<$> marginLeft,
            ("marginRight" Core..=) Core.<$> marginRight,
            ("marginTop" Core..=) Core.<$> marginTop,
            ("size" Core..=) Core.<$> size,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A border around an EmbeddedObject.
--
-- /See:/ 'newEmbeddedObjectBorder' smart constructor.
data EmbeddedObjectBorder = EmbeddedObjectBorder
  { -- | The color of the border.
    color :: (Core.Maybe OptionalColor),
    -- | The dash style of the border.
    dashStyle :: (Core.Maybe EmbeddedObjectBorder_DashStyle),
    -- | The property state of the border property.
    propertyState :: (Core.Maybe EmbeddedObjectBorder_PropertyState),
    -- | The width of the border.
    width :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObjectBorder' with the minimum fields required to make a request.
newEmbeddedObjectBorder ::
  EmbeddedObjectBorder
newEmbeddedObjectBorder =
  EmbeddedObjectBorder
    { color = Core.Nothing,
      dashStyle = Core.Nothing,
      propertyState = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON EmbeddedObjectBorder where
  parseJSON =
    Core.withObject
      "EmbeddedObjectBorder"
      ( \o ->
          EmbeddedObjectBorder
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON EmbeddedObjectBorder where
  toJSON EmbeddedObjectBorder {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("dashStyle" Core..=) Core.<$> dashStyle,
            ("propertyState" Core..=) Core.<$> propertyState,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A mask that indicates which of the fields on the base EmbeddedObjectBorder have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newEmbeddedObjectBorderSuggestionState' smart constructor.
data EmbeddedObjectBorderSuggestionState = EmbeddedObjectBorderSuggestionState
  { -- | Indicates if there was a suggested change to color.
    colorSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to dash_style.
    dashStyleSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to property_state.
    propertyStateSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to width.
    widthSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObjectBorderSuggestionState' with the minimum fields required to make a request.
newEmbeddedObjectBorderSuggestionState ::
  EmbeddedObjectBorderSuggestionState
newEmbeddedObjectBorderSuggestionState =
  EmbeddedObjectBorderSuggestionState
    { colorSuggested =
        Core.Nothing,
      dashStyleSuggested = Core.Nothing,
      propertyStateSuggested = Core.Nothing,
      widthSuggested = Core.Nothing
    }

instance Core.FromJSON EmbeddedObjectBorderSuggestionState where
  parseJSON =
    Core.withObject
      "EmbeddedObjectBorderSuggestionState"
      ( \o ->
          EmbeddedObjectBorderSuggestionState
            Core.<$> (o Core..:? "colorSuggested")
            Core.<*> (o Core..:? "dashStyleSuggested")
            Core.<*> (o Core..:? "propertyStateSuggested")
            Core.<*> (o Core..:? "widthSuggested")
      )

instance Core.ToJSON EmbeddedObjectBorderSuggestionState where
  toJSON EmbeddedObjectBorderSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("colorSuggested" Core..=) Core.<$> colorSuggested,
            ("dashStyleSuggested" Core..=) Core.<$> dashStyleSuggested,
            ("propertyStateSuggested" Core..=) Core.<$> propertyStateSuggested,
            ("widthSuggested" Core..=) Core.<$> widthSuggested
          ]
      )

-- | A mask that indicates which of the fields on the base EmbeddedObject have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newEmbeddedObjectSuggestionState' smart constructor.
data EmbeddedObjectSuggestionState = EmbeddedObjectSuggestionState
  { -- | Indicates if there was a suggested change to description.
    descriptionSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in embedded/drawing/properties have been changed in this suggestion.
    embeddedDrawingPropertiesSuggestionState :: (Core.Maybe EmbeddedDrawingPropertiesSuggestionState),
    -- | A mask that indicates which of the fields in embedded/object/border have been changed in this suggestion.
    embeddedObjectBorderSuggestionState :: (Core.Maybe EmbeddedObjectBorderSuggestionState),
    -- | A mask that indicates which of the fields in image_properties have been changed in this suggestion.
    imagePropertiesSuggestionState :: (Core.Maybe ImagePropertiesSuggestionState),
    -- | A mask that indicates which of the fields in linked/content/reference have been changed in this suggestion.
    linkedContentReferenceSuggestionState :: (Core.Maybe LinkedContentReferenceSuggestionState),
    -- | Indicates if there was a suggested change to margin_bottom.
    marginBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_left.
    marginLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_right.
    marginRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to margin_top.
    marginTopSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in size have been changed in this suggestion.
    sizeSuggestionState :: (Core.Maybe SizeSuggestionState),
    -- | Indicates if there was a suggested change to title.
    titleSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EmbeddedObjectSuggestionState' with the minimum fields required to make a request.
newEmbeddedObjectSuggestionState ::
  EmbeddedObjectSuggestionState
newEmbeddedObjectSuggestionState =
  EmbeddedObjectSuggestionState
    { descriptionSuggested =
        Core.Nothing,
      embeddedDrawingPropertiesSuggestionState = Core.Nothing,
      embeddedObjectBorderSuggestionState = Core.Nothing,
      imagePropertiesSuggestionState = Core.Nothing,
      linkedContentReferenceSuggestionState = Core.Nothing,
      marginBottomSuggested = Core.Nothing,
      marginLeftSuggested = Core.Nothing,
      marginRightSuggested = Core.Nothing,
      marginTopSuggested = Core.Nothing,
      sizeSuggestionState = Core.Nothing,
      titleSuggested = Core.Nothing
    }

instance Core.FromJSON EmbeddedObjectSuggestionState where
  parseJSON =
    Core.withObject
      "EmbeddedObjectSuggestionState"
      ( \o ->
          EmbeddedObjectSuggestionState
            Core.<$> (o Core..:? "descriptionSuggested")
            Core.<*> (o Core..:? "embeddedDrawingPropertiesSuggestionState")
            Core.<*> (o Core..:? "embeddedObjectBorderSuggestionState")
            Core.<*> (o Core..:? "imagePropertiesSuggestionState")
            Core.<*> (o Core..:? "linkedContentReferenceSuggestionState")
            Core.<*> (o Core..:? "marginBottomSuggested")
            Core.<*> (o Core..:? "marginLeftSuggested")
            Core.<*> (o Core..:? "marginRightSuggested")
            Core.<*> (o Core..:? "marginTopSuggested")
            Core.<*> (o Core..:? "sizeSuggestionState")
            Core.<*> (o Core..:? "titleSuggested")
      )

instance Core.ToJSON EmbeddedObjectSuggestionState where
  toJSON EmbeddedObjectSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("descriptionSuggested" Core..=) Core.<$> descriptionSuggested,
            ("embeddedDrawingPropertiesSuggestionState" Core..=)
              Core.<$> embeddedDrawingPropertiesSuggestionState,
            ("embeddedObjectBorderSuggestionState" Core..=)
              Core.<$> embeddedObjectBorderSuggestionState,
            ("imagePropertiesSuggestionState" Core..=)
              Core.<$> imagePropertiesSuggestionState,
            ("linkedContentReferenceSuggestionState" Core..=)
              Core.<$> linkedContentReferenceSuggestionState,
            ("marginBottomSuggested" Core..=) Core.<$> marginBottomSuggested,
            ("marginLeftSuggested" Core..=) Core.<$> marginLeftSuggested,
            ("marginRightSuggested" Core..=) Core.<$> marginRightSuggested,
            ("marginTopSuggested" Core..=) Core.<$> marginTopSuggested,
            ("sizeSuggestionState" Core..=) Core.<$> sizeSuggestionState,
            ("titleSuggested" Core..=) Core.<$> titleSuggested
          ]
      )

-- | Location at the end of a body, header, footer or footnote. The location is immediately before the last newline in the document segment.
--
-- /See:/ 'newEndOfSegmentLocation' smart constructor.
data EndOfSegmentLocation = EndOfSegmentLocation
  { -- | The ID of the header, footer or footnote the location is in. An empty segment ID signifies the document\'s body.
    segmentId :: (Core.Maybe Core.Text),
    -- | The tab that the location is in. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EndOfSegmentLocation' with the minimum fields required to make a request.
newEndOfSegmentLocation ::
  EndOfSegmentLocation
newEndOfSegmentLocation =
  EndOfSegmentLocation
    { segmentId = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON EndOfSegmentLocation where
  parseJSON =
    Core.withObject
      "EndOfSegmentLocation"
      ( \o ->
          EndOfSegmentLocation
            Core.<$> (o Core..:? "segmentId")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON EndOfSegmentLocation where
  toJSON EndOfSegmentLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("segmentId" Core..=) Core.<$> segmentId,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | A ParagraphElement representing an equation.
--
-- /See:/ 'newEquation' smart constructor.
data Equation = Equation
  { -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. An Equation may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Equation' with the minimum fields required to make a request.
newEquation ::
  Equation
newEquation =
  Equation
    { suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing
    }

instance Core.FromJSON Equation where
  parseJSON =
    Core.withObject
      "Equation"
      ( \o ->
          Equation
            Core.<$> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
      )

instance Core.ToJSON Equation where
  toJSON Equation {..} =
    Core.object
      ( Core.catMaybes
          [ ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds
          ]
      )

-- | A document footer.
--
-- /See:/ 'newFooter' smart constructor.
data Footer = Footer
  { -- | The contents of the footer. The indexes for a footer\'s content begin at zero.
    content :: (Core.Maybe [StructuralElement]),
    -- | The ID of the footer.
    footerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Footer' with the minimum fields required to make a request.
newFooter ::
  Footer
newFooter = Footer {content = Core.Nothing, footerId = Core.Nothing}

instance Core.FromJSON Footer where
  parseJSON =
    Core.withObject
      "Footer"
      ( \o ->
          Footer
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "footerId")
      )

instance Core.ToJSON Footer where
  toJSON Footer {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("footerId" Core..=) Core.<$> footerId
          ]
      )

-- | A document footnote.
--
-- /See:/ 'newFootnote' smart constructor.
data Footnote = Footnote
  { -- | The contents of the footnote. The indexes for a footnote\'s content begin at zero.
    content :: (Core.Maybe [StructuralElement]),
    -- | The ID of the footnote.
    footnoteId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Footnote' with the minimum fields required to make a request.
newFootnote ::
  Footnote
newFootnote =
  Footnote {content = Core.Nothing, footnoteId = Core.Nothing}

instance Core.FromJSON Footnote where
  parseJSON =
    Core.withObject
      "Footnote"
      ( \o ->
          Footnote
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "footnoteId")
      )

instance Core.ToJSON Footnote where
  toJSON Footnote {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("footnoteId" Core..=) Core.<$> footnoteId
          ]
      )

-- | A ParagraphElement representing a footnote reference. A footnote reference is the inline content rendered with a number and is used to identify the footnote.
--
-- /See:/ 'newFootnoteReference' smart constructor.
data FootnoteReference = FootnoteReference
  { -- | The ID of the footnote that contains the content of this footnote reference.
    footnoteId :: (Core.Maybe Core.Text),
    -- | The rendered number of this footnote.
    footnoteNumber :: (Core.Maybe Core.Text),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A FootnoteReference may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this FootnoteReference, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe FootnoteReference_SuggestedTextStyleChanges),
    -- | The text style of this FootnoteReference.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FootnoteReference' with the minimum fields required to make a request.
newFootnoteReference ::
  FootnoteReference
newFootnoteReference =
  FootnoteReference
    { footnoteId = Core.Nothing,
      footnoteNumber = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON FootnoteReference where
  parseJSON =
    Core.withObject
      "FootnoteReference"
      ( \o ->
          FootnoteReference
            Core.<$> (o Core..:? "footnoteId")
            Core.<*> (o Core..:? "footnoteNumber")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON FootnoteReference where
  toJSON FootnoteReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("footnoteId" Core..=) Core.<$> footnoteId,
            ("footnoteNumber" Core..=) Core.<$> footnoteNumber,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this FootnoteReference, keyed by suggestion ID.
--
-- /See:/ 'newFootnoteReference_SuggestedTextStyleChanges' smart constructor.
newtype FootnoteReference_SuggestedTextStyleChanges = FootnoteReference_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FootnoteReference_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newFootnoteReference_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  FootnoteReference_SuggestedTextStyleChanges
newFootnoteReference_SuggestedTextStyleChanges additional =
  FootnoteReference_SuggestedTextStyleChanges
    { additional =
        additional
    }

instance Core.FromJSON FootnoteReference_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "FootnoteReference_SuggestedTextStyleChanges"
      ( \o ->
          FootnoteReference_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON FootnoteReference_SuggestedTextStyleChanges where
  toJSON FootnoteReference_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | A document header.
--
-- /See:/ 'newHeader' smart constructor.
data Header = Header
  { -- | The contents of the header. The indexes for a header\'s content begin at zero.
    content :: (Core.Maybe [StructuralElement]),
    -- | The ID of the header.
    headerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Header' with the minimum fields required to make a request.
newHeader ::
  Header
newHeader = Header {content = Core.Nothing, headerId = Core.Nothing}

instance Core.FromJSON Header where
  parseJSON =
    Core.withObject
      "Header"
      ( \o ->
          Header
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "headerId")
      )

instance Core.ToJSON Header where
  toJSON Header {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("headerId" Core..=) Core.<$> headerId
          ]
      )

-- | A reference to a heading in this document.
--
-- /See:/ 'newHeadingLink' smart constructor.
data HeadingLink = HeadingLink
  { -- | The ID of a heading in this document.
    id :: (Core.Maybe Core.Text),
    -- | The ID of the tab containing this heading.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HeadingLink' with the minimum fields required to make a request.
newHeadingLink ::
  HeadingLink
newHeadingLink =
  HeadingLink {id = Core.Nothing, tabId = Core.Nothing}

instance Core.FromJSON HeadingLink where
  parseJSON =
    Core.withObject
      "HeadingLink"
      ( \o ->
          HeadingLink
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON HeadingLink where
  toJSON HeadingLink {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("tabId" Core..=) Core.<$> tabId]
      )

-- | A ParagraphElement representing a horizontal line.
--
-- /See:/ 'newHorizontalRule' smart constructor.
data HorizontalRule = HorizontalRule
  { -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A HorizontalRule may have multiple insertion IDs if it is a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this HorizontalRule, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe HorizontalRule_SuggestedTextStyleChanges),
    -- | The text style of this HorizontalRule. Similar to text content, like text runs and footnote references, the text style of a horizontal rule can affect content layout as well as the styling of text inserted next to it.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HorizontalRule' with the minimum fields required to make a request.
newHorizontalRule ::
  HorizontalRule
newHorizontalRule =
  HorizontalRule
    { suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON HorizontalRule where
  parseJSON =
    Core.withObject
      "HorizontalRule"
      ( \o ->
          HorizontalRule
            Core.<$> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON HorizontalRule where
  toJSON HorizontalRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this HorizontalRule, keyed by suggestion ID.
--
-- /See:/ 'newHorizontalRule_SuggestedTextStyleChanges' smart constructor.
newtype HorizontalRule_SuggestedTextStyleChanges = HorizontalRule_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HorizontalRule_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newHorizontalRule_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  HorizontalRule_SuggestedTextStyleChanges
newHorizontalRule_SuggestedTextStyleChanges additional =
  HorizontalRule_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON HorizontalRule_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "HorizontalRule_SuggestedTextStyleChanges"
      ( \o ->
          HorizontalRule_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HorizontalRule_SuggestedTextStyleChanges where
  toJSON HorizontalRule_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | The properties of an image.
--
-- /See:/ 'newImageProperties' smart constructor.
data ImageProperties = ImageProperties
  { -- | The clockwise rotation angle of the image, in radians.
    angle :: (Core.Maybe Core.Double),
    -- | The brightness effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect.
    brightness :: (Core.Maybe Core.Double),
    -- | A URI to the image with a default lifetime of 30 minutes. This URI is tagged with the account of the requester. Anyone with the URI effectively accesses the image as the original requester. Access to the image may be lost if the document\'s sharing settings change.
    contentUri :: (Core.Maybe Core.Text),
    -- | The contrast effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect.
    contrast :: (Core.Maybe Core.Double),
    -- | The crop properties of the image.
    cropProperties :: (Core.Maybe CropProperties),
    -- | The source URI is the URI used to insert the image. The source URI can be empty.
    sourceUri :: (Core.Maybe Core.Text),
    -- | The transparency effect of the image. The value should be in the interval [0.0, 1.0], where 0 means no effect and 1 means transparent.
    transparency :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
newImageProperties ::
  ImageProperties
newImageProperties =
  ImageProperties
    { angle = Core.Nothing,
      brightness = Core.Nothing,
      contentUri = Core.Nothing,
      contrast = Core.Nothing,
      cropProperties = Core.Nothing,
      sourceUri = Core.Nothing,
      transparency = Core.Nothing
    }

instance Core.FromJSON ImageProperties where
  parseJSON =
    Core.withObject
      "ImageProperties"
      ( \o ->
          ImageProperties
            Core.<$> (o Core..:? "angle")
            Core.<*> (o Core..:? "brightness")
            Core.<*> (o Core..:? "contentUri")
            Core.<*> (o Core..:? "contrast")
            Core.<*> (o Core..:? "cropProperties")
            Core.<*> (o Core..:? "sourceUri")
            Core.<*> (o Core..:? "transparency")
      )

instance Core.ToJSON ImageProperties where
  toJSON ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("angle" Core..=) Core.<$> angle,
            ("brightness" Core..=) Core.<$> brightness,
            ("contentUri" Core..=) Core.<$> contentUri,
            ("contrast" Core..=) Core.<$> contrast,
            ("cropProperties" Core..=) Core.<$> cropProperties,
            ("sourceUri" Core..=) Core.<$> sourceUri,
            ("transparency" Core..=) Core.<$> transparency
          ]
      )

-- | A mask that indicates which of the fields on the base ImageProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newImagePropertiesSuggestionState' smart constructor.
data ImagePropertiesSuggestionState = ImagePropertiesSuggestionState
  { -- | Indicates if there was a suggested change to angle.
    angleSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to brightness.
    brightnessSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to content_uri.
    contentUriSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to contrast.
    contrastSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in crop_properties have been changed in this suggestion.
    cropPropertiesSuggestionState :: (Core.Maybe CropPropertiesSuggestionState),
    -- | Indicates if there was a suggested change to source_uri.
    sourceUriSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to transparency.
    transparencySuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImagePropertiesSuggestionState' with the minimum fields required to make a request.
newImagePropertiesSuggestionState ::
  ImagePropertiesSuggestionState
newImagePropertiesSuggestionState =
  ImagePropertiesSuggestionState
    { angleSuggested = Core.Nothing,
      brightnessSuggested = Core.Nothing,
      contentUriSuggested = Core.Nothing,
      contrastSuggested = Core.Nothing,
      cropPropertiesSuggestionState = Core.Nothing,
      sourceUriSuggested = Core.Nothing,
      transparencySuggested = Core.Nothing
    }

instance Core.FromJSON ImagePropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "ImagePropertiesSuggestionState"
      ( \o ->
          ImagePropertiesSuggestionState
            Core.<$> (o Core..:? "angleSuggested")
            Core.<*> (o Core..:? "brightnessSuggested")
            Core.<*> (o Core..:? "contentUriSuggested")
            Core.<*> (o Core..:? "contrastSuggested")
            Core.<*> (o Core..:? "cropPropertiesSuggestionState")
            Core.<*> (o Core..:? "sourceUriSuggested")
            Core.<*> (o Core..:? "transparencySuggested")
      )

instance Core.ToJSON ImagePropertiesSuggestionState where
  toJSON ImagePropertiesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("angleSuggested" Core..=) Core.<$> angleSuggested,
            ("brightnessSuggested" Core..=) Core.<$> brightnessSuggested,
            ("contentUriSuggested" Core..=) Core.<$> contentUriSuggested,
            ("contrastSuggested" Core..=) Core.<$> contrastSuggested,
            ("cropPropertiesSuggestionState" Core..=)
              Core.<$> cropPropertiesSuggestionState,
            ("sourceUriSuggested" Core..=) Core.<$> sourceUriSuggested,
            ("transparencySuggested" Core..=) Core.<$> transparencySuggested
          ]
      )

-- | An object that appears inline with text. An InlineObject contains an EmbeddedObject such as an image.
--
-- /See:/ 'newInlineObject' smart constructor.
data InlineObject = InlineObject
  { -- | The properties of this inline object.
    inlineObjectProperties :: (Core.Maybe InlineObjectProperties),
    -- | The ID of this inline object. Can be used to update an object’s properties.
    objectId :: (Core.Maybe Core.Text),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested changes to the inline object properties, keyed by suggestion ID.
    suggestedInlineObjectPropertiesChanges :: (Core.Maybe InlineObject_SuggestedInlineObjectPropertiesChanges),
    -- | The suggested insertion ID. If empty, then this is not a suggested insertion.
    suggestedInsertionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObject' with the minimum fields required to make a request.
newInlineObject ::
  InlineObject
newInlineObject =
  InlineObject
    { inlineObjectProperties = Core.Nothing,
      objectId = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInlineObjectPropertiesChanges = Core.Nothing,
      suggestedInsertionId = Core.Nothing
    }

instance Core.FromJSON InlineObject where
  parseJSON =
    Core.withObject
      "InlineObject"
      ( \o ->
          InlineObject
            Core.<$> (o Core..:? "inlineObjectProperties")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInlineObjectPropertiesChanges")
            Core.<*> (o Core..:? "suggestedInsertionId")
      )

instance Core.ToJSON InlineObject where
  toJSON InlineObject {..} =
    Core.object
      ( Core.catMaybes
          [ ("inlineObjectProperties" Core..=)
              Core.<$> inlineObjectProperties,
            ("objectId" Core..=) Core.<$> objectId,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInlineObjectPropertiesChanges" Core..=)
              Core.<$> suggestedInlineObjectPropertiesChanges,
            ("suggestedInsertionId" Core..=) Core.<$> suggestedInsertionId
          ]
      )

-- | The suggested changes to the inline object properties, keyed by suggestion ID.
--
-- /See:/ 'newInlineObject_SuggestedInlineObjectPropertiesChanges' smart constructor.
newtype InlineObject_SuggestedInlineObjectPropertiesChanges = InlineObject_SuggestedInlineObjectPropertiesChanges
  { additional :: (Core.HashMap Core.Text SuggestedInlineObjectProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObject_SuggestedInlineObjectPropertiesChanges' with the minimum fields required to make a request.
newInlineObject_SuggestedInlineObjectPropertiesChanges ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    SuggestedInlineObjectProperties ->
  InlineObject_SuggestedInlineObjectPropertiesChanges
newInlineObject_SuggestedInlineObjectPropertiesChanges additional =
  InlineObject_SuggestedInlineObjectPropertiesChanges
    { additional =
        additional
    }

instance
  Core.FromJSON
    InlineObject_SuggestedInlineObjectPropertiesChanges
  where
  parseJSON =
    Core.withObject
      "InlineObject_SuggestedInlineObjectPropertiesChanges"
      ( \o ->
          InlineObject_SuggestedInlineObjectPropertiesChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    InlineObject_SuggestedInlineObjectPropertiesChanges
  where
  toJSON InlineObject_SuggestedInlineObjectPropertiesChanges {..} =
    Core.toJSON additional

-- | A ParagraphElement that contains an InlineObject.
--
-- /See:/ 'newInlineObjectElement' smart constructor.
data InlineObjectElement = InlineObjectElement
  { -- | The ID of the InlineObject this element contains.
    inlineObjectId :: (Core.Maybe Core.Text),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. An InlineObjectElement may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this InlineObject, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe InlineObjectElement_SuggestedTextStyleChanges),
    -- | The text style of this InlineObjectElement. Similar to text content, like text runs and footnote references, the text style of an inline object element can affect content layout as well as the styling of text inserted next to it.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObjectElement' with the minimum fields required to make a request.
newInlineObjectElement ::
  InlineObjectElement
newInlineObjectElement =
  InlineObjectElement
    { inlineObjectId = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON InlineObjectElement where
  parseJSON =
    Core.withObject
      "InlineObjectElement"
      ( \o ->
          InlineObjectElement
            Core.<$> (o Core..:? "inlineObjectId")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON InlineObjectElement where
  toJSON InlineObjectElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("inlineObjectId" Core..=) Core.<$> inlineObjectId,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this InlineObject, keyed by suggestion ID.
--
-- /See:/ 'newInlineObjectElement_SuggestedTextStyleChanges' smart constructor.
newtype InlineObjectElement_SuggestedTextStyleChanges = InlineObjectElement_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObjectElement_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newInlineObjectElement_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  InlineObjectElement_SuggestedTextStyleChanges
newInlineObjectElement_SuggestedTextStyleChanges additional =
  InlineObjectElement_SuggestedTextStyleChanges
    { additional =
        additional
    }

instance
  Core.FromJSON
    InlineObjectElement_SuggestedTextStyleChanges
  where
  parseJSON =
    Core.withObject
      "InlineObjectElement_SuggestedTextStyleChanges"
      ( \o ->
          InlineObjectElement_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON InlineObjectElement_SuggestedTextStyleChanges where
  toJSON InlineObjectElement_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Properties of an InlineObject.
--
-- /See:/ 'newInlineObjectProperties' smart constructor.
newtype InlineObjectProperties = InlineObjectProperties
  { -- | The embedded object of this inline object.
    embeddedObject :: (Core.Maybe EmbeddedObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObjectProperties' with the minimum fields required to make a request.
newInlineObjectProperties ::
  InlineObjectProperties
newInlineObjectProperties =
  InlineObjectProperties {embeddedObject = Core.Nothing}

instance Core.FromJSON InlineObjectProperties where
  parseJSON =
    Core.withObject
      "InlineObjectProperties"
      ( \o ->
          InlineObjectProperties Core.<$> (o Core..:? "embeddedObject")
      )

instance Core.ToJSON InlineObjectProperties where
  toJSON InlineObjectProperties {..} =
    Core.object
      ( Core.catMaybes
          [("embeddedObject" Core..=) Core.<$> embeddedObject]
      )

-- | A mask that indicates which of the fields on the base InlineObjectProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newInlineObjectPropertiesSuggestionState' smart constructor.
newtype InlineObjectPropertiesSuggestionState = InlineObjectPropertiesSuggestionState
  { -- | A mask that indicates which of the fields in embedded_object have been changed in this suggestion.
    embeddedObjectSuggestionState :: (Core.Maybe EmbeddedObjectSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineObjectPropertiesSuggestionState' with the minimum fields required to make a request.
newInlineObjectPropertiesSuggestionState ::
  InlineObjectPropertiesSuggestionState
newInlineObjectPropertiesSuggestionState =
  InlineObjectPropertiesSuggestionState
    { embeddedObjectSuggestionState =
        Core.Nothing
    }

instance Core.FromJSON InlineObjectPropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "InlineObjectPropertiesSuggestionState"
      ( \o ->
          InlineObjectPropertiesSuggestionState
            Core.<$> (o Core..:? "embeddedObjectSuggestionState")
      )

instance Core.ToJSON InlineObjectPropertiesSuggestionState where
  toJSON InlineObjectPropertiesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("embeddedObjectSuggestionState" Core..=)
              Core.<$> embeddedObjectSuggestionState
          ]
      )

-- | Inserts an InlineObject containing an image at the given location.
--
-- /See:/ 'newInsertInlineImageRequest' smart constructor.
data InsertInlineImageRequest = InsertInlineImageRequest
  { -- | Inserts the text at the end of a header, footer or the document body. Inline images cannot be inserted inside a footnote.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts the image at a specific index in the document. The image must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table\'s start index (i.e. between the table and its preceding paragraph). Inline images cannot be inserted inside a footnote or equation.
    location :: (Core.Maybe Location),
    -- | The size that the image should appear as in the document. This property is optional and the final size of the image in the document is determined by the following rules: * If neither width nor height is specified, then a default size of the image is calculated based on its resolution. * If one dimension is specified then the other dimension is calculated to preserve the aspect ratio of the image. * If both width and height are specified, the image is scaled to fit within the provided dimensions while maintaining its aspect ratio.
    objectSize :: (Core.Maybe Size),
    -- | The image URI. The image is fetched once at insertion time and a copy is stored for display inside the document. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URI must be publicly accessible and at most 2 kB in length. The URI itself is saved with the image, and exposed via the ImageProperties.content_uri field.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertInlineImageRequest' with the minimum fields required to make a request.
newInsertInlineImageRequest ::
  InsertInlineImageRequest
newInsertInlineImageRequest =
  InsertInlineImageRequest
    { endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing,
      objectSize = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON InsertInlineImageRequest where
  parseJSON =
    Core.withObject
      "InsertInlineImageRequest"
      ( \o ->
          InsertInlineImageRequest
            Core.<$> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "objectSize")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON InsertInlineImageRequest where
  toJSON InsertInlineImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location,
            ("objectSize" Core..=) Core.<$> objectSize,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | The result of inserting an inline image.
--
-- /See:/ 'newInsertInlineImageResponse' smart constructor.
newtype InsertInlineImageResponse = InsertInlineImageResponse
  { -- | The ID of the created InlineObject.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertInlineImageResponse' with the minimum fields required to make a request.
newInsertInlineImageResponse ::
  InsertInlineImageResponse
newInsertInlineImageResponse =
  InsertInlineImageResponse {objectId = Core.Nothing}

instance Core.FromJSON InsertInlineImageResponse where
  parseJSON =
    Core.withObject
      "InsertInlineImageResponse"
      (\o -> InsertInlineImageResponse Core.<$> (o Core..:? "objectId"))

instance Core.ToJSON InsertInlineImageResponse where
  toJSON InsertInlineImageResponse {..} =
    Core.object
      (Core.catMaybes [("objectId" Core..=) Core.<$> objectId])

-- | The result of inserting an embedded Google Sheets chart.
--
-- /See:/ 'newInsertInlineSheetsChartResponse' smart constructor.
newtype InsertInlineSheetsChartResponse = InsertInlineSheetsChartResponse
  { -- | The object ID of the inserted chart.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertInlineSheetsChartResponse' with the minimum fields required to make a request.
newInsertInlineSheetsChartResponse ::
  InsertInlineSheetsChartResponse
newInsertInlineSheetsChartResponse =
  InsertInlineSheetsChartResponse {objectId = Core.Nothing}

instance Core.FromJSON InsertInlineSheetsChartResponse where
  parseJSON =
    Core.withObject
      "InsertInlineSheetsChartResponse"
      ( \o ->
          InsertInlineSheetsChartResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON InsertInlineSheetsChartResponse where
  toJSON InsertInlineSheetsChartResponse {..} =
    Core.object
      (Core.catMaybes [("objectId" Core..=) Core.<$> objectId])

-- | Inserts a page break followed by a newline at the specified location.
--
-- /See:/ 'newInsertPageBreakRequest' smart constructor.
data InsertPageBreakRequest = InsertPageBreakRequest
  { -- | Inserts the page break at the end of the document body. Page breaks cannot be inserted inside a footnote, header or footer. Since page breaks can only be inserted inside the body, the segment ID field must be empty.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts the page break at a specific index in the document. The page break must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table\'s start index (i.e. between the table and its preceding paragraph). Page breaks cannot be inserted inside a table, equation, footnote, header or footer. Since page breaks can only be inserted inside the body, the segment ID field must be empty.
    location :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertPageBreakRequest' with the minimum fields required to make a request.
newInsertPageBreakRequest ::
  InsertPageBreakRequest
newInsertPageBreakRequest =
  InsertPageBreakRequest
    { endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing
    }

instance Core.FromJSON InsertPageBreakRequest where
  parseJSON =
    Core.withObject
      "InsertPageBreakRequest"
      ( \o ->
          InsertPageBreakRequest
            Core.<$> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
      )

instance Core.ToJSON InsertPageBreakRequest where
  toJSON InsertPageBreakRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location
          ]
      )

-- | Inserts a section break at the given location. A newline character will be inserted before the section break.
--
-- /See:/ 'newInsertSectionBreakRequest' smart constructor.
data InsertSectionBreakRequest = InsertSectionBreakRequest
  { -- | Inserts a newline and a section break at the end of the document body. Section breaks cannot be inserted inside a footnote, header or footer. Because section breaks can only be inserted inside the body, the segment ID field must be empty.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts a newline and a section break at a specific index in the document. The section break must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table\'s start index (i.e. between the table and its preceding paragraph). Section breaks cannot be inserted inside a table, equation, footnote, header, or footer. Since section breaks can only be inserted inside the body, the segment ID field must be empty.
    location :: (Core.Maybe Location),
    -- | The type of section to insert.
    sectionType :: (Core.Maybe InsertSectionBreakRequest_SectionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertSectionBreakRequest' with the minimum fields required to make a request.
newInsertSectionBreakRequest ::
  InsertSectionBreakRequest
newInsertSectionBreakRequest =
  InsertSectionBreakRequest
    { endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing,
      sectionType = Core.Nothing
    }

instance Core.FromJSON InsertSectionBreakRequest where
  parseJSON =
    Core.withObject
      "InsertSectionBreakRequest"
      ( \o ->
          InsertSectionBreakRequest
            Core.<$> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "sectionType")
      )

instance Core.ToJSON InsertSectionBreakRequest where
  toJSON InsertSectionBreakRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location,
            ("sectionType" Core..=) Core.<$> sectionType
          ]
      )

-- | Inserts an empty column into a table.
--
-- /See:/ 'newInsertTableColumnRequest' smart constructor.
data InsertTableColumnRequest = InsertTableColumnRequest
  { -- | Whether to insert new column to the right of the reference cell location. - @True@: insert to the right. - @False@: insert to the left.
    insertRight :: (Core.Maybe Core.Bool),
    -- | The reference table cell location from which columns will be inserted. A new column will be inserted to the left (or right) of the column where the reference cell is. If the reference cell is a merged cell, a new column will be inserted to the left (or right) of the merged cell.
    tableCellLocation :: (Core.Maybe TableCellLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTableColumnRequest' with the minimum fields required to make a request.
newInsertTableColumnRequest ::
  InsertTableColumnRequest
newInsertTableColumnRequest =
  InsertTableColumnRequest
    { insertRight = Core.Nothing,
      tableCellLocation = Core.Nothing
    }

instance Core.FromJSON InsertTableColumnRequest where
  parseJSON =
    Core.withObject
      "InsertTableColumnRequest"
      ( \o ->
          InsertTableColumnRequest
            Core.<$> (o Core..:? "insertRight")
            Core.<*> (o Core..:? "tableCellLocation")
      )

instance Core.ToJSON InsertTableColumnRequest where
  toJSON InsertTableColumnRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertRight" Core..=) Core.<$> insertRight,
            ("tableCellLocation" Core..=) Core.<$> tableCellLocation
          ]
      )

-- | Inserts a table at the specified location. A newline character will be inserted before the inserted table.
--
-- /See:/ 'newInsertTableRequest' smart constructor.
data InsertTableRequest = InsertTableRequest
  { -- | The number of columns in the table.
    columns :: (Core.Maybe Core.Int32),
    -- | Inserts the table at the end of the given header, footer or document body. A newline character will be inserted before the inserted table. Tables cannot be inserted inside a footnote.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts the table at a specific model index. A newline character will be inserted before the inserted table, therefore the table start index will be at the specified location index + 1. The table must be inserted inside the bounds of an existing Paragraph. For instance, it cannot be inserted at a table\'s start index (i.e. between an existing table and its preceding paragraph). Tables cannot be inserted inside a footnote or equation.
    location :: (Core.Maybe Location),
    -- | The number of rows in the table.
    rows :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTableRequest' with the minimum fields required to make a request.
newInsertTableRequest ::
  InsertTableRequest
newInsertTableRequest =
  InsertTableRequest
    { columns = Core.Nothing,
      endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing,
      rows = Core.Nothing
    }

instance Core.FromJSON InsertTableRequest where
  parseJSON =
    Core.withObject
      "InsertTableRequest"
      ( \o ->
          InsertTableRequest
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON InsertTableRequest where
  toJSON InsertTableRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location,
            ("rows" Core..=) Core.<$> rows
          ]
      )

-- | Inserts an empty row into a table.
--
-- /See:/ 'newInsertTableRowRequest' smart constructor.
data InsertTableRowRequest = InsertTableRowRequest
  { -- | Whether to insert new row below the reference cell location. - @True@: insert below the cell. - @False@: insert above the cell.
    insertBelow :: (Core.Maybe Core.Bool),
    -- | The reference table cell location from which rows will be inserted. A new row will be inserted above (or below) the row where the reference cell is. If the reference cell is a merged cell, a new row will be inserted above (or below) the merged cell.
    tableCellLocation :: (Core.Maybe TableCellLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTableRowRequest' with the minimum fields required to make a request.
newInsertTableRowRequest ::
  InsertTableRowRequest
newInsertTableRowRequest =
  InsertTableRowRequest
    { insertBelow = Core.Nothing,
      tableCellLocation = Core.Nothing
    }

instance Core.FromJSON InsertTableRowRequest where
  parseJSON =
    Core.withObject
      "InsertTableRowRequest"
      ( \o ->
          InsertTableRowRequest
            Core.<$> (o Core..:? "insertBelow")
            Core.<*> (o Core..:? "tableCellLocation")
      )

instance Core.ToJSON InsertTableRowRequest where
  toJSON InsertTableRowRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertBelow" Core..=) Core.<$> insertBelow,
            ("tableCellLocation" Core..=) Core.<$> tableCellLocation
          ]
      )

-- | Inserts text at the specified location.
--
-- /See:/ 'newInsertTextRequest' smart constructor.
data InsertTextRequest = InsertTextRequest
  { -- | Inserts the text at the end of a header, footer, footnote or the document body.
    endOfSegmentLocation :: (Core.Maybe EndOfSegmentLocation),
    -- | Inserts the text at a specific index in the document. Text must be inserted inside the bounds of an existing Paragraph. For instance, text cannot be inserted at a table\'s start index (i.e. between the table and its preceding paragraph). The text must be inserted in the preceding paragraph.
    location :: (Core.Maybe Location),
    -- | The text to be inserted. Inserting a newline character will implicitly create a new Paragraph at that index. The paragraph style of the new paragraph will be copied from the paragraph at the current insertion index, including lists and bullets. Text styles for inserted text will be determined automatically, generally preserving the styling of neighboring text. In most cases, the text style for the inserted text will match the text immediately before the insertion index. Some control characters (U+0000-U+0008, U+000C-U+001F) and characters from the Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF) will be stripped out of the inserted text.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTextRequest' with the minimum fields required to make a request.
newInsertTextRequest ::
  InsertTextRequest
newInsertTextRequest =
  InsertTextRequest
    { endOfSegmentLocation = Core.Nothing,
      location = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON InsertTextRequest where
  parseJSON =
    Core.withObject
      "InsertTextRequest"
      ( \o ->
          InsertTextRequest
            Core.<$> (o Core..:? "endOfSegmentLocation")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON InsertTextRequest where
  toJSON InsertTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("endOfSegmentLocation" Core..=) Core.<$> endOfSegmentLocation,
            ("location" Core..=) Core.<$> location,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | A reference to another portion of a document or an external URL resource.
--
-- /See:/ 'newLink' smart constructor.
data Link = Link
  { -- | A bookmark in this document. In documents containing a single tab, links to bookmarks within the singular tab continue to return Link.bookmarkId when the includeTabsContent parameter is set to @false@ or unset. Otherwise, this field is returned.
    bookmark :: (Core.Maybe BookmarkLink),
    -- | The ID of a bookmark in this document. Legacy field: Instead, set includeTabsContent to @true@ and use Link.bookmark for read and write operations. This field is only returned when includeTabsContent is set to @false@ in documents containing a single tab and links to a bookmark within the singular tab. Otherwise, Link.bookmark is returned. If this field is used in a write request, the bookmark is considered to be from the tab ID specified in the request. If a tab ID is not specified in the request, it is considered to be from the first tab in the document.
    bookmarkId :: (Core.Maybe Core.Text),
    -- | A heading in this document. In documents containing a single tab, links to headings within the singular tab continue to return Link.headingId when the includeTabsContent parameter is set to @false@ or unset. Otherwise, this field is returned.
    heading :: (Core.Maybe HeadingLink),
    -- | The ID of a heading in this document. Legacy field: Instead, set includeTabsContent to @true@ and use Link.heading for read and write operations. This field is only returned when includeTabsContent is set to @false@ in documents containing a single tab and links to a heading within the singular tab. Otherwise, Link.heading is returned. If this field is used in a write request, the heading is considered to be from the tab ID specified in the request. If a tab ID is not specified in the request, it is considered to be from the first tab in the document.
    headingId :: (Core.Maybe Core.Text),
    -- | The ID of a tab in this document.
    tabId :: (Core.Maybe Core.Text),
    -- | An external URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink ::
  Link
newLink =
  Link
    { bookmark = Core.Nothing,
      bookmarkId = Core.Nothing,
      heading = Core.Nothing,
      headingId = Core.Nothing,
      tabId = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Link where
  parseJSON =
    Core.withObject
      "Link"
      ( \o ->
          Link
            Core.<$> (o Core..:? "bookmark")
            Core.<*> (o Core..:? "bookmarkId")
            Core.<*> (o Core..:? "heading")
            Core.<*> (o Core..:? "headingId")
            Core.<*> (o Core..:? "tabId")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Link where
  toJSON Link {..} =
    Core.object
      ( Core.catMaybes
          [ ("bookmark" Core..=) Core.<$> bookmark,
            ("bookmarkId" Core..=) Core.<$> bookmarkId,
            ("heading" Core..=) Core.<$> heading,
            ("headingId" Core..=) Core.<$> headingId,
            ("tabId" Core..=) Core.<$> tabId,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A reference to the external linked source content.
--
-- /See:/ 'newLinkedContentReference' smart constructor.
newtype LinkedContentReference = LinkedContentReference
  { -- | A reference to the linked chart.
    sheetsChartReference :: (Core.Maybe SheetsChartReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkedContentReference' with the minimum fields required to make a request.
newLinkedContentReference ::
  LinkedContentReference
newLinkedContentReference =
  LinkedContentReference {sheetsChartReference = Core.Nothing}

instance Core.FromJSON LinkedContentReference where
  parseJSON =
    Core.withObject
      "LinkedContentReference"
      ( \o ->
          LinkedContentReference
            Core.<$> (o Core..:? "sheetsChartReference")
      )

instance Core.ToJSON LinkedContentReference where
  toJSON LinkedContentReference {..} =
    Core.object
      ( Core.catMaybes
          [("sheetsChartReference" Core..=) Core.<$> sheetsChartReference]
      )

-- | A mask that indicates which of the fields on the base LinkedContentReference have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newLinkedContentReferenceSuggestionState' smart constructor.
newtype LinkedContentReferenceSuggestionState = LinkedContentReferenceSuggestionState
  { -- | A mask that indicates which of the fields in sheets/chart/reference have been changed in this suggestion.
    sheetsChartReferenceSuggestionState :: (Core.Maybe SheetsChartReferenceSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LinkedContentReferenceSuggestionState' with the minimum fields required to make a request.
newLinkedContentReferenceSuggestionState ::
  LinkedContentReferenceSuggestionState
newLinkedContentReferenceSuggestionState =
  LinkedContentReferenceSuggestionState
    { sheetsChartReferenceSuggestionState =
        Core.Nothing
    }

instance Core.FromJSON LinkedContentReferenceSuggestionState where
  parseJSON =
    Core.withObject
      "LinkedContentReferenceSuggestionState"
      ( \o ->
          LinkedContentReferenceSuggestionState
            Core.<$> (o Core..:? "sheetsChartReferenceSuggestionState")
      )

instance Core.ToJSON LinkedContentReferenceSuggestionState where
  toJSON LinkedContentReferenceSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("sheetsChartReferenceSuggestionState" Core..=)
              Core.<$> sheetsChartReferenceSuggestionState
          ]
      )

-- | A List represents the list attributes for a group of paragraphs that all belong to the same list. A paragraph that\'s part of a list has a reference to the list\'s ID in its bullet.
--
-- /See:/ 'newList' smart constructor.
data List = List
  { -- | The properties of the list.
    listProperties :: (Core.Maybe ListProperties),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this list.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion ID. If empty, then this is not a suggested insertion.
    suggestedInsertionId :: (Core.Maybe Core.Text),
    -- | The suggested changes to the list properties, keyed by suggestion ID.
    suggestedListPropertiesChanges :: (Core.Maybe List_SuggestedListPropertiesChanges)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'List' with the minimum fields required to make a request.
newList ::
  List
newList =
  List
    { listProperties = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionId = Core.Nothing,
      suggestedListPropertiesChanges = Core.Nothing
    }

instance Core.FromJSON List where
  parseJSON =
    Core.withObject
      "List"
      ( \o ->
          List
            Core.<$> (o Core..:? "listProperties")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionId")
            Core.<*> (o Core..:? "suggestedListPropertiesChanges")
      )

instance Core.ToJSON List where
  toJSON List {..} =
    Core.object
      ( Core.catMaybes
          [ ("listProperties" Core..=) Core.<$> listProperties,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionId" Core..=) Core.<$> suggestedInsertionId,
            ("suggestedListPropertiesChanges" Core..=)
              Core.<$> suggestedListPropertiesChanges
          ]
      )

-- | The suggested changes to the list properties, keyed by suggestion ID.
--
-- /See:/ 'newList_SuggestedListPropertiesChanges' smart constructor.
newtype List_SuggestedListPropertiesChanges = List_SuggestedListPropertiesChanges
  { additional :: (Core.HashMap Core.Text SuggestedListProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'List_SuggestedListPropertiesChanges' with the minimum fields required to make a request.
newList_SuggestedListPropertiesChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedListProperties ->
  List_SuggestedListPropertiesChanges
newList_SuggestedListPropertiesChanges additional =
  List_SuggestedListPropertiesChanges {additional = additional}

instance Core.FromJSON List_SuggestedListPropertiesChanges where
  parseJSON =
    Core.withObject
      "List_SuggestedListPropertiesChanges"
      ( \o ->
          List_SuggestedListPropertiesChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON List_SuggestedListPropertiesChanges where
  toJSON List_SuggestedListPropertiesChanges {..} =
    Core.toJSON additional

-- | The properties of a list that describe the look and feel of bullets belonging to paragraphs associated with a list.
--
-- /See:/ 'newListProperties' smart constructor.
newtype ListProperties = ListProperties
  { -- | Describes the properties of the bullets at the associated level. A list has at most 9 levels of nesting with nesting level 0 corresponding to the top-most level and nesting level 8 corresponding to the most nested level. The nesting levels are returned in ascending order with the least nested returned first.
    nestingLevels :: (Core.Maybe [NestingLevel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProperties' with the minimum fields required to make a request.
newListProperties ::
  ListProperties
newListProperties = ListProperties {nestingLevels = Core.Nothing}

instance Core.FromJSON ListProperties where
  parseJSON =
    Core.withObject
      "ListProperties"
      (\o -> ListProperties Core.<$> (o Core..:? "nestingLevels"))

instance Core.ToJSON ListProperties where
  toJSON ListProperties {..} =
    Core.object
      (Core.catMaybes [("nestingLevels" Core..=) Core.<$> nestingLevels])

-- | A mask that indicates which of the fields on the base ListProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newListPropertiesSuggestionState' smart constructor.
newtype ListPropertiesSuggestionState = ListPropertiesSuggestionState
  { -- | A mask that indicates which of the fields on the corresponding NestingLevel in nesting_levels have been changed in this suggestion. The nesting level suggestion states are returned in ascending order of the nesting level with the least nested returned first.
    nestingLevelsSuggestionStates :: (Core.Maybe [NestingLevelSuggestionState])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListPropertiesSuggestionState' with the minimum fields required to make a request.
newListPropertiesSuggestionState ::
  ListPropertiesSuggestionState
newListPropertiesSuggestionState =
  ListPropertiesSuggestionState
    { nestingLevelsSuggestionStates =
        Core.Nothing
    }

instance Core.FromJSON ListPropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "ListPropertiesSuggestionState"
      ( \o ->
          ListPropertiesSuggestionState
            Core.<$> (o Core..:? "nestingLevelsSuggestionStates")
      )

instance Core.ToJSON ListPropertiesSuggestionState where
  toJSON ListPropertiesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("nestingLevelsSuggestionStates" Core..=)
              Core.<$> nestingLevelsSuggestionStates
          ]
      )

-- | A particular location in the document.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The zero-based index, in UTF-16 code units. The index is relative to the beginning of the segment specified by segment_id.
    index :: (Core.Maybe Core.Int32),
    -- | The ID of the header, footer or footnote the location is in. An empty segment ID signifies the document\'s body.
    segmentId :: (Core.Maybe Core.Text),
    -- | The tab that the location is in. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { index = Core.Nothing,
      segmentId = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "segmentId")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("segmentId" Core..=) Core.<$> segmentId,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Merges cells in a Table.
--
-- /See:/ 'newMergeTableCellsRequest' smart constructor.
newtype MergeTableCellsRequest = MergeTableCellsRequest
  { -- | The table range specifying which cells of the table to merge. Any text in the cells being merged will be concatenated and stored in the \"head\" cell of the range. This is the upper-left cell of the range when the content direction is left to right, and the upper-right cell of the range otherwise. If the range is non-rectangular (which can occur in some cases where the range covers cells that are already merged or where the table is non-rectangular), a 400 bad request error is returned.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MergeTableCellsRequest' with the minimum fields required to make a request.
newMergeTableCellsRequest ::
  MergeTableCellsRequest
newMergeTableCellsRequest =
  MergeTableCellsRequest {tableRange = Core.Nothing}

instance Core.FromJSON MergeTableCellsRequest where
  parseJSON =
    Core.withObject
      "MergeTableCellsRequest"
      (\o -> MergeTableCellsRequest Core.<$> (o Core..:? "tableRange"))

instance Core.ToJSON MergeTableCellsRequest where
  toJSON MergeTableCellsRequest {..} =
    Core.object
      (Core.catMaybes [("tableRange" Core..=) Core.<$> tableRange])

-- | A collection of Ranges with the same named range ID. Named ranges allow developers to associate parts of a document with an arbitrary user-defined label so their contents can be programmatically read or edited later. A document can contain multiple named ranges with the same name, but every named range has a unique ID. A named range is created with a single Range, and content inserted inside a named range generally expands that range. However, certain document changes can cause the range to be split into multiple ranges. Named ranges are not private. All applications and collaborators that have access to the document can see its named ranges.
--
-- /See:/ 'newNamedRange' smart constructor.
data NamedRange = NamedRange
  { -- | The name of the named range.
    name :: (Core.Maybe Core.Text),
    -- | The ID of the named range.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | The ranges that belong to this named range.
    ranges :: (Core.Maybe [Range])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedRange' with the minimum fields required to make a request.
newNamedRange ::
  NamedRange
newNamedRange =
  NamedRange
    { name = Core.Nothing,
      namedRangeId = Core.Nothing,
      ranges = Core.Nothing
    }

instance Core.FromJSON NamedRange where
  parseJSON =
    Core.withObject
      "NamedRange"
      ( \o ->
          NamedRange
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "ranges")
      )

instance Core.ToJSON NamedRange where
  toJSON NamedRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("ranges" Core..=) Core.<$> ranges
          ]
      )

-- | A collection of all the NamedRanges in the document that share a given name.
--
-- /See:/ 'newNamedRanges' smart constructor.
data NamedRanges = NamedRanges
  { -- | The name that all the named ranges share.
    name :: (Core.Maybe Core.Text),
    -- | The NamedRanges that share the same name.
    namedRanges :: (Core.Maybe [NamedRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedRanges' with the minimum fields required to make a request.
newNamedRanges ::
  NamedRanges
newNamedRanges =
  NamedRanges {name = Core.Nothing, namedRanges = Core.Nothing}

instance Core.FromJSON NamedRanges where
  parseJSON =
    Core.withObject
      "NamedRanges"
      ( \o ->
          NamedRanges
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "namedRanges")
      )

instance Core.ToJSON NamedRanges where
  toJSON NamedRanges {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("namedRanges" Core..=) Core.<$> namedRanges
          ]
      )

-- | A named style. Paragraphs in the document can inherit their TextStyle and ParagraphStyle from this named style when they have the same named style type.
--
-- /See:/ 'newNamedStyle' smart constructor.
data NamedStyle = NamedStyle
  { -- | The type of this named style.
    namedStyleType :: (Core.Maybe NamedStyle_NamedStyleType),
    -- | The paragraph style of this named style.
    paragraphStyle :: (Core.Maybe ParagraphStyle),
    -- | The text style of this named style.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedStyle' with the minimum fields required to make a request.
newNamedStyle ::
  NamedStyle
newNamedStyle =
  NamedStyle
    { namedStyleType = Core.Nothing,
      paragraphStyle = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON NamedStyle where
  parseJSON =
    Core.withObject
      "NamedStyle"
      ( \o ->
          NamedStyle
            Core.<$> (o Core..:? "namedStyleType")
            Core.<*> (o Core..:? "paragraphStyle")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON NamedStyle where
  toJSON NamedStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("namedStyleType" Core..=) Core.<$> namedStyleType,
            ("paragraphStyle" Core..=) Core.<$> paragraphStyle,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | A suggestion state of a NamedStyle message.
--
-- /See:/ 'newNamedStyleSuggestionState' smart constructor.
data NamedStyleSuggestionState = NamedStyleSuggestionState
  { -- | The named style type that this suggestion state corresponds to. This field is provided as a convenience for matching the NamedStyleSuggestionState with its corresponding NamedStyle.
    namedStyleType :: (Core.Maybe NamedStyleSuggestionState_NamedStyleType),
    -- | A mask that indicates which of the fields in paragraph style have been changed in this suggestion.
    paragraphStyleSuggestionState :: (Core.Maybe ParagraphStyleSuggestionState),
    -- | A mask that indicates which of the fields in text style have been changed in this suggestion.
    textStyleSuggestionState :: (Core.Maybe TextStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedStyleSuggestionState' with the minimum fields required to make a request.
newNamedStyleSuggestionState ::
  NamedStyleSuggestionState
newNamedStyleSuggestionState =
  NamedStyleSuggestionState
    { namedStyleType = Core.Nothing,
      paragraphStyleSuggestionState = Core.Nothing,
      textStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON NamedStyleSuggestionState where
  parseJSON =
    Core.withObject
      "NamedStyleSuggestionState"
      ( \o ->
          NamedStyleSuggestionState
            Core.<$> (o Core..:? "namedStyleType")
            Core.<*> (o Core..:? "paragraphStyleSuggestionState")
            Core.<*> (o Core..:? "textStyleSuggestionState")
      )

instance Core.ToJSON NamedStyleSuggestionState where
  toJSON NamedStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("namedStyleType" Core..=) Core.<$> namedStyleType,
            ("paragraphStyleSuggestionState" Core..=)
              Core.<$> paragraphStyleSuggestionState,
            ("textStyleSuggestionState" Core..=)
              Core.<$> textStyleSuggestionState
          ]
      )

-- | The named styles. Paragraphs in the document can inherit their TextStyle and ParagraphStyle from these named styles.
--
-- /See:/ 'newNamedStyles' smart constructor.
newtype NamedStyles = NamedStyles
  { -- | The named styles. There\'s an entry for each of the possible named style types.
    styles :: (Core.Maybe [NamedStyle])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedStyles' with the minimum fields required to make a request.
newNamedStyles ::
  NamedStyles
newNamedStyles = NamedStyles {styles = Core.Nothing}

instance Core.FromJSON NamedStyles where
  parseJSON =
    Core.withObject
      "NamedStyles"
      (\o -> NamedStyles Core.<$> (o Core..:? "styles"))

instance Core.ToJSON NamedStyles where
  toJSON NamedStyles {..} =
    Core.object (Core.catMaybes [("styles" Core..=) Core.<$> styles])

-- | The suggestion state of a NamedStyles message.
--
-- /See:/ 'newNamedStylesSuggestionState' smart constructor.
newtype NamedStylesSuggestionState = NamedStylesSuggestionState
  { -- | A mask that indicates which of the fields on the corresponding NamedStyle in styles have been changed in this suggestion. The order of these named style suggestion states matches the order of the corresponding named style within the named styles suggestion.
    stylesSuggestionStates :: (Core.Maybe [NamedStyleSuggestionState])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NamedStylesSuggestionState' with the minimum fields required to make a request.
newNamedStylesSuggestionState ::
  NamedStylesSuggestionState
newNamedStylesSuggestionState =
  NamedStylesSuggestionState {stylesSuggestionStates = Core.Nothing}

instance Core.FromJSON NamedStylesSuggestionState where
  parseJSON =
    Core.withObject
      "NamedStylesSuggestionState"
      ( \o ->
          NamedStylesSuggestionState
            Core.<$> (o Core..:? "stylesSuggestionStates")
      )

instance Core.ToJSON NamedStylesSuggestionState where
  toJSON NamedStylesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("stylesSuggestionStates" Core..=)
              Core.<$> stylesSuggestionStates
          ]
      )

-- | Contains properties describing the look and feel of a list bullet at a given level of nesting.
--
-- /See:/ 'newNestingLevel' smart constructor.
data NestingLevel = NestingLevel
  { -- | The alignment of the bullet within the space allotted for rendering the bullet.
    bulletAlignment :: (Core.Maybe NestingLevel_BulletAlignment),
    -- | The format string used by bullets at this level of nesting. The glyph format contains one or more placeholders, and these placeholders are replaced with the appropriate values depending on the glyph/type or glyph/symbol. The placeholders follow the pattern @%[nesting_level]@. Furthermore, placeholders can have prefixes and suffixes. Thus, the glyph format follows the pattern @%[nesting_level]@. Note that the prefix and suffix are optional and can be arbitrary strings. For example, the glyph format @%0.@ indicates that the rendered glyph will replace the placeholder with the corresponding glyph for nesting level 0 followed by a period as the suffix. So a list with a glyph type of UPPER_ALPHA and glyph format @%0.@ at nesting level 0 will result in a list with rendered glyphs @A.@ @B.@ @C.@ The glyph format can contain placeholders for the current nesting level as well as placeholders for parent nesting levels. For example, a list can have a glyph format of @%0.@ at nesting level 0 and a glyph format of
    -- @%0.%1.@ at nesting level 1. Assuming both nesting levels have DECIMAL glyph types, this would result in a list with rendered glyphs @1.@ @2.@ @2.1.@ @2.2.@ @3.@ For nesting levels that are ordered, the string that replaces a placeholder in the glyph format for a particular paragraph depends on the paragraph\'s order within the list.
    glyphFormat :: (Core.Maybe Core.Text),
    -- | A custom glyph symbol used by bullets when paragraphs at this level of nesting is unordered. The glyph symbol replaces placeholders within the glyph/format. For example, if the glyph/symbol is the solid circle corresponding to Unicode U+25cf code point and the glyph_format is @%0@, the rendered glyph would be the solid circle.
    glyphSymbol :: (Core.Maybe Core.Text),
    -- | The type of glyph used by bullets when paragraphs at this level of nesting is ordered. The glyph type determines the type of glyph used to replace placeholders within the glyph/format when paragraphs at this level of nesting are ordered. For example, if the nesting level is 0, the glyph/format is @%0.@ and the glyph type is DECIMAL, then the rendered glyph would replace the placeholder @%0@ in the glyph format with a number corresponding to the list item\'s order within the list.
    glyphType :: (Core.Maybe NestingLevel_GlyphType),
    -- | The amount of indentation for the first line of paragraphs at this level of nesting.
    indentFirstLine :: (Core.Maybe Dimension),
    -- | The amount of indentation for paragraphs at this level of nesting. Applied to the side that corresponds to the start of the text, based on the paragraph\'s content direction.
    indentStart :: (Core.Maybe Dimension),
    -- | The number of the first list item at this nesting level. A value of 0 is treated as a value of 1 for lettered lists and Roman numeral lists. For values of both 0 and 1, lettered and Roman numeral lists will begin at @a@ and @i@ respectively. This value is ignored for nesting levels with unordered glyphs.
    startNumber :: (Core.Maybe Core.Int32),
    -- | The text style of bullets at this level of nesting.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NestingLevel' with the minimum fields required to make a request.
newNestingLevel ::
  NestingLevel
newNestingLevel =
  NestingLevel
    { bulletAlignment = Core.Nothing,
      glyphFormat = Core.Nothing,
      glyphSymbol = Core.Nothing,
      glyphType = Core.Nothing,
      indentFirstLine = Core.Nothing,
      indentStart = Core.Nothing,
      startNumber = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON NestingLevel where
  parseJSON =
    Core.withObject
      "NestingLevel"
      ( \o ->
          NestingLevel
            Core.<$> (o Core..:? "bulletAlignment")
            Core.<*> (o Core..:? "glyphFormat")
            Core.<*> (o Core..:? "glyphSymbol")
            Core.<*> (o Core..:? "glyphType")
            Core.<*> (o Core..:? "indentFirstLine")
            Core.<*> (o Core..:? "indentStart")
            Core.<*> (o Core..:? "startNumber")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON NestingLevel where
  toJSON NestingLevel {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletAlignment" Core..=) Core.<$> bulletAlignment,
            ("glyphFormat" Core..=) Core.<$> glyphFormat,
            ("glyphSymbol" Core..=) Core.<$> glyphSymbol,
            ("glyphType" Core..=) Core.<$> glyphType,
            ("indentFirstLine" Core..=) Core.<$> indentFirstLine,
            ("indentStart" Core..=) Core.<$> indentStart,
            ("startNumber" Core..=) Core.<$> startNumber,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | A mask that indicates which of the fields on the base NestingLevel have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newNestingLevelSuggestionState' smart constructor.
data NestingLevelSuggestionState = NestingLevelSuggestionState
  { -- | Indicates if there was a suggested change to bullet_alignment.
    bulletAlignmentSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to glyph_format.
    glyphFormatSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to glyph_symbol.
    glyphSymbolSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to glyph_type.
    glyphTypeSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to indent/first/line.
    indentFirstLineSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to indent_start.
    indentStartSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to start_number.
    startNumberSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in text style have been changed in this suggestion.
    textStyleSuggestionState :: (Core.Maybe TextStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NestingLevelSuggestionState' with the minimum fields required to make a request.
newNestingLevelSuggestionState ::
  NestingLevelSuggestionState
newNestingLevelSuggestionState =
  NestingLevelSuggestionState
    { bulletAlignmentSuggested =
        Core.Nothing,
      glyphFormatSuggested = Core.Nothing,
      glyphSymbolSuggested = Core.Nothing,
      glyphTypeSuggested = Core.Nothing,
      indentFirstLineSuggested = Core.Nothing,
      indentStartSuggested = Core.Nothing,
      startNumberSuggested = Core.Nothing,
      textStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON NestingLevelSuggestionState where
  parseJSON =
    Core.withObject
      "NestingLevelSuggestionState"
      ( \o ->
          NestingLevelSuggestionState
            Core.<$> (o Core..:? "bulletAlignmentSuggested")
            Core.<*> (o Core..:? "glyphFormatSuggested")
            Core.<*> (o Core..:? "glyphSymbolSuggested")
            Core.<*> (o Core..:? "glyphTypeSuggested")
            Core.<*> (o Core..:? "indentFirstLineSuggested")
            Core.<*> (o Core..:? "indentStartSuggested")
            Core.<*> (o Core..:? "startNumberSuggested")
            Core.<*> (o Core..:? "textStyleSuggestionState")
      )

instance Core.ToJSON NestingLevelSuggestionState where
  toJSON NestingLevelSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletAlignmentSuggested" Core..=)
              Core.<$> bulletAlignmentSuggested,
            ("glyphFormatSuggested" Core..=) Core.<$> glyphFormatSuggested,
            ("glyphSymbolSuggested" Core..=) Core.<$> glyphSymbolSuggested,
            ("glyphTypeSuggested" Core..=) Core.<$> glyphTypeSuggested,
            ("indentFirstLineSuggested" Core..=)
              Core.<$> indentFirstLineSuggested,
            ("indentStartSuggested" Core..=) Core.<$> indentStartSuggested,
            ("startNumberSuggested" Core..=) Core.<$> startNumberSuggested,
            ("textStyleSuggestionState" Core..=)
              Core.<$> textStyleSuggestionState
          ]
      )

-- | A collection of object IDs.
--
-- /See:/ 'newObjectReferences' smart constructor.
newtype ObjectReferences = ObjectReferences
  { -- | The object IDs.
    objectIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectReferences' with the minimum fields required to make a request.
newObjectReferences ::
  ObjectReferences
newObjectReferences = ObjectReferences {objectIds = Core.Nothing}

instance Core.FromJSON ObjectReferences where
  parseJSON =
    Core.withObject
      "ObjectReferences"
      (\o -> ObjectReferences Core.<$> (o Core..:? "objectIds"))

instance Core.ToJSON ObjectReferences where
  toJSON ObjectReferences {..} =
    Core.object
      (Core.catMaybes [("objectIds" Core..=) Core.<$> objectIds])

-- | A color that can either be fully opaque or fully transparent.
--
-- /See:/ 'newOptionalColor' smart constructor.
newtype OptionalColor = OptionalColor
  { -- | If set, this will be used as an opaque color. If unset, this represents a transparent color.
    color :: (Core.Maybe Color)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptionalColor' with the minimum fields required to make a request.
newOptionalColor ::
  OptionalColor
newOptionalColor = OptionalColor {color = Core.Nothing}

instance Core.FromJSON OptionalColor where
  parseJSON =
    Core.withObject
      "OptionalColor"
      (\o -> OptionalColor Core.<$> (o Core..:? "color"))

instance Core.ToJSON OptionalColor where
  toJSON OptionalColor {..} =
    Core.object (Core.catMaybes [("color" Core..=) Core.<$> color])

-- | A ParagraphElement representing a page break. A page break makes the subsequent text start at the top of the next page.
--
-- /See:/ 'newPageBreak' smart constructor.
data PageBreak = PageBreak
  { -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A PageBreak may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this PageBreak, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe PageBreak_SuggestedTextStyleChanges),
    -- | The text style of this PageBreak. Similar to text content, like text runs and footnote references, the text style of a page break can affect content layout as well as the styling of text inserted next to it.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageBreak' with the minimum fields required to make a request.
newPageBreak ::
  PageBreak
newPageBreak =
  PageBreak
    { suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON PageBreak where
  parseJSON =
    Core.withObject
      "PageBreak"
      ( \o ->
          PageBreak
            Core.<$> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON PageBreak where
  toJSON PageBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this PageBreak, keyed by suggestion ID.
--
-- /See:/ 'newPageBreak_SuggestedTextStyleChanges' smart constructor.
newtype PageBreak_SuggestedTextStyleChanges = PageBreak_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageBreak_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newPageBreak_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  PageBreak_SuggestedTextStyleChanges
newPageBreak_SuggestedTextStyleChanges additional =
  PageBreak_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON PageBreak_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "PageBreak_SuggestedTextStyleChanges"
      ( \o ->
          PageBreak_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON PageBreak_SuggestedTextStyleChanges where
  toJSON PageBreak_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | A StructuralElement representing a paragraph. A paragraph is a range of content that\'s terminated with a newline character.
--
-- /See:/ 'newParagraph' smart constructor.
data Paragraph = Paragraph
  { -- | The bullet for this paragraph. If not present, the paragraph does not belong to a list.
    bullet :: (Core.Maybe Bullet),
    -- | The content of the paragraph, broken down into its component parts.
    elements :: (Core.Maybe [ParagraphElement]),
    -- | The style of this paragraph.
    paragraphStyle :: (Core.Maybe ParagraphStyle),
    -- | The IDs of the positioned objects tethered to this paragraph.
    positionedObjectIds :: (Core.Maybe [Core.Text]),
    -- | The suggested changes to this paragraph\'s bullet.
    suggestedBulletChanges :: (Core.Maybe Paragraph_SuggestedBulletChanges),
    -- | The suggested paragraph style changes to this paragraph, keyed by suggestion ID.
    suggestedParagraphStyleChanges :: (Core.Maybe Paragraph_SuggestedParagraphStyleChanges),
    -- | The IDs of the positioned objects suggested to be attached to this paragraph, keyed by suggestion ID.
    suggestedPositionedObjectIds :: (Core.Maybe Paragraph_SuggestedPositionedObjectIds)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Paragraph' with the minimum fields required to make a request.
newParagraph ::
  Paragraph
newParagraph =
  Paragraph
    { bullet = Core.Nothing,
      elements = Core.Nothing,
      paragraphStyle = Core.Nothing,
      positionedObjectIds = Core.Nothing,
      suggestedBulletChanges = Core.Nothing,
      suggestedParagraphStyleChanges = Core.Nothing,
      suggestedPositionedObjectIds = Core.Nothing
    }

instance Core.FromJSON Paragraph where
  parseJSON =
    Core.withObject
      "Paragraph"
      ( \o ->
          Paragraph
            Core.<$> (o Core..:? "bullet")
            Core.<*> (o Core..:? "elements")
            Core.<*> (o Core..:? "paragraphStyle")
            Core.<*> (o Core..:? "positionedObjectIds")
            Core.<*> (o Core..:? "suggestedBulletChanges")
            Core.<*> (o Core..:? "suggestedParagraphStyleChanges")
            Core.<*> (o Core..:? "suggestedPositionedObjectIds")
      )

instance Core.ToJSON Paragraph where
  toJSON Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("bullet" Core..=) Core.<$> bullet,
            ("elements" Core..=) Core.<$> elements,
            ("paragraphStyle" Core..=) Core.<$> paragraphStyle,
            ("positionedObjectIds" Core..=) Core.<$> positionedObjectIds,
            ("suggestedBulletChanges" Core..=) Core.<$> suggestedBulletChanges,
            ("suggestedParagraphStyleChanges" Core..=)
              Core.<$> suggestedParagraphStyleChanges,
            ("suggestedPositionedObjectIds" Core..=)
              Core.<$> suggestedPositionedObjectIds
          ]
      )

-- | The suggested changes to this paragraph\'s bullet.
--
-- /See:/ 'newParagraph_SuggestedBulletChanges' smart constructor.
newtype Paragraph_SuggestedBulletChanges = Paragraph_SuggestedBulletChanges
  { additional :: (Core.HashMap Core.Text SuggestedBullet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Paragraph_SuggestedBulletChanges' with the minimum fields required to make a request.
newParagraph_SuggestedBulletChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedBullet ->
  Paragraph_SuggestedBulletChanges
newParagraph_SuggestedBulletChanges additional =
  Paragraph_SuggestedBulletChanges {additional = additional}

instance Core.FromJSON Paragraph_SuggestedBulletChanges where
  parseJSON =
    Core.withObject
      "Paragraph_SuggestedBulletChanges"
      ( \o ->
          Paragraph_SuggestedBulletChanges Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Paragraph_SuggestedBulletChanges where
  toJSON Paragraph_SuggestedBulletChanges {..} =
    Core.toJSON additional

-- | The suggested paragraph style changes to this paragraph, keyed by suggestion ID.
--
-- /See:/ 'newParagraph_SuggestedParagraphStyleChanges' smart constructor.
newtype Paragraph_SuggestedParagraphStyleChanges = Paragraph_SuggestedParagraphStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedParagraphStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Paragraph_SuggestedParagraphStyleChanges' with the minimum fields required to make a request.
newParagraph_SuggestedParagraphStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedParagraphStyle ->
  Paragraph_SuggestedParagraphStyleChanges
newParagraph_SuggestedParagraphStyleChanges additional =
  Paragraph_SuggestedParagraphStyleChanges {additional = additional}

instance Core.FromJSON Paragraph_SuggestedParagraphStyleChanges where
  parseJSON =
    Core.withObject
      "Paragraph_SuggestedParagraphStyleChanges"
      ( \o ->
          Paragraph_SuggestedParagraphStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Paragraph_SuggestedParagraphStyleChanges where
  toJSON Paragraph_SuggestedParagraphStyleChanges {..} =
    Core.toJSON additional

-- | The IDs of the positioned objects suggested to be attached to this paragraph, keyed by suggestion ID.
--
-- /See:/ 'newParagraph_SuggestedPositionedObjectIds' smart constructor.
newtype Paragraph_SuggestedPositionedObjectIds = Paragraph_SuggestedPositionedObjectIds
  { additional :: (Core.HashMap Core.Text ObjectReferences)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Paragraph_SuggestedPositionedObjectIds' with the minimum fields required to make a request.
newParagraph_SuggestedPositionedObjectIds ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ObjectReferences ->
  Paragraph_SuggestedPositionedObjectIds
newParagraph_SuggestedPositionedObjectIds additional =
  Paragraph_SuggestedPositionedObjectIds {additional = additional}

instance Core.FromJSON Paragraph_SuggestedPositionedObjectIds where
  parseJSON =
    Core.withObject
      "Paragraph_SuggestedPositionedObjectIds"
      ( \o ->
          Paragraph_SuggestedPositionedObjectIds
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Paragraph_SuggestedPositionedObjectIds where
  toJSON Paragraph_SuggestedPositionedObjectIds {..} =
    Core.toJSON additional

-- | A border around a paragraph.
--
-- /See:/ 'newParagraphBorder' smart constructor.
data ParagraphBorder = ParagraphBorder
  { -- | The color of the border.
    color :: (Core.Maybe OptionalColor),
    -- | The dash style of the border.
    dashStyle :: (Core.Maybe ParagraphBorder_DashStyle),
    -- | The padding of the border.
    padding :: (Core.Maybe Dimension),
    -- | The width of the border.
    width :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphBorder' with the minimum fields required to make a request.
newParagraphBorder ::
  ParagraphBorder
newParagraphBorder =
  ParagraphBorder
    { color = Core.Nothing,
      dashStyle = Core.Nothing,
      padding = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON ParagraphBorder where
  parseJSON =
    Core.withObject
      "ParagraphBorder"
      ( \o ->
          ParagraphBorder
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "padding")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON ParagraphBorder where
  toJSON ParagraphBorder {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("dashStyle" Core..=) Core.<$> dashStyle,
            ("padding" Core..=) Core.<$> padding,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A ParagraphElement describes content within a Paragraph.
--
-- /See:/ 'newParagraphElement' smart constructor.
data ParagraphElement = ParagraphElement
  { -- | An auto text paragraph element.
    autoText :: (Core.Maybe AutoText),
    -- | A column break paragraph element.
    columnBreak :: (Core.Maybe ColumnBreak),
    -- | The zero-base end index of this paragraph element, exclusive, in UTF-16 code units.
    endIndex :: (Core.Maybe Core.Int32),
    -- | An equation paragraph element.
    equation :: (Core.Maybe Equation),
    -- | A footnote reference paragraph element.
    footnoteReference :: (Core.Maybe FootnoteReference),
    -- | A horizontal rule paragraph element.
    horizontalRule :: (Core.Maybe HorizontalRule),
    -- | An inline object paragraph element.
    inlineObjectElement :: (Core.Maybe InlineObjectElement),
    -- | A page break paragraph element.
    pageBreak :: (Core.Maybe PageBreak),
    -- | A paragraph element that links to a person or email address.
    person :: (Core.Maybe Person),
    -- | A paragraph element that links to a Google resource (such as a file in Google Drive, a YouTube video, or a Calendar event.)
    richLink :: (Core.Maybe RichLink),
    -- | The zero-based start index of this paragraph element, in UTF-16 code units.
    startIndex :: (Core.Maybe Core.Int32),
    -- | A text run paragraph element.
    textRun :: (Core.Maybe TextRun)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphElement' with the minimum fields required to make a request.
newParagraphElement ::
  ParagraphElement
newParagraphElement =
  ParagraphElement
    { autoText = Core.Nothing,
      columnBreak = Core.Nothing,
      endIndex = Core.Nothing,
      equation = Core.Nothing,
      footnoteReference = Core.Nothing,
      horizontalRule = Core.Nothing,
      inlineObjectElement = Core.Nothing,
      pageBreak = Core.Nothing,
      person = Core.Nothing,
      richLink = Core.Nothing,
      startIndex = Core.Nothing,
      textRun = Core.Nothing
    }

instance Core.FromJSON ParagraphElement where
  parseJSON =
    Core.withObject
      "ParagraphElement"
      ( \o ->
          ParagraphElement
            Core.<$> (o Core..:? "autoText")
            Core.<*> (o Core..:? "columnBreak")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "equation")
            Core.<*> (o Core..:? "footnoteReference")
            Core.<*> (o Core..:? "horizontalRule")
            Core.<*> (o Core..:? "inlineObjectElement")
            Core.<*> (o Core..:? "pageBreak")
            Core.<*> (o Core..:? "person")
            Core.<*> (o Core..:? "richLink")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "textRun")
      )

instance Core.ToJSON ParagraphElement where
  toJSON ParagraphElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoText" Core..=) Core.<$> autoText,
            ("columnBreak" Core..=) Core.<$> columnBreak,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("equation" Core..=) Core.<$> equation,
            ("footnoteReference" Core..=) Core.<$> footnoteReference,
            ("horizontalRule" Core..=) Core.<$> horizontalRule,
            ("inlineObjectElement" Core..=) Core.<$> inlineObjectElement,
            ("pageBreak" Core..=) Core.<$> pageBreak,
            ("person" Core..=) Core.<$> person,
            ("richLink" Core..=) Core.<$> richLink,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("textRun" Core..=) Core.<$> textRun
          ]
      )

-- | Styles that apply to a whole paragraph. Inherited paragraph styles are represented as unset fields in this message. A paragraph style\'s parent depends on where the paragraph style is defined: * The ParagraphStyle on a Paragraph inherits from the paragraph\'s corresponding named style type. * The ParagraphStyle on a named style inherits from the normal text named style. * The ParagraphStyle of the normal text named style inherits from the default paragraph style in the Docs editor. * The ParagraphStyle on a Paragraph element that\'s contained in a table may inherit its paragraph style from the table style. If the paragraph style does not inherit from a parent, unsetting fields will revert the style to a value matching the defaults in the Docs editor.
--
-- /See:/ 'newParagraphStyle' smart constructor.
data ParagraphStyle = ParagraphStyle
  { -- | The text alignment for this paragraph.
    alignment :: (Core.Maybe ParagraphStyle_Alignment),
    -- | Whether to avoid widows and orphans for the paragraph. If unset, the value is inherited from the parent.
    avoidWidowAndOrphan :: (Core.Maybe Core.Bool),
    -- | The border between this paragraph and the next and previous paragraphs. If unset, the value is inherited from the parent. The between border is rendered when the adjacent paragraph has the same border and indent properties. Paragraph borders cannot be partially updated. When changing a paragraph border, the new border must be specified in its entirety.
    borderBetween :: (Core.Maybe ParagraphBorder),
    -- | The border at the bottom of this paragraph. If unset, the value is inherited from the parent. The bottom border is rendered when the paragraph below has different border and indent properties. Paragraph borders cannot be partially updated. When changing a paragraph border, the new border must be specified in its entirety.
    borderBottom :: (Core.Maybe ParagraphBorder),
    -- | The border to the left of this paragraph. If unset, the value is inherited from the parent. Paragraph borders cannot be partially updated. When changing a paragraph border, the new border must be specified in its entirety.
    borderLeft :: (Core.Maybe ParagraphBorder),
    -- | The border to the right of this paragraph. If unset, the value is inherited from the parent. Paragraph borders cannot be partially updated. When changing a paragraph border, the new border must be specified in its entirety.
    borderRight :: (Core.Maybe ParagraphBorder),
    -- | The border at the top of this paragraph. If unset, the value is inherited from the parent. The top border is rendered when the paragraph above has different border and indent properties. Paragraph borders cannot be partially updated. When changing a paragraph border, the new border must be specified in its entirety.
    borderTop :: (Core.Maybe ParagraphBorder),
    -- | The text direction of this paragraph. If unset, the value defaults to LEFT/TO/RIGHT since paragraph direction is not inherited.
    direction :: (Core.Maybe ParagraphStyle_Direction),
    -- | The heading ID of the paragraph. If empty, then this paragraph is not a heading. This property is read-only.
    headingId :: (Core.Maybe Core.Text),
    -- | The amount of indentation for the paragraph on the side that corresponds to the end of the text, based on the current paragraph direction. If unset, the value is inherited from the parent.
    indentEnd :: (Core.Maybe Dimension),
    -- | The amount of indentation for the first line of the paragraph. If unset, the value is inherited from the parent.
    indentFirstLine :: (Core.Maybe Dimension),
    -- | The amount of indentation for the paragraph on the side that corresponds to the start of the text, based on the current paragraph direction. If unset, the value is inherited from the parent.
    indentStart :: (Core.Maybe Dimension),
    -- | Whether all lines of the paragraph should be laid out on the same page or column if possible. If unset, the value is inherited from the parent.
    keepLinesTogether :: (Core.Maybe Core.Bool),
    -- | Whether at least a part of this paragraph should be laid out on the same page or column as the next paragraph if possible. If unset, the value is inherited from the parent.
    keepWithNext :: (Core.Maybe Core.Bool),
    -- | The amount of space between lines, as a percentage of normal, where normal is represented as 100.0. If unset, the value is inherited from the parent.
    lineSpacing :: (Core.Maybe Core.Double),
    -- | The named style type of the paragraph. Since updating the named style type affects other properties within ParagraphStyle, the named style type is applied before the other properties are updated.
    namedStyleType :: (Core.Maybe ParagraphStyle_NamedStyleType),
    -- | Whether the current paragraph should always start at the beginning of a page. If unset, the value is inherited from the parent. Attempting to update page/break/before for paragraphs in unsupported regions, including Table, Header, Footer and Footnote, can result in an invalid document state that returns a 400 bad request error.
    pageBreakBefore :: (Core.Maybe Core.Bool),
    -- | The shading of the paragraph. If unset, the value is inherited from the parent.
    shading :: (Core.Maybe Shading),
    -- | The amount of extra space above the paragraph. If unset, the value is inherited from the parent.
    spaceAbove :: (Core.Maybe Dimension),
    -- | The amount of extra space below the paragraph. If unset, the value is inherited from the parent.
    spaceBelow :: (Core.Maybe Dimension),
    -- | The spacing mode for the paragraph.
    spacingMode :: (Core.Maybe ParagraphStyle_SpacingMode),
    -- | A list of the tab stops for this paragraph. The list of tab stops is not inherited. This property is read-only.
    tabStops :: (Core.Maybe [TabStop])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphStyle' with the minimum fields required to make a request.
newParagraphStyle ::
  ParagraphStyle
newParagraphStyle =
  ParagraphStyle
    { alignment = Core.Nothing,
      avoidWidowAndOrphan = Core.Nothing,
      borderBetween = Core.Nothing,
      borderBottom = Core.Nothing,
      borderLeft = Core.Nothing,
      borderRight = Core.Nothing,
      borderTop = Core.Nothing,
      direction = Core.Nothing,
      headingId = Core.Nothing,
      indentEnd = Core.Nothing,
      indentFirstLine = Core.Nothing,
      indentStart = Core.Nothing,
      keepLinesTogether = Core.Nothing,
      keepWithNext = Core.Nothing,
      lineSpacing = Core.Nothing,
      namedStyleType = Core.Nothing,
      pageBreakBefore = Core.Nothing,
      shading = Core.Nothing,
      spaceAbove = Core.Nothing,
      spaceBelow = Core.Nothing,
      spacingMode = Core.Nothing,
      tabStops = Core.Nothing
    }

instance Core.FromJSON ParagraphStyle where
  parseJSON =
    Core.withObject
      "ParagraphStyle"
      ( \o ->
          ParagraphStyle
            Core.<$> (o Core..:? "alignment")
            Core.<*> (o Core..:? "avoidWidowAndOrphan")
            Core.<*> (o Core..:? "borderBetween")
            Core.<*> (o Core..:? "borderBottom")
            Core.<*> (o Core..:? "borderLeft")
            Core.<*> (o Core..:? "borderRight")
            Core.<*> (o Core..:? "borderTop")
            Core.<*> (o Core..:? "direction")
            Core.<*> (o Core..:? "headingId")
            Core.<*> (o Core..:? "indentEnd")
            Core.<*> (o Core..:? "indentFirstLine")
            Core.<*> (o Core..:? "indentStart")
            Core.<*> (o Core..:? "keepLinesTogether")
            Core.<*> (o Core..:? "keepWithNext")
            Core.<*> (o Core..:? "lineSpacing")
            Core.<*> (o Core..:? "namedStyleType")
            Core.<*> (o Core..:? "pageBreakBefore")
            Core.<*> (o Core..:? "shading")
            Core.<*> (o Core..:? "spaceAbove")
            Core.<*> (o Core..:? "spaceBelow")
            Core.<*> (o Core..:? "spacingMode")
            Core.<*> (o Core..:? "tabStops")
      )

instance Core.ToJSON ParagraphStyle where
  toJSON ParagraphStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignment" Core..=) Core.<$> alignment,
            ("avoidWidowAndOrphan" Core..=) Core.<$> avoidWidowAndOrphan,
            ("borderBetween" Core..=) Core.<$> borderBetween,
            ("borderBottom" Core..=) Core.<$> borderBottom,
            ("borderLeft" Core..=) Core.<$> borderLeft,
            ("borderRight" Core..=) Core.<$> borderRight,
            ("borderTop" Core..=) Core.<$> borderTop,
            ("direction" Core..=) Core.<$> direction,
            ("headingId" Core..=) Core.<$> headingId,
            ("indentEnd" Core..=) Core.<$> indentEnd,
            ("indentFirstLine" Core..=) Core.<$> indentFirstLine,
            ("indentStart" Core..=) Core.<$> indentStart,
            ("keepLinesTogether" Core..=) Core.<$> keepLinesTogether,
            ("keepWithNext" Core..=) Core.<$> keepWithNext,
            ("lineSpacing" Core..=) Core.<$> lineSpacing,
            ("namedStyleType" Core..=) Core.<$> namedStyleType,
            ("pageBreakBefore" Core..=) Core.<$> pageBreakBefore,
            ("shading" Core..=) Core.<$> shading,
            ("spaceAbove" Core..=) Core.<$> spaceAbove,
            ("spaceBelow" Core..=) Core.<$> spaceBelow,
            ("spacingMode" Core..=) Core.<$> spacingMode,
            ("tabStops" Core..=) Core.<$> tabStops
          ]
      )

-- | A mask that indicates which of the fields on the base ParagraphStyle have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newParagraphStyleSuggestionState' smart constructor.
data ParagraphStyleSuggestionState = ParagraphStyleSuggestionState
  { -- | Indicates if there was a suggested change to alignment.
    alignmentSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to avoid/widow/and_orphan.
    avoidWidowAndOrphanSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_between.
    borderBetweenSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_bottom.
    borderBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_left.
    borderLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_right.
    borderRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_top.
    borderTopSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to direction.
    directionSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to heading_id.
    headingIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to indent_end.
    indentEndSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to indent/first/line.
    indentFirstLineSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to indent_start.
    indentStartSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to keep/lines/together.
    keepLinesTogetherSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to keep/with/next.
    keepWithNextSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to line_spacing.
    lineSpacingSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to named/style/type.
    namedStyleTypeSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to page/break/before.
    pageBreakBeforeSuggested :: (Core.Maybe Core.Bool),
    -- | A mask that indicates which of the fields in shading have been changed in this suggestion.
    shadingSuggestionState :: (Core.Maybe ShadingSuggestionState),
    -- | Indicates if there was a suggested change to space_above.
    spaceAboveSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to space_below.
    spaceBelowSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to spacing_mode.
    spacingModeSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphStyleSuggestionState' with the minimum fields required to make a request.
newParagraphStyleSuggestionState ::
  ParagraphStyleSuggestionState
newParagraphStyleSuggestionState =
  ParagraphStyleSuggestionState
    { alignmentSuggested = Core.Nothing,
      avoidWidowAndOrphanSuggested = Core.Nothing,
      borderBetweenSuggested = Core.Nothing,
      borderBottomSuggested = Core.Nothing,
      borderLeftSuggested = Core.Nothing,
      borderRightSuggested = Core.Nothing,
      borderTopSuggested = Core.Nothing,
      directionSuggested = Core.Nothing,
      headingIdSuggested = Core.Nothing,
      indentEndSuggested = Core.Nothing,
      indentFirstLineSuggested = Core.Nothing,
      indentStartSuggested = Core.Nothing,
      keepLinesTogetherSuggested = Core.Nothing,
      keepWithNextSuggested = Core.Nothing,
      lineSpacingSuggested = Core.Nothing,
      namedStyleTypeSuggested = Core.Nothing,
      pageBreakBeforeSuggested = Core.Nothing,
      shadingSuggestionState = Core.Nothing,
      spaceAboveSuggested = Core.Nothing,
      spaceBelowSuggested = Core.Nothing,
      spacingModeSuggested = Core.Nothing
    }

instance Core.FromJSON ParagraphStyleSuggestionState where
  parseJSON =
    Core.withObject
      "ParagraphStyleSuggestionState"
      ( \o ->
          ParagraphStyleSuggestionState
            Core.<$> (o Core..:? "alignmentSuggested")
            Core.<*> (o Core..:? "avoidWidowAndOrphanSuggested")
            Core.<*> (o Core..:? "borderBetweenSuggested")
            Core.<*> (o Core..:? "borderBottomSuggested")
            Core.<*> (o Core..:? "borderLeftSuggested")
            Core.<*> (o Core..:? "borderRightSuggested")
            Core.<*> (o Core..:? "borderTopSuggested")
            Core.<*> (o Core..:? "directionSuggested")
            Core.<*> (o Core..:? "headingIdSuggested")
            Core.<*> (o Core..:? "indentEndSuggested")
            Core.<*> (o Core..:? "indentFirstLineSuggested")
            Core.<*> (o Core..:? "indentStartSuggested")
            Core.<*> (o Core..:? "keepLinesTogetherSuggested")
            Core.<*> (o Core..:? "keepWithNextSuggested")
            Core.<*> (o Core..:? "lineSpacingSuggested")
            Core.<*> (o Core..:? "namedStyleTypeSuggested")
            Core.<*> (o Core..:? "pageBreakBeforeSuggested")
            Core.<*> (o Core..:? "shadingSuggestionState")
            Core.<*> (o Core..:? "spaceAboveSuggested")
            Core.<*> (o Core..:? "spaceBelowSuggested")
            Core.<*> (o Core..:? "spacingModeSuggested")
      )

instance Core.ToJSON ParagraphStyleSuggestionState where
  toJSON ParagraphStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignmentSuggested" Core..=) Core.<$> alignmentSuggested,
            ("avoidWidowAndOrphanSuggested" Core..=)
              Core.<$> avoidWidowAndOrphanSuggested,
            ("borderBetweenSuggested" Core..=) Core.<$> borderBetweenSuggested,
            ("borderBottomSuggested" Core..=) Core.<$> borderBottomSuggested,
            ("borderLeftSuggested" Core..=) Core.<$> borderLeftSuggested,
            ("borderRightSuggested" Core..=) Core.<$> borderRightSuggested,
            ("borderTopSuggested" Core..=) Core.<$> borderTopSuggested,
            ("directionSuggested" Core..=) Core.<$> directionSuggested,
            ("headingIdSuggested" Core..=) Core.<$> headingIdSuggested,
            ("indentEndSuggested" Core..=) Core.<$> indentEndSuggested,
            ("indentFirstLineSuggested" Core..=)
              Core.<$> indentFirstLineSuggested,
            ("indentStartSuggested" Core..=) Core.<$> indentStartSuggested,
            ("keepLinesTogetherSuggested" Core..=)
              Core.<$> keepLinesTogetherSuggested,
            ("keepWithNextSuggested" Core..=) Core.<$> keepWithNextSuggested,
            ("lineSpacingSuggested" Core..=) Core.<$> lineSpacingSuggested,
            ("namedStyleTypeSuggested" Core..=)
              Core.<$> namedStyleTypeSuggested,
            ("pageBreakBeforeSuggested" Core..=)
              Core.<$> pageBreakBeforeSuggested,
            ("shadingSuggestionState" Core..=) Core.<$> shadingSuggestionState,
            ("spaceAboveSuggested" Core..=) Core.<$> spaceAboveSuggested,
            ("spaceBelowSuggested" Core..=) Core.<$> spaceBelowSuggested,
            ("spacingModeSuggested" Core..=) Core.<$> spacingModeSuggested
          ]
      )

-- | A person or email address mentioned in a document. These mentions behave as a single, immutable element containing the person\'s name or email address.
--
-- /See:/ 'newPerson' smart constructor.
data Person = Person
  { -- | Output only. The unique ID of this link.
    personId :: (Core.Maybe Core.Text),
    -- | Output only. The properties of this Person. This field is always present.
    personProperties :: (Core.Maybe PersonProperties),
    -- | IDs for suggestions that remove this person link from the document. A Person might have multiple deletion IDs if, for example, multiple users suggest deleting it. If empty, then this person link isn\'t suggested for deletion.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | IDs for suggestions that insert this person link into the document. A Person might have multiple insertion IDs if it\'s a nested suggested change (a suggestion within a suggestion made by a different user, for example). If empty, then this person link isn\'t a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this Person, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe Person_SuggestedTextStyleChanges),
    -- | The text style of this Person.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
newPerson ::
  Person
newPerson =
  Person
    { personId = Core.Nothing,
      personProperties = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON Person where
  parseJSON =
    Core.withObject
      "Person"
      ( \o ->
          Person
            Core.<$> (o Core..:? "personId")
            Core.<*> (o Core..:? "personProperties")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON Person where
  toJSON Person {..} =
    Core.object
      ( Core.catMaybes
          [ ("personId" Core..=) Core.<$> personId,
            ("personProperties" Core..=) Core.<$> personProperties,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this Person, keyed by suggestion ID.
--
-- /See:/ 'newPerson_SuggestedTextStyleChanges' smart constructor.
newtype Person_SuggestedTextStyleChanges = Person_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newPerson_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  Person_SuggestedTextStyleChanges
newPerson_SuggestedTextStyleChanges additional =
  Person_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON Person_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "Person_SuggestedTextStyleChanges"
      ( \o ->
          Person_SuggestedTextStyleChanges Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Person_SuggestedTextStyleChanges where
  toJSON Person_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Properties specific to a linked Person.
--
-- /See:/ 'newPersonProperties' smart constructor.
data PersonProperties = PersonProperties
  { -- | Output only. The email address linked to this Person. This field is always present.
    email :: (Core.Maybe Core.Text),
    -- | Output only. The name of the person if it\'s displayed in the link text instead of the person\'s email address.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersonProperties' with the minimum fields required to make a request.
newPersonProperties ::
  PersonProperties
newPersonProperties =
  PersonProperties {email = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON PersonProperties where
  parseJSON =
    Core.withObject
      "PersonProperties"
      ( \o ->
          PersonProperties
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON PersonProperties where
  toJSON PersonProperties {..} =
    Core.object
      ( Core.catMaybes
          [("email" Core..=) Core.<$> email, ("name" Core..=) Core.<$> name]
      )

-- | Updates the number of pinned table header rows in a table.
--
-- /See:/ 'newPinTableHeaderRowsRequest' smart constructor.
data PinTableHeaderRowsRequest = PinTableHeaderRowsRequest
  { -- | The number of table rows to pin, where 0 implies that all rows are unpinned.
    pinnedHeaderRowsCount :: (Core.Maybe Core.Int32),
    -- | The location where the table starts in the document.
    tableStartLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PinTableHeaderRowsRequest' with the minimum fields required to make a request.
newPinTableHeaderRowsRequest ::
  PinTableHeaderRowsRequest
newPinTableHeaderRowsRequest =
  PinTableHeaderRowsRequest
    { pinnedHeaderRowsCount = Core.Nothing,
      tableStartLocation = Core.Nothing
    }

instance Core.FromJSON PinTableHeaderRowsRequest where
  parseJSON =
    Core.withObject
      "PinTableHeaderRowsRequest"
      ( \o ->
          PinTableHeaderRowsRequest
            Core.<$> (o Core..:? "pinnedHeaderRowsCount")
            Core.<*> (o Core..:? "tableStartLocation")
      )

instance Core.ToJSON PinTableHeaderRowsRequest where
  toJSON PinTableHeaderRowsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("pinnedHeaderRowsCount" Core..=) Core.<$> pinnedHeaderRowsCount,
            ("tableStartLocation" Core..=) Core.<$> tableStartLocation
          ]
      )

-- | An object that\'s tethered to a Paragraph and positioned relative to the beginning of the paragraph. A PositionedObject contains an EmbeddedObject such as an image.
--
-- /See:/ 'newPositionedObject' smart constructor.
data PositionedObject = PositionedObject
  { -- | The ID of this positioned object.
    objectId :: (Core.Maybe Core.Text),
    -- | The properties of this positioned object.
    positionedObjectProperties :: (Core.Maybe PositionedObjectProperties),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion ID. If empty, then this is not a suggested insertion.
    suggestedInsertionId :: (Core.Maybe Core.Text),
    -- | The suggested changes to the positioned object properties, keyed by suggestion ID.
    suggestedPositionedObjectPropertiesChanges ::
      ( Core.Maybe
          PositionedObject_SuggestedPositionedObjectPropertiesChanges
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObject' with the minimum fields required to make a request.
newPositionedObject ::
  PositionedObject
newPositionedObject =
  PositionedObject
    { objectId = Core.Nothing,
      positionedObjectProperties = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionId = Core.Nothing,
      suggestedPositionedObjectPropertiesChanges = Core.Nothing
    }

instance Core.FromJSON PositionedObject where
  parseJSON =
    Core.withObject
      "PositionedObject"
      ( \o ->
          PositionedObject
            Core.<$> (o Core..:? "objectId")
            Core.<*> (o Core..:? "positionedObjectProperties")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionId")
            Core.<*> (o Core..:? "suggestedPositionedObjectPropertiesChanges")
      )

instance Core.ToJSON PositionedObject where
  toJSON PositionedObject {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectId" Core..=) Core.<$> objectId,
            ("positionedObjectProperties" Core..=)
              Core.<$> positionedObjectProperties,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionId" Core..=) Core.<$> suggestedInsertionId,
            ("suggestedPositionedObjectPropertiesChanges" Core..=)
              Core.<$> suggestedPositionedObjectPropertiesChanges
          ]
      )

-- | The suggested changes to the positioned object properties, keyed by suggestion ID.
--
-- /See:/ 'newPositionedObject_SuggestedPositionedObjectPropertiesChanges' smart constructor.
newtype PositionedObject_SuggestedPositionedObjectPropertiesChanges = PositionedObject_SuggestedPositionedObjectPropertiesChanges
  { additional :: (Core.HashMap Core.Text SuggestedPositionedObjectProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObject_SuggestedPositionedObjectPropertiesChanges' with the minimum fields required to make a request.
newPositionedObject_SuggestedPositionedObjectPropertiesChanges ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    SuggestedPositionedObjectProperties ->
  PositionedObject_SuggestedPositionedObjectPropertiesChanges
newPositionedObject_SuggestedPositionedObjectPropertiesChanges
  additional =
    PositionedObject_SuggestedPositionedObjectPropertiesChanges
      { additional =
          additional
      }

instance
  Core.FromJSON
    PositionedObject_SuggestedPositionedObjectPropertiesChanges
  where
  parseJSON =
    Core.withObject
      "PositionedObject_SuggestedPositionedObjectPropertiesChanges"
      ( \o ->
          PositionedObject_SuggestedPositionedObjectPropertiesChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    PositionedObject_SuggestedPositionedObjectPropertiesChanges
  where
  toJSON
    PositionedObject_SuggestedPositionedObjectPropertiesChanges {..} =
      Core.toJSON additional

-- | The positioning of a PositionedObject. The positioned object is positioned relative to the beginning of the Paragraph it\'s tethered to.
--
-- /See:/ 'newPositionedObjectPositioning' smart constructor.
data PositionedObjectPositioning = PositionedObjectPositioning
  { -- | The layout of this positioned object.
    layout :: (Core.Maybe PositionedObjectPositioning_Layout),
    -- | The offset of the left edge of the positioned object relative to the beginning of the Paragraph it\'s tethered to. The exact positioning of the object can depend on other content in the document and the document\'s styling.
    leftOffset :: (Core.Maybe Dimension),
    -- | The offset of the top edge of the positioned object relative to the beginning of the Paragraph it\'s tethered to. The exact positioning of the object can depend on other content in the document and the document\'s styling.
    topOffset :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObjectPositioning' with the minimum fields required to make a request.
newPositionedObjectPositioning ::
  PositionedObjectPositioning
newPositionedObjectPositioning =
  PositionedObjectPositioning
    { layout = Core.Nothing,
      leftOffset = Core.Nothing,
      topOffset = Core.Nothing
    }

instance Core.FromJSON PositionedObjectPositioning where
  parseJSON =
    Core.withObject
      "PositionedObjectPositioning"
      ( \o ->
          PositionedObjectPositioning
            Core.<$> (o Core..:? "layout")
            Core.<*> (o Core..:? "leftOffset")
            Core.<*> (o Core..:? "topOffset")
      )

instance Core.ToJSON PositionedObjectPositioning where
  toJSON PositionedObjectPositioning {..} =
    Core.object
      ( Core.catMaybes
          [ ("layout" Core..=) Core.<$> layout,
            ("leftOffset" Core..=) Core.<$> leftOffset,
            ("topOffset" Core..=) Core.<$> topOffset
          ]
      )

-- | A mask that indicates which of the fields on the base PositionedObjectPositioning have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newPositionedObjectPositioningSuggestionState' smart constructor.
data PositionedObjectPositioningSuggestionState = PositionedObjectPositioningSuggestionState
  { -- | Indicates if there was a suggested change to layout.
    layoutSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to left_offset.
    leftOffsetSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to top_offset.
    topOffsetSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObjectPositioningSuggestionState' with the minimum fields required to make a request.
newPositionedObjectPositioningSuggestionState ::
  PositionedObjectPositioningSuggestionState
newPositionedObjectPositioningSuggestionState =
  PositionedObjectPositioningSuggestionState
    { layoutSuggested =
        Core.Nothing,
      leftOffsetSuggested = Core.Nothing,
      topOffsetSuggested = Core.Nothing
    }

instance Core.FromJSON PositionedObjectPositioningSuggestionState where
  parseJSON =
    Core.withObject
      "PositionedObjectPositioningSuggestionState"
      ( \o ->
          PositionedObjectPositioningSuggestionState
            Core.<$> (o Core..:? "layoutSuggested")
            Core.<*> (o Core..:? "leftOffsetSuggested")
            Core.<*> (o Core..:? "topOffsetSuggested")
      )

instance Core.ToJSON PositionedObjectPositioningSuggestionState where
  toJSON PositionedObjectPositioningSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("layoutSuggested" Core..=) Core.<$> layoutSuggested,
            ("leftOffsetSuggested" Core..=) Core.<$> leftOffsetSuggested,
            ("topOffsetSuggested" Core..=) Core.<$> topOffsetSuggested
          ]
      )

-- | Properties of a PositionedObject.
--
-- /See:/ 'newPositionedObjectProperties' smart constructor.
data PositionedObjectProperties = PositionedObjectProperties
  { -- | The embedded object of this positioned object.
    embeddedObject :: (Core.Maybe EmbeddedObject),
    -- | The positioning of this positioned object relative to the newline of the Paragraph that references this positioned object.
    positioning :: (Core.Maybe PositionedObjectPositioning)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObjectProperties' with the minimum fields required to make a request.
newPositionedObjectProperties ::
  PositionedObjectProperties
newPositionedObjectProperties =
  PositionedObjectProperties
    { embeddedObject = Core.Nothing,
      positioning = Core.Nothing
    }

instance Core.FromJSON PositionedObjectProperties where
  parseJSON =
    Core.withObject
      "PositionedObjectProperties"
      ( \o ->
          PositionedObjectProperties
            Core.<$> (o Core..:? "embeddedObject")
            Core.<*> (o Core..:? "positioning")
      )

instance Core.ToJSON PositionedObjectProperties where
  toJSON PositionedObjectProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("embeddedObject" Core..=) Core.<$> embeddedObject,
            ("positioning" Core..=) Core.<$> positioning
          ]
      )

-- | A mask that indicates which of the fields on the base PositionedObjectProperties have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newPositionedObjectPropertiesSuggestionState' smart constructor.
data PositionedObjectPropertiesSuggestionState = PositionedObjectPropertiesSuggestionState
  { -- | A mask that indicates which of the fields in embedded_object have been changed in this suggestion.
    embeddedObjectSuggestionState :: (Core.Maybe EmbeddedObjectSuggestionState),
    -- | A mask that indicates which of the fields in positioning have been changed in this suggestion.
    positioningSuggestionState :: (Core.Maybe PositionedObjectPositioningSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PositionedObjectPropertiesSuggestionState' with the minimum fields required to make a request.
newPositionedObjectPropertiesSuggestionState ::
  PositionedObjectPropertiesSuggestionState
newPositionedObjectPropertiesSuggestionState =
  PositionedObjectPropertiesSuggestionState
    { embeddedObjectSuggestionState =
        Core.Nothing,
      positioningSuggestionState = Core.Nothing
    }

instance Core.FromJSON PositionedObjectPropertiesSuggestionState where
  parseJSON =
    Core.withObject
      "PositionedObjectPropertiesSuggestionState"
      ( \o ->
          PositionedObjectPropertiesSuggestionState
            Core.<$> (o Core..:? "embeddedObjectSuggestionState")
            Core.<*> (o Core..:? "positioningSuggestionState")
      )

instance Core.ToJSON PositionedObjectPropertiesSuggestionState where
  toJSON PositionedObjectPropertiesSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("embeddedObjectSuggestionState" Core..=)
              Core.<$> embeddedObjectSuggestionState,
            ("positioningSuggestionState" Core..=)
              Core.<$> positioningSuggestionState
          ]
      )

-- | Specifies a contiguous range of text.
--
-- /See:/ 'newRange' smart constructor.
data Range = Range
  { -- | The zero-based end index of this range, exclusive, in UTF-16 code units. In all current uses, an end index must be provided. This field is an Int32Value in order to accommodate future use cases with open-ended ranges.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The ID of the header, footer, or footnote that this range is contained in. An empty segment ID signifies the document\'s body.
    segmentId :: (Core.Maybe Core.Text),
    -- | The zero-based start index of this range, in UTF-16 code units. In all current uses, a start index must be provided. This field is an Int32Value in order to accommodate future use cases with open-ended ranges.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The tab that contains this range. When omitted, the request applies to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
newRange ::
  Range
newRange =
  Range
    { endIndex = Core.Nothing,
      segmentId = Core.Nothing,
      startIndex = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON Range where
  parseJSON =
    Core.withObject
      "Range"
      ( \o ->
          Range
            Core.<$> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "segmentId")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON Range where
  toJSON Range {..} =
    Core.object
      ( Core.catMaybes
          [ ("endIndex" Core..=) Core.<$> endIndex,
            ("segmentId" Core..=) Core.<$> segmentId,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Replaces all instances of text matching a criteria with replace text.
--
-- /See:/ 'newReplaceAllTextRequest' smart constructor.
data ReplaceAllTextRequest = ReplaceAllTextRequest
  { -- | Finds text in the document matching this substring.
    containsText :: (Core.Maybe SubstringMatchCriteria),
    -- | The text that will replace the matched text.
    replaceText :: (Core.Maybe Core.Text),
    -- | Optional. The criteria used to specify in which tabs the replacement occurs. When omitted, the replacement applies to all tabs. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the replacement applies to the singular tab. In a document containing multiple tabs: - If provided, the replacement applies to the specified tabs. - If omitted, the replacement applies to all tabs.
    tabsCriteria :: (Core.Maybe TabsCriteria)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllTextRequest' with the minimum fields required to make a request.
newReplaceAllTextRequest ::
  ReplaceAllTextRequest
newReplaceAllTextRequest =
  ReplaceAllTextRequest
    { containsText = Core.Nothing,
      replaceText = Core.Nothing,
      tabsCriteria = Core.Nothing
    }

instance Core.FromJSON ReplaceAllTextRequest where
  parseJSON =
    Core.withObject
      "ReplaceAllTextRequest"
      ( \o ->
          ReplaceAllTextRequest
            Core.<$> (o Core..:? "containsText")
            Core.<*> (o Core..:? "replaceText")
            Core.<*> (o Core..:? "tabsCriteria")
      )

instance Core.ToJSON ReplaceAllTextRequest where
  toJSON ReplaceAllTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("containsText" Core..=) Core.<$> containsText,
            ("replaceText" Core..=) Core.<$> replaceText,
            ("tabsCriteria" Core..=) Core.<$> tabsCriteria
          ]
      )

-- | The result of replacing text.
--
-- /See:/ 'newReplaceAllTextResponse' smart constructor.
newtype ReplaceAllTextResponse = ReplaceAllTextResponse
  { -- | The number of occurrences changed by replacing all text.
    occurrencesChanged :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllTextResponse' with the minimum fields required to make a request.
newReplaceAllTextResponse ::
  ReplaceAllTextResponse
newReplaceAllTextResponse =
  ReplaceAllTextResponse {occurrencesChanged = Core.Nothing}

instance Core.FromJSON ReplaceAllTextResponse where
  parseJSON =
    Core.withObject
      "ReplaceAllTextResponse"
      ( \o ->
          ReplaceAllTextResponse Core.<$> (o Core..:? "occurrencesChanged")
      )

instance Core.ToJSON ReplaceAllTextResponse where
  toJSON ReplaceAllTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [("occurrencesChanged" Core..=) Core.<$> occurrencesChanged]
      )

-- | Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image in order to mirror the behavior of the Docs editor.
--
-- /See:/ 'newReplaceImageRequest' smart constructor.
data ReplaceImageRequest = ReplaceImageRequest
  { -- | The ID of the existing image that will be replaced. The ID can be retrieved from the response of a get request.
    imageObjectId :: (Core.Maybe Core.Text),
    -- | The replacement method.
    imageReplaceMethod :: (Core.Maybe ReplaceImageRequest_ImageReplaceMethod),
    -- | The tab that the image to be replaced is in. When omitted, the request is applied to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If omitted, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text),
    -- | The URI of the new image. The image is fetched once at insertion time and a copy is stored for display inside the document. Images must be less than 50MB, cannot exceed 25 megapixels, and must be in PNG, JPEG, or GIF format. The provided URI can\'t surpass 2 KB in length. The URI is saved with the image, and exposed through the ImageProperties.source_uri field.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceImageRequest' with the minimum fields required to make a request.
newReplaceImageRequest ::
  ReplaceImageRequest
newReplaceImageRequest =
  ReplaceImageRequest
    { imageObjectId = Core.Nothing,
      imageReplaceMethod = Core.Nothing,
      tabId = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ReplaceImageRequest where
  parseJSON =
    Core.withObject
      "ReplaceImageRequest"
      ( \o ->
          ReplaceImageRequest
            Core.<$> (o Core..:? "imageObjectId")
            Core.<*> (o Core..:? "imageReplaceMethod")
            Core.<*> (o Core..:? "tabId")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ReplaceImageRequest where
  toJSON ReplaceImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageObjectId" Core..=) Core.<$> imageObjectId,
            ("imageReplaceMethod" Core..=) Core.<$> imageReplaceMethod,
            ("tabId" Core..=) Core.<$> tabId,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Replaces the contents of the specified NamedRange or NamedRanges with the given replacement content. Note that an individual NamedRange may consist of multiple discontinuous ranges. In this case, only the content in the first range will be replaced. The other ranges and their content will be deleted. In cases where replacing or deleting any ranges would result in an invalid document structure, a 400 bad request error is returned.
--
-- /See:/ 'newReplaceNamedRangeContentRequest' smart constructor.
data ReplaceNamedRangeContentRequest = ReplaceNamedRangeContentRequest
  { -- | The ID of the named range whose content will be replaced. If there is no named range with the given ID a 400 bad request error is returned.
    namedRangeId :: (Core.Maybe Core.Text),
    -- | The name of the NamedRanges whose content will be replaced. If there are multiple named ranges with the given name, then the content of each one will be replaced. If there are no named ranges with the given name, then the request will be a no-op.
    namedRangeName :: (Core.Maybe Core.Text),
    -- | Optional. The criteria used to specify in which tabs the replacement occurs. When omitted, the replacement applies to all tabs. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the replacement applies to the singular tab. In a document containing multiple tabs: - If provided, the replacement applies to the specified tabs. - If omitted, the replacement applies to all tabs.
    tabsCriteria :: (Core.Maybe TabsCriteria),
    -- | Replaces the content of the specified named range(s) with the given text.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceNamedRangeContentRequest' with the minimum fields required to make a request.
newReplaceNamedRangeContentRequest ::
  ReplaceNamedRangeContentRequest
newReplaceNamedRangeContentRequest =
  ReplaceNamedRangeContentRequest
    { namedRangeId = Core.Nothing,
      namedRangeName = Core.Nothing,
      tabsCriteria = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON ReplaceNamedRangeContentRequest where
  parseJSON =
    Core.withObject
      "ReplaceNamedRangeContentRequest"
      ( \o ->
          ReplaceNamedRangeContentRequest
            Core.<$> (o Core..:? "namedRangeId")
            Core.<*> (o Core..:? "namedRangeName")
            Core.<*> (o Core..:? "tabsCriteria")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON ReplaceNamedRangeContentRequest where
  toJSON ReplaceNamedRangeContentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("namedRangeId" Core..=) Core.<$> namedRangeId,
            ("namedRangeName" Core..=) Core.<$> namedRangeName,
            ("tabsCriteria" Core..=) Core.<$> tabsCriteria,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | A single update to apply to a document.
--
-- /See:/ 'newRequest' smart constructor.
data Request' = Request'
  { -- | Creates a footer.
    createFooter :: (Core.Maybe CreateFooterRequest),
    -- | Creates a footnote.
    createFootnote :: (Core.Maybe CreateFootnoteRequest),
    -- | Creates a header.
    createHeader :: (Core.Maybe CreateHeaderRequest),
    -- | Creates a named range.
    createNamedRange :: (Core.Maybe CreateNamedRangeRequest),
    -- | Creates bullets for paragraphs.
    createParagraphBullets :: (Core.Maybe CreateParagraphBulletsRequest),
    -- | Deletes content from the document.
    deleteContentRange :: (Core.Maybe DeleteContentRangeRequest),
    -- | Deletes a footer from the document.
    deleteFooter :: (Core.Maybe DeleteFooterRequest),
    -- | Deletes a header from the document.
    deleteHeader :: (Core.Maybe DeleteHeaderRequest),
    -- | Deletes a named range.
    deleteNamedRange :: (Core.Maybe DeleteNamedRangeRequest),
    -- | Deletes bullets from paragraphs.
    deleteParagraphBullets :: (Core.Maybe DeleteParagraphBulletsRequest),
    -- | Deletes a positioned object from the document.
    deletePositionedObject :: (Core.Maybe DeletePositionedObjectRequest),
    -- | Deletes a column from a table.
    deleteTableColumn :: (Core.Maybe DeleteTableColumnRequest),
    -- | Deletes a row from a table.
    deleteTableRow :: (Core.Maybe DeleteTableRowRequest),
    -- | Inserts an inline image at the specified location.
    insertInlineImage :: (Core.Maybe InsertInlineImageRequest),
    -- | Inserts a page break at the specified location.
    insertPageBreak :: (Core.Maybe InsertPageBreakRequest),
    -- | Inserts a section break at the specified location.
    insertSectionBreak :: (Core.Maybe InsertSectionBreakRequest),
    -- | Inserts a table at the specified location.
    insertTable :: (Core.Maybe InsertTableRequest),
    -- | Inserts an empty column into a table.
    insertTableColumn :: (Core.Maybe InsertTableColumnRequest),
    -- | Inserts an empty row into a table.
    insertTableRow :: (Core.Maybe InsertTableRowRequest),
    -- | Inserts text at the specified location.
    insertText :: (Core.Maybe InsertTextRequest),
    -- | Merges cells in a table.
    mergeTableCells :: (Core.Maybe MergeTableCellsRequest),
    -- | Updates the number of pinned header rows in a table.
    pinTableHeaderRows :: (Core.Maybe PinTableHeaderRowsRequest),
    -- | Replaces all instances of the specified text.
    replaceAllText :: (Core.Maybe ReplaceAllTextRequest),
    -- | Replaces an image in the document.
    replaceImage :: (Core.Maybe ReplaceImageRequest),
    -- | Replaces the content in a named range.
    replaceNamedRangeContent :: (Core.Maybe ReplaceNamedRangeContentRequest),
    -- | Unmerges cells in a table.
    unmergeTableCells :: (Core.Maybe UnmergeTableCellsRequest),
    -- | Updates the style of the document.
    updateDocumentStyle :: (Core.Maybe UpdateDocumentStyleRequest),
    -- | Updates the paragraph style at the specified range.
    updateParagraphStyle :: (Core.Maybe UpdateParagraphStyleRequest),
    -- | Updates the section style of the specified range.
    updateSectionStyle :: (Core.Maybe UpdateSectionStyleRequest),
    -- | Updates the style of table cells.
    updateTableCellStyle :: (Core.Maybe UpdateTableCellStyleRequest),
    -- | Updates the properties of columns in a table.
    updateTableColumnProperties :: (Core.Maybe UpdateTableColumnPropertiesRequest),
    -- | Updates the row style in a table.
    updateTableRowStyle :: (Core.Maybe UpdateTableRowStyleRequest),
    -- | Updates the text style at the specified range.
    updateTextStyle :: (Core.Maybe UpdateTextStyleRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
newRequest ::
  Request'
newRequest =
  Request'
    { createFooter = Core.Nothing,
      createFootnote = Core.Nothing,
      createHeader = Core.Nothing,
      createNamedRange = Core.Nothing,
      createParagraphBullets = Core.Nothing,
      deleteContentRange = Core.Nothing,
      deleteFooter = Core.Nothing,
      deleteHeader = Core.Nothing,
      deleteNamedRange = Core.Nothing,
      deleteParagraphBullets = Core.Nothing,
      deletePositionedObject = Core.Nothing,
      deleteTableColumn = Core.Nothing,
      deleteTableRow = Core.Nothing,
      insertInlineImage = Core.Nothing,
      insertPageBreak = Core.Nothing,
      insertSectionBreak = Core.Nothing,
      insertTable = Core.Nothing,
      insertTableColumn = Core.Nothing,
      insertTableRow = Core.Nothing,
      insertText = Core.Nothing,
      mergeTableCells = Core.Nothing,
      pinTableHeaderRows = Core.Nothing,
      replaceAllText = Core.Nothing,
      replaceImage = Core.Nothing,
      replaceNamedRangeContent = Core.Nothing,
      unmergeTableCells = Core.Nothing,
      updateDocumentStyle = Core.Nothing,
      updateParagraphStyle = Core.Nothing,
      updateSectionStyle = Core.Nothing,
      updateTableCellStyle = Core.Nothing,
      updateTableColumnProperties = Core.Nothing,
      updateTableRowStyle = Core.Nothing,
      updateTextStyle = Core.Nothing
    }

instance Core.FromJSON Request' where
  parseJSON =
    Core.withObject
      "Request'"
      ( \o ->
          Request'
            Core.<$> (o Core..:? "createFooter")
            Core.<*> (o Core..:? "createFootnote")
            Core.<*> (o Core..:? "createHeader")
            Core.<*> (o Core..:? "createNamedRange")
            Core.<*> (o Core..:? "createParagraphBullets")
            Core.<*> (o Core..:? "deleteContentRange")
            Core.<*> (o Core..:? "deleteFooter")
            Core.<*> (o Core..:? "deleteHeader")
            Core.<*> (o Core..:? "deleteNamedRange")
            Core.<*> (o Core..:? "deleteParagraphBullets")
            Core.<*> (o Core..:? "deletePositionedObject")
            Core.<*> (o Core..:? "deleteTableColumn")
            Core.<*> (o Core..:? "deleteTableRow")
            Core.<*> (o Core..:? "insertInlineImage")
            Core.<*> (o Core..:? "insertPageBreak")
            Core.<*> (o Core..:? "insertSectionBreak")
            Core.<*> (o Core..:? "insertTable")
            Core.<*> (o Core..:? "insertTableColumn")
            Core.<*> (o Core..:? "insertTableRow")
            Core.<*> (o Core..:? "insertText")
            Core.<*> (o Core..:? "mergeTableCells")
            Core.<*> (o Core..:? "pinTableHeaderRows")
            Core.<*> (o Core..:? "replaceAllText")
            Core.<*> (o Core..:? "replaceImage")
            Core.<*> (o Core..:? "replaceNamedRangeContent")
            Core.<*> (o Core..:? "unmergeTableCells")
            Core.<*> (o Core..:? "updateDocumentStyle")
            Core.<*> (o Core..:? "updateParagraphStyle")
            Core.<*> (o Core..:? "updateSectionStyle")
            Core.<*> (o Core..:? "updateTableCellStyle")
            Core.<*> (o Core..:? "updateTableColumnProperties")
            Core.<*> (o Core..:? "updateTableRowStyle")
            Core.<*> (o Core..:? "updateTextStyle")
      )

instance Core.ToJSON Request' where
  toJSON Request' {..} =
    Core.object
      ( Core.catMaybes
          [ ("createFooter" Core..=) Core.<$> createFooter,
            ("createFootnote" Core..=) Core.<$> createFootnote,
            ("createHeader" Core..=) Core.<$> createHeader,
            ("createNamedRange" Core..=) Core.<$> createNamedRange,
            ("createParagraphBullets" Core..=) Core.<$> createParagraphBullets,
            ("deleteContentRange" Core..=) Core.<$> deleteContentRange,
            ("deleteFooter" Core..=) Core.<$> deleteFooter,
            ("deleteHeader" Core..=) Core.<$> deleteHeader,
            ("deleteNamedRange" Core..=) Core.<$> deleteNamedRange,
            ("deleteParagraphBullets" Core..=) Core.<$> deleteParagraphBullets,
            ("deletePositionedObject" Core..=) Core.<$> deletePositionedObject,
            ("deleteTableColumn" Core..=) Core.<$> deleteTableColumn,
            ("deleteTableRow" Core..=) Core.<$> deleteTableRow,
            ("insertInlineImage" Core..=) Core.<$> insertInlineImage,
            ("insertPageBreak" Core..=) Core.<$> insertPageBreak,
            ("insertSectionBreak" Core..=) Core.<$> insertSectionBreak,
            ("insertTable" Core..=) Core.<$> insertTable,
            ("insertTableColumn" Core..=) Core.<$> insertTableColumn,
            ("insertTableRow" Core..=) Core.<$> insertTableRow,
            ("insertText" Core..=) Core.<$> insertText,
            ("mergeTableCells" Core..=) Core.<$> mergeTableCells,
            ("pinTableHeaderRows" Core..=) Core.<$> pinTableHeaderRows,
            ("replaceAllText" Core..=) Core.<$> replaceAllText,
            ("replaceImage" Core..=) Core.<$> replaceImage,
            ("replaceNamedRangeContent" Core..=)
              Core.<$> replaceNamedRangeContent,
            ("unmergeTableCells" Core..=) Core.<$> unmergeTableCells,
            ("updateDocumentStyle" Core..=) Core.<$> updateDocumentStyle,
            ("updateParagraphStyle" Core..=) Core.<$> updateParagraphStyle,
            ("updateSectionStyle" Core..=) Core.<$> updateSectionStyle,
            ("updateTableCellStyle" Core..=) Core.<$> updateTableCellStyle,
            ("updateTableColumnProperties" Core..=)
              Core.<$> updateTableColumnProperties,
            ("updateTableRowStyle" Core..=) Core.<$> updateTableRowStyle,
            ("updateTextStyle" Core..=) Core.<$> updateTextStyle
          ]
      )

-- | A single response from an update.
--
-- /See:/ 'newResponse' smart constructor.
data Response = Response
  { -- | The result of creating a footer.
    createFooter :: (Core.Maybe CreateFooterResponse),
    -- | The result of creating a footnote.
    createFootnote :: (Core.Maybe CreateFootnoteResponse),
    -- | The result of creating a header.
    createHeader :: (Core.Maybe CreateHeaderResponse),
    -- | The result of creating a named range.
    createNamedRange :: (Core.Maybe CreateNamedRangeResponse),
    -- | The result of inserting an inline image.
    insertInlineImage :: (Core.Maybe InsertInlineImageResponse),
    -- | The result of inserting an inline Google Sheets chart.
    insertInlineSheetsChart :: (Core.Maybe InsertInlineSheetsChartResponse),
    -- | The result of replacing text.
    replaceAllText :: (Core.Maybe ReplaceAllTextResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
newResponse ::
  Response
newResponse =
  Response
    { createFooter = Core.Nothing,
      createFootnote = Core.Nothing,
      createHeader = Core.Nothing,
      createNamedRange = Core.Nothing,
      insertInlineImage = Core.Nothing,
      insertInlineSheetsChart = Core.Nothing,
      replaceAllText = Core.Nothing
    }

instance Core.FromJSON Response where
  parseJSON =
    Core.withObject
      "Response"
      ( \o ->
          Response
            Core.<$> (o Core..:? "createFooter")
            Core.<*> (o Core..:? "createFootnote")
            Core.<*> (o Core..:? "createHeader")
            Core.<*> (o Core..:? "createNamedRange")
            Core.<*> (o Core..:? "insertInlineImage")
            Core.<*> (o Core..:? "insertInlineSheetsChart")
            Core.<*> (o Core..:? "replaceAllText")
      )

instance Core.ToJSON Response where
  toJSON Response {..} =
    Core.object
      ( Core.catMaybes
          [ ("createFooter" Core..=) Core.<$> createFooter,
            ("createFootnote" Core..=) Core.<$> createFootnote,
            ("createHeader" Core..=) Core.<$> createHeader,
            ("createNamedRange" Core..=) Core.<$> createNamedRange,
            ("insertInlineImage" Core..=) Core.<$> insertInlineImage,
            ("insertInlineSheetsChart" Core..=)
              Core.<$> insertInlineSheetsChart,
            ("replaceAllText" Core..=) Core.<$> replaceAllText
          ]
      )

-- | An RGB color.
--
-- /See:/ 'newRgbColor' smart constructor.
data RgbColor = RgbColor
  { -- | The blue component of the color, from 0.0 to 1.0.
    blue :: (Core.Maybe Core.Double),
    -- | The green component of the color, from 0.0 to 1.0.
    green :: (Core.Maybe Core.Double),
    -- | The red component of the color, from 0.0 to 1.0.
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RgbColor' with the minimum fields required to make a request.
newRgbColor ::
  RgbColor
newRgbColor =
  RgbColor
    { blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON RgbColor where
  parseJSON =
    Core.withObject
      "RgbColor"
      ( \o ->
          RgbColor
            Core.<$> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON RgbColor where
  toJSON RgbColor {..} =
    Core.object
      ( Core.catMaybes
          [ ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | A link to a Google resource (such as a file in Drive, a YouTube video, or a Calendar event).
--
-- /See:/ 'newRichLink' smart constructor.
data RichLink = RichLink
  { -- | Output only. The ID of this link.
    richLinkId :: (Core.Maybe Core.Text),
    -- | Output only. The properties of this RichLink. This field is always present.
    richLinkProperties :: (Core.Maybe RichLinkProperties),
    -- | IDs for suggestions that remove this link from the document. A RichLink might have multiple deletion IDs if, for example, multiple users suggest deleting it. If empty, then this person link isn\'t suggested for deletion.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | IDs for suggestions that insert this link into the document. A RichLink might have multiple insertion IDs if it\'s a nested suggested change (a suggestion within a suggestion made by a different user, for example). If empty, then this person link isn\'t a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this RichLink, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe RichLink_SuggestedTextStyleChanges),
    -- | The text style of this RichLink.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichLink' with the minimum fields required to make a request.
newRichLink ::
  RichLink
newRichLink =
  RichLink
    { richLinkId = Core.Nothing,
      richLinkProperties = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON RichLink where
  parseJSON =
    Core.withObject
      "RichLink"
      ( \o ->
          RichLink
            Core.<$> (o Core..:? "richLinkId")
            Core.<*> (o Core..:? "richLinkProperties")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON RichLink where
  toJSON RichLink {..} =
    Core.object
      ( Core.catMaybes
          [ ("richLinkId" Core..=) Core.<$> richLinkId,
            ("richLinkProperties" Core..=) Core.<$> richLinkProperties,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this RichLink, keyed by suggestion ID.
--
-- /See:/ 'newRichLink_SuggestedTextStyleChanges' smart constructor.
newtype RichLink_SuggestedTextStyleChanges = RichLink_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichLink_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newRichLink_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  RichLink_SuggestedTextStyleChanges
newRichLink_SuggestedTextStyleChanges additional =
  RichLink_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON RichLink_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "RichLink_SuggestedTextStyleChanges"
      ( \o ->
          RichLink_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RichLink_SuggestedTextStyleChanges where
  toJSON RichLink_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Properties specific to a RichLink.
--
-- /See:/ 'newRichLinkProperties' smart constructor.
data RichLinkProperties = RichLinkProperties
  { -- | Output only. The <https://developers.google.com/drive/api/v3/mime-types MIME type> of the RichLink, if there\'s one (for example, when it\'s a file in Drive).
    mimeType :: (Core.Maybe Core.Text),
    -- | Output only. The title of the RichLink as displayed in the link. This title matches the title of the linked resource at the time of the insertion or last update of the link. This field is always present.
    title :: (Core.Maybe Core.Text),
    -- | Output only. The URI to the RichLink. This is always present.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RichLinkProperties' with the minimum fields required to make a request.
newRichLinkProperties ::
  RichLinkProperties
newRichLinkProperties =
  RichLinkProperties
    { mimeType = Core.Nothing,
      title = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON RichLinkProperties where
  parseJSON =
    Core.withObject
      "RichLinkProperties"
      ( \o ->
          RichLinkProperties
            Core.<$> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON RichLinkProperties where
  toJSON RichLinkProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("mimeType" Core..=) Core.<$> mimeType,
            ("title" Core..=) Core.<$> title,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | A StructuralElement representing a section break. A section is a range of content that has the same SectionStyle. A section break represents the start of a new section, and the section style applies to the section after the section break. The document body always begins with a section break.
--
-- /See:/ 'newSectionBreak' smart constructor.
data SectionBreak = SectionBreak
  { -- | The style of the section after this section break.
    sectionStyle :: (Core.Maybe SectionStyle),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A SectionBreak may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SectionBreak' with the minimum fields required to make a request.
newSectionBreak ::
  SectionBreak
newSectionBreak =
  SectionBreak
    { sectionStyle = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing
    }

instance Core.FromJSON SectionBreak where
  parseJSON =
    Core.withObject
      "SectionBreak"
      ( \o ->
          SectionBreak
            Core.<$> (o Core..:? "sectionStyle")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
      )

instance Core.ToJSON SectionBreak where
  toJSON SectionBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("sectionStyle" Core..=) Core.<$> sectionStyle,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds
          ]
      )

-- | Properties that apply to a section\'s column.
--
-- /See:/ 'newSectionColumnProperties' smart constructor.
data SectionColumnProperties = SectionColumnProperties
  { -- | The padding at the end of the column.
    paddingEnd :: (Core.Maybe Dimension),
    -- | Output only. The width of the column.
    width :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SectionColumnProperties' with the minimum fields required to make a request.
newSectionColumnProperties ::
  SectionColumnProperties
newSectionColumnProperties =
  SectionColumnProperties
    { paddingEnd = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON SectionColumnProperties where
  parseJSON =
    Core.withObject
      "SectionColumnProperties"
      ( \o ->
          SectionColumnProperties
            Core.<$> (o Core..:? "paddingEnd")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON SectionColumnProperties where
  toJSON SectionColumnProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("paddingEnd" Core..=) Core.<$> paddingEnd,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The styling that applies to a section.
--
-- /See:/ 'newSectionStyle' smart constructor.
data SectionStyle = SectionStyle
  { -- | The section\'s columns properties. If empty, the section contains one column with the default properties in the Docs editor. A section can be updated to have no more than 3 columns. When updating this property, setting a concrete value is required. Unsetting this property will result in a 400 bad request error.
    columnProperties :: (Core.Maybe [SectionColumnProperties]),
    -- | The style of column separators. This style can be set even when there\'s one column in the section. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    columnSeparatorStyle :: (Core.Maybe SectionStyle_ColumnSeparatorStyle),
    -- | The content direction of this section. If unset, the value defaults to LEFT/TO/RIGHT. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    contentDirection :: (Core.Maybe SectionStyle_ContentDirection),
    -- | The ID of the default footer. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s default/footer/id. This property is read-only.
    defaultFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the default header. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s default/header/id. This property is read-only.
    defaultHeaderId :: (Core.Maybe Core.Text),
    -- | The ID of the footer used only for even pages. If the value of DocumentStyle\'s use/even/page/header/footer is true, this value is used for the footers on even pages in the section. If it is false, the footers on even pages use the default/footer/id. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s even/page/footer_id. This property is read-only.
    evenPageFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the header used only for even pages. If the value of DocumentStyle\'s use/even/page/header/footer is true, this value is used for the headers on even pages in the section. If it is false, the headers on even pages use the default/header/id. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s even/page/header_id. This property is read-only.
    evenPageHeaderId :: (Core.Maybe Core.Text),
    -- | The ID of the footer used only for the first page of the section. If use/first/page/header/footer is true, this value is used for the footer on the first page of the section. If it\'s false, the footer on the first page of the section uses the default/footer/id. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s first/page/footer_id. This property is read-only.
    firstPageFooterId :: (Core.Maybe Core.Text),
    -- | The ID of the header used only for the first page of the section. If use/first/page/header/footer is true, this value is used for the header on the first page of the section. If it\'s false, the header on the first page of the section uses the default/header/id. If unset, the value inherits from the previous SectionBreak\'s SectionStyle. If the value is unset in the first SectionBreak, it inherits from DocumentStyle\'s first/page/header_id. This property is read-only.
    firstPageHeaderId :: (Core.Maybe Core.Text),
    -- | Optional. Indicates whether to flip the dimensions of DocumentStyle\'s page/size for this section, which allows changing the page orientation between portrait and landscape. If unset, the value inherits from DocumentStyle\'s flip/page_orientation. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    flipPageOrientation :: (Core.Maybe Core.Bool),
    -- | The bottom page margin of the section. If unset, the value defaults to margin_bottom from DocumentStyle. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginBottom :: (Core.Maybe Dimension),
    -- | The footer margin of the section. If unset, the value defaults to margin/footer from DocumentStyle. If updated, use/custom/header/footer/margins is set to true on DocumentStyle. The value of use/custom/header/footer_margins on DocumentStyle indicates if a footer margin is being respected for this section When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginFooter :: (Core.Maybe Dimension),
    -- | The header margin of the section. If unset, the value defaults to margin/header from DocumentStyle. If updated, use/custom/header/footer/margins is set to true on DocumentStyle. The value of use/custom/header/footer_margins on DocumentStyle indicates if a header margin is being respected for this section. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginHeader :: (Core.Maybe Dimension),
    -- | The left page margin of the section. If unset, the value defaults to margin_left from DocumentStyle. Updating the left margin causes columns in this section to resize. Since the margin affects column width, it\'s applied before column properties. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginLeft :: (Core.Maybe Dimension),
    -- | The right page margin of the section. If unset, the value defaults to margin_right from DocumentStyle. Updating the right margin causes columns in this section to resize. Since the margin affects column width, it\'s applied before column properties. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginRight :: (Core.Maybe Dimension),
    -- | The top page margin of the section. If unset, the value defaults to margin_top from DocumentStyle. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    marginTop :: (Core.Maybe Dimension),
    -- | The page number from which to start counting the number of pages for this section. If unset, page numbering continues from the previous section. If the value is unset in the first SectionBreak, refer to DocumentStyle\'s page/number/start. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    pageNumberStart :: (Core.Maybe Core.Int32),
    -- | Output only. The type of section.
    sectionType :: (Core.Maybe SectionStyle_SectionType),
    -- | Indicates whether to use the first page header \/ footer IDs for the first page of the section. If unset, it inherits from DocumentStyle\'s use/first/page/header/footer for the first section. If the value is unset for subsequent sectors, it should be interpreted as false. When updating this property, setting a concrete value is required. Unsetting this property results in a 400 bad request error.
    useFirstPageHeaderFooter :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SectionStyle' with the minimum fields required to make a request.
newSectionStyle ::
  SectionStyle
newSectionStyle =
  SectionStyle
    { columnProperties = Core.Nothing,
      columnSeparatorStyle = Core.Nothing,
      contentDirection = Core.Nothing,
      defaultFooterId = Core.Nothing,
      defaultHeaderId = Core.Nothing,
      evenPageFooterId = Core.Nothing,
      evenPageHeaderId = Core.Nothing,
      firstPageFooterId = Core.Nothing,
      firstPageHeaderId = Core.Nothing,
      flipPageOrientation = Core.Nothing,
      marginBottom = Core.Nothing,
      marginFooter = Core.Nothing,
      marginHeader = Core.Nothing,
      marginLeft = Core.Nothing,
      marginRight = Core.Nothing,
      marginTop = Core.Nothing,
      pageNumberStart = Core.Nothing,
      sectionType = Core.Nothing,
      useFirstPageHeaderFooter = Core.Nothing
    }

instance Core.FromJSON SectionStyle where
  parseJSON =
    Core.withObject
      "SectionStyle"
      ( \o ->
          SectionStyle
            Core.<$> (o Core..:? "columnProperties")
            Core.<*> (o Core..:? "columnSeparatorStyle")
            Core.<*> (o Core..:? "contentDirection")
            Core.<*> (o Core..:? "defaultFooterId")
            Core.<*> (o Core..:? "defaultHeaderId")
            Core.<*> (o Core..:? "evenPageFooterId")
            Core.<*> (o Core..:? "evenPageHeaderId")
            Core.<*> (o Core..:? "firstPageFooterId")
            Core.<*> (o Core..:? "firstPageHeaderId")
            Core.<*> (o Core..:? "flipPageOrientation")
            Core.<*> (o Core..:? "marginBottom")
            Core.<*> (o Core..:? "marginFooter")
            Core.<*> (o Core..:? "marginHeader")
            Core.<*> (o Core..:? "marginLeft")
            Core.<*> (o Core..:? "marginRight")
            Core.<*> (o Core..:? "marginTop")
            Core.<*> (o Core..:? "pageNumberStart")
            Core.<*> (o Core..:? "sectionType")
            Core.<*> (o Core..:? "useFirstPageHeaderFooter")
      )

instance Core.ToJSON SectionStyle where
  toJSON SectionStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnProperties" Core..=) Core.<$> columnProperties,
            ("columnSeparatorStyle" Core..=) Core.<$> columnSeparatorStyle,
            ("contentDirection" Core..=) Core.<$> contentDirection,
            ("defaultFooterId" Core..=) Core.<$> defaultFooterId,
            ("defaultHeaderId" Core..=) Core.<$> defaultHeaderId,
            ("evenPageFooterId" Core..=) Core.<$> evenPageFooterId,
            ("evenPageHeaderId" Core..=) Core.<$> evenPageHeaderId,
            ("firstPageFooterId" Core..=) Core.<$> firstPageFooterId,
            ("firstPageHeaderId" Core..=) Core.<$> firstPageHeaderId,
            ("flipPageOrientation" Core..=) Core.<$> flipPageOrientation,
            ("marginBottom" Core..=) Core.<$> marginBottom,
            ("marginFooter" Core..=) Core.<$> marginFooter,
            ("marginHeader" Core..=) Core.<$> marginHeader,
            ("marginLeft" Core..=) Core.<$> marginLeft,
            ("marginRight" Core..=) Core.<$> marginRight,
            ("marginTop" Core..=) Core.<$> marginTop,
            ("pageNumberStart" Core..=) Core.<$> pageNumberStart,
            ("sectionType" Core..=) Core.<$> sectionType,
            ("useFirstPageHeaderFooter" Core..=)
              Core.<$> useFirstPageHeaderFooter
          ]
      )

-- | The shading of a paragraph.
--
-- /See:/ 'newShading' smart constructor.
newtype Shading = Shading
  { -- | The background color of this paragraph shading.
    backgroundColor :: (Core.Maybe OptionalColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Shading' with the minimum fields required to make a request.
newShading ::
  Shading
newShading = Shading {backgroundColor = Core.Nothing}

instance Core.FromJSON Shading where
  parseJSON =
    Core.withObject
      "Shading"
      (\o -> Shading Core.<$> (o Core..:? "backgroundColor"))

instance Core.ToJSON Shading where
  toJSON Shading {..} =
    Core.object
      ( Core.catMaybes
          [("backgroundColor" Core..=) Core.<$> backgroundColor]
      )

-- | A mask that indicates which of the fields on the base Shading have been changed in this suggested change. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newShadingSuggestionState' smart constructor.
newtype ShadingSuggestionState = ShadingSuggestionState
  { -- | Indicates if there was a suggested change to the Shading.
    backgroundColorSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShadingSuggestionState' with the minimum fields required to make a request.
newShadingSuggestionState ::
  ShadingSuggestionState
newShadingSuggestionState =
  ShadingSuggestionState {backgroundColorSuggested = Core.Nothing}

instance Core.FromJSON ShadingSuggestionState where
  parseJSON =
    Core.withObject
      "ShadingSuggestionState"
      ( \o ->
          ShadingSuggestionState
            Core.<$> (o Core..:? "backgroundColorSuggested")
      )

instance Core.ToJSON ShadingSuggestionState where
  toJSON ShadingSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColorSuggested" Core..=)
              Core.<$> backgroundColorSuggested
          ]
      )

-- | A reference to a linked chart embedded from Google Sheets.
--
-- /See:/ 'newSheetsChartReference' smart constructor.
data SheetsChartReference = SheetsChartReference
  { -- | The ID of the specific chart in the Google Sheets spreadsheet that\'s embedded.
    chartId :: (Core.Maybe Core.Int32),
    -- | The ID of the Google Sheets spreadsheet that contains the source chart.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsChartReference' with the minimum fields required to make a request.
newSheetsChartReference ::
  SheetsChartReference
newSheetsChartReference =
  SheetsChartReference
    { chartId = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance Core.FromJSON SheetsChartReference where
  parseJSON =
    Core.withObject
      "SheetsChartReference"
      ( \o ->
          SheetsChartReference
            Core.<$> (o Core..:? "chartId")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance Core.ToJSON SheetsChartReference where
  toJSON SheetsChartReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | A mask that indicates which of the fields on the base SheetsChartReference have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newSheetsChartReferenceSuggestionState' smart constructor.
data SheetsChartReferenceSuggestionState = SheetsChartReferenceSuggestionState
  { -- | Indicates if there was a suggested change to chart_id.
    chartIdSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to spreadsheet_id.
    spreadsheetIdSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsChartReferenceSuggestionState' with the minimum fields required to make a request.
newSheetsChartReferenceSuggestionState ::
  SheetsChartReferenceSuggestionState
newSheetsChartReferenceSuggestionState =
  SheetsChartReferenceSuggestionState
    { chartIdSuggested =
        Core.Nothing,
      spreadsheetIdSuggested = Core.Nothing
    }

instance Core.FromJSON SheetsChartReferenceSuggestionState where
  parseJSON =
    Core.withObject
      "SheetsChartReferenceSuggestionState"
      ( \o ->
          SheetsChartReferenceSuggestionState
            Core.<$> (o Core..:? "chartIdSuggested")
            Core.<*> (o Core..:? "spreadsheetIdSuggested")
      )

instance Core.ToJSON SheetsChartReferenceSuggestionState where
  toJSON SheetsChartReferenceSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartIdSuggested" Core..=) Core.<$> chartIdSuggested,
            ("spreadsheetIdSuggested" Core..=)
              Core.<$> spreadsheetIdSuggested
          ]
      )

-- | A width and height.
--
-- /See:/ 'newSize' smart constructor.
data Size = Size
  { -- | The height of the object.
    height :: (Core.Maybe Dimension),
    -- | The width of the object.
    width :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Size' with the minimum fields required to make a request.
newSize ::
  Size
newSize = Size {height = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON Size where
  parseJSON =
    Core.withObject
      "Size"
      ( \o ->
          Size Core.<$> (o Core..:? "height") Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Size where
  toJSON Size {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | A mask that indicates which of the fields on the base Size have been changed in this suggestion. For any field set to true, the Size has a new suggested value.
--
-- /See:/ 'newSizeSuggestionState' smart constructor.
data SizeSuggestionState = SizeSuggestionState
  { -- | Indicates if there was a suggested change to height.
    heightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to width.
    widthSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SizeSuggestionState' with the minimum fields required to make a request.
newSizeSuggestionState ::
  SizeSuggestionState
newSizeSuggestionState =
  SizeSuggestionState
    { heightSuggested = Core.Nothing,
      widthSuggested = Core.Nothing
    }

instance Core.FromJSON SizeSuggestionState where
  parseJSON =
    Core.withObject
      "SizeSuggestionState"
      ( \o ->
          SizeSuggestionState
            Core.<$> (o Core..:? "heightSuggested")
            Core.<*> (o Core..:? "widthSuggested")
      )

instance Core.ToJSON SizeSuggestionState where
  toJSON SizeSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("heightSuggested" Core..=) Core.<$> heightSuggested,
            ("widthSuggested" Core..=) Core.<$> widthSuggested
          ]
      )

-- | A StructuralElement describes content that provides structure to the document.
--
-- /See:/ 'newStructuralElement' smart constructor.
data StructuralElement = StructuralElement
  { -- | The zero-based end index of this structural element, exclusive, in UTF-16 code units.
    endIndex :: (Core.Maybe Core.Int32),
    -- | A paragraph type of structural element.
    paragraph :: (Core.Maybe Paragraph),
    -- | A section break type of structural element.
    sectionBreak :: (Core.Maybe SectionBreak),
    -- | The zero-based start index of this structural element, in UTF-16 code units.
    startIndex :: (Core.Maybe Core.Int32),
    -- | A table type of structural element.
    table :: (Core.Maybe Table),
    -- | A table of contents type of structural element.
    tableOfContents :: (Core.Maybe TableOfContents)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StructuralElement' with the minimum fields required to make a request.
newStructuralElement ::
  StructuralElement
newStructuralElement =
  StructuralElement
    { endIndex = Core.Nothing,
      paragraph = Core.Nothing,
      sectionBreak = Core.Nothing,
      startIndex = Core.Nothing,
      table = Core.Nothing,
      tableOfContents = Core.Nothing
    }

instance Core.FromJSON StructuralElement where
  parseJSON =
    Core.withObject
      "StructuralElement"
      ( \o ->
          StructuralElement
            Core.<$> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "paragraph")
            Core.<*> (o Core..:? "sectionBreak")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "tableOfContents")
      )

instance Core.ToJSON StructuralElement where
  toJSON StructuralElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("endIndex" Core..=) Core.<$> endIndex,
            ("paragraph" Core..=) Core.<$> paragraph,
            ("sectionBreak" Core..=) Core.<$> sectionBreak,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("table" Core..=) Core.<$> table,
            ("tableOfContents" Core..=) Core.<$> tableOfContents
          ]
      )

-- | A criteria that matches a specific string of text in the document.
--
-- /See:/ 'newSubstringMatchCriteria' smart constructor.
data SubstringMatchCriteria = SubstringMatchCriteria
  { -- | Indicates whether the search should respect case: - @True@: the search is case sensitive. - @False@: the search is case insensitive.
    matchCase :: (Core.Maybe Core.Bool),
    -- | The text to search for in the document.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubstringMatchCriteria' with the minimum fields required to make a request.
newSubstringMatchCriteria ::
  SubstringMatchCriteria
newSubstringMatchCriteria =
  SubstringMatchCriteria
    { matchCase = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON SubstringMatchCriteria where
  parseJSON =
    Core.withObject
      "SubstringMatchCriteria"
      ( \o ->
          SubstringMatchCriteria
            Core.<$> (o Core..:? "matchCase")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON SubstringMatchCriteria where
  toJSON SubstringMatchCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("matchCase" Core..=) Core.<$> matchCase,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | A suggested change to a Bullet.
--
-- /See:/ 'newSuggestedBullet' smart constructor.
data SuggestedBullet = SuggestedBullet
  { -- | A Bullet that only includes the changes made in this suggestion. This can be used along with the bullet/suggestion/state to see which fields have changed and their new values.
    bullet :: (Core.Maybe Bullet),
    -- | A mask that indicates which of the fields on the base Bullet have been changed in this suggestion.
    bulletSuggestionState :: (Core.Maybe BulletSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedBullet' with the minimum fields required to make a request.
newSuggestedBullet ::
  SuggestedBullet
newSuggestedBullet =
  SuggestedBullet
    { bullet = Core.Nothing,
      bulletSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedBullet where
  parseJSON =
    Core.withObject
      "SuggestedBullet"
      ( \o ->
          SuggestedBullet
            Core.<$> (o Core..:? "bullet")
            Core.<*> (o Core..:? "bulletSuggestionState")
      )

instance Core.ToJSON SuggestedBullet where
  toJSON SuggestedBullet {..} =
    Core.object
      ( Core.catMaybes
          [ ("bullet" Core..=) Core.<$> bullet,
            ("bulletSuggestionState" Core..=) Core.<$> bulletSuggestionState
          ]
      )

-- | A suggested change to the DocumentStyle.
--
-- /See:/ 'newSuggestedDocumentStyle' smart constructor.
data SuggestedDocumentStyle = SuggestedDocumentStyle
  { -- | A DocumentStyle that only includes the changes made in this suggestion. This can be used along with the document/style/suggestion_state to see which fields have changed and their new values.
    documentStyle :: (Core.Maybe DocumentStyle),
    -- | A mask that indicates which of the fields on the base DocumentStyle have been changed in this suggestion.
    documentStyleSuggestionState :: (Core.Maybe DocumentStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedDocumentStyle' with the minimum fields required to make a request.
newSuggestedDocumentStyle ::
  SuggestedDocumentStyle
newSuggestedDocumentStyle =
  SuggestedDocumentStyle
    { documentStyle = Core.Nothing,
      documentStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedDocumentStyle where
  parseJSON =
    Core.withObject
      "SuggestedDocumentStyle"
      ( \o ->
          SuggestedDocumentStyle
            Core.<$> (o Core..:? "documentStyle")
            Core.<*> (o Core..:? "documentStyleSuggestionState")
      )

instance Core.ToJSON SuggestedDocumentStyle where
  toJSON SuggestedDocumentStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentStyle" Core..=) Core.<$> documentStyle,
            ("documentStyleSuggestionState" Core..=)
              Core.<$> documentStyleSuggestionState
          ]
      )

-- | A suggested change to InlineObjectProperties.
--
-- /See:/ 'newSuggestedInlineObjectProperties' smart constructor.
data SuggestedInlineObjectProperties = SuggestedInlineObjectProperties
  { -- | An InlineObjectProperties that only includes the changes made in this suggestion. This can be used along with the inline/object/properties/suggestion/state to see which fields have changed and their new values.
    inlineObjectProperties :: (Core.Maybe InlineObjectProperties),
    -- | A mask that indicates which of the fields on the base InlineObjectProperties have been changed in this suggestion.
    inlineObjectPropertiesSuggestionState :: (Core.Maybe InlineObjectPropertiesSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedInlineObjectProperties' with the minimum fields required to make a request.
newSuggestedInlineObjectProperties ::
  SuggestedInlineObjectProperties
newSuggestedInlineObjectProperties =
  SuggestedInlineObjectProperties
    { inlineObjectProperties =
        Core.Nothing,
      inlineObjectPropertiesSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedInlineObjectProperties where
  parseJSON =
    Core.withObject
      "SuggestedInlineObjectProperties"
      ( \o ->
          SuggestedInlineObjectProperties
            Core.<$> (o Core..:? "inlineObjectProperties")
            Core.<*> (o Core..:? "inlineObjectPropertiesSuggestionState")
      )

instance Core.ToJSON SuggestedInlineObjectProperties where
  toJSON SuggestedInlineObjectProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("inlineObjectProperties" Core..=)
              Core.<$> inlineObjectProperties,
            ("inlineObjectPropertiesSuggestionState" Core..=)
              Core.<$> inlineObjectPropertiesSuggestionState
          ]
      )

-- | A suggested change to ListProperties.
--
-- /See:/ 'newSuggestedListProperties' smart constructor.
data SuggestedListProperties = SuggestedListProperties
  { -- | A ListProperties that only includes the changes made in this suggestion. This can be used along with the list/properties/suggestion_state to see which fields have changed and their new values.
    listProperties :: (Core.Maybe ListProperties),
    -- | A mask that indicates which of the fields on the base ListProperties have been changed in this suggestion.
    listPropertiesSuggestionState :: (Core.Maybe ListPropertiesSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedListProperties' with the minimum fields required to make a request.
newSuggestedListProperties ::
  SuggestedListProperties
newSuggestedListProperties =
  SuggestedListProperties
    { listProperties = Core.Nothing,
      listPropertiesSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedListProperties where
  parseJSON =
    Core.withObject
      "SuggestedListProperties"
      ( \o ->
          SuggestedListProperties
            Core.<$> (o Core..:? "listProperties")
            Core.<*> (o Core..:? "listPropertiesSuggestionState")
      )

instance Core.ToJSON SuggestedListProperties where
  toJSON SuggestedListProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("listProperties" Core..=) Core.<$> listProperties,
            ("listPropertiesSuggestionState" Core..=)
              Core.<$> listPropertiesSuggestionState
          ]
      )

-- | A suggested change to the NamedStyles.
--
-- /See:/ 'newSuggestedNamedStyles' smart constructor.
data SuggestedNamedStyles = SuggestedNamedStyles
  { -- | A NamedStyles that only includes the changes made in this suggestion. This can be used along with the named/styles/suggestion_state to see which fields have changed and their new values.
    namedStyles :: (Core.Maybe NamedStyles),
    -- | A mask that indicates which of the fields on the base NamedStyles have been changed in this suggestion.
    namedStylesSuggestionState :: (Core.Maybe NamedStylesSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedNamedStyles' with the minimum fields required to make a request.
newSuggestedNamedStyles ::
  SuggestedNamedStyles
newSuggestedNamedStyles =
  SuggestedNamedStyles
    { namedStyles = Core.Nothing,
      namedStylesSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedNamedStyles where
  parseJSON =
    Core.withObject
      "SuggestedNamedStyles"
      ( \o ->
          SuggestedNamedStyles
            Core.<$> (o Core..:? "namedStyles")
            Core.<*> (o Core..:? "namedStylesSuggestionState")
      )

instance Core.ToJSON SuggestedNamedStyles where
  toJSON SuggestedNamedStyles {..} =
    Core.object
      ( Core.catMaybes
          [ ("namedStyles" Core..=) Core.<$> namedStyles,
            ("namedStylesSuggestionState" Core..=)
              Core.<$> namedStylesSuggestionState
          ]
      )

-- | A suggested change to a ParagraphStyle.
--
-- /See:/ 'newSuggestedParagraphStyle' smart constructor.
data SuggestedParagraphStyle = SuggestedParagraphStyle
  { -- | A ParagraphStyle that only includes the changes made in this suggestion. This can be used along with the paragraph/style/suggestion_state to see which fields have changed and their new values.
    paragraphStyle :: (Core.Maybe ParagraphStyle),
    -- | A mask that indicates which of the fields on the base ParagraphStyle have been changed in this suggestion.
    paragraphStyleSuggestionState :: (Core.Maybe ParagraphStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedParagraphStyle' with the minimum fields required to make a request.
newSuggestedParagraphStyle ::
  SuggestedParagraphStyle
newSuggestedParagraphStyle =
  SuggestedParagraphStyle
    { paragraphStyle = Core.Nothing,
      paragraphStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedParagraphStyle where
  parseJSON =
    Core.withObject
      "SuggestedParagraphStyle"
      ( \o ->
          SuggestedParagraphStyle
            Core.<$> (o Core..:? "paragraphStyle")
            Core.<*> (o Core..:? "paragraphStyleSuggestionState")
      )

instance Core.ToJSON SuggestedParagraphStyle where
  toJSON SuggestedParagraphStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("paragraphStyle" Core..=) Core.<$> paragraphStyle,
            ("paragraphStyleSuggestionState" Core..=)
              Core.<$> paragraphStyleSuggestionState
          ]
      )

-- | A suggested change to PositionedObjectProperties.
--
-- /See:/ 'newSuggestedPositionedObjectProperties' smart constructor.
data SuggestedPositionedObjectProperties = SuggestedPositionedObjectProperties
  { -- | A PositionedObjectProperties that only includes the changes made in this suggestion. This can be used along with the positioned/object/properties/suggestion/state to see which fields have changed and their new values.
    positionedObjectProperties :: (Core.Maybe PositionedObjectProperties),
    -- | A mask that indicates which of the fields on the base PositionedObjectProperties have been changed in this suggestion.
    positionedObjectPropertiesSuggestionState :: (Core.Maybe PositionedObjectPropertiesSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedPositionedObjectProperties' with the minimum fields required to make a request.
newSuggestedPositionedObjectProperties ::
  SuggestedPositionedObjectProperties
newSuggestedPositionedObjectProperties =
  SuggestedPositionedObjectProperties
    { positionedObjectProperties =
        Core.Nothing,
      positionedObjectPropertiesSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedPositionedObjectProperties where
  parseJSON =
    Core.withObject
      "SuggestedPositionedObjectProperties"
      ( \o ->
          SuggestedPositionedObjectProperties
            Core.<$> (o Core..:? "positionedObjectProperties")
            Core.<*> (o Core..:? "positionedObjectPropertiesSuggestionState")
      )

instance Core.ToJSON SuggestedPositionedObjectProperties where
  toJSON SuggestedPositionedObjectProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("positionedObjectProperties" Core..=)
              Core.<$> positionedObjectProperties,
            ("positionedObjectPropertiesSuggestionState" Core..=)
              Core.<$> positionedObjectPropertiesSuggestionState
          ]
      )

-- | A suggested change to a TableCellStyle.
--
-- /See:/ 'newSuggestedTableCellStyle' smart constructor.
data SuggestedTableCellStyle = SuggestedTableCellStyle
  { -- | A TableCellStyle that only includes the changes made in this suggestion. This can be used along with the table/cell/style/suggestion/state to see which fields have changed and their new values.
    tableCellStyle :: (Core.Maybe TableCellStyle),
    -- | A mask that indicates which of the fields on the base TableCellStyle have been changed in this suggestion.
    tableCellStyleSuggestionState :: (Core.Maybe TableCellStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedTableCellStyle' with the minimum fields required to make a request.
newSuggestedTableCellStyle ::
  SuggestedTableCellStyle
newSuggestedTableCellStyle =
  SuggestedTableCellStyle
    { tableCellStyle = Core.Nothing,
      tableCellStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedTableCellStyle where
  parseJSON =
    Core.withObject
      "SuggestedTableCellStyle"
      ( \o ->
          SuggestedTableCellStyle
            Core.<$> (o Core..:? "tableCellStyle")
            Core.<*> (o Core..:? "tableCellStyleSuggestionState")
      )

instance Core.ToJSON SuggestedTableCellStyle where
  toJSON SuggestedTableCellStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("tableCellStyle" Core..=) Core.<$> tableCellStyle,
            ("tableCellStyleSuggestionState" Core..=)
              Core.<$> tableCellStyleSuggestionState
          ]
      )

-- | A suggested change to a TableRowStyle.
--
-- /See:/ 'newSuggestedTableRowStyle' smart constructor.
data SuggestedTableRowStyle = SuggestedTableRowStyle
  { -- | A TableRowStyle that only includes the changes made in this suggestion. This can be used along with the table/row/style/suggestion/state to see which fields have changed and their new values.
    tableRowStyle :: (Core.Maybe TableRowStyle),
    -- | A mask that indicates which of the fields on the base TableRowStyle have been changed in this suggestion.
    tableRowStyleSuggestionState :: (Core.Maybe TableRowStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedTableRowStyle' with the minimum fields required to make a request.
newSuggestedTableRowStyle ::
  SuggestedTableRowStyle
newSuggestedTableRowStyle =
  SuggestedTableRowStyle
    { tableRowStyle = Core.Nothing,
      tableRowStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedTableRowStyle where
  parseJSON =
    Core.withObject
      "SuggestedTableRowStyle"
      ( \o ->
          SuggestedTableRowStyle
            Core.<$> (o Core..:? "tableRowStyle")
            Core.<*> (o Core..:? "tableRowStyleSuggestionState")
      )

instance Core.ToJSON SuggestedTableRowStyle where
  toJSON SuggestedTableRowStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("tableRowStyle" Core..=) Core.<$> tableRowStyle,
            ("tableRowStyleSuggestionState" Core..=)
              Core.<$> tableRowStyleSuggestionState
          ]
      )

-- | A suggested change to a TextStyle.
--
-- /See:/ 'newSuggestedTextStyle' smart constructor.
data SuggestedTextStyle = SuggestedTextStyle
  { -- | A TextStyle that only includes the changes made in this suggestion. This can be used along with the text/style/suggestion_state to see which fields have changed and their new values.
    textStyle :: (Core.Maybe TextStyle),
    -- | A mask that indicates which of the fields on the base TextStyle have been changed in this suggestion.
    textStyleSuggestionState :: (Core.Maybe TextStyleSuggestionState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuggestedTextStyle' with the minimum fields required to make a request.
newSuggestedTextStyle ::
  SuggestedTextStyle
newSuggestedTextStyle =
  SuggestedTextStyle
    { textStyle = Core.Nothing,
      textStyleSuggestionState = Core.Nothing
    }

instance Core.FromJSON SuggestedTextStyle where
  parseJSON =
    Core.withObject
      "SuggestedTextStyle"
      ( \o ->
          SuggestedTextStyle
            Core.<$> (o Core..:? "textStyle")
            Core.<*> (o Core..:? "textStyleSuggestionState")
      )

instance Core.ToJSON SuggestedTextStyle where
  toJSON SuggestedTextStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("textStyle" Core..=) Core.<$> textStyle,
            ("textStyleSuggestionState" Core..=)
              Core.<$> textStyleSuggestionState
          ]
      )

-- | A tab in a document.
--
-- /See:/ 'newTab' smart constructor.
data Tab = Tab
  { -- | The child tabs nested within this tab.
    childTabs :: (Core.Maybe [Tab]),
    -- | A tab with document contents, like text and images.
    documentTab :: (Core.Maybe DocumentTab),
    -- | The properties of the tab, like ID and title.
    tabProperties :: (Core.Maybe TabProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tab' with the minimum fields required to make a request.
newTab ::
  Tab
newTab =
  Tab
    { childTabs = Core.Nothing,
      documentTab = Core.Nothing,
      tabProperties = Core.Nothing
    }

instance Core.FromJSON Tab where
  parseJSON =
    Core.withObject
      "Tab"
      ( \o ->
          Tab
            Core.<$> (o Core..:? "childTabs")
            Core.<*> (o Core..:? "documentTab")
            Core.<*> (o Core..:? "tabProperties")
      )

instance Core.ToJSON Tab where
  toJSON Tab {..} =
    Core.object
      ( Core.catMaybes
          [ ("childTabs" Core..=) Core.<$> childTabs,
            ("documentTab" Core..=) Core.<$> documentTab,
            ("tabProperties" Core..=) Core.<$> tabProperties
          ]
      )

-- | Properties of a tab.
--
-- /See:/ 'newTabProperties' smart constructor.
data TabProperties = TabProperties
  { -- | The zero-based index of the tab within the parent.
    index :: (Core.Maybe Core.Int32),
    -- | Output only. The depth of the tab within the document. Root-level tabs start at 0.
    nestingLevel :: (Core.Maybe Core.Int32),
    -- | Optional. The ID of the parent tab. Empty when the current tab is a root-level tab, which means it doesn\'t have any parents.
    parentTabId :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the tab. This field can\'t be changed.
    tabId :: (Core.Maybe Core.Text),
    -- | The user-visible name of the tab.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TabProperties' with the minimum fields required to make a request.
newTabProperties ::
  TabProperties
newTabProperties =
  TabProperties
    { index = Core.Nothing,
      nestingLevel = Core.Nothing,
      parentTabId = Core.Nothing,
      tabId = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON TabProperties where
  parseJSON =
    Core.withObject
      "TabProperties"
      ( \o ->
          TabProperties
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "nestingLevel")
            Core.<*> (o Core..:? "parentTabId")
            Core.<*> (o Core..:? "tabId")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON TabProperties where
  toJSON TabProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("nestingLevel" Core..=) Core.<$> nestingLevel,
            ("parentTabId" Core..=) Core.<$> parentTabId,
            ("tabId" Core..=) Core.<$> tabId,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A tab stop within a paragraph.
--
-- /See:/ 'newTabStop' smart constructor.
data TabStop = TabStop
  { -- | The alignment of this tab stop. If unset, the value defaults to START.
    alignment :: (Core.Maybe TabStop_Alignment),
    -- | The offset between this tab stop and the start margin.
    offset :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TabStop' with the minimum fields required to make a request.
newTabStop ::
  TabStop
newTabStop =
  TabStop {alignment = Core.Nothing, offset = Core.Nothing}

instance Core.FromJSON TabStop where
  parseJSON =
    Core.withObject
      "TabStop"
      ( \o ->
          TabStop
            Core.<$> (o Core..:? "alignment")
            Core.<*> (o Core..:? "offset")
      )

instance Core.ToJSON TabStop where
  toJSON TabStop {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignment" Core..=) Core.<$> alignment,
            ("offset" Core..=) Core.<$> offset
          ]
      )

-- | A StructuralElement representing a table.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | Number of columns in the table. It\'s possible for a table to be non-rectangular, so some rows may have a different number of cells.
    columns :: (Core.Maybe Core.Int32),
    -- | Number of rows in the table.
    rows :: (Core.Maybe Core.Int32),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A Table may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The contents and style of each row.
    tableRows :: (Core.Maybe [TableRow]),
    -- | The style of the table.
    tableStyle :: (Core.Maybe TableStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { columns = Core.Nothing,
      rows = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      tableRows = Core.Nothing,
      tableStyle = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "tableRows")
            Core.<*> (o Core..:? "tableStyle")
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("rows" Core..=) Core.<$> rows,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("tableRows" Core..=) Core.<$> tableRows,
            ("tableStyle" Core..=) Core.<$> tableStyle
          ]
      )

-- | The contents and style of a cell in a Table.
--
-- /See:/ 'newTableCell' smart constructor.
data TableCell = TableCell
  { -- | The content of the cell.
    content :: (Core.Maybe [StructuralElement]),
    -- | The zero-based end index of this cell, exclusive, in UTF-16 code units.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The zero-based start index of this cell, in UTF-16 code units.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A TableCell may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested changes to the table cell style, keyed by suggestion ID.
    suggestedTableCellStyleChanges :: (Core.Maybe TableCell_SuggestedTableCellStyleChanges),
    -- | The style of the cell.
    tableCellStyle :: (Core.Maybe TableCellStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
newTableCell ::
  TableCell
newTableCell =
  TableCell
    { content = Core.Nothing,
      endIndex = Core.Nothing,
      startIndex = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTableCellStyleChanges = Core.Nothing,
      tableCellStyle = Core.Nothing
    }

instance Core.FromJSON TableCell where
  parseJSON =
    Core.withObject
      "TableCell"
      ( \o ->
          TableCell
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTableCellStyleChanges")
            Core.<*> (o Core..:? "tableCellStyle")
      )

instance Core.ToJSON TableCell where
  toJSON TableCell {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTableCellStyleChanges" Core..=)
              Core.<$> suggestedTableCellStyleChanges,
            ("tableCellStyle" Core..=) Core.<$> tableCellStyle
          ]
      )

-- | The suggested changes to the table cell style, keyed by suggestion ID.
--
-- /See:/ 'newTableCell_SuggestedTableCellStyleChanges' smart constructor.
newtype TableCell_SuggestedTableCellStyleChanges = TableCell_SuggestedTableCellStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTableCellStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCell_SuggestedTableCellStyleChanges' with the minimum fields required to make a request.
newTableCell_SuggestedTableCellStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTableCellStyle ->
  TableCell_SuggestedTableCellStyleChanges
newTableCell_SuggestedTableCellStyleChanges additional =
  TableCell_SuggestedTableCellStyleChanges {additional = additional}

instance Core.FromJSON TableCell_SuggestedTableCellStyleChanges where
  parseJSON =
    Core.withObject
      "TableCell_SuggestedTableCellStyleChanges"
      ( \o ->
          TableCell_SuggestedTableCellStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TableCell_SuggestedTableCellStyleChanges where
  toJSON TableCell_SuggestedTableCellStyleChanges {..} =
    Core.toJSON additional

-- | A border around a table cell. Table cell borders cannot be transparent. To hide a table cell border, make its width 0.
--
-- /See:/ 'newTableCellBorder' smart constructor.
data TableCellBorder = TableCellBorder
  { -- | The color of the border. This color cannot be transparent.
    color :: (Core.Maybe OptionalColor),
    -- | The dash style of the border.
    dashStyle :: (Core.Maybe TableCellBorder_DashStyle),
    -- | The width of the border.
    width :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellBorder' with the minimum fields required to make a request.
newTableCellBorder ::
  TableCellBorder
newTableCellBorder =
  TableCellBorder
    { color = Core.Nothing,
      dashStyle = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON TableCellBorder where
  parseJSON =
    Core.withObject
      "TableCellBorder"
      ( \o ->
          TableCellBorder
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON TableCellBorder where
  toJSON TableCellBorder {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("dashStyle" Core..=) Core.<$> dashStyle,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Location of a single cell within a table.
--
-- /See:/ 'newTableCellLocation' smart constructor.
data TableCellLocation = TableCellLocation
  { -- | The zero-based column index. For example, the second column in the table has a column index of 1.
    columnIndex :: (Core.Maybe Core.Int32),
    -- | The zero-based row index. For example, the second row in the table has a row index of 1.
    rowIndex :: (Core.Maybe Core.Int32),
    -- | The location where the table starts in the document.
    tableStartLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellLocation' with the minimum fields required to make a request.
newTableCellLocation ::
  TableCellLocation
newTableCellLocation =
  TableCellLocation
    { columnIndex = Core.Nothing,
      rowIndex = Core.Nothing,
      tableStartLocation = Core.Nothing
    }

instance Core.FromJSON TableCellLocation where
  parseJSON =
    Core.withObject
      "TableCellLocation"
      ( \o ->
          TableCellLocation
            Core.<$> (o Core..:? "columnIndex")
            Core.<*> (o Core..:? "rowIndex")
            Core.<*> (o Core..:? "tableStartLocation")
      )

instance Core.ToJSON TableCellLocation where
  toJSON TableCellLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndex" Core..=) Core.<$> columnIndex,
            ("rowIndex" Core..=) Core.<$> rowIndex,
            ("tableStartLocation" Core..=) Core.<$> tableStartLocation
          ]
      )

-- | The style of a TableCell. Inherited table cell styles are represented as unset fields in this message. A table cell style can inherit from the table\'s style.
--
-- /See:/ 'newTableCellStyle' smart constructor.
data TableCellStyle = TableCellStyle
  { -- | The background color of the cell.
    backgroundColor :: (Core.Maybe OptionalColor),
    -- | The bottom border of the cell.
    borderBottom :: (Core.Maybe TableCellBorder),
    -- | The left border of the cell.
    borderLeft :: (Core.Maybe TableCellBorder),
    -- | The right border of the cell.
    borderRight :: (Core.Maybe TableCellBorder),
    -- | The top border of the cell.
    borderTop :: (Core.Maybe TableCellBorder),
    -- | The column span of the cell. This property is read-only.
    columnSpan :: (Core.Maybe Core.Int32),
    -- | The alignment of the content in the table cell. The default alignment matches the alignment for newly created table cells in the Docs editor.
    contentAlignment :: (Core.Maybe TableCellStyle_ContentAlignment),
    -- | The bottom padding of the cell.
    paddingBottom :: (Core.Maybe Dimension),
    -- | The left padding of the cell.
    paddingLeft :: (Core.Maybe Dimension),
    -- | The right padding of the cell.
    paddingRight :: (Core.Maybe Dimension),
    -- | The top padding of the cell.
    paddingTop :: (Core.Maybe Dimension),
    -- | The row span of the cell. This property is read-only.
    rowSpan :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellStyle' with the minimum fields required to make a request.
newTableCellStyle ::
  TableCellStyle
newTableCellStyle =
  TableCellStyle
    { backgroundColor = Core.Nothing,
      borderBottom = Core.Nothing,
      borderLeft = Core.Nothing,
      borderRight = Core.Nothing,
      borderTop = Core.Nothing,
      columnSpan = Core.Nothing,
      contentAlignment = Core.Nothing,
      paddingBottom = Core.Nothing,
      paddingLeft = Core.Nothing,
      paddingRight = Core.Nothing,
      paddingTop = Core.Nothing,
      rowSpan = Core.Nothing
    }

instance Core.FromJSON TableCellStyle where
  parseJSON =
    Core.withObject
      "TableCellStyle"
      ( \o ->
          TableCellStyle
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "borderBottom")
            Core.<*> (o Core..:? "borderLeft")
            Core.<*> (o Core..:? "borderRight")
            Core.<*> (o Core..:? "borderTop")
            Core.<*> (o Core..:? "columnSpan")
            Core.<*> (o Core..:? "contentAlignment")
            Core.<*> (o Core..:? "paddingBottom")
            Core.<*> (o Core..:? "paddingLeft")
            Core.<*> (o Core..:? "paddingRight")
            Core.<*> (o Core..:? "paddingTop")
            Core.<*> (o Core..:? "rowSpan")
      )

instance Core.ToJSON TableCellStyle where
  toJSON TableCellStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("borderBottom" Core..=) Core.<$> borderBottom,
            ("borderLeft" Core..=) Core.<$> borderLeft,
            ("borderRight" Core..=) Core.<$> borderRight,
            ("borderTop" Core..=) Core.<$> borderTop,
            ("columnSpan" Core..=) Core.<$> columnSpan,
            ("contentAlignment" Core..=) Core.<$> contentAlignment,
            ("paddingBottom" Core..=) Core.<$> paddingBottom,
            ("paddingLeft" Core..=) Core.<$> paddingLeft,
            ("paddingRight" Core..=) Core.<$> paddingRight,
            ("paddingTop" Core..=) Core.<$> paddingTop,
            ("rowSpan" Core..=) Core.<$> rowSpan
          ]
      )

-- | A mask that indicates which of the fields on the base TableCellStyle have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newTableCellStyleSuggestionState' smart constructor.
data TableCellStyleSuggestionState = TableCellStyleSuggestionState
  { -- | Indicates if there was a suggested change to background_color.
    backgroundColorSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_bottom.
    borderBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_left.
    borderLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_right.
    borderRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to border_top.
    borderTopSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to column_span.
    columnSpanSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to content_alignment.
    contentAlignmentSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to padding_bottom.
    paddingBottomSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to padding_left.
    paddingLeftSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to padding_right.
    paddingRightSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to padding_top.
    paddingTopSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to row_span.
    rowSpanSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellStyleSuggestionState' with the minimum fields required to make a request.
newTableCellStyleSuggestionState ::
  TableCellStyleSuggestionState
newTableCellStyleSuggestionState =
  TableCellStyleSuggestionState
    { backgroundColorSuggested =
        Core.Nothing,
      borderBottomSuggested = Core.Nothing,
      borderLeftSuggested = Core.Nothing,
      borderRightSuggested = Core.Nothing,
      borderTopSuggested = Core.Nothing,
      columnSpanSuggested = Core.Nothing,
      contentAlignmentSuggested = Core.Nothing,
      paddingBottomSuggested = Core.Nothing,
      paddingLeftSuggested = Core.Nothing,
      paddingRightSuggested = Core.Nothing,
      paddingTopSuggested = Core.Nothing,
      rowSpanSuggested = Core.Nothing
    }

instance Core.FromJSON TableCellStyleSuggestionState where
  parseJSON =
    Core.withObject
      "TableCellStyleSuggestionState"
      ( \o ->
          TableCellStyleSuggestionState
            Core.<$> (o Core..:? "backgroundColorSuggested")
            Core.<*> (o Core..:? "borderBottomSuggested")
            Core.<*> (o Core..:? "borderLeftSuggested")
            Core.<*> (o Core..:? "borderRightSuggested")
            Core.<*> (o Core..:? "borderTopSuggested")
            Core.<*> (o Core..:? "columnSpanSuggested")
            Core.<*> (o Core..:? "contentAlignmentSuggested")
            Core.<*> (o Core..:? "paddingBottomSuggested")
            Core.<*> (o Core..:? "paddingLeftSuggested")
            Core.<*> (o Core..:? "paddingRightSuggested")
            Core.<*> (o Core..:? "paddingTopSuggested")
            Core.<*> (o Core..:? "rowSpanSuggested")
      )

instance Core.ToJSON TableCellStyleSuggestionState where
  toJSON TableCellStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColorSuggested" Core..=)
              Core.<$> backgroundColorSuggested,
            ("borderBottomSuggested" Core..=) Core.<$> borderBottomSuggested,
            ("borderLeftSuggested" Core..=) Core.<$> borderLeftSuggested,
            ("borderRightSuggested" Core..=) Core.<$> borderRightSuggested,
            ("borderTopSuggested" Core..=) Core.<$> borderTopSuggested,
            ("columnSpanSuggested" Core..=) Core.<$> columnSpanSuggested,
            ("contentAlignmentSuggested" Core..=)
              Core.<$> contentAlignmentSuggested,
            ("paddingBottomSuggested" Core..=) Core.<$> paddingBottomSuggested,
            ("paddingLeftSuggested" Core..=) Core.<$> paddingLeftSuggested,
            ("paddingRightSuggested" Core..=) Core.<$> paddingRightSuggested,
            ("paddingTopSuggested" Core..=) Core.<$> paddingTopSuggested,
            ("rowSpanSuggested" Core..=) Core.<$> rowSpanSuggested
          ]
      )

-- | The properties of a column in a table.
--
-- /See:/ 'newTableColumnProperties' smart constructor.
data TableColumnProperties = TableColumnProperties
  { -- | The width of the column. Set when the column\'s @width_type@ is FIXED_WIDTH.
    width :: (Core.Maybe Dimension),
    -- | The width type of the column.
    widthType :: (Core.Maybe TableColumnProperties_WidthType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableColumnProperties' with the minimum fields required to make a request.
newTableColumnProperties ::
  TableColumnProperties
newTableColumnProperties =
  TableColumnProperties
    { width = Core.Nothing,
      widthType = Core.Nothing
    }

instance Core.FromJSON TableColumnProperties where
  parseJSON =
    Core.withObject
      "TableColumnProperties"
      ( \o ->
          TableColumnProperties
            Core.<$> (o Core..:? "width")
            Core.<*> (o Core..:? "widthType")
      )

instance Core.ToJSON TableColumnProperties where
  toJSON TableColumnProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("width" Core..=) Core.<$> width,
            ("widthType" Core..=) Core.<$> widthType
          ]
      )

-- | A StructuralElement representing a table of contents.
--
-- /See:/ 'newTableOfContents' smart constructor.
data TableOfContents = TableOfContents
  { -- | The content of the table of contents.
    content :: (Core.Maybe [StructuralElement]),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A TableOfContents may have multiple insertion IDs if it is a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableOfContents' with the minimum fields required to make a request.
newTableOfContents ::
  TableOfContents
newTableOfContents =
  TableOfContents
    { content = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing
    }

instance Core.FromJSON TableOfContents where
  parseJSON =
    Core.withObject
      "TableOfContents"
      ( \o ->
          TableOfContents
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
      )

instance Core.ToJSON TableOfContents where
  toJSON TableOfContents {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds
          ]
      )

-- | A table range represents a reference to a subset of a table. It\'s important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let\'s say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this: [ ] A table range with table cell location = (table/start/location, row = 0, column = 0), row span = 3 and column span = 2 specifies the following cells: x x [ x x x ]
--
-- /See:/ 'newTableRange' smart constructor.
data TableRange = TableRange
  { -- | The column span of the table range.
    columnSpan :: (Core.Maybe Core.Int32),
    -- | The row span of the table range.
    rowSpan :: (Core.Maybe Core.Int32),
    -- | The cell location where the table range starts.
    tableCellLocation :: (Core.Maybe TableCellLocation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRange' with the minimum fields required to make a request.
newTableRange ::
  TableRange
newTableRange =
  TableRange
    { columnSpan = Core.Nothing,
      rowSpan = Core.Nothing,
      tableCellLocation = Core.Nothing
    }

instance Core.FromJSON TableRange where
  parseJSON =
    Core.withObject
      "TableRange"
      ( \o ->
          TableRange
            Core.<$> (o Core..:? "columnSpan")
            Core.<*> (o Core..:? "rowSpan")
            Core.<*> (o Core..:? "tableCellLocation")
      )

instance Core.ToJSON TableRange where
  toJSON TableRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnSpan" Core..=) Core.<$> columnSpan,
            ("rowSpan" Core..=) Core.<$> rowSpan,
            ("tableCellLocation" Core..=) Core.<$> tableCellLocation
          ]
      )

-- | The contents and style of a row in a Table.
--
-- /See:/ 'newTableRow' smart constructor.
data TableRow = TableRow
  { -- | The zero-based end index of this row, exclusive, in UTF-16 code units.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The zero-based start index of this row, in UTF-16 code units.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A TableRow may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested style changes to this row, keyed by suggestion ID.
    suggestedTableRowStyleChanges :: (Core.Maybe TableRow_SuggestedTableRowStyleChanges),
    -- | The contents and style of each cell in this row. It\'s possible for a table to be non-rectangular, so some rows may have a different number of cells than other rows in the same table.
    tableCells :: (Core.Maybe [TableCell]),
    -- | The style of the table row.
    tableRowStyle :: (Core.Maybe TableRowStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
newTableRow ::
  TableRow
newTableRow =
  TableRow
    { endIndex = Core.Nothing,
      startIndex = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTableRowStyleChanges = Core.Nothing,
      tableCells = Core.Nothing,
      tableRowStyle = Core.Nothing
    }

instance Core.FromJSON TableRow where
  parseJSON =
    Core.withObject
      "TableRow"
      ( \o ->
          TableRow
            Core.<$> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTableRowStyleChanges")
            Core.<*> (o Core..:? "tableCells")
            Core.<*> (o Core..:? "tableRowStyle")
      )

instance Core.ToJSON TableRow where
  toJSON TableRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("endIndex" Core..=) Core.<$> endIndex,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTableRowStyleChanges" Core..=)
              Core.<$> suggestedTableRowStyleChanges,
            ("tableCells" Core..=) Core.<$> tableCells,
            ("tableRowStyle" Core..=) Core.<$> tableRowStyle
          ]
      )

-- | The suggested style changes to this row, keyed by suggestion ID.
--
-- /See:/ 'newTableRow_SuggestedTableRowStyleChanges' smart constructor.
newtype TableRow_SuggestedTableRowStyleChanges = TableRow_SuggestedTableRowStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTableRowStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRow_SuggestedTableRowStyleChanges' with the minimum fields required to make a request.
newTableRow_SuggestedTableRowStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTableRowStyle ->
  TableRow_SuggestedTableRowStyleChanges
newTableRow_SuggestedTableRowStyleChanges additional =
  TableRow_SuggestedTableRowStyleChanges {additional = additional}

instance Core.FromJSON TableRow_SuggestedTableRowStyleChanges where
  parseJSON =
    Core.withObject
      "TableRow_SuggestedTableRowStyleChanges"
      ( \o ->
          TableRow_SuggestedTableRowStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TableRow_SuggestedTableRowStyleChanges where
  toJSON TableRow_SuggestedTableRowStyleChanges {..} =
    Core.toJSON additional

-- | Styles that apply to a table row.
--
-- /See:/ 'newTableRowStyle' smart constructor.
data TableRowStyle = TableRowStyle
  { -- | The minimum height of the row. The row will be rendered in the Docs editor at a height equal to or greater than this value in order to show all the content in the row\'s cells.
    minRowHeight :: (Core.Maybe Dimension),
    -- | Whether the row cannot overflow across page or column boundaries.
    preventOverflow :: (Core.Maybe Core.Bool),
    -- | Whether the row is a table header.
    tableHeader :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRowStyle' with the minimum fields required to make a request.
newTableRowStyle ::
  TableRowStyle
newTableRowStyle =
  TableRowStyle
    { minRowHeight = Core.Nothing,
      preventOverflow = Core.Nothing,
      tableHeader = Core.Nothing
    }

instance Core.FromJSON TableRowStyle where
  parseJSON =
    Core.withObject
      "TableRowStyle"
      ( \o ->
          TableRowStyle
            Core.<$> (o Core..:? "minRowHeight")
            Core.<*> (o Core..:? "preventOverflow")
            Core.<*> (o Core..:? "tableHeader")
      )

instance Core.ToJSON TableRowStyle where
  toJSON TableRowStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("minRowHeight" Core..=) Core.<$> minRowHeight,
            ("preventOverflow" Core..=) Core.<$> preventOverflow,
            ("tableHeader" Core..=) Core.<$> tableHeader
          ]
      )

-- | A mask that indicates which of the fields on the base TableRowStyle have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newTableRowStyleSuggestionState' smart constructor.
newtype TableRowStyleSuggestionState = TableRowStyleSuggestionState
  { -- | Indicates if there was a suggested change to min/row/height.
    minRowHeightSuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRowStyleSuggestionState' with the minimum fields required to make a request.
newTableRowStyleSuggestionState ::
  TableRowStyleSuggestionState
newTableRowStyleSuggestionState =
  TableRowStyleSuggestionState
    { minRowHeightSuggested =
        Core.Nothing
    }

instance Core.FromJSON TableRowStyleSuggestionState where
  parseJSON =
    Core.withObject
      "TableRowStyleSuggestionState"
      ( \o ->
          TableRowStyleSuggestionState
            Core.<$> (o Core..:? "minRowHeightSuggested")
      )

instance Core.ToJSON TableRowStyleSuggestionState where
  toJSON TableRowStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [("minRowHeightSuggested" Core..=) Core.<$> minRowHeightSuggested]
      )

-- | Styles that apply to a table.
--
-- /See:/ 'newTableStyle' smart constructor.
newtype TableStyle = TableStyle
  { -- | The properties of each column. Note that in Docs, tables contain rows and rows contain cells, similar to HTML. So the properties for a row can be found on the row\'s table/row/style.
    tableColumnProperties :: (Core.Maybe [TableColumnProperties])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableStyle' with the minimum fields required to make a request.
newTableStyle ::
  TableStyle
newTableStyle = TableStyle {tableColumnProperties = Core.Nothing}

instance Core.FromJSON TableStyle where
  parseJSON =
    Core.withObject
      "TableStyle"
      (\o -> TableStyle Core.<$> (o Core..:? "tableColumnProperties"))

instance Core.ToJSON TableStyle where
  toJSON TableStyle {..} =
    Core.object
      ( Core.catMaybes
          [("tableColumnProperties" Core..=) Core.<$> tableColumnProperties]
      )

-- | A criteria that specifies in which tabs a request executes.
--
-- /See:/ 'newTabsCriteria' smart constructor.
newtype TabsCriteria = TabsCriteria
  { -- | The list of tab IDs in which the request executes.
    tabIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TabsCriteria' with the minimum fields required to make a request.
newTabsCriteria ::
  TabsCriteria
newTabsCriteria = TabsCriteria {tabIds = Core.Nothing}

instance Core.FromJSON TabsCriteria where
  parseJSON =
    Core.withObject
      "TabsCriteria"
      (\o -> TabsCriteria Core.<$> (o Core..:? "tabIds"))

instance Core.ToJSON TabsCriteria where
  toJSON TabsCriteria {..} =
    Core.object (Core.catMaybes [("tabIds" Core..=) Core.<$> tabIds])

-- | A ParagraphElement that represents a run of text that all has the same styling.
--
-- /See:/ 'newTextRun' smart constructor.
data TextRun = TextRun
  { -- | The text of this run. Any non-text elements in the run are replaced with the Unicode character U+E907.
    content :: (Core.Maybe Core.Text),
    -- | The suggested deletion IDs. If empty, then there are no suggested deletions of this content.
    suggestedDeletionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested insertion IDs. A TextRun may have multiple insertion IDs if it\'s a nested suggested change. If empty, then this is not a suggested insertion.
    suggestedInsertionIds :: (Core.Maybe [Core.Text]),
    -- | The suggested text style changes to this run, keyed by suggestion ID.
    suggestedTextStyleChanges :: (Core.Maybe TextRun_SuggestedTextStyleChanges),
    -- | The text style of this run.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextRun' with the minimum fields required to make a request.
newTextRun ::
  TextRun
newTextRun =
  TextRun
    { content = Core.Nothing,
      suggestedDeletionIds = Core.Nothing,
      suggestedInsertionIds = Core.Nothing,
      suggestedTextStyleChanges = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON TextRun where
  parseJSON =
    Core.withObject
      "TextRun"
      ( \o ->
          TextRun
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "suggestedDeletionIds")
            Core.<*> (o Core..:? "suggestedInsertionIds")
            Core.<*> (o Core..:? "suggestedTextStyleChanges")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON TextRun where
  toJSON TextRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("suggestedDeletionIds" Core..=) Core.<$> suggestedDeletionIds,
            ("suggestedInsertionIds" Core..=) Core.<$> suggestedInsertionIds,
            ("suggestedTextStyleChanges" Core..=)
              Core.<$> suggestedTextStyleChanges,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | The suggested text style changes to this run, keyed by suggestion ID.
--
-- /See:/ 'newTextRun_SuggestedTextStyleChanges' smart constructor.
newtype TextRun_SuggestedTextStyleChanges = TextRun_SuggestedTextStyleChanges
  { additional :: (Core.HashMap Core.Text SuggestedTextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextRun_SuggestedTextStyleChanges' with the minimum fields required to make a request.
newTextRun_SuggestedTextStyleChanges ::
  -- |  See 'additional'.
  Core.HashMap Core.Text SuggestedTextStyle ->
  TextRun_SuggestedTextStyleChanges
newTextRun_SuggestedTextStyleChanges additional =
  TextRun_SuggestedTextStyleChanges {additional = additional}

instance Core.FromJSON TextRun_SuggestedTextStyleChanges where
  parseJSON =
    Core.withObject
      "TextRun_SuggestedTextStyleChanges"
      ( \o ->
          TextRun_SuggestedTextStyleChanges
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TextRun_SuggestedTextStyleChanges where
  toJSON TextRun_SuggestedTextStyleChanges {..} =
    Core.toJSON additional

-- | Represents the styling that can be applied to text. Inherited text styles are represented as unset fields in this message. A text style\'s parent depends on where the text style is defined: * The TextStyle of text in a Paragraph inherits from the paragraph\'s corresponding named style type. * The TextStyle on a named style inherits from the normal text named style. * The TextStyle of the normal text named style inherits from the default text style in the Docs editor. * The TextStyle on a Paragraph element that\'s contained in a table may inherit its text style from the table style. If the text style does not inherit from a parent, unsetting fields will revert the style to a value matching the defaults in the Docs editor.
--
-- /See:/ 'newTextStyle' smart constructor.
data TextStyle = TextStyle
  { -- | The background color of the text. If set, the color is either an RGB color or transparent, depending on the @color@ field.
    backgroundColor :: (Core.Maybe OptionalColor),
    -- | The text\'s vertical offset from its normal position. Text with @SUPERSCRIPT@ or @SUBSCRIPT@ baseline offsets is automatically rendered in a smaller font size, computed based on the @font_size@ field. Changes in this field don\'t affect the @font_size@.
    baselineOffset :: (Core.Maybe TextStyle_BaselineOffset),
    -- | Whether or not the text is rendered as bold.
    bold :: (Core.Maybe Core.Bool),
    -- | The size of the text\'s font.
    fontSize :: (Core.Maybe Dimension),
    -- | The foreground color of the text. If set, the color is either an RGB color or transparent, depending on the @color@ field.
    foregroundColor :: (Core.Maybe OptionalColor),
    -- | Whether or not the text is italicized.
    italic :: (Core.Maybe Core.Bool),
    -- | The hyperlink destination of the text. If unset, there\'s no link. Links are not inherited from parent text. Changing the link in an update request causes some other changes to the text style of the range: * When setting a link, the text foreground color will be updated to the default link color and the text will be underlined. If these fields are modified in the same request, those values will be used instead of the link defaults. * Setting a link on a text range that overlaps with an existing link will also update the existing link to point to the new URL. * Links are not settable on newline characters. As a result, setting a link on a text range that crosses a paragraph boundary, such as @\"ABC\\n123\"@, will separate the newline character(s) into their own text runs. The link will be applied separately to the runs before and after the newline. * Removing a link will update the text style of the range to match the style of the preceding text (or the default text styles if the preceding text is another
    -- link) unless different styles are being set in the same request.
    link :: (Core.Maybe Link),
    -- | Whether or not the text is in small capital letters.
    smallCaps :: (Core.Maybe Core.Bool),
    -- | Whether or not the text is struck through.
    strikethrough :: (Core.Maybe Core.Bool),
    -- | Whether or not the text is underlined.
    underline :: (Core.Maybe Core.Bool),
    -- | The font family and rendered weight of the text. If an update request specifies values for both @weighted_font_family@ and @bold@, the @weighted_font_family@ is applied first, then @bold@. If @weighted_font_family#weight@ is not set, it defaults to @400@. If @weighted_font_family@ is set, then @weighted_font_family#font_family@ must also be set with a non-empty value. Otherwise, a 400 bad request error is returned.
    weightedFontFamily :: (Core.Maybe WeightedFontFamily)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextStyle' with the minimum fields required to make a request.
newTextStyle ::
  TextStyle
newTextStyle =
  TextStyle
    { backgroundColor = Core.Nothing,
      baselineOffset = Core.Nothing,
      bold = Core.Nothing,
      fontSize = Core.Nothing,
      foregroundColor = Core.Nothing,
      italic = Core.Nothing,
      link = Core.Nothing,
      smallCaps = Core.Nothing,
      strikethrough = Core.Nothing,
      underline = Core.Nothing,
      weightedFontFamily = Core.Nothing
    }

instance Core.FromJSON TextStyle where
  parseJSON =
    Core.withObject
      "TextStyle"
      ( \o ->
          TextStyle
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "baselineOffset")
            Core.<*> (o Core..:? "bold")
            Core.<*> (o Core..:? "fontSize")
            Core.<*> (o Core..:? "foregroundColor")
            Core.<*> (o Core..:? "italic")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "smallCaps")
            Core.<*> (o Core..:? "strikethrough")
            Core.<*> (o Core..:? "underline")
            Core.<*> (o Core..:? "weightedFontFamily")
      )

instance Core.ToJSON TextStyle where
  toJSON TextStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("baselineOffset" Core..=) Core.<$> baselineOffset,
            ("bold" Core..=) Core.<$> bold,
            ("fontSize" Core..=) Core.<$> fontSize,
            ("foregroundColor" Core..=) Core.<$> foregroundColor,
            ("italic" Core..=) Core.<$> italic,
            ("link" Core..=) Core.<$> link,
            ("smallCaps" Core..=) Core.<$> smallCaps,
            ("strikethrough" Core..=) Core.<$> strikethrough,
            ("underline" Core..=) Core.<$> underline,
            ("weightedFontFamily" Core..=) Core.<$> weightedFontFamily
          ]
      )

-- | A mask that indicates which of the fields on the base TextStyle have been changed in this suggestion. For any field set to true, there\'s a new suggested value.
--
-- /See:/ 'newTextStyleSuggestionState' smart constructor.
data TextStyleSuggestionState = TextStyleSuggestionState
  { -- | Indicates if there was a suggested change to background_color.
    backgroundColorSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to baseline_offset.
    baselineOffsetSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to bold.
    boldSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to font_size.
    fontSizeSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to foreground_color.
    foregroundColorSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to italic.
    italicSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to link.
    linkSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to small_caps.
    smallCapsSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to strikethrough.
    strikethroughSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to underline.
    underlineSuggested :: (Core.Maybe Core.Bool),
    -- | Indicates if there was a suggested change to weighted/font/family.
    weightedFontFamilySuggested :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextStyleSuggestionState' with the minimum fields required to make a request.
newTextStyleSuggestionState ::
  TextStyleSuggestionState
newTextStyleSuggestionState =
  TextStyleSuggestionState
    { backgroundColorSuggested = Core.Nothing,
      baselineOffsetSuggested = Core.Nothing,
      boldSuggested = Core.Nothing,
      fontSizeSuggested = Core.Nothing,
      foregroundColorSuggested = Core.Nothing,
      italicSuggested = Core.Nothing,
      linkSuggested = Core.Nothing,
      smallCapsSuggested = Core.Nothing,
      strikethroughSuggested = Core.Nothing,
      underlineSuggested = Core.Nothing,
      weightedFontFamilySuggested = Core.Nothing
    }

instance Core.FromJSON TextStyleSuggestionState where
  parseJSON =
    Core.withObject
      "TextStyleSuggestionState"
      ( \o ->
          TextStyleSuggestionState
            Core.<$> (o Core..:? "backgroundColorSuggested")
            Core.<*> (o Core..:? "baselineOffsetSuggested")
            Core.<*> (o Core..:? "boldSuggested")
            Core.<*> (o Core..:? "fontSizeSuggested")
            Core.<*> (o Core..:? "foregroundColorSuggested")
            Core.<*> (o Core..:? "italicSuggested")
            Core.<*> (o Core..:? "linkSuggested")
            Core.<*> (o Core..:? "smallCapsSuggested")
            Core.<*> (o Core..:? "strikethroughSuggested")
            Core.<*> (o Core..:? "underlineSuggested")
            Core.<*> (o Core..:? "weightedFontFamilySuggested")
      )

instance Core.ToJSON TextStyleSuggestionState where
  toJSON TextStyleSuggestionState {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColorSuggested" Core..=)
              Core.<$> backgroundColorSuggested,
            ("baselineOffsetSuggested" Core..=)
              Core.<$> baselineOffsetSuggested,
            ("boldSuggested" Core..=) Core.<$> boldSuggested,
            ("fontSizeSuggested" Core..=) Core.<$> fontSizeSuggested,
            ("foregroundColorSuggested" Core..=)
              Core.<$> foregroundColorSuggested,
            ("italicSuggested" Core..=) Core.<$> italicSuggested,
            ("linkSuggested" Core..=) Core.<$> linkSuggested,
            ("smallCapsSuggested" Core..=) Core.<$> smallCapsSuggested,
            ("strikethroughSuggested" Core..=) Core.<$> strikethroughSuggested,
            ("underlineSuggested" Core..=) Core.<$> underlineSuggested,
            ("weightedFontFamilySuggested" Core..=)
              Core.<$> weightedFontFamilySuggested
          ]
      )

-- | Unmerges cells in a Table.
--
-- /See:/ 'newUnmergeTableCellsRequest' smart constructor.
newtype UnmergeTableCellsRequest = UnmergeTableCellsRequest
  { -- | The table range specifying which cells of the table to unmerge. All merged cells in this range will be unmerged, and cells that are already unmerged will not be affected. If the range has no merged cells, the request will do nothing. If there is text in any of the merged cells, the text will remain in the \"head\" cell of the resulting block of unmerged cells. The \"head\" cell is the upper-left cell when the content direction is from left to right, and the upper-right otherwise.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnmergeTableCellsRequest' with the minimum fields required to make a request.
newUnmergeTableCellsRequest ::
  UnmergeTableCellsRequest
newUnmergeTableCellsRequest =
  UnmergeTableCellsRequest {tableRange = Core.Nothing}

instance Core.FromJSON UnmergeTableCellsRequest where
  parseJSON =
    Core.withObject
      "UnmergeTableCellsRequest"
      ( \o ->
          UnmergeTableCellsRequest Core.<$> (o Core..:? "tableRange")
      )

instance Core.ToJSON UnmergeTableCellsRequest where
  toJSON UnmergeTableCellsRequest {..} =
    Core.object
      (Core.catMaybes [("tableRange" Core..=) Core.<$> tableRange])

-- | Updates the DocumentStyle.
--
-- /See:/ 'newUpdateDocumentStyleRequest' smart constructor.
data UpdateDocumentStyleRequest = UpdateDocumentStyleRequest
  { -- | The styles to set on the document. Certain document style changes may cause other changes in order to mirror the behavior of the Docs editor. See the documentation of DocumentStyle for more information.
    documentStyle :: (Core.Maybe DocumentStyle),
    -- | The fields that should be updated. At least one field must be specified. The root @document_style@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the background, set @fields@ to @\"background\"@.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The tab that contains the style to update. When omitted, the request applies to the first tab. In a document containing a single tab: - If provided, must match the singular tab\'s ID. - If omitted, the request applies to the singular tab. In a document containing multiple tabs: - If provided, the request applies to the specified tab. - If not provided, the request applies to the first tab in the document.
    tabId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateDocumentStyleRequest' with the minimum fields required to make a request.
newUpdateDocumentStyleRequest ::
  UpdateDocumentStyleRequest
newUpdateDocumentStyleRequest =
  UpdateDocumentStyleRequest
    { documentStyle = Core.Nothing,
      fields = Core.Nothing,
      tabId = Core.Nothing
    }

instance Core.FromJSON UpdateDocumentStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateDocumentStyleRequest"
      ( \o ->
          UpdateDocumentStyleRequest
            Core.<$> (o Core..:? "documentStyle")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "tabId")
      )

instance Core.ToJSON UpdateDocumentStyleRequest where
  toJSON UpdateDocumentStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentStyle" Core..=) Core.<$> documentStyle,
            ("fields" Core..=) Core.<$> fields,
            ("tabId" Core..=) Core.<$> tabId
          ]
      )

-- | Update the styling of all paragraphs that overlap with the given range.
--
-- /See:/ 'newUpdateParagraphStyleRequest' smart constructor.
data UpdateParagraphStyleRequest = UpdateParagraphStyleRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @paragraph_style@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example, to update the paragraph style\'s alignment property, set @fields@ to @\"alignment\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The styles to set on the paragraphs. Certain paragraph style changes may cause other changes in order to mirror the behavior of the Docs editor. See the documentation of ParagraphStyle for more information.
    paragraphStyle :: (Core.Maybe ParagraphStyle),
    -- | The range overlapping the paragraphs to style.
    range :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateParagraphStyleRequest' with the minimum fields required to make a request.
newUpdateParagraphStyleRequest ::
  UpdateParagraphStyleRequest
newUpdateParagraphStyleRequest =
  UpdateParagraphStyleRequest
    { fields = Core.Nothing,
      paragraphStyle = Core.Nothing,
      range = Core.Nothing
    }

instance Core.FromJSON UpdateParagraphStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateParagraphStyleRequest"
      ( \o ->
          UpdateParagraphStyleRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "paragraphStyle")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON UpdateParagraphStyleRequest where
  toJSON UpdateParagraphStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("paragraphStyle" Core..=) Core.<$> paragraphStyle,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Updates the SectionStyle.
--
-- /See:/ 'newUpdateSectionStyleRequest' smart constructor.
data UpdateSectionStyleRequest = UpdateSectionStyleRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @section_style@ is implied and must not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the left margin, set @fields@ to @\"margin_left\"@.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The range overlapping the sections to style. Because section breaks can only be inserted inside the body, the segment ID field must be empty.
    range :: (Core.Maybe Range),
    -- | The styles to be set on the section. Certain section style changes may cause other changes in order to mirror the behavior of the Docs editor. See the documentation of SectionStyle for more information.
    sectionStyle :: (Core.Maybe SectionStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSectionStyleRequest' with the minimum fields required to make a request.
newUpdateSectionStyleRequest ::
  UpdateSectionStyleRequest
newUpdateSectionStyleRequest =
  UpdateSectionStyleRequest
    { fields = Core.Nothing,
      range = Core.Nothing,
      sectionStyle = Core.Nothing
    }

instance Core.FromJSON UpdateSectionStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateSectionStyleRequest"
      ( \o ->
          UpdateSectionStyleRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "sectionStyle")
      )

instance Core.ToJSON UpdateSectionStyleRequest where
  toJSON UpdateSectionStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("range" Core..=) Core.<$> range,
            ("sectionStyle" Core..=) Core.<$> sectionStyle
          ]
      )

-- | Updates the style of a range of table cells.
--
-- /See:/ 'newUpdateTableCellStyleRequest' smart constructor.
data UpdateTableCellStyleRequest = UpdateTableCellStyleRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @tableCellStyle@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the table cell background color, set @fields@ to @\"backgroundColor\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The style to set on the table cells. When updating borders, if a cell shares a border with an adjacent cell, the corresponding border property of the adjacent cell is updated as well. Borders that are merged and invisible are not updated. Since updating a border shared by adjacent cells in the same request can cause conflicting border updates, border updates are applied in the following order: - @border_right@ - @border_left@ - @border_bottom@ - @border_top@
    tableCellStyle :: (Core.Maybe TableCellStyle),
    -- | The table range representing the subset of the table to which the updates are applied.
    tableRange :: (Core.Maybe TableRange),
    -- | The location where the table starts in the document. When specified, the updates are applied to all the cells in the table.
    tableStartLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableCellStyleRequest' with the minimum fields required to make a request.
newUpdateTableCellStyleRequest ::
  UpdateTableCellStyleRequest
newUpdateTableCellStyleRequest =
  UpdateTableCellStyleRequest
    { fields = Core.Nothing,
      tableCellStyle = Core.Nothing,
      tableRange = Core.Nothing,
      tableStartLocation = Core.Nothing
    }

instance Core.FromJSON UpdateTableCellStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateTableCellStyleRequest"
      ( \o ->
          UpdateTableCellStyleRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "tableCellStyle")
            Core.<*> (o Core..:? "tableRange")
            Core.<*> (o Core..:? "tableStartLocation")
      )

instance Core.ToJSON UpdateTableCellStyleRequest where
  toJSON UpdateTableCellStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("tableCellStyle" Core..=) Core.<$> tableCellStyle,
            ("tableRange" Core..=) Core.<$> tableRange,
            ("tableStartLocation" Core..=) Core.<$> tableStartLocation
          ]
      )

-- | Updates the TableColumnProperties of columns in a table.
--
-- /See:/ 'newUpdateTableColumnPropertiesRequest' smart constructor.
data UpdateTableColumnPropertiesRequest = UpdateTableColumnPropertiesRequest
  { -- | The list of zero-based column indices whose property should be updated. If no indices are specified, all columns will be updated.
    columnIndices :: (Core.Maybe [Core.Int32]),
    -- | The fields that should be updated. At least one field must be specified. The root @tableColumnProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the column width, set @fields@ to @\"width\"@.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The table column properties to update. If the value of @table_column_properties#width@ is less than 5 points (5\/72 inch), a 400 bad request error is returned.
    tableColumnProperties :: (Core.Maybe TableColumnProperties),
    -- | The location where the table starts in the document.
    tableStartLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableColumnPropertiesRequest' with the minimum fields required to make a request.
newUpdateTableColumnPropertiesRequest ::
  UpdateTableColumnPropertiesRequest
newUpdateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest
    { columnIndices = Core.Nothing,
      fields = Core.Nothing,
      tableColumnProperties = Core.Nothing,
      tableStartLocation = Core.Nothing
    }

instance Core.FromJSON UpdateTableColumnPropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateTableColumnPropertiesRequest"
      ( \o ->
          UpdateTableColumnPropertiesRequest
            Core.<$> (o Core..:? "columnIndices")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "tableColumnProperties")
            Core.<*> (o Core..:? "tableStartLocation")
      )

instance Core.ToJSON UpdateTableColumnPropertiesRequest where
  toJSON UpdateTableColumnPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndices" Core..=) Core.<$> columnIndices,
            ("fields" Core..=) Core.<$> fields,
            ("tableColumnProperties" Core..=) Core.<$> tableColumnProperties,
            ("tableStartLocation" Core..=) Core.<$> tableStartLocation
          ]
      )

-- | Updates the TableRowStyle of rows in a table.
--
-- /See:/ 'newUpdateTableRowStyleRequest' smart constructor.
data UpdateTableRowStyleRequest = UpdateTableRowStyleRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @tableRowStyle@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the minimum row height, set @fields@ to @\"min_row_height\"@.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The list of zero-based row indices whose style should be updated. If no indices are specified, all rows will be updated.
    rowIndices :: (Core.Maybe [Core.Int32]),
    -- | The styles to be set on the rows.
    tableRowStyle :: (Core.Maybe TableRowStyle),
    -- | The location where the table starts in the document.
    tableStartLocation :: (Core.Maybe Location)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableRowStyleRequest' with the minimum fields required to make a request.
newUpdateTableRowStyleRequest ::
  UpdateTableRowStyleRequest
newUpdateTableRowStyleRequest =
  UpdateTableRowStyleRequest
    { fields = Core.Nothing,
      rowIndices = Core.Nothing,
      tableRowStyle = Core.Nothing,
      tableStartLocation = Core.Nothing
    }

instance Core.FromJSON UpdateTableRowStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateTableRowStyleRequest"
      ( \o ->
          UpdateTableRowStyleRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "rowIndices")
            Core.<*> (o Core..:? "tableRowStyle")
            Core.<*> (o Core..:? "tableStartLocation")
      )

instance Core.ToJSON UpdateTableRowStyleRequest where
  toJSON UpdateTableRowStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("rowIndices" Core..=) Core.<$> rowIndices,
            ("tableRowStyle" Core..=) Core.<$> tableRowStyle,
            ("tableStartLocation" Core..=) Core.<$> tableStartLocation
          ]
      )

-- | Update the styling of text.
--
-- /See:/ 'newUpdateTextStyleRequest' smart constructor.
data UpdateTextStyleRequest = UpdateTextStyleRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @text_style@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example, to update the text style to bold, set @fields@ to @\"bold\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.FieldMask),
    -- | The range of text to style. The range may be extended to include adjacent newlines. If the range fully contains a paragraph belonging to a list, the paragraph\'s bullet is also updated with the matching text style. Ranges cannot be inserted inside a relative UpdateTextStyleRequest.
    range :: (Core.Maybe Range),
    -- | The styles to set on the text. If the value for a particular style matches that of the parent, that style will be set to inherit. Certain text style changes may cause other changes in order to to mirror the behavior of the Docs editor. See the documentation of TextStyle for more information.
    textStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTextStyleRequest' with the minimum fields required to make a request.
newUpdateTextStyleRequest ::
  UpdateTextStyleRequest
newUpdateTextStyleRequest =
  UpdateTextStyleRequest
    { fields = Core.Nothing,
      range = Core.Nothing,
      textStyle = Core.Nothing
    }

instance Core.FromJSON UpdateTextStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateTextStyleRequest"
      ( \o ->
          UpdateTextStyleRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "range")
            Core.<*> (o Core..:? "textStyle")
      )

instance Core.ToJSON UpdateTextStyleRequest where
  toJSON UpdateTextStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("range" Core..=) Core.<$> range,
            ("textStyle" Core..=) Core.<$> textStyle
          ]
      )

-- | Represents a font family and weight of text.
--
-- /See:/ 'newWeightedFontFamily' smart constructor.
data WeightedFontFamily = WeightedFontFamily
  { -- | The font family of the text. The font family can be any font from the Font menu in Docs or from [Google Fonts] (https:\/\/fonts.google.com\/). If the font name is unrecognized, the text is rendered in @Arial@.
    fontFamily :: (Core.Maybe Core.Text),
    -- | The weight of the font. This field can have any value that\'s a multiple of @100@ between @100@ and @900@, inclusive. This range corresponds to the numerical values described in the CSS 2.1 Specification, <https://www.w3.org/TR/CSS21/fonts.html#font-boldness section 15.6>, with non-numerical values disallowed. The default value is @400@ (\"normal\"). The font weight makes up just one component of the rendered font weight. A combination of the @weight@ and the text style\'s resolved @bold@ value determine the rendered weight, after accounting for inheritance: * If the text is bold and the weight is less than @400@, the rendered weight is 400. * If the text is bold and the weight is greater than or equal to @400@ but is less than @700@, the rendered weight is @700@. * If the weight is greater than or equal to @700@, the rendered weight is equal to the weight. * If the text is not bold, the rendered weight is equal to the weight.
    weight :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WeightedFontFamily' with the minimum fields required to make a request.
newWeightedFontFamily ::
  WeightedFontFamily
newWeightedFontFamily =
  WeightedFontFamily
    { fontFamily = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON WeightedFontFamily where
  parseJSON =
    Core.withObject
      "WeightedFontFamily"
      ( \o ->
          WeightedFontFamily
            Core.<$> (o Core..:? "fontFamily")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON WeightedFontFamily where
  toJSON WeightedFontFamily {..} =
    Core.object
      ( Core.catMaybes
          [ ("fontFamily" Core..=) Core.<$> fontFamily,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | Provides control over how write requests are executed.
--
-- /See:/ 'newWriteControl' smart constructor.
data WriteControl = WriteControl
  { -- | The optional revision ID of the document the write request is applied to. If this is not the latest revision of the document, the request is not processed and returns a 400 bad request error. When a required revision ID is returned in a response, it indicates the revision ID of the document after the request was applied.
    requiredRevisionId :: (Core.Maybe Core.Text),
    -- | The optional target revision ID of the document the write request is applied to. If collaborator changes have occurred after the document was read using the API, the changes produced by this write request are applied against the collaborator changes. This results in a new revision of the document that incorporates both the collaborator changes and the changes in the request, with the Docs server resolving conflicting changes. When using target revision ID, the API client can be thought of as another collaborator of the document. The target revision ID can only be used to write to recent versions of a document. If the target revision is too far behind the latest revision, the request is not processed and returns a 400 bad request error. The request should be tried again after retrieving the latest version of the document. Usually a revision ID remains valid for use as a target revision for several minutes after it\'s read, but for frequently edited documents this window might be shorter.
    targetRevisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteControl' with the minimum fields required to make a request.
newWriteControl ::
  WriteControl
newWriteControl =
  WriteControl
    { requiredRevisionId = Core.Nothing,
      targetRevisionId = Core.Nothing
    }

instance Core.FromJSON WriteControl where
  parseJSON =
    Core.withObject
      "WriteControl"
      ( \o ->
          WriteControl
            Core.<$> (o Core..:? "requiredRevisionId")
            Core.<*> (o Core..:? "targetRevisionId")
      )

instance Core.ToJSON WriteControl where
  toJSON WriteControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("requiredRevisionId" Core..=) Core.<$> requiredRevisionId,
            ("targetRevisionId" Core..=) Core.<$> targetRevisionId
          ]
      )
