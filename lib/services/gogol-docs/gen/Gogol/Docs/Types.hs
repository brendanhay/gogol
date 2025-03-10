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
-- Module      : Gogol.Docs.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Docs.Types
  ( -- * Configuration
    docsService,

    -- * OAuth Scopes
    Documents'FullControl,
    Documents'Readonly,
    Drive'FullControl,
    Drive'File,
    Drive'Readonly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AutoText
    AutoText (..),
    newAutoText,

    -- ** AutoText_SuggestedTextStyleChanges
    AutoText_SuggestedTextStyleChanges (..),
    newAutoText_SuggestedTextStyleChanges,

    -- ** AutoText_Type
    AutoText_Type (..),

    -- ** Background
    Background (..),
    newBackground,

    -- ** BackgroundSuggestionState
    BackgroundSuggestionState (..),
    newBackgroundSuggestionState,

    -- ** BatchUpdateDocumentRequest
    BatchUpdateDocumentRequest (..),
    newBatchUpdateDocumentRequest,

    -- ** BatchUpdateDocumentResponse
    BatchUpdateDocumentResponse (..),
    newBatchUpdateDocumentResponse,

    -- ** Body
    Body (..),
    newBody,

    -- ** BookmarkLink
    BookmarkLink (..),
    newBookmarkLink,

    -- ** Bullet
    Bullet (..),
    newBullet,

    -- ** BulletSuggestionState
    BulletSuggestionState (..),
    newBulletSuggestionState,

    -- ** Color
    Color (..),
    newColor,

    -- ** ColumnBreak
    ColumnBreak (..),
    newColumnBreak,

    -- ** ColumnBreak_SuggestedTextStyleChanges
    ColumnBreak_SuggestedTextStyleChanges (..),
    newColumnBreak_SuggestedTextStyleChanges,

    -- ** CreateFooterRequest
    CreateFooterRequest (..),
    newCreateFooterRequest,

    -- ** CreateFooterRequest_Type
    CreateFooterRequest_Type (..),

    -- ** CreateFooterResponse
    CreateFooterResponse (..),
    newCreateFooterResponse,

    -- ** CreateFootnoteRequest
    CreateFootnoteRequest (..),
    newCreateFootnoteRequest,

    -- ** CreateFootnoteResponse
    CreateFootnoteResponse (..),
    newCreateFootnoteResponse,

    -- ** CreateHeaderRequest
    CreateHeaderRequest (..),
    newCreateHeaderRequest,

    -- ** CreateHeaderRequest_Type
    CreateHeaderRequest_Type (..),

    -- ** CreateHeaderResponse
    CreateHeaderResponse (..),
    newCreateHeaderResponse,

    -- ** CreateNamedRangeRequest
    CreateNamedRangeRequest (..),
    newCreateNamedRangeRequest,

    -- ** CreateNamedRangeResponse
    CreateNamedRangeResponse (..),
    newCreateNamedRangeResponse,

    -- ** CreateParagraphBulletsRequest
    CreateParagraphBulletsRequest (..),
    newCreateParagraphBulletsRequest,

    -- ** CreateParagraphBulletsRequest_BulletPreset
    CreateParagraphBulletsRequest_BulletPreset (..),

    -- ** CropProperties
    CropProperties (..),
    newCropProperties,

    -- ** CropPropertiesSuggestionState
    CropPropertiesSuggestionState (..),
    newCropPropertiesSuggestionState,

    -- ** DeleteContentRangeRequest
    DeleteContentRangeRequest (..),
    newDeleteContentRangeRequest,

    -- ** DeleteFooterRequest
    DeleteFooterRequest (..),
    newDeleteFooterRequest,

    -- ** DeleteHeaderRequest
    DeleteHeaderRequest (..),
    newDeleteHeaderRequest,

    -- ** DeleteNamedRangeRequest
    DeleteNamedRangeRequest (..),
    newDeleteNamedRangeRequest,

    -- ** DeleteParagraphBulletsRequest
    DeleteParagraphBulletsRequest (..),
    newDeleteParagraphBulletsRequest,

    -- ** DeletePositionedObjectRequest
    DeletePositionedObjectRequest (..),
    newDeletePositionedObjectRequest,

    -- ** DeleteTableColumnRequest
    DeleteTableColumnRequest (..),
    newDeleteTableColumnRequest,

    -- ** DeleteTableRowRequest
    DeleteTableRowRequest (..),
    newDeleteTableRowRequest,

    -- ** Dimension
    Dimension (..),
    newDimension,

    -- ** Dimension_Unit
    Dimension_Unit (..),

    -- ** Document
    Document (..),
    newDocument,

    -- ** Document_Footers
    Document_Footers (..),
    newDocument_Footers,

    -- ** Document_Footnotes
    Document_Footnotes (..),
    newDocument_Footnotes,

    -- ** Document_Headers
    Document_Headers (..),
    newDocument_Headers,

    -- ** Document_InlineObjects
    Document_InlineObjects (..),
    newDocument_InlineObjects,

    -- ** Document_Lists
    Document_Lists (..),
    newDocument_Lists,

    -- ** Document_NamedRanges
    Document_NamedRanges (..),
    newDocument_NamedRanges,

    -- ** Document_PositionedObjects
    Document_PositionedObjects (..),
    newDocument_PositionedObjects,

    -- ** Document_SuggestedDocumentStyleChanges
    Document_SuggestedDocumentStyleChanges (..),
    newDocument_SuggestedDocumentStyleChanges,

    -- ** Document_SuggestedNamedStylesChanges
    Document_SuggestedNamedStylesChanges (..),
    newDocument_SuggestedNamedStylesChanges,

    -- ** Document_SuggestionsViewMode
    Document_SuggestionsViewMode (..),

    -- ** DocumentStyle
    DocumentStyle (..),
    newDocumentStyle,

    -- ** DocumentStyleSuggestionState
    DocumentStyleSuggestionState (..),
    newDocumentStyleSuggestionState,

    -- ** DocumentTab
    DocumentTab (..),
    newDocumentTab,

    -- ** DocumentTab_Footers
    DocumentTab_Footers (..),
    newDocumentTab_Footers,

    -- ** DocumentTab_Footnotes
    DocumentTab_Footnotes (..),
    newDocumentTab_Footnotes,

    -- ** DocumentTab_Headers
    DocumentTab_Headers (..),
    newDocumentTab_Headers,

    -- ** DocumentTab_InlineObjects
    DocumentTab_InlineObjects (..),
    newDocumentTab_InlineObjects,

    -- ** DocumentTab_Lists
    DocumentTab_Lists (..),
    newDocumentTab_Lists,

    -- ** DocumentTab_NamedRanges
    DocumentTab_NamedRanges (..),
    newDocumentTab_NamedRanges,

    -- ** DocumentTab_PositionedObjects
    DocumentTab_PositionedObjects (..),
    newDocumentTab_PositionedObjects,

    -- ** DocumentTab_SuggestedDocumentStyleChanges
    DocumentTab_SuggestedDocumentStyleChanges (..),
    newDocumentTab_SuggestedDocumentStyleChanges,

    -- ** DocumentTab_SuggestedNamedStylesChanges
    DocumentTab_SuggestedNamedStylesChanges (..),
    newDocumentTab_SuggestedNamedStylesChanges,

    -- ** EmbeddedDrawingProperties
    EmbeddedDrawingProperties (..),
    newEmbeddedDrawingProperties,

    -- ** EmbeddedDrawingPropertiesSuggestionState
    EmbeddedDrawingPropertiesSuggestionState (..),
    newEmbeddedDrawingPropertiesSuggestionState,

    -- ** EmbeddedObject
    EmbeddedObject (..),
    newEmbeddedObject,

    -- ** EmbeddedObjectBorder
    EmbeddedObjectBorder (..),
    newEmbeddedObjectBorder,

    -- ** EmbeddedObjectBorder_DashStyle
    EmbeddedObjectBorder_DashStyle (..),

    -- ** EmbeddedObjectBorder_PropertyState
    EmbeddedObjectBorder_PropertyState (..),

    -- ** EmbeddedObjectBorderSuggestionState
    EmbeddedObjectBorderSuggestionState (..),
    newEmbeddedObjectBorderSuggestionState,

    -- ** EmbeddedObjectSuggestionState
    EmbeddedObjectSuggestionState (..),
    newEmbeddedObjectSuggestionState,

    -- ** EndOfSegmentLocation
    EndOfSegmentLocation (..),
    newEndOfSegmentLocation,

    -- ** Equation
    Equation (..),
    newEquation,

    -- ** Footer
    Footer (..),
    newFooter,

    -- ** Footnote
    Footnote (..),
    newFootnote,

    -- ** FootnoteReference
    FootnoteReference (..),
    newFootnoteReference,

    -- ** FootnoteReference_SuggestedTextStyleChanges
    FootnoteReference_SuggestedTextStyleChanges (..),
    newFootnoteReference_SuggestedTextStyleChanges,

    -- ** Header
    Header (..),
    newHeader,

    -- ** HeadingLink
    HeadingLink (..),
    newHeadingLink,

    -- ** HorizontalRule
    HorizontalRule (..),
    newHorizontalRule,

    -- ** HorizontalRule_SuggestedTextStyleChanges
    HorizontalRule_SuggestedTextStyleChanges (..),
    newHorizontalRule_SuggestedTextStyleChanges,

    -- ** ImageProperties
    ImageProperties (..),
    newImageProperties,

    -- ** ImagePropertiesSuggestionState
    ImagePropertiesSuggestionState (..),
    newImagePropertiesSuggestionState,

    -- ** InlineObject
    InlineObject (..),
    newInlineObject,

    -- ** InlineObject_SuggestedInlineObjectPropertiesChanges
    InlineObject_SuggestedInlineObjectPropertiesChanges (..),
    newInlineObject_SuggestedInlineObjectPropertiesChanges,

    -- ** InlineObjectElement
    InlineObjectElement (..),
    newInlineObjectElement,

    -- ** InlineObjectElement_SuggestedTextStyleChanges
    InlineObjectElement_SuggestedTextStyleChanges (..),
    newInlineObjectElement_SuggestedTextStyleChanges,

    -- ** InlineObjectProperties
    InlineObjectProperties (..),
    newInlineObjectProperties,

    -- ** InlineObjectPropertiesSuggestionState
    InlineObjectPropertiesSuggestionState (..),
    newInlineObjectPropertiesSuggestionState,

    -- ** InsertInlineImageRequest
    InsertInlineImageRequest (..),
    newInsertInlineImageRequest,

    -- ** InsertInlineImageResponse
    InsertInlineImageResponse (..),
    newInsertInlineImageResponse,

    -- ** InsertInlineSheetsChartResponse
    InsertInlineSheetsChartResponse (..),
    newInsertInlineSheetsChartResponse,

    -- ** InsertPageBreakRequest
    InsertPageBreakRequest (..),
    newInsertPageBreakRequest,

    -- ** InsertSectionBreakRequest
    InsertSectionBreakRequest (..),
    newInsertSectionBreakRequest,

    -- ** InsertSectionBreakRequest_SectionType
    InsertSectionBreakRequest_SectionType (..),

    -- ** InsertTableColumnRequest
    InsertTableColumnRequest (..),
    newInsertTableColumnRequest,

    -- ** InsertTableRequest
    InsertTableRequest (..),
    newInsertTableRequest,

    -- ** InsertTableRowRequest
    InsertTableRowRequest (..),
    newInsertTableRowRequest,

    -- ** InsertTextRequest
    InsertTextRequest (..),
    newInsertTextRequest,

    -- ** Link
    Link (..),
    newLink,

    -- ** LinkedContentReference
    LinkedContentReference (..),
    newLinkedContentReference,

    -- ** LinkedContentReferenceSuggestionState
    LinkedContentReferenceSuggestionState (..),
    newLinkedContentReferenceSuggestionState,

    -- ** List
    List (..),
    newList,

    -- ** List_SuggestedListPropertiesChanges
    List_SuggestedListPropertiesChanges (..),
    newList_SuggestedListPropertiesChanges,

    -- ** ListProperties
    ListProperties (..),
    newListProperties,

    -- ** ListPropertiesSuggestionState
    ListPropertiesSuggestionState (..),
    newListPropertiesSuggestionState,

    -- ** Location
    Location (..),
    newLocation,

    -- ** MergeTableCellsRequest
    MergeTableCellsRequest (..),
    newMergeTableCellsRequest,

    -- ** NamedRange
    NamedRange (..),
    newNamedRange,

    -- ** NamedRanges
    NamedRanges (..),
    newNamedRanges,

    -- ** NamedStyle
    NamedStyle (..),
    newNamedStyle,

    -- ** NamedStyle_NamedStyleType
    NamedStyle_NamedStyleType (..),

    -- ** NamedStyleSuggestionState
    NamedStyleSuggestionState (..),
    newNamedStyleSuggestionState,

    -- ** NamedStyleSuggestionState_NamedStyleType
    NamedStyleSuggestionState_NamedStyleType (..),

    -- ** NamedStyles
    NamedStyles (..),
    newNamedStyles,

    -- ** NamedStylesSuggestionState
    NamedStylesSuggestionState (..),
    newNamedStylesSuggestionState,

    -- ** NestingLevel
    NestingLevel (..),
    newNestingLevel,

    -- ** NestingLevel_BulletAlignment
    NestingLevel_BulletAlignment (..),

    -- ** NestingLevel_GlyphType
    NestingLevel_GlyphType (..),

    -- ** NestingLevelSuggestionState
    NestingLevelSuggestionState (..),
    newNestingLevelSuggestionState,

    -- ** ObjectReferences
    ObjectReferences (..),
    newObjectReferences,

    -- ** OptionalColor
    OptionalColor (..),
    newOptionalColor,

    -- ** PageBreak
    PageBreak (..),
    newPageBreak,

    -- ** PageBreak_SuggestedTextStyleChanges
    PageBreak_SuggestedTextStyleChanges (..),
    newPageBreak_SuggestedTextStyleChanges,

    -- ** Paragraph
    Paragraph (..),
    newParagraph,

    -- ** Paragraph_SuggestedBulletChanges
    Paragraph_SuggestedBulletChanges (..),
    newParagraph_SuggestedBulletChanges,

    -- ** Paragraph_SuggestedParagraphStyleChanges
    Paragraph_SuggestedParagraphStyleChanges (..),
    newParagraph_SuggestedParagraphStyleChanges,

    -- ** Paragraph_SuggestedPositionedObjectIds
    Paragraph_SuggestedPositionedObjectIds (..),
    newParagraph_SuggestedPositionedObjectIds,

    -- ** ParagraphBorder
    ParagraphBorder (..),
    newParagraphBorder,

    -- ** ParagraphBorder_DashStyle
    ParagraphBorder_DashStyle (..),

    -- ** ParagraphElement
    ParagraphElement (..),
    newParagraphElement,

    -- ** ParagraphStyle
    ParagraphStyle (..),
    newParagraphStyle,

    -- ** ParagraphStyle_Alignment
    ParagraphStyle_Alignment (..),

    -- ** ParagraphStyle_Direction
    ParagraphStyle_Direction (..),

    -- ** ParagraphStyle_NamedStyleType
    ParagraphStyle_NamedStyleType (..),

    -- ** ParagraphStyle_SpacingMode
    ParagraphStyle_SpacingMode (..),

    -- ** ParagraphStyleSuggestionState
    ParagraphStyleSuggestionState (..),
    newParagraphStyleSuggestionState,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Person_SuggestedTextStyleChanges
    Person_SuggestedTextStyleChanges (..),
    newPerson_SuggestedTextStyleChanges,

    -- ** PersonProperties
    PersonProperties (..),
    newPersonProperties,

    -- ** PinTableHeaderRowsRequest
    PinTableHeaderRowsRequest (..),
    newPinTableHeaderRowsRequest,

    -- ** PositionedObject
    PositionedObject (..),
    newPositionedObject,

    -- ** PositionedObject_SuggestedPositionedObjectPropertiesChanges
    PositionedObject_SuggestedPositionedObjectPropertiesChanges (..),
    newPositionedObject_SuggestedPositionedObjectPropertiesChanges,

    -- ** PositionedObjectPositioning
    PositionedObjectPositioning (..),
    newPositionedObjectPositioning,

    -- ** PositionedObjectPositioning_Layout
    PositionedObjectPositioning_Layout (..),

    -- ** PositionedObjectPositioningSuggestionState
    PositionedObjectPositioningSuggestionState (..),
    newPositionedObjectPositioningSuggestionState,

    -- ** PositionedObjectProperties
    PositionedObjectProperties (..),
    newPositionedObjectProperties,

    -- ** PositionedObjectPropertiesSuggestionState
    PositionedObjectPropertiesSuggestionState (..),
    newPositionedObjectPropertiesSuggestionState,

    -- ** Range
    Range (..),
    newRange,

    -- ** ReplaceAllTextRequest
    ReplaceAllTextRequest (..),
    newReplaceAllTextRequest,

    -- ** ReplaceAllTextResponse
    ReplaceAllTextResponse (..),
    newReplaceAllTextResponse,

    -- ** ReplaceImageRequest
    ReplaceImageRequest (..),
    newReplaceImageRequest,

    -- ** ReplaceImageRequest_ImageReplaceMethod
    ReplaceImageRequest_ImageReplaceMethod (..),

    -- ** ReplaceNamedRangeContentRequest
    ReplaceNamedRangeContentRequest (..),
    newReplaceNamedRangeContentRequest,

    -- ** Request'
    Request' (..),
    newRequest,

    -- ** Response
    Response (..),
    newResponse,

    -- ** RgbColor
    RgbColor (..),
    newRgbColor,

    -- ** RichLink
    RichLink (..),
    newRichLink,

    -- ** RichLink_SuggestedTextStyleChanges
    RichLink_SuggestedTextStyleChanges (..),
    newRichLink_SuggestedTextStyleChanges,

    -- ** RichLinkProperties
    RichLinkProperties (..),
    newRichLinkProperties,

    -- ** SectionBreak
    SectionBreak (..),
    newSectionBreak,

    -- ** SectionColumnProperties
    SectionColumnProperties (..),
    newSectionColumnProperties,

    -- ** SectionStyle
    SectionStyle (..),
    newSectionStyle,

    -- ** SectionStyle_ColumnSeparatorStyle
    SectionStyle_ColumnSeparatorStyle (..),

    -- ** SectionStyle_ContentDirection
    SectionStyle_ContentDirection (..),

    -- ** SectionStyle_SectionType
    SectionStyle_SectionType (..),

    -- ** Shading
    Shading (..),
    newShading,

    -- ** ShadingSuggestionState
    ShadingSuggestionState (..),
    newShadingSuggestionState,

    -- ** SheetsChartReference
    SheetsChartReference (..),
    newSheetsChartReference,

    -- ** SheetsChartReferenceSuggestionState
    SheetsChartReferenceSuggestionState (..),
    newSheetsChartReferenceSuggestionState,

    -- ** Size
    Size (..),
    newSize,

    -- ** SizeSuggestionState
    SizeSuggestionState (..),
    newSizeSuggestionState,

    -- ** StructuralElement
    StructuralElement (..),
    newStructuralElement,

    -- ** SubstringMatchCriteria
    SubstringMatchCriteria (..),
    newSubstringMatchCriteria,

    -- ** SuggestedBullet
    SuggestedBullet (..),
    newSuggestedBullet,

    -- ** SuggestedDocumentStyle
    SuggestedDocumentStyle (..),
    newSuggestedDocumentStyle,

    -- ** SuggestedInlineObjectProperties
    SuggestedInlineObjectProperties (..),
    newSuggestedInlineObjectProperties,

    -- ** SuggestedListProperties
    SuggestedListProperties (..),
    newSuggestedListProperties,

    -- ** SuggestedNamedStyles
    SuggestedNamedStyles (..),
    newSuggestedNamedStyles,

    -- ** SuggestedParagraphStyle
    SuggestedParagraphStyle (..),
    newSuggestedParagraphStyle,

    -- ** SuggestedPositionedObjectProperties
    SuggestedPositionedObjectProperties (..),
    newSuggestedPositionedObjectProperties,

    -- ** SuggestedTableCellStyle
    SuggestedTableCellStyle (..),
    newSuggestedTableCellStyle,

    -- ** SuggestedTableRowStyle
    SuggestedTableRowStyle (..),
    newSuggestedTableRowStyle,

    -- ** SuggestedTextStyle
    SuggestedTextStyle (..),
    newSuggestedTextStyle,

    -- ** Tab
    Tab (..),
    newTab,

    -- ** TabProperties
    TabProperties (..),
    newTabProperties,

    -- ** TabStop
    TabStop (..),
    newTabStop,

    -- ** TabStop_Alignment
    TabStop_Alignment (..),

    -- ** Table
    Table (..),
    newTable,

    -- ** TableCell
    TableCell (..),
    newTableCell,

    -- ** TableCell_SuggestedTableCellStyleChanges
    TableCell_SuggestedTableCellStyleChanges (..),
    newTableCell_SuggestedTableCellStyleChanges,

    -- ** TableCellBorder
    TableCellBorder (..),
    newTableCellBorder,

    -- ** TableCellBorder_DashStyle
    TableCellBorder_DashStyle (..),

    -- ** TableCellLocation
    TableCellLocation (..),
    newTableCellLocation,

    -- ** TableCellStyle
    TableCellStyle (..),
    newTableCellStyle,

    -- ** TableCellStyle_ContentAlignment
    TableCellStyle_ContentAlignment (..),

    -- ** TableCellStyleSuggestionState
    TableCellStyleSuggestionState (..),
    newTableCellStyleSuggestionState,

    -- ** TableColumnProperties
    TableColumnProperties (..),
    newTableColumnProperties,

    -- ** TableColumnProperties_WidthType
    TableColumnProperties_WidthType (..),

    -- ** TableOfContents
    TableOfContents (..),
    newTableOfContents,

    -- ** TableRange
    TableRange (..),
    newTableRange,

    -- ** TableRow
    TableRow (..),
    newTableRow,

    -- ** TableRow_SuggestedTableRowStyleChanges
    TableRow_SuggestedTableRowStyleChanges (..),
    newTableRow_SuggestedTableRowStyleChanges,

    -- ** TableRowStyle
    TableRowStyle (..),
    newTableRowStyle,

    -- ** TableRowStyleSuggestionState
    TableRowStyleSuggestionState (..),
    newTableRowStyleSuggestionState,

    -- ** TableStyle
    TableStyle (..),
    newTableStyle,

    -- ** TabsCriteria
    TabsCriteria (..),
    newTabsCriteria,

    -- ** TextRun
    TextRun (..),
    newTextRun,

    -- ** TextRun_SuggestedTextStyleChanges
    TextRun_SuggestedTextStyleChanges (..),
    newTextRun_SuggestedTextStyleChanges,

    -- ** TextStyle
    TextStyle (..),
    newTextStyle,

    -- ** TextStyle_BaselineOffset
    TextStyle_BaselineOffset (..),

    -- ** TextStyleSuggestionState
    TextStyleSuggestionState (..),
    newTextStyleSuggestionState,

    -- ** UnmergeTableCellsRequest
    UnmergeTableCellsRequest (..),
    newUnmergeTableCellsRequest,

    -- ** UpdateDocumentStyleRequest
    UpdateDocumentStyleRequest (..),
    newUpdateDocumentStyleRequest,

    -- ** UpdateParagraphStyleRequest
    UpdateParagraphStyleRequest (..),
    newUpdateParagraphStyleRequest,

    -- ** UpdateSectionStyleRequest
    UpdateSectionStyleRequest (..),
    newUpdateSectionStyleRequest,

    -- ** UpdateTableCellStyleRequest
    UpdateTableCellStyleRequest (..),
    newUpdateTableCellStyleRequest,

    -- ** UpdateTableColumnPropertiesRequest
    UpdateTableColumnPropertiesRequest (..),
    newUpdateTableColumnPropertiesRequest,

    -- ** UpdateTableRowStyleRequest
    UpdateTableRowStyleRequest (..),
    newUpdateTableRowStyleRequest,

    -- ** UpdateTextStyleRequest
    UpdateTextStyleRequest (..),
    newUpdateTextStyleRequest,

    -- ** WeightedFontFamily
    WeightedFontFamily (..),
    newWeightedFontFamily,

    -- ** WriteControl
    WriteControl (..),
    newWriteControl,

    -- ** DocumentsGetSuggestionsViewMode
    DocumentsGetSuggestionsViewMode (..),
  )
where

import Gogol.Docs.Internal.Product
import Gogol.Docs.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Google Docs API. This contains the host and root path used as a starting point for constructing service requests.
docsService :: Core.ServiceConfig
docsService =
  Core.defaultService
    (Core.ServiceId "docs:v1")
    "docs.googleapis.com"

-- | See, edit, create, and delete all your Google Docs documents
type Documents'FullControl =
  "https://www.googleapis.com/auth/documents"

-- | See all your Google Docs documents
type Documents'Readonly =
  "https://www.googleapis.com/auth/documents.readonly"

-- | See, edit, create, and delete all of your Google Drive files
type Drive'FullControl = "https://www.googleapis.com/auth/drive"

-- | See, edit, create, and delete only the specific Google Drive files you use with this app
type Drive'File = "https://www.googleapis.com/auth/drive.file"

-- | See and download all your Google Drive files
type Drive'Readonly =
  "https://www.googleapis.com/auth/drive.readonly"
