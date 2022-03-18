{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Slides.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Slides.Types
    (
    -- * Configuration
      slidesService

    -- * OAuth Scopes
    , driveScope
    , driveFileScope
    , driveReadOnlyScope
    , presentationsScope
    , presentationsReadOnlyScope
    , spreadsheetsScope
    , spreadsheetsReadOnlyScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AffineTransform
    , AffineTransform (..)
    , newAffineTransform

    -- ** AffineTransform_Unit
    , AffineTransform_Unit (..)

    -- ** AutoText
    , AutoText (..)
    , newAutoText

    -- ** AutoText_Type
    , AutoText_Type (..)

    -- ** Autofit
    , Autofit (..)
    , newAutofit

    -- ** Autofit_AutofitType
    , Autofit_AutofitType (..)

    -- ** BatchUpdatePresentationRequest
    , BatchUpdatePresentationRequest (..)
    , newBatchUpdatePresentationRequest

    -- ** BatchUpdatePresentationResponse
    , BatchUpdatePresentationResponse (..)
    , newBatchUpdatePresentationResponse

    -- ** Bullet
    , Bullet (..)
    , newBullet

    -- ** ColorScheme
    , ColorScheme (..)
    , newColorScheme

    -- ** ColorStop
    , ColorStop (..)
    , newColorStop

    -- ** CreateImageRequest
    , CreateImageRequest (..)
    , newCreateImageRequest

    -- ** CreateImageResponse
    , CreateImageResponse (..)
    , newCreateImageResponse

    -- ** CreateLineRequest
    , CreateLineRequest (..)
    , newCreateLineRequest

    -- ** CreateLineRequest_Category
    , CreateLineRequest_Category (..)

    -- ** CreateLineRequest_LineCategory
    , CreateLineRequest_LineCategory (..)

    -- ** CreateLineResponse
    , CreateLineResponse (..)
    , newCreateLineResponse

    -- ** CreateParagraphBulletsRequest
    , CreateParagraphBulletsRequest (..)
    , newCreateParagraphBulletsRequest

    -- ** CreateParagraphBulletsRequest_BulletPreset
    , CreateParagraphBulletsRequest_BulletPreset (..)

    -- ** CreateShapeRequest
    , CreateShapeRequest (..)
    , newCreateShapeRequest

    -- ** CreateShapeRequest_ShapeType
    , CreateShapeRequest_ShapeType (..)

    -- ** CreateShapeResponse
    , CreateShapeResponse (..)
    , newCreateShapeResponse

    -- ** CreateSheetsChartRequest
    , CreateSheetsChartRequest (..)
    , newCreateSheetsChartRequest

    -- ** CreateSheetsChartRequest_LinkingMode
    , CreateSheetsChartRequest_LinkingMode (..)

    -- ** CreateSheetsChartResponse
    , CreateSheetsChartResponse (..)
    , newCreateSheetsChartResponse

    -- ** CreateSlideRequest
    , CreateSlideRequest (..)
    , newCreateSlideRequest

    -- ** CreateSlideResponse
    , CreateSlideResponse (..)
    , newCreateSlideResponse

    -- ** CreateTableRequest
    , CreateTableRequest (..)
    , newCreateTableRequest

    -- ** CreateTableResponse
    , CreateTableResponse (..)
    , newCreateTableResponse

    -- ** CreateVideoRequest
    , CreateVideoRequest (..)
    , newCreateVideoRequest

    -- ** CreateVideoRequest_Source
    , CreateVideoRequest_Source (..)

    -- ** CreateVideoResponse
    , CreateVideoResponse (..)
    , newCreateVideoResponse

    -- ** CropProperties
    , CropProperties (..)
    , newCropProperties

    -- ** DeleteObjectRequest
    , DeleteObjectRequest (..)
    , newDeleteObjectRequest

    -- ** DeleteParagraphBulletsRequest
    , DeleteParagraphBulletsRequest (..)
    , newDeleteParagraphBulletsRequest

    -- ** DeleteTableColumnRequest
    , DeleteTableColumnRequest (..)
    , newDeleteTableColumnRequest

    -- ** DeleteTableRowRequest
    , DeleteTableRowRequest (..)
    , newDeleteTableRowRequest

    -- ** DeleteTextRequest
    , DeleteTextRequest (..)
    , newDeleteTextRequest

    -- ** Dimension
    , Dimension (..)
    , newDimension

    -- ** Dimension_Unit
    , Dimension_Unit (..)

    -- ** DuplicateObjectRequest
    , DuplicateObjectRequest (..)
    , newDuplicateObjectRequest

    -- ** DuplicateObjectRequest_ObjectIds
    , DuplicateObjectRequest_ObjectIds (..)
    , newDuplicateObjectRequest_ObjectIds

    -- ** DuplicateObjectResponse
    , DuplicateObjectResponse (..)
    , newDuplicateObjectResponse

    -- ** Group
    , Group (..)
    , newGroup

    -- ** GroupObjectsRequest
    , GroupObjectsRequest (..)
    , newGroupObjectsRequest

    -- ** GroupObjectsResponse
    , GroupObjectsResponse (..)
    , newGroupObjectsResponse

    -- ** Image
    , Image (..)
    , newImage

    -- ** ImageProperties
    , ImageProperties (..)
    , newImageProperties

    -- ** InsertTableColumnsRequest
    , InsertTableColumnsRequest (..)
    , newInsertTableColumnsRequest

    -- ** InsertTableRowsRequest
    , InsertTableRowsRequest (..)
    , newInsertTableRowsRequest

    -- ** InsertTextRequest
    , InsertTextRequest (..)
    , newInsertTextRequest

    -- ** LayoutPlaceholderIdMapping
    , LayoutPlaceholderIdMapping (..)
    , newLayoutPlaceholderIdMapping

    -- ** LayoutProperties
    , LayoutProperties (..)
    , newLayoutProperties

    -- ** LayoutReference
    , LayoutReference (..)
    , newLayoutReference

    -- ** LayoutReference_PredefinedLayout
    , LayoutReference_PredefinedLayout (..)

    -- ** Line
    , Line (..)
    , newLine

    -- ** Line_LineCategory
    , Line_LineCategory (..)

    -- ** Line_LineType
    , Line_LineType (..)

    -- ** LineConnection
    , LineConnection (..)
    , newLineConnection

    -- ** LineFill
    , LineFill (..)
    , newLineFill

    -- ** LineProperties
    , LineProperties (..)
    , newLineProperties

    -- ** LineProperties_DashStyle
    , LineProperties_DashStyle (..)

    -- ** LineProperties_EndArrow
    , LineProperties_EndArrow (..)

    -- ** LineProperties_StartArrow
    , LineProperties_StartArrow (..)

    -- ** Link
    , Link (..)
    , newLink

    -- ** Link_RelativeLink
    , Link_RelativeLink (..)

    -- ** List
    , List (..)
    , newList

    -- ** List_NestingLevel
    , List_NestingLevel (..)
    , newList_NestingLevel

    -- ** MasterProperties
    , MasterProperties (..)
    , newMasterProperties

    -- ** MergeTableCellsRequest
    , MergeTableCellsRequest (..)
    , newMergeTableCellsRequest

    -- ** NestingLevel
    , NestingLevel (..)
    , newNestingLevel

    -- ** NotesProperties
    , NotesProperties (..)
    , newNotesProperties

    -- ** OpaqueColor
    , OpaqueColor (..)
    , newOpaqueColor

    -- ** OpaqueColor_ThemeColor
    , OpaqueColor_ThemeColor (..)

    -- ** OptionalColor
    , OptionalColor (..)
    , newOptionalColor

    -- ** Outline
    , Outline (..)
    , newOutline

    -- ** Outline_DashStyle
    , Outline_DashStyle (..)

    -- ** Outline_PropertyState
    , Outline_PropertyState (..)

    -- ** OutlineFill
    , OutlineFill (..)
    , newOutlineFill

    -- ** Page
    , Page (..)
    , newPage

    -- ** Page_PageType
    , Page_PageType (..)

    -- ** PageBackgroundFill
    , PageBackgroundFill (..)
    , newPageBackgroundFill

    -- ** PageBackgroundFill_PropertyState
    , PageBackgroundFill_PropertyState (..)

    -- ** PageElement
    , PageElement (..)
    , newPageElement

    -- ** PageElementProperties
    , PageElementProperties (..)
    , newPageElementProperties

    -- ** PageProperties
    , PageProperties (..)
    , newPageProperties

    -- ** ParagraphMarker
    , ParagraphMarker (..)
    , newParagraphMarker

    -- ** ParagraphStyle
    , ParagraphStyle (..)
    , newParagraphStyle

    -- ** ParagraphStyle_Alignment
    , ParagraphStyle_Alignment (..)

    -- ** ParagraphStyle_Direction
    , ParagraphStyle_Direction (..)

    -- ** ParagraphStyle_SpacingMode
    , ParagraphStyle_SpacingMode (..)

    -- ** Placeholder
    , Placeholder (..)
    , newPlaceholder

    -- ** Placeholder_Type
    , Placeholder_Type (..)

    -- ** Presentation
    , Presentation (..)
    , newPresentation

    -- ** Range
    , Range (..)
    , newRange

    -- ** Range_Type
    , Range_Type (..)

    -- ** Recolor
    , Recolor (..)
    , newRecolor

    -- ** Recolor_Name
    , Recolor_Name (..)

    -- ** RefreshSheetsChartRequest
    , RefreshSheetsChartRequest (..)
    , newRefreshSheetsChartRequest

    -- ** ReplaceAllShapesWithImageRequest
    , ReplaceAllShapesWithImageRequest (..)
    , newReplaceAllShapesWithImageRequest

    -- ** ReplaceAllShapesWithImageRequest_ImageReplaceMethod
    , ReplaceAllShapesWithImageRequest_ImageReplaceMethod (..)

    -- ** ReplaceAllShapesWithImageRequest_ReplaceMethod
    , ReplaceAllShapesWithImageRequest_ReplaceMethod (..)

    -- ** ReplaceAllShapesWithImageResponse
    , ReplaceAllShapesWithImageResponse (..)
    , newReplaceAllShapesWithImageResponse

    -- ** ReplaceAllShapesWithSheetsChartRequest
    , ReplaceAllShapesWithSheetsChartRequest (..)
    , newReplaceAllShapesWithSheetsChartRequest

    -- ** ReplaceAllShapesWithSheetsChartRequest_LinkingMode
    , ReplaceAllShapesWithSheetsChartRequest_LinkingMode (..)

    -- ** ReplaceAllShapesWithSheetsChartResponse
    , ReplaceAllShapesWithSheetsChartResponse (..)
    , newReplaceAllShapesWithSheetsChartResponse

    -- ** ReplaceAllTextRequest
    , ReplaceAllTextRequest (..)
    , newReplaceAllTextRequest

    -- ** ReplaceAllTextResponse
    , ReplaceAllTextResponse (..)
    , newReplaceAllTextResponse

    -- ** ReplaceImageRequest
    , ReplaceImageRequest (..)
    , newReplaceImageRequest

    -- ** ReplaceImageRequest_ImageReplaceMethod
    , ReplaceImageRequest_ImageReplaceMethod (..)

    -- ** Request'
    , Request' (..)
    , newRequest

    -- ** RerouteLineRequest
    , RerouteLineRequest (..)
    , newRerouteLineRequest

    -- ** Response
    , Response (..)
    , newResponse

    -- ** RgbColor
    , RgbColor (..)
    , newRgbColor

    -- ** Shadow
    , Shadow (..)
    , newShadow

    -- ** Shadow_Alignment
    , Shadow_Alignment (..)

    -- ** Shadow_PropertyState
    , Shadow_PropertyState (..)

    -- ** Shadow_Type
    , Shadow_Type (..)

    -- ** Shape
    , Shape (..)
    , newShape

    -- ** Shape_ShapeType
    , Shape_ShapeType (..)

    -- ** ShapeBackgroundFill
    , ShapeBackgroundFill (..)
    , newShapeBackgroundFill

    -- ** ShapeBackgroundFill_PropertyState
    , ShapeBackgroundFill_PropertyState (..)

    -- ** ShapeProperties
    , ShapeProperties (..)
    , newShapeProperties

    -- ** ShapeProperties_ContentAlignment
    , ShapeProperties_ContentAlignment (..)

    -- ** SheetsChart
    , SheetsChart (..)
    , newSheetsChart

    -- ** SheetsChartProperties
    , SheetsChartProperties (..)
    , newSheetsChartProperties

    -- ** Size
    , Size (..)
    , newSize

    -- ** SlideProperties
    , SlideProperties (..)
    , newSlideProperties

    -- ** SolidFill
    , SolidFill (..)
    , newSolidFill

    -- ** StretchedPictureFill
    , StretchedPictureFill (..)
    , newStretchedPictureFill

    -- ** SubstringMatchCriteria
    , SubstringMatchCriteria (..)
    , newSubstringMatchCriteria

    -- ** Table
    , Table (..)
    , newTable

    -- ** TableBorderCell
    , TableBorderCell (..)
    , newTableBorderCell

    -- ** TableBorderFill
    , TableBorderFill (..)
    , newTableBorderFill

    -- ** TableBorderProperties
    , TableBorderProperties (..)
    , newTableBorderProperties

    -- ** TableBorderProperties_DashStyle
    , TableBorderProperties_DashStyle (..)

    -- ** TableBorderRow
    , TableBorderRow (..)
    , newTableBorderRow

    -- ** TableCell
    , TableCell (..)
    , newTableCell

    -- ** TableCellBackgroundFill
    , TableCellBackgroundFill (..)
    , newTableCellBackgroundFill

    -- ** TableCellBackgroundFill_PropertyState
    , TableCellBackgroundFill_PropertyState (..)

    -- ** TableCellLocation
    , TableCellLocation (..)
    , newTableCellLocation

    -- ** TableCellProperties
    , TableCellProperties (..)
    , newTableCellProperties

    -- ** TableCellProperties_ContentAlignment
    , TableCellProperties_ContentAlignment (..)

    -- ** TableColumnProperties
    , TableColumnProperties (..)
    , newTableColumnProperties

    -- ** TableRange
    , TableRange (..)
    , newTableRange

    -- ** TableRow
    , TableRow (..)
    , newTableRow

    -- ** TableRowProperties
    , TableRowProperties (..)
    , newTableRowProperties

    -- ** TextContent
    , TextContent (..)
    , newTextContent

    -- ** TextContent_Lists
    , TextContent_Lists (..)
    , newTextContent_Lists

    -- ** TextElement
    , TextElement (..)
    , newTextElement

    -- ** TextRun
    , TextRun (..)
    , newTextRun

    -- ** TextStyle
    , TextStyle (..)
    , newTextStyle

    -- ** TextStyle_BaselineOffset
    , TextStyle_BaselineOffset (..)

    -- ** ThemeColorPair
    , ThemeColorPair (..)
    , newThemeColorPair

    -- ** ThemeColorPair_Type
    , ThemeColorPair_Type (..)

    -- ** Thumbnail
    , Thumbnail (..)
    , newThumbnail

    -- ** UngroupObjectsRequest
    , UngroupObjectsRequest (..)
    , newUngroupObjectsRequest

    -- ** UnmergeTableCellsRequest
    , UnmergeTableCellsRequest (..)
    , newUnmergeTableCellsRequest

    -- ** UpdateImagePropertiesRequest
    , UpdateImagePropertiesRequest (..)
    , newUpdateImagePropertiesRequest

    -- ** UpdateLineCategoryRequest
    , UpdateLineCategoryRequest (..)
    , newUpdateLineCategoryRequest

    -- ** UpdateLineCategoryRequest_LineCategory
    , UpdateLineCategoryRequest_LineCategory (..)

    -- ** UpdateLinePropertiesRequest
    , UpdateLinePropertiesRequest (..)
    , newUpdateLinePropertiesRequest

    -- ** UpdatePageElementAltTextRequest
    , UpdatePageElementAltTextRequest (..)
    , newUpdatePageElementAltTextRequest

    -- ** UpdatePageElementTransformRequest
    , UpdatePageElementTransformRequest (..)
    , newUpdatePageElementTransformRequest

    -- ** UpdatePageElementTransformRequest_ApplyMode
    , UpdatePageElementTransformRequest_ApplyMode (..)

    -- ** UpdatePageElementsZOrderRequest
    , UpdatePageElementsZOrderRequest (..)
    , newUpdatePageElementsZOrderRequest

    -- ** UpdatePageElementsZOrderRequest_Operation
    , UpdatePageElementsZOrderRequest_Operation (..)

    -- ** UpdatePagePropertiesRequest
    , UpdatePagePropertiesRequest (..)
    , newUpdatePagePropertiesRequest

    -- ** UpdateParagraphStyleRequest
    , UpdateParagraphStyleRequest (..)
    , newUpdateParagraphStyleRequest

    -- ** UpdateShapePropertiesRequest
    , UpdateShapePropertiesRequest (..)
    , newUpdateShapePropertiesRequest

    -- ** UpdateSlidePropertiesRequest
    , UpdateSlidePropertiesRequest (..)
    , newUpdateSlidePropertiesRequest

    -- ** UpdateSlidesPositionRequest
    , UpdateSlidesPositionRequest (..)
    , newUpdateSlidesPositionRequest

    -- ** UpdateTableBorderPropertiesRequest
    , UpdateTableBorderPropertiesRequest (..)
    , newUpdateTableBorderPropertiesRequest

    -- ** UpdateTableBorderPropertiesRequest_BorderPosition
    , UpdateTableBorderPropertiesRequest_BorderPosition (..)

    -- ** UpdateTableCellPropertiesRequest
    , UpdateTableCellPropertiesRequest (..)
    , newUpdateTableCellPropertiesRequest

    -- ** UpdateTableColumnPropertiesRequest
    , UpdateTableColumnPropertiesRequest (..)
    , newUpdateTableColumnPropertiesRequest

    -- ** UpdateTableRowPropertiesRequest
    , UpdateTableRowPropertiesRequest (..)
    , newUpdateTableRowPropertiesRequest

    -- ** UpdateTextStyleRequest
    , UpdateTextStyleRequest (..)
    , newUpdateTextStyleRequest

    -- ** UpdateVideoPropertiesRequest
    , UpdateVideoPropertiesRequest (..)
    , newUpdateVideoPropertiesRequest

    -- ** Video
    , Video (..)
    , newVideo

    -- ** Video_Source
    , Video_Source (..)

    -- ** VideoProperties
    , VideoProperties (..)
    , newVideoProperties

    -- ** WeightedFontFamily
    , WeightedFontFamily (..)
    , newWeightedFontFamily

    -- ** WordArt
    , WordArt (..)
    , newWordArt

    -- ** WriteControl
    , WriteControl (..)
    , newWriteControl

    -- ** PresentationsPagesGetThumbnailThumbnailPropertiesMimeType
    , PresentationsPagesGetThumbnailThumbnailPropertiesMimeType (..)

    -- ** PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize
    , PresentationsPagesGetThumbnailThumbnailPropertiesThumbnailSize (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Slides.Internal.Product
import Gogol.Slides.Internal.Sum

-- | Default request referring to version @v1@ of the Google Slides API. This contains the host and root path used as a starting point for constructing service requests.
slidesService :: Core.ServiceConfig
slidesService
  = Core.defaultService (Core.ServiceId "slides:v1")
      "slides.googleapis.com"

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Core.Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Core.Proxy

-- | See, edit, create, and delete only the specific Google Drive files you use with this app
driveFileScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.file"]
driveFileScope = Core.Proxy

-- | See and download all your Google Drive files
driveReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadOnlyScope = Core.Proxy

-- | See, edit, create, and delete all your Google Slides presentations
presentationsScope :: Core.Proxy '["https://www.googleapis.com/auth/presentations"]
presentationsScope = Core.Proxy

-- | See all your Google Slides presentations
presentationsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/presentations.readonly"]
presentationsReadOnlyScope = Core.Proxy

-- | See, edit, create, and delete all your Google Sheets spreadsheets
spreadsheetsScope :: Core.Proxy '["https://www.googleapis.com/auth/spreadsheets"]
spreadsheetsScope = Core.Proxy

-- | See all your Google Sheets spreadsheets
spreadsheetsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/spreadsheets.readonly"]
spreadsheetsReadOnlyScope = Core.Proxy
