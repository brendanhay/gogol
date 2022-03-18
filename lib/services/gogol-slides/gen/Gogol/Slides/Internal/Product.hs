{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Slides.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Slides.Internal.Product
  ( -- * AffineTransform
    AffineTransform (..),
    newAffineTransform,

    -- * AutoText
    AutoText (..),
    newAutoText,

    -- * Autofit
    Autofit (..),
    newAutofit,

    -- * BatchUpdatePresentationRequest
    BatchUpdatePresentationRequest (..),
    newBatchUpdatePresentationRequest,

    -- * BatchUpdatePresentationResponse
    BatchUpdatePresentationResponse (..),
    newBatchUpdatePresentationResponse,

    -- * Bullet
    Bullet (..),
    newBullet,

    -- * ColorScheme
    ColorScheme (..),
    newColorScheme,

    -- * ColorStop
    ColorStop (..),
    newColorStop,

    -- * CreateImageRequest
    CreateImageRequest (..),
    newCreateImageRequest,

    -- * CreateImageResponse
    CreateImageResponse (..),
    newCreateImageResponse,

    -- * CreateLineRequest
    CreateLineRequest (..),
    newCreateLineRequest,

    -- * CreateLineResponse
    CreateLineResponse (..),
    newCreateLineResponse,

    -- * CreateParagraphBulletsRequest
    CreateParagraphBulletsRequest (..),
    newCreateParagraphBulletsRequest,

    -- * CreateShapeRequest
    CreateShapeRequest (..),
    newCreateShapeRequest,

    -- * CreateShapeResponse
    CreateShapeResponse (..),
    newCreateShapeResponse,

    -- * CreateSheetsChartRequest
    CreateSheetsChartRequest (..),
    newCreateSheetsChartRequest,

    -- * CreateSheetsChartResponse
    CreateSheetsChartResponse (..),
    newCreateSheetsChartResponse,

    -- * CreateSlideRequest
    CreateSlideRequest (..),
    newCreateSlideRequest,

    -- * CreateSlideResponse
    CreateSlideResponse (..),
    newCreateSlideResponse,

    -- * CreateTableRequest
    CreateTableRequest (..),
    newCreateTableRequest,

    -- * CreateTableResponse
    CreateTableResponse (..),
    newCreateTableResponse,

    -- * CreateVideoRequest
    CreateVideoRequest (..),
    newCreateVideoRequest,

    -- * CreateVideoResponse
    CreateVideoResponse (..),
    newCreateVideoResponse,

    -- * CropProperties
    CropProperties (..),
    newCropProperties,

    -- * DeleteObjectRequest
    DeleteObjectRequest (..),
    newDeleteObjectRequest,

    -- * DeleteParagraphBulletsRequest
    DeleteParagraphBulletsRequest (..),
    newDeleteParagraphBulletsRequest,

    -- * DeleteTableColumnRequest
    DeleteTableColumnRequest (..),
    newDeleteTableColumnRequest,

    -- * DeleteTableRowRequest
    DeleteTableRowRequest (..),
    newDeleteTableRowRequest,

    -- * DeleteTextRequest
    DeleteTextRequest (..),
    newDeleteTextRequest,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DuplicateObjectRequest
    DuplicateObjectRequest (..),
    newDuplicateObjectRequest,

    -- * DuplicateObjectRequest_ObjectIds
    DuplicateObjectRequest_ObjectIds (..),
    newDuplicateObjectRequest_ObjectIds,

    -- * DuplicateObjectResponse
    DuplicateObjectResponse (..),
    newDuplicateObjectResponse,

    -- * Group
    Group (..),
    newGroup,

    -- * GroupObjectsRequest
    GroupObjectsRequest (..),
    newGroupObjectsRequest,

    -- * GroupObjectsResponse
    GroupObjectsResponse (..),
    newGroupObjectsResponse,

    -- * Image
    Image (..),
    newImage,

    -- * ImageProperties
    ImageProperties (..),
    newImageProperties,

    -- * InsertTableColumnsRequest
    InsertTableColumnsRequest (..),
    newInsertTableColumnsRequest,

    -- * InsertTableRowsRequest
    InsertTableRowsRequest (..),
    newInsertTableRowsRequest,

    -- * InsertTextRequest
    InsertTextRequest (..),
    newInsertTextRequest,

    -- * LayoutPlaceholderIdMapping
    LayoutPlaceholderIdMapping (..),
    newLayoutPlaceholderIdMapping,

    -- * LayoutProperties
    LayoutProperties (..),
    newLayoutProperties,

    -- * LayoutReference
    LayoutReference (..),
    newLayoutReference,

    -- * Line
    Line (..),
    newLine,

    -- * LineConnection
    LineConnection (..),
    newLineConnection,

    -- * LineFill
    LineFill (..),
    newLineFill,

    -- * LineProperties
    LineProperties (..),
    newLineProperties,

    -- * Link
    Link (..),
    newLink,

    -- * List
    List (..),
    newList,

    -- * List_NestingLevel
    List_NestingLevel (..),
    newList_NestingLevel,

    -- * MasterProperties
    MasterProperties (..),
    newMasterProperties,

    -- * MergeTableCellsRequest
    MergeTableCellsRequest (..),
    newMergeTableCellsRequest,

    -- * NestingLevel
    NestingLevel (..),
    newNestingLevel,

    -- * NotesProperties
    NotesProperties (..),
    newNotesProperties,

    -- * OpaqueColor
    OpaqueColor (..),
    newOpaqueColor,

    -- * OptionalColor
    OptionalColor (..),
    newOptionalColor,

    -- * Outline
    Outline (..),
    newOutline,

    -- * OutlineFill
    OutlineFill (..),
    newOutlineFill,

    -- * Page
    Page (..),
    newPage,

    -- * PageBackgroundFill
    PageBackgroundFill (..),
    newPageBackgroundFill,

    -- * PageElement
    PageElement (..),
    newPageElement,

    -- * PageElementProperties
    PageElementProperties (..),
    newPageElementProperties,

    -- * PageProperties
    PageProperties (..),
    newPageProperties,

    -- * ParagraphMarker
    ParagraphMarker (..),
    newParagraphMarker,

    -- * ParagraphStyle
    ParagraphStyle (..),
    newParagraphStyle,

    -- * Placeholder
    Placeholder (..),
    newPlaceholder,

    -- * Presentation
    Presentation (..),
    newPresentation,

    -- * Range
    Range (..),
    newRange,

    -- * Recolor
    Recolor (..),
    newRecolor,

    -- * RefreshSheetsChartRequest
    RefreshSheetsChartRequest (..),
    newRefreshSheetsChartRequest,

    -- * ReplaceAllShapesWithImageRequest
    ReplaceAllShapesWithImageRequest (..),
    newReplaceAllShapesWithImageRequest,

    -- * ReplaceAllShapesWithImageResponse
    ReplaceAllShapesWithImageResponse (..),
    newReplaceAllShapesWithImageResponse,

    -- * ReplaceAllShapesWithSheetsChartRequest
    ReplaceAllShapesWithSheetsChartRequest (..),
    newReplaceAllShapesWithSheetsChartRequest,

    -- * ReplaceAllShapesWithSheetsChartResponse
    ReplaceAllShapesWithSheetsChartResponse (..),
    newReplaceAllShapesWithSheetsChartResponse,

    -- * ReplaceAllTextRequest
    ReplaceAllTextRequest (..),
    newReplaceAllTextRequest,

    -- * ReplaceAllTextResponse
    ReplaceAllTextResponse (..),
    newReplaceAllTextResponse,

    -- * ReplaceImageRequest
    ReplaceImageRequest (..),
    newReplaceImageRequest,

    -- * Request'
    Request' (..),
    newRequest,

    -- * RerouteLineRequest
    RerouteLineRequest (..),
    newRerouteLineRequest,

    -- * Response
    Response (..),
    newResponse,

    -- * RgbColor
    RgbColor (..),
    newRgbColor,

    -- * Shadow
    Shadow (..),
    newShadow,

    -- * Shape
    Shape (..),
    newShape,

    -- * ShapeBackgroundFill
    ShapeBackgroundFill (..),
    newShapeBackgroundFill,

    -- * ShapeProperties
    ShapeProperties (..),
    newShapeProperties,

    -- * SheetsChart
    SheetsChart (..),
    newSheetsChart,

    -- * SheetsChartProperties
    SheetsChartProperties (..),
    newSheetsChartProperties,

    -- * Size
    Size (..),
    newSize,

    -- * SlideProperties
    SlideProperties (..),
    newSlideProperties,

    -- * SolidFill
    SolidFill (..),
    newSolidFill,

    -- * StretchedPictureFill
    StretchedPictureFill (..),
    newStretchedPictureFill,

    -- * SubstringMatchCriteria
    SubstringMatchCriteria (..),
    newSubstringMatchCriteria,

    -- * Table
    Table (..),
    newTable,

    -- * TableBorderCell
    TableBorderCell (..),
    newTableBorderCell,

    -- * TableBorderFill
    TableBorderFill (..),
    newTableBorderFill,

    -- * TableBorderProperties
    TableBorderProperties (..),
    newTableBorderProperties,

    -- * TableBorderRow
    TableBorderRow (..),
    newTableBorderRow,

    -- * TableCell
    TableCell (..),
    newTableCell,

    -- * TableCellBackgroundFill
    TableCellBackgroundFill (..),
    newTableCellBackgroundFill,

    -- * TableCellLocation
    TableCellLocation (..),
    newTableCellLocation,

    -- * TableCellProperties
    TableCellProperties (..),
    newTableCellProperties,

    -- * TableColumnProperties
    TableColumnProperties (..),
    newTableColumnProperties,

    -- * TableRange
    TableRange (..),
    newTableRange,

    -- * TableRow
    TableRow (..),
    newTableRow,

    -- * TableRowProperties
    TableRowProperties (..),
    newTableRowProperties,

    -- * TextContent
    TextContent (..),
    newTextContent,

    -- * TextContent_Lists
    TextContent_Lists (..),
    newTextContent_Lists,

    -- * TextElement
    TextElement (..),
    newTextElement,

    -- * TextRun
    TextRun (..),
    newTextRun,

    -- * TextStyle
    TextStyle (..),
    newTextStyle,

    -- * ThemeColorPair
    ThemeColorPair (..),
    newThemeColorPair,

    -- * Thumbnail
    Thumbnail (..),
    newThumbnail,

    -- * UngroupObjectsRequest
    UngroupObjectsRequest (..),
    newUngroupObjectsRequest,

    -- * UnmergeTableCellsRequest
    UnmergeTableCellsRequest (..),
    newUnmergeTableCellsRequest,

    -- * UpdateImagePropertiesRequest
    UpdateImagePropertiesRequest (..),
    newUpdateImagePropertiesRequest,

    -- * UpdateLineCategoryRequest
    UpdateLineCategoryRequest (..),
    newUpdateLineCategoryRequest,

    -- * UpdateLinePropertiesRequest
    UpdateLinePropertiesRequest (..),
    newUpdateLinePropertiesRequest,

    -- * UpdatePageElementAltTextRequest
    UpdatePageElementAltTextRequest (..),
    newUpdatePageElementAltTextRequest,

    -- * UpdatePageElementTransformRequest
    UpdatePageElementTransformRequest (..),
    newUpdatePageElementTransformRequest,

    -- * UpdatePageElementsZOrderRequest
    UpdatePageElementsZOrderRequest (..),
    newUpdatePageElementsZOrderRequest,

    -- * UpdatePagePropertiesRequest
    UpdatePagePropertiesRequest (..),
    newUpdatePagePropertiesRequest,

    -- * UpdateParagraphStyleRequest
    UpdateParagraphStyleRequest (..),
    newUpdateParagraphStyleRequest,

    -- * UpdateShapePropertiesRequest
    UpdateShapePropertiesRequest (..),
    newUpdateShapePropertiesRequest,

    -- * UpdateSlidePropertiesRequest
    UpdateSlidePropertiesRequest (..),
    newUpdateSlidePropertiesRequest,

    -- * UpdateSlidesPositionRequest
    UpdateSlidesPositionRequest (..),
    newUpdateSlidesPositionRequest,

    -- * UpdateTableBorderPropertiesRequest
    UpdateTableBorderPropertiesRequest (..),
    newUpdateTableBorderPropertiesRequest,

    -- * UpdateTableCellPropertiesRequest
    UpdateTableCellPropertiesRequest (..),
    newUpdateTableCellPropertiesRequest,

    -- * UpdateTableColumnPropertiesRequest
    UpdateTableColumnPropertiesRequest (..),
    newUpdateTableColumnPropertiesRequest,

    -- * UpdateTableRowPropertiesRequest
    UpdateTableRowPropertiesRequest (..),
    newUpdateTableRowPropertiesRequest,

    -- * UpdateTextStyleRequest
    UpdateTextStyleRequest (..),
    newUpdateTextStyleRequest,

    -- * UpdateVideoPropertiesRequest
    UpdateVideoPropertiesRequest (..),
    newUpdateVideoPropertiesRequest,

    -- * Video
    Video (..),
    newVideo,

    -- * VideoProperties
    VideoProperties (..),
    newVideoProperties,

    -- * WeightedFontFamily
    WeightedFontFamily (..),
    newWeightedFontFamily,

    -- * WordArt
    WordArt (..),
    newWordArt,

    -- * WriteControl
    WriteControl (..),
    newWriteControl,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Slides.Internal.Sum

-- | AffineTransform uses a 3x3 matrix with an implied last row of [ 0 0 1 ] to transform source coordinates (x,y) into destination coordinates (x\', y\') according to: x\' x = shear/y scale/y translate/y 1 [ 1 ] After transformation, x\' = scale/x * x + shear/x * y + translate/x; y\' = scale/y * y + shear/y * x + translate_y; This message is therefore composed of these six matrix elements.
--
-- /See:/ 'newAffineTransform' smart constructor.
data AffineTransform = AffineTransform
  { -- | The X coordinate scaling element.
    scaleX :: (Core.Maybe Core.Double),
    -- | The Y coordinate scaling element.
    scaleY :: (Core.Maybe Core.Double),
    -- | The X coordinate shearing element.
    shearX :: (Core.Maybe Core.Double),
    -- | The Y coordinate shearing element.
    shearY :: (Core.Maybe Core.Double),
    -- | The X coordinate translation element.
    translateX :: (Core.Maybe Core.Double),
    -- | The Y coordinate translation element.
    translateY :: (Core.Maybe Core.Double),
    -- | The units for translate elements.
    unit :: (Core.Maybe AffineTransform_Unit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AffineTransform' with the minimum fields required to make a request.
newAffineTransform ::
  AffineTransform
newAffineTransform =
  AffineTransform
    { scaleX = Core.Nothing,
      scaleY = Core.Nothing,
      shearX = Core.Nothing,
      shearY = Core.Nothing,
      translateX = Core.Nothing,
      translateY = Core.Nothing,
      unit = Core.Nothing
    }

instance Core.FromJSON AffineTransform where
  parseJSON =
    Core.withObject
      "AffineTransform"
      ( \o ->
          AffineTransform
            Core.<$> (o Core..:? "scaleX")
            Core.<*> (o Core..:? "scaleY")
            Core.<*> (o Core..:? "shearX")
            Core.<*> (o Core..:? "shearY")
            Core.<*> (o Core..:? "translateX")
            Core.<*> (o Core..:? "translateY")
            Core.<*> (o Core..:? "unit")
      )

instance Core.ToJSON AffineTransform where
  toJSON AffineTransform {..} =
    Core.object
      ( Core.catMaybes
          [ ("scaleX" Core..=) Core.<$> scaleX,
            ("scaleY" Core..=) Core.<$> scaleY,
            ("shearX" Core..=) Core.<$> shearX,
            ("shearY" Core..=) Core.<$> shearY,
            ("translateX" Core..=) Core.<$> translateX,
            ("translateY" Core..=) Core.<$> translateY,
            ("unit" Core..=) Core.<$> unit
          ]
      )

-- | A TextElement kind that represents auto text.
--
-- /See:/ 'newAutoText' smart constructor.
data AutoText = AutoText
  { -- | The rendered content of this auto text, if available.
    content :: (Core.Maybe Core.Text),
    -- | The styling applied to this auto text.
    style :: (Core.Maybe TextStyle),
    -- | The type of this auto text.
    type' :: (Core.Maybe AutoText_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoText' with the minimum fields required to make a request.
newAutoText ::
  AutoText
newAutoText =
  AutoText {content = Core.Nothing, style = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AutoText where
  parseJSON =
    Core.withObject
      "AutoText"
      ( \o ->
          AutoText
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "style")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AutoText where
  toJSON AutoText {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("style" Core..=) Core.<$> style,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The autofit properties of a Shape.
--
-- /See:/ 'newAutofit' smart constructor.
data Autofit = Autofit
  { -- | The autofit type of the shape. If the autofit type is AUTOFIT/TYPE/UNSPECIFIED, the autofit type is inherited from a parent placeholder if it exists. The field is automatically set to NONE if a request is made that might affect text fitting within its bounding text box. In this case the font/scale is applied to the font/size and the line/spacing/reduction is applied to the line_spacing. Both properties are also reset to default values.
    autofitType :: (Core.Maybe Autofit_AutofitType),
    -- | The font scale applied to the shape. For shapes with autofit/type NONE or SHAPE/AUTOFIT, this value is the default value of 1. For TEXT/AUTOFIT, this value multiplied by the font/size gives the font size that is rendered in the editor. This property is read-only.
    fontScale :: (Core.Maybe Core.Double),
    -- | The line spacing reduction applied to the shape. For shapes with autofit/type NONE or SHAPE/AUTOFIT, this value is the default value of 0. For TEXT/AUTOFIT, this value subtracted from the line/spacing gives the line spacing that is rendered in the editor. This property is read-only.
    lineSpacingReduction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Autofit' with the minimum fields required to make a request.
newAutofit ::
  Autofit
newAutofit =
  Autofit
    { autofitType = Core.Nothing,
      fontScale = Core.Nothing,
      lineSpacingReduction = Core.Nothing
    }

instance Core.FromJSON Autofit where
  parseJSON =
    Core.withObject
      "Autofit"
      ( \o ->
          Autofit
            Core.<$> (o Core..:? "autofitType")
            Core.<*> (o Core..:? "fontScale")
            Core.<*> (o Core..:? "lineSpacingReduction")
      )

instance Core.ToJSON Autofit where
  toJSON Autofit {..} =
    Core.object
      ( Core.catMaybes
          [ ("autofitType" Core..=) Core.<$> autofitType,
            ("fontScale" Core..=) Core.<$> fontScale,
            ("lineSpacingReduction" Core..=)
              Core.<$> lineSpacingReduction
          ]
      )

-- | Request message for PresentationsService.BatchUpdatePresentation.
--
-- /See:/ 'newBatchUpdatePresentationRequest' smart constructor.
data BatchUpdatePresentationRequest = BatchUpdatePresentationRequest
  { -- | A list of updates to apply to the presentation.
    requests :: (Core.Maybe [Request']),
    -- | Provides control over how write requests are executed.
    writeControl :: (Core.Maybe WriteControl)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePresentationRequest' with the minimum fields required to make a request.
newBatchUpdatePresentationRequest ::
  BatchUpdatePresentationRequest
newBatchUpdatePresentationRequest =
  BatchUpdatePresentationRequest
    { requests = Core.Nothing,
      writeControl = Core.Nothing
    }

instance Core.FromJSON BatchUpdatePresentationRequest where
  parseJSON =
    Core.withObject
      "BatchUpdatePresentationRequest"
      ( \o ->
          BatchUpdatePresentationRequest
            Core.<$> (o Core..:? "requests" Core..!= Core.mempty)
            Core.<*> (o Core..:? "writeControl")
      )

instance Core.ToJSON BatchUpdatePresentationRequest where
  toJSON BatchUpdatePresentationRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("requests" Core..=) Core.<$> requests,
            ("writeControl" Core..=) Core.<$> writeControl
          ]
      )

-- | Response message from a batch update.
--
-- /See:/ 'newBatchUpdatePresentationResponse' smart constructor.
data BatchUpdatePresentationResponse = BatchUpdatePresentationResponse
  { -- | The presentation the updates were applied to.
    presentationId :: (Core.Maybe Core.Text),
    -- | The reply of the updates. This maps 1:1 with the updates, although replies to some requests may be empty.
    replies :: (Core.Maybe [Response]),
    -- | The updated write control after applying the request.
    writeControl :: (Core.Maybe WriteControl)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchUpdatePresentationResponse' with the minimum fields required to make a request.
newBatchUpdatePresentationResponse ::
  BatchUpdatePresentationResponse
newBatchUpdatePresentationResponse =
  BatchUpdatePresentationResponse
    { presentationId = Core.Nothing,
      replies = Core.Nothing,
      writeControl = Core.Nothing
    }

instance
  Core.FromJSON
    BatchUpdatePresentationResponse
  where
  parseJSON =
    Core.withObject
      "BatchUpdatePresentationResponse"
      ( \o ->
          BatchUpdatePresentationResponse
            Core.<$> (o Core..:? "presentationId")
            Core.<*> (o Core..:? "replies" Core..!= Core.mempty)
            Core.<*> (o Core..:? "writeControl")
      )

instance Core.ToJSON BatchUpdatePresentationResponse where
  toJSON BatchUpdatePresentationResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("presentationId" Core..=) Core.<$> presentationId,
            ("replies" Core..=) Core.<$> replies,
            ("writeControl" Core..=) Core.<$> writeControl
          ]
      )

-- | Describes the bullet of a paragraph.
--
-- /See:/ 'newBullet' smart constructor.
data Bullet = Bullet
  { -- | The paragraph specific text style applied to this bullet.
    bulletStyle :: (Core.Maybe TextStyle),
    -- | The rendered bullet glyph for this paragraph.
    glyph :: (Core.Maybe Core.Text),
    -- | The ID of the list this paragraph belongs to.
    listId :: (Core.Maybe Core.Text),
    -- | The nesting level of this paragraph in the list.
    nestingLevel :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bullet' with the minimum fields required to make a request.
newBullet ::
  Bullet
newBullet =
  Bullet
    { bulletStyle = Core.Nothing,
      glyph = Core.Nothing,
      listId = Core.Nothing,
      nestingLevel = Core.Nothing
    }

instance Core.FromJSON Bullet where
  parseJSON =
    Core.withObject
      "Bullet"
      ( \o ->
          Bullet
            Core.<$> (o Core..:? "bulletStyle")
            Core.<*> (o Core..:? "glyph")
            Core.<*> (o Core..:? "listId")
            Core.<*> (o Core..:? "nestingLevel")
      )

instance Core.ToJSON Bullet where
  toJSON Bullet {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletStyle" Core..=) Core.<$> bulletStyle,
            ("glyph" Core..=) Core.<$> glyph,
            ("listId" Core..=) Core.<$> listId,
            ("nestingLevel" Core..=) Core.<$> nestingLevel
          ]
      )

-- | The palette of predefined colors for a page.
--
-- /See:/ 'newColorScheme' smart constructor.
newtype ColorScheme = ColorScheme
  { -- | The ThemeColorType and corresponding concrete color pairs.
    colors :: (Core.Maybe [ThemeColorPair])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColorScheme' with the minimum fields required to make a request.
newColorScheme ::
  ColorScheme
newColorScheme = ColorScheme {colors = Core.Nothing}

instance Core.FromJSON ColorScheme where
  parseJSON =
    Core.withObject
      "ColorScheme"
      ( \o ->
          ColorScheme
            Core.<$> (o Core..:? "colors" Core..!= Core.mempty)
      )

instance Core.ToJSON ColorScheme where
  toJSON ColorScheme {..} =
    Core.object
      (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | A color and position in a gradient band.
--
-- /See:/ 'newColorStop' smart constructor.
data ColorStop = ColorStop
  { -- | The alpha value of this color in the gradient band. Defaults to 1.0, fully opaque.
    alpha :: (Core.Maybe Core.Double),
    -- | The color of the gradient stop.
    color :: (Core.Maybe OpaqueColor),
    -- | The relative position of the color stop in the gradient band measured in percentage. The value should be in the interval [0.0, 1.0].
    position :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColorStop' with the minimum fields required to make a request.
newColorStop ::
  ColorStop
newColorStop =
  ColorStop
    { alpha = Core.Nothing,
      color = Core.Nothing,
      position = Core.Nothing
    }

instance Core.FromJSON ColorStop where
  parseJSON =
    Core.withObject
      "ColorStop"
      ( \o ->
          ColorStop
            Core.<$> (o Core..:? "alpha")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "position")
      )

instance Core.ToJSON ColorStop where
  toJSON ColorStop {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("color" Core..=) Core.<$> color,
            ("position" Core..=) Core.<$> position
          ]
      )

-- | Creates an image.
--
-- /See:/ 'newCreateImageRequest' smart constructor.
data CreateImageRequest = CreateImageRequest
  { -- | The element properties for the image. When the aspect ratio of the provided size does not match the image aspect ratio, the image is scaled and centered with respect to the size in order to maintain aspect ratio. The provided transform is applied after this operation. The PageElementProperties.size property is optional. If you don\'t specify the size, the default size of the image is used. The PageElementProperties.transform property is optional. If you don\'t specify a transform, the image will be placed at the top left corner of the page.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text),
    -- | The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length. The URL itself is saved with the image, and exposed via the Image.source_url field.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateImageRequest' with the minimum fields required to make a request.
newCreateImageRequest ::
  CreateImageRequest
newCreateImageRequest =
  CreateImageRequest
    { elementProperties = Core.Nothing,
      objectId = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON CreateImageRequest where
  parseJSON =
    Core.withObject
      "CreateImageRequest"
      ( \o ->
          CreateImageRequest
            Core.<$> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON CreateImageRequest where
  toJSON CreateImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("objectId" Core..=) Core.<$> objectId,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The result of creating an image.
--
-- /See:/ 'newCreateImageResponse' smart constructor.
newtype CreateImageResponse = CreateImageResponse
  { -- | The object ID of the created image.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateImageResponse' with the minimum fields required to make a request.
newCreateImageResponse ::
  CreateImageResponse
newCreateImageResponse = CreateImageResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateImageResponse where
  parseJSON =
    Core.withObject
      "CreateImageResponse"
      ( \o ->
          CreateImageResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateImageResponse where
  toJSON CreateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates a line.
--
-- /See:/ 'newCreateLineRequest' smart constructor.
data CreateLineRequest = CreateLineRequest
  { -- | The category of the line to be created. The exact line type created is determined based on the category and how it\'s routed to connect to other page elements. If you specify both a @category@ and a @line_category@, the @category@ takes precedence. If you do not specify a value for @category@, but specify a value for @line_category@, then the specified @line_category@ value is used. If you do not specify either, then STRAIGHT is used.
    category :: (Core.Maybe CreateLineRequest_Category),
    -- | The element properties for the line.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | The category of the line to be created. /Deprecated/: use @category@ instead. The exact line type created is determined based on the category and how it\'s routed to connect to other page elements. If you specify both a @category@ and a @line_category@, the @category@ takes precedence.
    lineCategory :: (Core.Maybe CreateLineRequest_LineCategory),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateLineRequest' with the minimum fields required to make a request.
newCreateLineRequest ::
  CreateLineRequest
newCreateLineRequest =
  CreateLineRequest
    { category = Core.Nothing,
      elementProperties = Core.Nothing,
      lineCategory = Core.Nothing,
      objectId = Core.Nothing
    }

instance Core.FromJSON CreateLineRequest where
  parseJSON =
    Core.withObject
      "CreateLineRequest"
      ( \o ->
          CreateLineRequest
            Core.<$> (o Core..:? "category")
            Core.<*> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "lineCategory")
            Core.<*> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateLineRequest where
  toJSON CreateLineRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("lineCategory" Core..=) Core.<$> lineCategory,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | The result of creating a line.
--
-- /See:/ 'newCreateLineResponse' smart constructor.
newtype CreateLineResponse = CreateLineResponse
  { -- | The object ID of the created line.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateLineResponse' with the minimum fields required to make a request.
newCreateLineResponse ::
  CreateLineResponse
newCreateLineResponse = CreateLineResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateLineResponse where
  parseJSON =
    Core.withObject
      "CreateLineResponse"
      ( \o ->
          CreateLineResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateLineResponse where
  toJSON CreateLineResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates bullets for all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.
--
-- /See:/ 'newCreateParagraphBulletsRequest' smart constructor.
data CreateParagraphBulletsRequest = CreateParagraphBulletsRequest
  { -- | The kinds of bullet glyphs to be used. Defaults to the @BULLET_DISC_CIRCLE_SQUARE@ preset.
    bulletPreset :: (Core.Maybe CreateParagraphBulletsRequest_BulletPreset),
    -- | The optional table cell location if the text to be modified is in a table cell. If present, the object_id must refer to a table.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The object ID of the shape or table containing the text to add bullets to.
    objectId :: (Core.Maybe Core.Text),
    -- | The range of text to apply the bullet presets to, based on TextElement indexes.
    textRange :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateParagraphBulletsRequest' with the minimum fields required to make a request.
newCreateParagraphBulletsRequest ::
  CreateParagraphBulletsRequest
newCreateParagraphBulletsRequest =
  CreateParagraphBulletsRequest
    { bulletPreset = Core.Nothing,
      cellLocation = Core.Nothing,
      objectId = Core.Nothing,
      textRange = Core.Nothing
    }

instance Core.FromJSON CreateParagraphBulletsRequest where
  parseJSON =
    Core.withObject
      "CreateParagraphBulletsRequest"
      ( \o ->
          CreateParagraphBulletsRequest
            Core.<$> (o Core..:? "bulletPreset")
            Core.<*> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "textRange")
      )

instance Core.ToJSON CreateParagraphBulletsRequest where
  toJSON CreateParagraphBulletsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bulletPreset" Core..=) Core.<$> bulletPreset,
            ("cellLocation" Core..=) Core.<$> cellLocation,
            ("objectId" Core..=) Core.<$> objectId,
            ("textRange" Core..=) Core.<$> textRange
          ]
      )

-- | Creates a new shape.
--
-- /See:/ 'newCreateShapeRequest' smart constructor.
data CreateShapeRequest = CreateShapeRequest
  { -- | The element properties for the shape.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If empty, a unique identifier will be generated.
    objectId :: (Core.Maybe Core.Text),
    -- | The shape type.
    shapeType :: (Core.Maybe CreateShapeRequest_ShapeType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateShapeRequest' with the minimum fields required to make a request.
newCreateShapeRequest ::
  CreateShapeRequest
newCreateShapeRequest =
  CreateShapeRequest
    { elementProperties = Core.Nothing,
      objectId = Core.Nothing,
      shapeType = Core.Nothing
    }

instance Core.FromJSON CreateShapeRequest where
  parseJSON =
    Core.withObject
      "CreateShapeRequest"
      ( \o ->
          CreateShapeRequest
            Core.<$> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "shapeType")
      )

instance Core.ToJSON CreateShapeRequest where
  toJSON CreateShapeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("objectId" Core..=) Core.<$> objectId,
            ("shapeType" Core..=) Core.<$> shapeType
          ]
      )

-- | The result of creating a shape.
--
-- /See:/ 'newCreateShapeResponse' smart constructor.
newtype CreateShapeResponse = CreateShapeResponse
  { -- | The object ID of the created shape.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateShapeResponse' with the minimum fields required to make a request.
newCreateShapeResponse ::
  CreateShapeResponse
newCreateShapeResponse = CreateShapeResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateShapeResponse where
  parseJSON =
    Core.withObject
      "CreateShapeResponse"
      ( \o ->
          CreateShapeResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateShapeResponse where
  toJSON CreateShapeResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates an embedded Google Sheets chart. NOTE: Chart creation requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, drive.file, or drive OAuth scopes.
--
-- /See:/ 'newCreateSheetsChartRequest' smart constructor.
data CreateSheetsChartRequest = CreateSheetsChartRequest
  { -- | The ID of the specific chart in the Google Sheets spreadsheet.
    chartId :: (Core.Maybe Core.Int32),
    -- | The element properties for the chart. When the aspect ratio of the provided size does not match the chart aspect ratio, the chart is scaled and centered with respect to the size in order to maintain aspect ratio. The provided transform is applied after this operation.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
    linkingMode :: (Core.Maybe CreateSheetsChartRequest_LinkingMode),
    -- | A user-supplied object ID. If specified, the ID must be unique among all pages and page elements in the presentation. The ID should start with a word character [a-zA-Z0-9/] and then followed by any number of the following characters [a-zA-Z0-9/-:]. The length of the ID should not be less than 5 or greater than 50. If empty, a unique identifier will be generated.
    objectId :: (Core.Maybe Core.Text),
    -- | The ID of the Google Sheets spreadsheet that contains the chart. You might need to add a resource key to the HTTP header for a subset of old files. For more information, see <https://developers.google.com/drive/api/v3/resource-keys Access link-shared files using resource keys>.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSheetsChartRequest' with the minimum fields required to make a request.
newCreateSheetsChartRequest ::
  CreateSheetsChartRequest
newCreateSheetsChartRequest =
  CreateSheetsChartRequest
    { chartId = Core.Nothing,
      elementProperties = Core.Nothing,
      linkingMode = Core.Nothing,
      objectId = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance Core.FromJSON CreateSheetsChartRequest where
  parseJSON =
    Core.withObject
      "CreateSheetsChartRequest"
      ( \o ->
          CreateSheetsChartRequest
            Core.<$> (o Core..:? "chartId")
            Core.<*> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "linkingMode")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance Core.ToJSON CreateSheetsChartRequest where
  toJSON CreateSheetsChartRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("linkingMode" Core..=) Core.<$> linkingMode,
            ("objectId" Core..=) Core.<$> objectId,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | The result of creating an embedded Google Sheets chart.
--
-- /See:/ 'newCreateSheetsChartResponse' smart constructor.
newtype CreateSheetsChartResponse = CreateSheetsChartResponse
  { -- | The object ID of the created chart.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSheetsChartResponse' with the minimum fields required to make a request.
newCreateSheetsChartResponse ::
  CreateSheetsChartResponse
newCreateSheetsChartResponse =
  CreateSheetsChartResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateSheetsChartResponse where
  parseJSON =
    Core.withObject
      "CreateSheetsChartResponse"
      ( \o ->
          CreateSheetsChartResponse
            Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateSheetsChartResponse where
  toJSON CreateSheetsChartResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates a new slide.
--
-- /See:/ 'newCreateSlideRequest' smart constructor.
data CreateSlideRequest = CreateSlideRequest
  { -- | The optional zero-based index indicating where to insert the slides. If you don\'t specify an index, the new slide is created at the end.
    insertionIndex :: (Core.Maybe Core.Int32),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text),
    -- | An optional list of object ID mappings from the placeholder(s) on the layout to the placeholder(s) that will be created on the new slide from that specified layout. Can only be used when @slide_layout_reference@ is specified.
    placeholderIdMappings :: (Core.Maybe [LayoutPlaceholderIdMapping]),
    -- | Layout reference of the slide to be inserted, based on the /current master/, which is one of the following: - The master of the previous slide index. - The master of the first slide, if the insertion_index is zero. - The first master in the presentation, if there are no slides. If the LayoutReference is not found in the current master, a 400 bad request error is returned. If you don\'t specify a layout reference, then the new slide will use the predefined layout @BLANK@.
    slideLayoutReference :: (Core.Maybe LayoutReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSlideRequest' with the minimum fields required to make a request.
newCreateSlideRequest ::
  CreateSlideRequest
newCreateSlideRequest =
  CreateSlideRequest
    { insertionIndex = Core.Nothing,
      objectId = Core.Nothing,
      placeholderIdMappings = Core.Nothing,
      slideLayoutReference = Core.Nothing
    }

instance Core.FromJSON CreateSlideRequest where
  parseJSON =
    Core.withObject
      "CreateSlideRequest"
      ( \o ->
          CreateSlideRequest
            Core.<$> (o Core..:? "insertionIndex")
            Core.<*> (o Core..:? "objectId")
            Core.<*> ( o Core..:? "placeholderIdMappings"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "slideLayoutReference")
      )

instance Core.ToJSON CreateSlideRequest where
  toJSON CreateSlideRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertionIndex" Core..=) Core.<$> insertionIndex,
            ("objectId" Core..=) Core.<$> objectId,
            ("placeholderIdMappings" Core..=)
              Core.<$> placeholderIdMappings,
            ("slideLayoutReference" Core..=)
              Core.<$> slideLayoutReference
          ]
      )

-- | The result of creating a slide.
--
-- /See:/ 'newCreateSlideResponse' smart constructor.
newtype CreateSlideResponse = CreateSlideResponse
  { -- | The object ID of the created slide.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateSlideResponse' with the minimum fields required to make a request.
newCreateSlideResponse ::
  CreateSlideResponse
newCreateSlideResponse = CreateSlideResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateSlideResponse where
  parseJSON =
    Core.withObject
      "CreateSlideResponse"
      ( \o ->
          CreateSlideResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateSlideResponse where
  toJSON CreateSlideResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates a new table.
--
-- /See:/ 'newCreateTableRequest' smart constructor.
data CreateTableRequest = CreateTableRequest
  { -- | Number of columns in the table.
    columns :: (Core.Maybe Core.Int32),
    -- | The element properties for the table. The table will be created at the provided size, subject to a minimum size. If no size is provided, the table will be automatically sized. Table transforms must have a scale of 1 and no shear components. If no transform is provided, the table will be centered on the page.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text),
    -- | Number of rows in the table.
    rows :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTableRequest' with the minimum fields required to make a request.
newCreateTableRequest ::
  CreateTableRequest
newCreateTableRequest =
  CreateTableRequest
    { columns = Core.Nothing,
      elementProperties = Core.Nothing,
      objectId = Core.Nothing,
      rows = Core.Nothing
    }

instance Core.FromJSON CreateTableRequest where
  parseJSON =
    Core.withObject
      "CreateTableRequest"
      ( \o ->
          CreateTableRequest
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON CreateTableRequest where
  toJSON CreateTableRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("objectId" Core..=) Core.<$> objectId,
            ("rows" Core..=) Core.<$> rows
          ]
      )

-- | The result of creating a table.
--
-- /See:/ 'newCreateTableResponse' smart constructor.
newtype CreateTableResponse = CreateTableResponse
  { -- | The object ID of the created table.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateTableResponse' with the minimum fields required to make a request.
newCreateTableResponse ::
  CreateTableResponse
newCreateTableResponse = CreateTableResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateTableResponse where
  parseJSON =
    Core.withObject
      "CreateTableResponse"
      ( \o ->
          CreateTableResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateTableResponse where
  toJSON CreateTableResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Creates a video. NOTE: Creating a video from Google Drive requires that the requesting app have at least one of the drive, drive.readonly, or drive.file OAuth scopes.
--
-- /See:/ 'newCreateVideoRequest' smart constructor.
data CreateVideoRequest = CreateVideoRequest
  { -- | The element properties for the video. The PageElementProperties.size property is optional. If you don\'t specify a size, a default size is chosen by the server. The PageElementProperties.transform property is optional. The transform must not have shear components. If you don\'t specify a transform, the video will be placed at the top left corner of the page.
    elementProperties :: (Core.Maybe PageElementProperties),
    -- | The video source\'s unique identifier for this video. e.g. For YouTube video https:\/\/www.youtube.com\/watch?v=7U3axjORYZ0, the ID is 7U3axjORYZ0. For a Google Drive video https:\/\/drive.google.com\/file\/d\/1xCgQLFTJi5/Xl8DgW/lcUYq5e-q6Hi5Q the ID is 1xCgQLFTJi5/Xl8DgW/lcUYq5e-q6Hi5Q. To access a Google Drive video file, you might need to add a resource key to the HTTP header for a subset of old files. For more information, see <https://developers.google.com/drive/api/v3/resource-keys Access link-shared files using resource keys>.
    id :: (Core.Maybe Core.Text),
    -- | A user-supplied object ID. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text),
    -- | The video source.
    source :: (Core.Maybe CreateVideoRequest_Source)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateVideoRequest' with the minimum fields required to make a request.
newCreateVideoRequest ::
  CreateVideoRequest
newCreateVideoRequest =
  CreateVideoRequest
    { elementProperties = Core.Nothing,
      id = Core.Nothing,
      objectId = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON CreateVideoRequest where
  parseJSON =
    Core.withObject
      "CreateVideoRequest"
      ( \o ->
          CreateVideoRequest
            Core.<$> (o Core..:? "elementProperties")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON CreateVideoRequest where
  toJSON CreateVideoRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("elementProperties" Core..=)
              Core.<$> elementProperties,
            ("id" Core..=) Core.<$> id,
            ("objectId" Core..=) Core.<$> objectId,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | The result of creating a video.
--
-- /See:/ 'newCreateVideoResponse' smart constructor.
newtype CreateVideoResponse = CreateVideoResponse
  { -- | The object ID of the created video.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateVideoResponse' with the minimum fields required to make a request.
newCreateVideoResponse ::
  CreateVideoResponse
newCreateVideoResponse = CreateVideoResponse {objectId = Core.Nothing}

instance Core.FromJSON CreateVideoResponse where
  parseJSON =
    Core.withObject
      "CreateVideoResponse"
      ( \o ->
          CreateVideoResponse Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON CreateVideoResponse where
  toJSON CreateVideoResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | The crop properties of an object enclosed in a container. For example, an Image. The crop properties is represented by the offsets of four edges which define a crop rectangle. The offsets are measured in percentage from the corresponding edges of the object\'s original bounding rectangle towards inside, relative to the object\'s original dimensions. - If the offset is in the interval (0, 1), the corresponding edge of crop rectangle is positioned inside of the object\'s original bounding rectangle. - If the offset is negative or greater than 1, the corresponding edge of crop rectangle is positioned outside of the object\'s original bounding rectangle. - If the left edge of the crop rectangle is on the right side of its right edge, the object will be flipped horizontally. - If the top edge of the crop rectangle is below its bottom edge, the object will be flipped vertically. - If all offsets and rotation angle is 0, the object is not cropped. After cropping, the content in the crop rectangle will be stretched
-- to fit its container.
--
-- /See:/ 'newCropProperties' smart constructor.
data CropProperties = CropProperties
  { -- | The rotation angle of the crop window around its center, in radians. Rotation angle is applied after the offset.
    angle :: (Core.Maybe Core.Double),
    -- | The offset specifies the bottom edge of the crop rectangle that is located above the original bounding rectangle bottom edge, relative to the object\'s original height.
    bottomOffset :: (Core.Maybe Core.Double),
    -- | The offset specifies the left edge of the crop rectangle that is located to the right of the original bounding rectangle left edge, relative to the object\'s original width.
    leftOffset :: (Core.Maybe Core.Double),
    -- | The offset specifies the right edge of the crop rectangle that is located to the left of the original bounding rectangle right edge, relative to the object\'s original width.
    rightOffset :: (Core.Maybe Core.Double),
    -- | The offset specifies the top edge of the crop rectangle that is located below the original bounding rectangle top edge, relative to the object\'s original height.
    topOffset :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CropProperties' with the minimum fields required to make a request.
newCropProperties ::
  CropProperties
newCropProperties =
  CropProperties
    { angle = Core.Nothing,
      bottomOffset = Core.Nothing,
      leftOffset = Core.Nothing,
      rightOffset = Core.Nothing,
      topOffset = Core.Nothing
    }

instance Core.FromJSON CropProperties where
  parseJSON =
    Core.withObject
      "CropProperties"
      ( \o ->
          CropProperties
            Core.<$> (o Core..:? "angle")
            Core.<*> (o Core..:? "bottomOffset")
            Core.<*> (o Core..:? "leftOffset")
            Core.<*> (o Core..:? "rightOffset")
            Core.<*> (o Core..:? "topOffset")
      )

instance Core.ToJSON CropProperties where
  toJSON CropProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("angle" Core..=) Core.<$> angle,
            ("bottomOffset" Core..=) Core.<$> bottomOffset,
            ("leftOffset" Core..=) Core.<$> leftOffset,
            ("rightOffset" Core..=) Core.<$> rightOffset,
            ("topOffset" Core..=) Core.<$> topOffset
          ]
      )

-- | Deletes an object, either pages or page elements, from the presentation.
--
-- /See:/ 'newDeleteObjectRequest' smart constructor.
newtype DeleteObjectRequest = DeleteObjectRequest
  { -- | The object ID of the page or page element to delete. If after a delete operation a group contains only 1 or no page elements, the group is also deleted. If a placeholder is deleted on a layout, any empty inheriting placeholders are also deleted.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteObjectRequest' with the minimum fields required to make a request.
newDeleteObjectRequest ::
  DeleteObjectRequest
newDeleteObjectRequest = DeleteObjectRequest {objectId = Core.Nothing}

instance Core.FromJSON DeleteObjectRequest where
  parseJSON =
    Core.withObject
      "DeleteObjectRequest"
      ( \o ->
          DeleteObjectRequest Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON DeleteObjectRequest where
  toJSON DeleteObjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Deletes bullets from all of the paragraphs that overlap with the given text index range. The nesting level of each paragraph will be visually preserved by adding indent to the start of the corresponding paragraph.
--
-- /See:/ 'newDeleteParagraphBulletsRequest' smart constructor.
data DeleteParagraphBulletsRequest = DeleteParagraphBulletsRequest
  { -- | The optional table cell location if the text to be modified is in a table cell. If present, the object_id must refer to a table.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The object ID of the shape or table containing the text to delete bullets from.
    objectId :: (Core.Maybe Core.Text),
    -- | The range of text to delete bullets from, based on TextElement indexes.
    textRange :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteParagraphBulletsRequest' with the minimum fields required to make a request.
newDeleteParagraphBulletsRequest ::
  DeleteParagraphBulletsRequest
newDeleteParagraphBulletsRequest =
  DeleteParagraphBulletsRequest
    { cellLocation = Core.Nothing,
      objectId = Core.Nothing,
      textRange = Core.Nothing
    }

instance Core.FromJSON DeleteParagraphBulletsRequest where
  parseJSON =
    Core.withObject
      "DeleteParagraphBulletsRequest"
      ( \o ->
          DeleteParagraphBulletsRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "textRange")
      )

instance Core.ToJSON DeleteParagraphBulletsRequest where
  toJSON DeleteParagraphBulletsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("objectId" Core..=) Core.<$> objectId,
            ("textRange" Core..=) Core.<$> textRange
          ]
      )

-- | Deletes a column from a table.
--
-- /See:/ 'newDeleteTableColumnRequest' smart constructor.
data DeleteTableColumnRequest = DeleteTableColumnRequest
  { -- | The reference table cell location from which a column will be deleted. The column this cell spans will be deleted. If this is a merged cell, multiple columns will be deleted. If no columns remain in the table after this deletion, the whole table is deleted.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The table to delete columns from.
    tableObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTableColumnRequest' with the minimum fields required to make a request.
newDeleteTableColumnRequest ::
  DeleteTableColumnRequest
newDeleteTableColumnRequest =
  DeleteTableColumnRequest
    { cellLocation = Core.Nothing,
      tableObjectId = Core.Nothing
    }

instance Core.FromJSON DeleteTableColumnRequest where
  parseJSON =
    Core.withObject
      "DeleteTableColumnRequest"
      ( \o ->
          DeleteTableColumnRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "tableObjectId")
      )

instance Core.ToJSON DeleteTableColumnRequest where
  toJSON DeleteTableColumnRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("tableObjectId" Core..=) Core.<$> tableObjectId
          ]
      )

-- | Deletes a row from a table.
--
-- /See:/ 'newDeleteTableRowRequest' smart constructor.
data DeleteTableRowRequest = DeleteTableRowRequest
  { -- | The reference table cell location from which a row will be deleted. The row this cell spans will be deleted. If this is a merged cell, multiple rows will be deleted. If no rows remain in the table after this deletion, the whole table is deleted.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The table to delete rows from.
    tableObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTableRowRequest' with the minimum fields required to make a request.
newDeleteTableRowRequest ::
  DeleteTableRowRequest
newDeleteTableRowRequest =
  DeleteTableRowRequest
    { cellLocation = Core.Nothing,
      tableObjectId = Core.Nothing
    }

instance Core.FromJSON DeleteTableRowRequest where
  parseJSON =
    Core.withObject
      "DeleteTableRowRequest"
      ( \o ->
          DeleteTableRowRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "tableObjectId")
      )

instance Core.ToJSON DeleteTableRowRequest where
  toJSON DeleteTableRowRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("tableObjectId" Core..=) Core.<$> tableObjectId
          ]
      )

-- | Deletes text from a shape or a table cell.
--
-- /See:/ 'newDeleteTextRequest' smart constructor.
data DeleteTextRequest = DeleteTextRequest
  { -- | The optional table cell location if the text is to be deleted from a table cell. If present, the object_id must refer to a table.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The object ID of the shape or table from which the text will be deleted.
    objectId :: (Core.Maybe Core.Text),
    -- | The range of text to delete, based on TextElement indexes. There is always an implicit newline character at the end of a shape\'s or table cell\'s text that cannot be deleted. @Range.Type.ALL@ will use the correct bounds, but care must be taken when specifying explicit bounds for range types @FROM_START_INDEX@ and @FIXED_RANGE@. For example, if the text is \"ABC\", followed by an implicit newline, then the maximum value is 2 for @text_range.start_index@ and 3 for @text_range.end_index@. Deleting text that crosses a paragraph boundary may result in changes to paragraph styles and lists as the two paragraphs are merged. Ranges that include only one code unit of a surrogate pair are expanded to include both code units.
    textRange :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteTextRequest' with the minimum fields required to make a request.
newDeleteTextRequest ::
  DeleteTextRequest
newDeleteTextRequest =
  DeleteTextRequest
    { cellLocation = Core.Nothing,
      objectId = Core.Nothing,
      textRange = Core.Nothing
    }

instance Core.FromJSON DeleteTextRequest where
  parseJSON =
    Core.withObject
      "DeleteTextRequest"
      ( \o ->
          DeleteTextRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "textRange")
      )

instance Core.ToJSON DeleteTextRequest where
  toJSON DeleteTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("objectId" Core..=) Core.<$> objectId,
            ("textRange" Core..=) Core.<$> textRange
          ]
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
newDimension = Dimension {magnitude = Core.Nothing, unit = Core.Nothing}

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

-- | Duplicates a slide or page element. When duplicating a slide, the duplicate slide will be created immediately following the specified slide. When duplicating a page element, the duplicate will be placed on the same page at the same position as the original.
--
-- /See:/ 'newDuplicateObjectRequest' smart constructor.
data DuplicateObjectRequest = DuplicateObjectRequest
  { -- | The ID of the object to duplicate.
    objectId :: (Core.Maybe Core.Text),
    -- | The object being duplicated may contain other objects, for example when duplicating a slide or a group page element. This map defines how the IDs of duplicated objects are generated: the keys are the IDs of the original objects and its values are the IDs that will be assigned to the corresponding duplicate object. The ID of the source object\'s duplicate may be specified in this map as well, using the same value of the @object_id@ field as a key and the newly desired ID as the value. All keys must correspond to existing IDs in the presentation. All values must be unique in the presentation and must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the new ID must not be less than 5 or greater than 50. If any IDs of source objects are omitted from the map, a new random ID will be assigned. If the map is empty or unset, all duplicate objects will receive a new
    -- random ID.
    objectIds :: (Core.Maybe DuplicateObjectRequest_ObjectIds)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateObjectRequest' with the minimum fields required to make a request.
newDuplicateObjectRequest ::
  DuplicateObjectRequest
newDuplicateObjectRequest =
  DuplicateObjectRequest {objectId = Core.Nothing, objectIds = Core.Nothing}

instance Core.FromJSON DuplicateObjectRequest where
  parseJSON =
    Core.withObject
      "DuplicateObjectRequest"
      ( \o ->
          DuplicateObjectRequest
            Core.<$> (o Core..:? "objectId")
            Core.<*> (o Core..:? "objectIds")
      )

instance Core.ToJSON DuplicateObjectRequest where
  toJSON DuplicateObjectRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectId" Core..=) Core.<$> objectId,
            ("objectIds" Core..=) Core.<$> objectIds
          ]
      )

-- | The object being duplicated may contain other objects, for example when duplicating a slide or a group page element. This map defines how the IDs of duplicated objects are generated: the keys are the IDs of the original objects and its values are the IDs that will be assigned to the corresponding duplicate object. The ID of the source object\'s duplicate may be specified in this map as well, using the same value of the @object_id@ field as a key and the newly desired ID as the value. All keys must correspond to existing IDs in the presentation. All values must be unique in the presentation and must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the new ID must not be less than 5 or greater than 50. If any IDs of source objects are omitted from the map, a new random ID will be assigned. If the map is empty or unset, all duplicate objects will receive a new
-- random ID.
--
-- /See:/ 'newDuplicateObjectRequest_ObjectIds' smart constructor.
newtype DuplicateObjectRequest_ObjectIds = DuplicateObjectRequest_ObjectIds
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateObjectRequest_ObjectIds' with the minimum fields required to make a request.
newDuplicateObjectRequest_ObjectIds ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DuplicateObjectRequest_ObjectIds
newDuplicateObjectRequest_ObjectIds additional =
  DuplicateObjectRequest_ObjectIds {additional = additional}

instance
  Core.FromJSON
    DuplicateObjectRequest_ObjectIds
  where
  parseJSON =
    Core.withObject
      "DuplicateObjectRequest_ObjectIds"
      ( \o ->
          DuplicateObjectRequest_ObjectIds
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DuplicateObjectRequest_ObjectIds where
  toJSON DuplicateObjectRequest_ObjectIds {..} =
    Core.toJSON additional

-- | The response of duplicating an object.
--
-- /See:/ 'newDuplicateObjectResponse' smart constructor.
newtype DuplicateObjectResponse = DuplicateObjectResponse
  { -- | The ID of the new duplicate object.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DuplicateObjectResponse' with the minimum fields required to make a request.
newDuplicateObjectResponse ::
  DuplicateObjectResponse
newDuplicateObjectResponse = DuplicateObjectResponse {objectId = Core.Nothing}

instance Core.FromJSON DuplicateObjectResponse where
  parseJSON =
    Core.withObject
      "DuplicateObjectResponse"
      ( \o ->
          DuplicateObjectResponse
            Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON DuplicateObjectResponse where
  toJSON DuplicateObjectResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | A PageElement kind representing a joined collection of PageElements.
--
-- /See:/ 'newGroup' smart constructor.
newtype Group = Group
  { -- | The collection of elements in the group. The minimum size of a group is 2.
    children :: (Core.Maybe [PageElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
newGroup ::
  Group
newGroup = Group {children = Core.Nothing}

instance Core.FromJSON Group where
  parseJSON =
    Core.withObject
      "Group"
      ( \o ->
          Group
            Core.<$> (o Core..:? "children" Core..!= Core.mempty)
      )

instance Core.ToJSON Group where
  toJSON Group {..} =
    Core.object
      ( Core.catMaybes
          [("children" Core..=) Core.<$> children]
      )

-- | Groups objects to create an object group. For example, groups PageElements to create a Group on the same page as all the children.
--
-- /See:/ 'newGroupObjectsRequest' smart constructor.
data GroupObjectsRequest = GroupObjectsRequest
  { -- | The object IDs of the objects to group. Only page elements can be grouped. There should be at least two page elements on the same page that are not already in another group. Some page elements, such as videos, tables and placeholders cannot be grouped.
    childrenObjectIds :: (Core.Maybe [Core.Text]),
    -- | A user-supplied object ID for the group to be created. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    groupObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupObjectsRequest' with the minimum fields required to make a request.
newGroupObjectsRequest ::
  GroupObjectsRequest
newGroupObjectsRequest =
  GroupObjectsRequest
    { childrenObjectIds = Core.Nothing,
      groupObjectId = Core.Nothing
    }

instance Core.FromJSON GroupObjectsRequest where
  parseJSON =
    Core.withObject
      "GroupObjectsRequest"
      ( \o ->
          GroupObjectsRequest
            Core.<$> (o Core..:? "childrenObjectIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "groupObjectId")
      )

instance Core.ToJSON GroupObjectsRequest where
  toJSON GroupObjectsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("childrenObjectIds" Core..=)
              Core.<$> childrenObjectIds,
            ("groupObjectId" Core..=) Core.<$> groupObjectId
          ]
      )

-- | The result of grouping objects.
--
-- /See:/ 'newGroupObjectsResponse' smart constructor.
newtype GroupObjectsResponse = GroupObjectsResponse
  { -- | The object ID of the created group.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupObjectsResponse' with the minimum fields required to make a request.
newGroupObjectsResponse ::
  GroupObjectsResponse
newGroupObjectsResponse = GroupObjectsResponse {objectId = Core.Nothing}

instance Core.FromJSON GroupObjectsResponse where
  parseJSON =
    Core.withObject
      "GroupObjectsResponse"
      ( \o ->
          GroupObjectsResponse
            Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON GroupObjectsResponse where
  toJSON GroupObjectsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | A PageElement kind representing an image.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | An URL to an image with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation\'s sharing settings change.
    contentUrl :: (Core.Maybe Core.Text),
    -- | The properties of the image.
    imageProperties :: (Core.Maybe ImageProperties),
    -- | Placeholders are page elements that inherit from corresponding placeholders on layouts and masters. If set, the image is a placeholder image and any inherited properties can be resolved by looking at the parent placeholder identified by the Placeholder.parent/object/id field.
    placeholder :: (Core.Maybe Placeholder),
    -- | The source URL is the URL used to insert the image. The source URL can be empty.
    sourceUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage =
  Image
    { contentUrl = Core.Nothing,
      imageProperties = Core.Nothing,
      placeholder = Core.Nothing,
      sourceUrl = Core.Nothing
    }

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "contentUrl")
            Core.<*> (o Core..:? "imageProperties")
            Core.<*> (o Core..:? "placeholder")
            Core.<*> (o Core..:? "sourceUrl")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentUrl" Core..=) Core.<$> contentUrl,
            ("imageProperties" Core..=) Core.<$> imageProperties,
            ("placeholder" Core..=) Core.<$> placeholder,
            ("sourceUrl" Core..=) Core.<$> sourceUrl
          ]
      )

-- | The properties of the Image.
--
-- /See:/ 'newImageProperties' smart constructor.
data ImageProperties = ImageProperties
  { -- | The brightness effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect. This property is read-only.
    brightness :: (Core.Maybe Core.Double),
    -- | The contrast effect of the image. The value should be in the interval [-1.0, 1.0], where 0 means no effect. This property is read-only.
    contrast :: (Core.Maybe Core.Double),
    -- | The crop properties of the image. If not set, the image is not cropped. This property is read-only.
    cropProperties :: (Core.Maybe CropProperties),
    -- | The hyperlink destination of the image. If unset, there is no link.
    link :: (Core.Maybe Link),
    -- | The outline of the image. If not set, the image has no outline.
    outline :: (Core.Maybe Outline),
    -- | The recolor effect of the image. If not set, the image is not recolored. This property is read-only.
    recolor :: (Core.Maybe Recolor),
    -- | The shadow of the image. If not set, the image has no shadow. This property is read-only.
    shadow :: (Core.Maybe Shadow),
    -- | The transparency effect of the image. The value should be in the interval [0.0, 1.0], where 0 means no effect and 1 means completely transparent. This property is read-only.
    transparency :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
newImageProperties ::
  ImageProperties
newImageProperties =
  ImageProperties
    { brightness = Core.Nothing,
      contrast = Core.Nothing,
      cropProperties = Core.Nothing,
      link = Core.Nothing,
      outline = Core.Nothing,
      recolor = Core.Nothing,
      shadow = Core.Nothing,
      transparency = Core.Nothing
    }

instance Core.FromJSON ImageProperties where
  parseJSON =
    Core.withObject
      "ImageProperties"
      ( \o ->
          ImageProperties
            Core.<$> (o Core..:? "brightness")
            Core.<*> (o Core..:? "contrast")
            Core.<*> (o Core..:? "cropProperties")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "outline")
            Core.<*> (o Core..:? "recolor")
            Core.<*> (o Core..:? "shadow")
            Core.<*> (o Core..:? "transparency")
      )

instance Core.ToJSON ImageProperties where
  toJSON ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("brightness" Core..=) Core.<$> brightness,
            ("contrast" Core..=) Core.<$> contrast,
            ("cropProperties" Core..=) Core.<$> cropProperties,
            ("link" Core..=) Core.<$> link,
            ("outline" Core..=) Core.<$> outline,
            ("recolor" Core..=) Core.<$> recolor,
            ("shadow" Core..=) Core.<$> shadow,
            ("transparency" Core..=) Core.<$> transparency
          ]
      )

-- | Inserts columns into a table. Other columns in the table will be resized to fit the new column.
--
-- /See:/ 'newInsertTableColumnsRequest' smart constructor.
data InsertTableColumnsRequest = InsertTableColumnsRequest
  { -- | The reference table cell location from which columns will be inserted. A new column will be inserted to the left (or right) of the column where the reference cell is. If the reference cell is a merged cell, a new column will be inserted to the left (or right) of the merged cell.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | Whether to insert new columns to the right of the reference cell location. - @True@: insert to the right. - @False@: insert to the left.
    insertRight :: (Core.Maybe Core.Bool),
    -- | The number of columns to be inserted. Maximum 20 per request.
    number :: (Core.Maybe Core.Int32),
    -- | The table to insert columns into.
    tableObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTableColumnsRequest' with the minimum fields required to make a request.
newInsertTableColumnsRequest ::
  InsertTableColumnsRequest
newInsertTableColumnsRequest =
  InsertTableColumnsRequest
    { cellLocation = Core.Nothing,
      insertRight = Core.Nothing,
      number = Core.Nothing,
      tableObjectId = Core.Nothing
    }

instance Core.FromJSON InsertTableColumnsRequest where
  parseJSON =
    Core.withObject
      "InsertTableColumnsRequest"
      ( \o ->
          InsertTableColumnsRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "insertRight")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "tableObjectId")
      )

instance Core.ToJSON InsertTableColumnsRequest where
  toJSON InsertTableColumnsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("insertRight" Core..=) Core.<$> insertRight,
            ("number" Core..=) Core.<$> number,
            ("tableObjectId" Core..=) Core.<$> tableObjectId
          ]
      )

-- | Inserts rows into a table.
--
-- /See:/ 'newInsertTableRowsRequest' smart constructor.
data InsertTableRowsRequest = InsertTableRowsRequest
  { -- | The reference table cell location from which rows will be inserted. A new row will be inserted above (or below) the row where the reference cell is. If the reference cell is a merged cell, a new row will be inserted above (or below) the merged cell.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | Whether to insert new rows below the reference cell location. - @True@: insert below the cell. - @False@: insert above the cell.
    insertBelow :: (Core.Maybe Core.Bool),
    -- | The number of rows to be inserted. Maximum 20 per request.
    number :: (Core.Maybe Core.Int32),
    -- | The table to insert rows into.
    tableObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTableRowsRequest' with the minimum fields required to make a request.
newInsertTableRowsRequest ::
  InsertTableRowsRequest
newInsertTableRowsRequest =
  InsertTableRowsRequest
    { cellLocation = Core.Nothing,
      insertBelow = Core.Nothing,
      number = Core.Nothing,
      tableObjectId = Core.Nothing
    }

instance Core.FromJSON InsertTableRowsRequest where
  parseJSON =
    Core.withObject
      "InsertTableRowsRequest"
      ( \o ->
          InsertTableRowsRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "insertBelow")
            Core.<*> (o Core..:? "number")
            Core.<*> (o Core..:? "tableObjectId")
      )

instance Core.ToJSON InsertTableRowsRequest where
  toJSON InsertTableRowsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("insertBelow" Core..=) Core.<$> insertBelow,
            ("number" Core..=) Core.<$> number,
            ("tableObjectId" Core..=) Core.<$> tableObjectId
          ]
      )

-- | Inserts text into a shape or a table cell.
--
-- /See:/ 'newInsertTextRequest' smart constructor.
data InsertTextRequest = InsertTextRequest
  { -- | The optional table cell location if the text is to be inserted into a table cell. If present, the object_id must refer to a table.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The index where the text will be inserted, in Unicode code units, based on TextElement indexes. The index is zero-based and is computed from the start of the string. The index may be adjusted to prevent insertions inside Unicode grapheme clusters. In these cases, the text will be inserted immediately after the grapheme cluster.
    insertionIndex :: (Core.Maybe Core.Int32),
    -- | The object ID of the shape or table where the text will be inserted.
    objectId :: (Core.Maybe Core.Text),
    -- | The text to be inserted. Inserting a newline character will implicitly create a new ParagraphMarker at that index. The paragraph style of the new paragraph will be copied from the paragraph at the current insertion index, including lists and bullets. Text styles for inserted text will be determined automatically, generally preserving the styling of neighboring text. In most cases, the text will be added to the TextRun that exists at the insertion index. Some control characters (U+0000-U+0008, U+000C-U+001F) and characters from the Unicode Basic Multilingual Plane Private Use Area (U+E000-U+F8FF) will be stripped out of the inserted text.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InsertTextRequest' with the minimum fields required to make a request.
newInsertTextRequest ::
  InsertTextRequest
newInsertTextRequest =
  InsertTextRequest
    { cellLocation = Core.Nothing,
      insertionIndex = Core.Nothing,
      objectId = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON InsertTextRequest where
  parseJSON =
    Core.withObject
      "InsertTextRequest"
      ( \o ->
          InsertTextRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "insertionIndex")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON InsertTextRequest where
  toJSON InsertTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("insertionIndex" Core..=) Core.<$> insertionIndex,
            ("objectId" Core..=) Core.<$> objectId,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | The user-specified ID mapping for a placeholder that will be created on a slide from a specified layout.
--
-- /See:/ 'newLayoutPlaceholderIdMapping' smart constructor.
data LayoutPlaceholderIdMapping = LayoutPlaceholderIdMapping
  { -- | The placeholder on a layout that will be applied to a slide. Only type and index are needed. For example, a predefined @TITLE_AND_BODY@ layout may usually have a TITLE placeholder with index 0 and a BODY placeholder with index 0.
    layoutPlaceholder :: (Core.Maybe Placeholder),
    -- | The object ID of the placeholder on a layout that will be applied to a slide.
    layoutPlaceholderObjectId :: (Core.Maybe Core.Text),
    -- | A user-supplied object ID for the placeholder identified above that to be created onto a slide. If you specify an ID, it must be unique among all pages and page elements in the presentation. The ID must start with an alphanumeric character or an underscore (matches regex @[a-zA-Z0-9_]@); remaining characters may include those as well as a hyphen or colon (matches regex @[a-zA-Z0-9_-:]@). The length of the ID must not be less than 5 or greater than 50. If you don\'t specify an ID, a unique one is generated.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LayoutPlaceholderIdMapping' with the minimum fields required to make a request.
newLayoutPlaceholderIdMapping ::
  LayoutPlaceholderIdMapping
newLayoutPlaceholderIdMapping =
  LayoutPlaceholderIdMapping
    { layoutPlaceholder = Core.Nothing,
      layoutPlaceholderObjectId = Core.Nothing,
      objectId = Core.Nothing
    }

instance Core.FromJSON LayoutPlaceholderIdMapping where
  parseJSON =
    Core.withObject
      "LayoutPlaceholderIdMapping"
      ( \o ->
          LayoutPlaceholderIdMapping
            Core.<$> (o Core..:? "layoutPlaceholder")
            Core.<*> (o Core..:? "layoutPlaceholderObjectId")
            Core.<*> (o Core..:? "objectId")
      )

instance Core.ToJSON LayoutPlaceholderIdMapping where
  toJSON LayoutPlaceholderIdMapping {..} =
    Core.object
      ( Core.catMaybes
          [ ("layoutPlaceholder" Core..=)
              Core.<$> layoutPlaceholder,
            ("layoutPlaceholderObjectId" Core..=)
              Core.<$> layoutPlaceholderObjectId,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | The properties of Page are only relevant for pages with page_type LAYOUT.
--
-- /See:/ 'newLayoutProperties' smart constructor.
data LayoutProperties = LayoutProperties
  { -- | The human-readable name of the layout.
    displayName :: (Core.Maybe Core.Text),
    -- | The object ID of the master that this layout is based on.
    masterObjectId :: (Core.Maybe Core.Text),
    -- | The name of the layout.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LayoutProperties' with the minimum fields required to make a request.
newLayoutProperties ::
  LayoutProperties
newLayoutProperties =
  LayoutProperties
    { displayName = Core.Nothing,
      masterObjectId = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON LayoutProperties where
  parseJSON =
    Core.withObject
      "LayoutProperties"
      ( \o ->
          LayoutProperties
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "masterObjectId")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON LayoutProperties where
  toJSON LayoutProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("masterObjectId" Core..=) Core.<$> masterObjectId,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Slide layout reference. This may reference either: - A predefined layout - One of the layouts in the presentation.
--
-- /See:/ 'newLayoutReference' smart constructor.
data LayoutReference = LayoutReference
  { -- | Layout ID: the object ID of one of the layouts in the presentation.
    layoutId :: (Core.Maybe Core.Text),
    -- | Predefined layout.
    predefinedLayout :: (Core.Maybe LayoutReference_PredefinedLayout)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LayoutReference' with the minimum fields required to make a request.
newLayoutReference ::
  LayoutReference
newLayoutReference =
  LayoutReference {layoutId = Core.Nothing, predefinedLayout = Core.Nothing}

instance Core.FromJSON LayoutReference where
  parseJSON =
    Core.withObject
      "LayoutReference"
      ( \o ->
          LayoutReference
            Core.<$> (o Core..:? "layoutId")
            Core.<*> (o Core..:? "predefinedLayout")
      )

instance Core.ToJSON LayoutReference where
  toJSON LayoutReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("layoutId" Core..=) Core.<$> layoutId,
            ("predefinedLayout" Core..=)
              Core.<$> predefinedLayout
          ]
      )

-- | A PageElement kind representing a non-connector line, straight connector, curved connector, or bent connector.
--
-- /See:/ 'newLine' smart constructor.
data Line = Line
  { -- | The category of the line. It matches the @category@ specified in CreateLineRequest, and can be updated with UpdateLineCategoryRequest.
    lineCategory :: (Core.Maybe Line_LineCategory),
    -- | The properties of the line.
    lineProperties :: (Core.Maybe LineProperties),
    -- | The type of the line.
    lineType :: (Core.Maybe Line_LineType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Line' with the minimum fields required to make a request.
newLine ::
  Line
newLine =
  Line
    { lineCategory = Core.Nothing,
      lineProperties = Core.Nothing,
      lineType = Core.Nothing
    }

instance Core.FromJSON Line where
  parseJSON =
    Core.withObject
      "Line"
      ( \o ->
          Line
            Core.<$> (o Core..:? "lineCategory")
            Core.<*> (o Core..:? "lineProperties")
            Core.<*> (o Core..:? "lineType")
      )

instance Core.ToJSON Line where
  toJSON Line {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineCategory" Core..=) Core.<$> lineCategory,
            ("lineProperties" Core..=) Core.<$> lineProperties,
            ("lineType" Core..=) Core.<$> lineType
          ]
      )

-- | The properties for one end of a Line connection.
--
-- /See:/ 'newLineConnection' smart constructor.
data LineConnection = LineConnection
  { -- | The object ID of the connected page element. Some page elements, such as groups, tables, and lines do not have connection sites and therefore cannot be connected to a connector line.
    connectedObjectId :: (Core.Maybe Core.Text),
    -- | The index of the connection site on the connected page element. In most cases, it corresponds to the predefined connection site index from the ECMA-376 standard. More information on those connection sites can be found in the description of the \"cnx\" attribute in section 20.1.9.9 and Annex H. \"Predefined DrawingML Shape and Text Geometries\" of \"Office Open XML File Formats-Fundamentals and Markup Language Reference\", part 1 of [ECMA-376 5th edition] (http:\/\/www.ecma-international.org\/publications\/standards\/Ecma-376.htm). The position of each connection site can also be viewed from Slides editor.
    connectionSiteIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LineConnection' with the minimum fields required to make a request.
newLineConnection ::
  LineConnection
newLineConnection =
  LineConnection
    { connectedObjectId = Core.Nothing,
      connectionSiteIndex = Core.Nothing
    }

instance Core.FromJSON LineConnection where
  parseJSON =
    Core.withObject
      "LineConnection"
      ( \o ->
          LineConnection
            Core.<$> (o Core..:? "connectedObjectId")
            Core.<*> (o Core..:? "connectionSiteIndex")
      )

instance Core.ToJSON LineConnection where
  toJSON LineConnection {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectedObjectId" Core..=)
              Core.<$> connectedObjectId,
            ("connectionSiteIndex" Core..=)
              Core.<$> connectionSiteIndex
          ]
      )

-- | The fill of the line.
--
-- /See:/ 'newLineFill' smart constructor.
newtype LineFill = LineFill
  { -- | Solid color fill.
    solidFill :: (Core.Maybe SolidFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LineFill' with the minimum fields required to make a request.
newLineFill ::
  LineFill
newLineFill = LineFill {solidFill = Core.Nothing}

instance Core.FromJSON LineFill where
  parseJSON =
    Core.withObject
      "LineFill"
      (\o -> LineFill Core.<$> (o Core..:? "solidFill"))

instance Core.ToJSON LineFill where
  toJSON LineFill {..} =
    Core.object
      ( Core.catMaybes
          [("solidFill" Core..=) Core.<$> solidFill]
      )

-- | The properties of the Line. When unset, these fields default to values that match the appearance of new lines created in the Slides editor.
--
-- /See:/ 'newLineProperties' smart constructor.
data LineProperties = LineProperties
  { -- | The dash style of the line.
    dashStyle :: (Core.Maybe LineProperties_DashStyle),
    -- | The style of the arrow at the end of the line.
    endArrow :: (Core.Maybe LineProperties_EndArrow),
    -- | The connection at the end of the line. If unset, there is no connection. Only lines with a Type indicating it is a \"connector\" can have an @end_connection@.
    endConnection :: (Core.Maybe LineConnection),
    -- | The fill of the line. The default line fill matches the defaults for new lines created in the Slides editor.
    lineFill :: (Core.Maybe LineFill),
    -- | The hyperlink destination of the line. If unset, there is no link.
    link :: (Core.Maybe Link),
    -- | The style of the arrow at the beginning of the line.
    startArrow :: (Core.Maybe LineProperties_StartArrow),
    -- | The connection at the beginning of the line. If unset, there is no connection. Only lines with a Type indicating it is a \"connector\" can have a @start_connection@.
    startConnection :: (Core.Maybe LineConnection),
    -- | The thickness of the line.
    weight :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LineProperties' with the minimum fields required to make a request.
newLineProperties ::
  LineProperties
newLineProperties =
  LineProperties
    { dashStyle = Core.Nothing,
      endArrow = Core.Nothing,
      endConnection = Core.Nothing,
      lineFill = Core.Nothing,
      link = Core.Nothing,
      startArrow = Core.Nothing,
      startConnection = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON LineProperties where
  parseJSON =
    Core.withObject
      "LineProperties"
      ( \o ->
          LineProperties
            Core.<$> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "endArrow")
            Core.<*> (o Core..:? "endConnection")
            Core.<*> (o Core..:? "lineFill")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "startArrow")
            Core.<*> (o Core..:? "startConnection")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON LineProperties where
  toJSON LineProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("dashStyle" Core..=) Core.<$> dashStyle,
            ("endArrow" Core..=) Core.<$> endArrow,
            ("endConnection" Core..=) Core.<$> endConnection,
            ("lineFill" Core..=) Core.<$> lineFill,
            ("link" Core..=) Core.<$> link,
            ("startArrow" Core..=) Core.<$> startArrow,
            ("startConnection" Core..=) Core.<$> startConnection,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | A hypertext link.
--
-- /See:/ 'newLink' smart constructor.
data Link = Link
  { -- | If set, indicates this is a link to the specific page in this presentation with this ID. A page with this ID may not exist.
    pageObjectId :: (Core.Maybe Core.Text),
    -- | If set, indicates this is a link to a slide in this presentation, addressed by its position.
    relativeLink :: (Core.Maybe Link_RelativeLink),
    -- | If set, indicates this is a link to the slide at this zero-based index in the presentation. There may not be a slide at this index.
    slideIndex :: (Core.Maybe Core.Int32),
    -- | If set, indicates this is a link to the external web page at this URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Link' with the minimum fields required to make a request.
newLink ::
  Link
newLink =
  Link
    { pageObjectId = Core.Nothing,
      relativeLink = Core.Nothing,
      slideIndex = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Link where
  parseJSON =
    Core.withObject
      "Link"
      ( \o ->
          Link
            Core.<$> (o Core..:? "pageObjectId")
            Core.<*> (o Core..:? "relativeLink")
            Core.<*> (o Core..:? "slideIndex")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Link where
  toJSON Link {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageObjectId" Core..=) Core.<$> pageObjectId,
            ("relativeLink" Core..=) Core.<$> relativeLink,
            ("slideIndex" Core..=) Core.<$> slideIndex,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A List describes the look and feel of bullets belonging to paragraphs associated with a list. A paragraph that is part of a list has an implicit reference to that list\'s ID.
--
-- /See:/ 'newList' smart constructor.
data List = List
  { -- | The ID of the list.
    listId :: (Core.Maybe Core.Text),
    -- | A map of nesting levels to the properties of bullets at the associated level. A list has at most nine levels of nesting, so the possible values for the keys of this map are 0 through 8, inclusive.
    nestingLevel :: (Core.Maybe List_NestingLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'List' with the minimum fields required to make a request.
newList ::
  List
newList = List {listId = Core.Nothing, nestingLevel = Core.Nothing}

instance Core.FromJSON List where
  parseJSON =
    Core.withObject
      "List"
      ( \o ->
          List
            Core.<$> (o Core..:? "listId")
            Core.<*> (o Core..:? "nestingLevel")
      )

instance Core.ToJSON List where
  toJSON List {..} =
    Core.object
      ( Core.catMaybes
          [ ("listId" Core..=) Core.<$> listId,
            ("nestingLevel" Core..=) Core.<$> nestingLevel
          ]
      )

-- | A map of nesting levels to the properties of bullets at the associated level. A list has at most nine levels of nesting, so the possible values for the keys of this map are 0 through 8, inclusive.
--
-- /See:/ 'newList_NestingLevel' smart constructor.
newtype List_NestingLevel = List_NestingLevel
  { -- |
    additional :: (Core.HashMap Core.Text NestingLevel)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'List_NestingLevel' with the minimum fields required to make a request.
newList_NestingLevel ::
  -- |  See 'additional'.
  Core.HashMap Core.Text NestingLevel ->
  List_NestingLevel
newList_NestingLevel additional = List_NestingLevel {additional = additional}

instance Core.FromJSON List_NestingLevel where
  parseJSON =
    Core.withObject
      "List_NestingLevel"
      ( \o ->
          List_NestingLevel Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON List_NestingLevel where
  toJSON List_NestingLevel {..} = Core.toJSON additional

-- | The properties of Page that are only relevant for pages with page_type MASTER.
--
-- /See:/ 'newMasterProperties' smart constructor.
newtype MasterProperties = MasterProperties
  { -- | The human-readable name of the master.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MasterProperties' with the minimum fields required to make a request.
newMasterProperties ::
  MasterProperties
newMasterProperties = MasterProperties {displayName = Core.Nothing}

instance Core.FromJSON MasterProperties where
  parseJSON =
    Core.withObject
      "MasterProperties"
      ( \o ->
          MasterProperties Core.<$> (o Core..:? "displayName")
      )

instance Core.ToJSON MasterProperties where
  toJSON MasterProperties {..} =
    Core.object
      ( Core.catMaybes
          [("displayName" Core..=) Core.<$> displayName]
      )

-- | Merges cells in a Table.
--
-- /See:/ 'newMergeTableCellsRequest' smart constructor.
data MergeTableCellsRequest = MergeTableCellsRequest
  { -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The table range specifying which cells of the table to merge. Any text in the cells being merged will be concatenated and stored in the upper-left (\"head\") cell of the range. If the range is non-rectangular (which can occur in some cases where the range covers cells that are already merged), a 400 bad request error is returned.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MergeTableCellsRequest' with the minimum fields required to make a request.
newMergeTableCellsRequest ::
  MergeTableCellsRequest
newMergeTableCellsRequest =
  MergeTableCellsRequest {objectId = Core.Nothing, tableRange = Core.Nothing}

instance Core.FromJSON MergeTableCellsRequest where
  parseJSON =
    Core.withObject
      "MergeTableCellsRequest"
      ( \o ->
          MergeTableCellsRequest
            Core.<$> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tableRange")
      )

instance Core.ToJSON MergeTableCellsRequest where
  toJSON MergeTableCellsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectId" Core..=) Core.<$> objectId,
            ("tableRange" Core..=) Core.<$> tableRange
          ]
      )

-- | Contains properties describing the look and feel of a list bullet at a given level of nesting.
--
-- /See:/ 'newNestingLevel' smart constructor.
newtype NestingLevel = NestingLevel
  { -- | The style of a bullet at this level of nesting.
    bulletStyle :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NestingLevel' with the minimum fields required to make a request.
newNestingLevel ::
  NestingLevel
newNestingLevel = NestingLevel {bulletStyle = Core.Nothing}

instance Core.FromJSON NestingLevel where
  parseJSON =
    Core.withObject
      "NestingLevel"
      ( \o ->
          NestingLevel Core.<$> (o Core..:? "bulletStyle")
      )

instance Core.ToJSON NestingLevel where
  toJSON NestingLevel {..} =
    Core.object
      ( Core.catMaybes
          [("bulletStyle" Core..=) Core.<$> bulletStyle]
      )

-- | The properties of Page that are only relevant for pages with page_type NOTES.
--
-- /See:/ 'newNotesProperties' smart constructor.
newtype NotesProperties = NotesProperties
  { -- | The object ID of the shape on this notes page that contains the speaker notes for the corresponding slide. The actual shape may not always exist on the notes page. Inserting text using this object ID will automatically create the shape. In this case, the actual shape may have different object ID. The @GetPresentation@ or @GetPage@ action will always return the latest object ID.
    speakerNotesObjectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotesProperties' with the minimum fields required to make a request.
newNotesProperties ::
  NotesProperties
newNotesProperties = NotesProperties {speakerNotesObjectId = Core.Nothing}

instance Core.FromJSON NotesProperties where
  parseJSON =
    Core.withObject
      "NotesProperties"
      ( \o ->
          NotesProperties
            Core.<$> (o Core..:? "speakerNotesObjectId")
      )

instance Core.ToJSON NotesProperties where
  toJSON NotesProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("speakerNotesObjectId" Core..=)
              Core.<$> speakerNotesObjectId
          ]
      )

-- | A themeable solid color value.
--
-- /See:/ 'newOpaqueColor' smart constructor.
data OpaqueColor = OpaqueColor
  { -- | An opaque RGB color.
    rgbColor :: (Core.Maybe RgbColor),
    -- | An opaque theme color.
    themeColor :: (Core.Maybe OpaqueColor_ThemeColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OpaqueColor' with the minimum fields required to make a request.
newOpaqueColor ::
  OpaqueColor
newOpaqueColor =
  OpaqueColor {rgbColor = Core.Nothing, themeColor = Core.Nothing}

instance Core.FromJSON OpaqueColor where
  parseJSON =
    Core.withObject
      "OpaqueColor"
      ( \o ->
          OpaqueColor
            Core.<$> (o Core..:? "rgbColor")
            Core.<*> (o Core..:? "themeColor")
      )

instance Core.ToJSON OpaqueColor where
  toJSON OpaqueColor {..} =
    Core.object
      ( Core.catMaybes
          [ ("rgbColor" Core..=) Core.<$> rgbColor,
            ("themeColor" Core..=) Core.<$> themeColor
          ]
      )

-- | A color that can either be fully opaque or fully transparent.
--
-- /See:/ 'newOptionalColor' smart constructor.
newtype OptionalColor = OptionalColor
  { -- | If set, this will be used as an opaque color. If unset, this represents a transparent color.
    opaqueColor :: (Core.Maybe OpaqueColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OptionalColor' with the minimum fields required to make a request.
newOptionalColor ::
  OptionalColor
newOptionalColor = OptionalColor {opaqueColor = Core.Nothing}

instance Core.FromJSON OptionalColor where
  parseJSON =
    Core.withObject
      "OptionalColor"
      ( \o ->
          OptionalColor Core.<$> (o Core..:? "opaqueColor")
      )

instance Core.ToJSON OptionalColor where
  toJSON OptionalColor {..} =
    Core.object
      ( Core.catMaybes
          [("opaqueColor" Core..=) Core.<$> opaqueColor]
      )

-- | The outline of a PageElement. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.
--
-- /See:/ 'newOutline' smart constructor.
data Outline = Outline
  { -- | The dash style of the outline.
    dashStyle :: (Core.Maybe Outline_DashStyle),
    -- | The fill of the outline.
    outlineFill :: (Core.Maybe OutlineFill),
    -- | The outline property state. Updating the outline on a page element will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no outline on a page element, set this field to @NOT_RENDERED@. In this case, any other outline fields set in the same request will be ignored.
    propertyState :: (Core.Maybe Outline_PropertyState),
    -- | The thickness of the outline.
    weight :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Outline' with the minimum fields required to make a request.
newOutline ::
  Outline
newOutline =
  Outline
    { dashStyle = Core.Nothing,
      outlineFill = Core.Nothing,
      propertyState = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON Outline where
  parseJSON =
    Core.withObject
      "Outline"
      ( \o ->
          Outline
            Core.<$> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "outlineFill")
            Core.<*> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON Outline where
  toJSON Outline {..} =
    Core.object
      ( Core.catMaybes
          [ ("dashStyle" Core..=) Core.<$> dashStyle,
            ("outlineFill" Core..=) Core.<$> outlineFill,
            ("propertyState" Core..=) Core.<$> propertyState,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | The fill of the outline.
--
-- /See:/ 'newOutlineFill' smart constructor.
newtype OutlineFill = OutlineFill
  { -- | Solid color fill.
    solidFill :: (Core.Maybe SolidFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutlineFill' with the minimum fields required to make a request.
newOutlineFill ::
  OutlineFill
newOutlineFill = OutlineFill {solidFill = Core.Nothing}

instance Core.FromJSON OutlineFill where
  parseJSON =
    Core.withObject
      "OutlineFill"
      ( \o ->
          OutlineFill Core.<$> (o Core..:? "solidFill")
      )

instance Core.ToJSON OutlineFill where
  toJSON OutlineFill {..} =
    Core.object
      ( Core.catMaybes
          [("solidFill" Core..=) Core.<$> solidFill]
      )

-- | A page in a presentation.
--
-- /See:/ 'newPage' smart constructor.
data Page = Page
  { -- | Layout specific properties. Only set if page_type = LAYOUT.
    layoutProperties :: (Core.Maybe LayoutProperties),
    -- | Master specific properties. Only set if page_type = MASTER.
    masterProperties :: (Core.Maybe MasterProperties),
    -- | Notes specific properties. Only set if page_type = NOTES.
    notesProperties :: (Core.Maybe NotesProperties),
    -- | The object ID for this page. Object IDs used by Page and PageElement share the same namespace.
    objectId :: (Core.Maybe Core.Text),
    -- | The page elements rendered on the page.
    pageElements :: (Core.Maybe [PageElement]),
    -- | The properties of the page.
    pageProperties :: (Core.Maybe PageProperties),
    -- | The type of the page.
    pageType :: (Core.Maybe Page_PageType),
    -- | The revision ID of the presentation containing this page. Can be used in update requests to assert that the presentation revision hasn\'t changed since the last read operation. Only populated if the user has edit access to the presentation. The format of the revision ID may change over time, so it should be treated opaquely. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the presentation has not changed. Conversely, a changed ID (for the same presentation and user) usually means the presentation has been updated; however, a changed ID can also be due to internal factors such as ID format changes.
    revisionId :: (Core.Maybe Core.Text),
    -- | Slide specific properties. Only set if page_type = SLIDE.
    slideProperties :: (Core.Maybe SlideProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
newPage ::
  Page
newPage =
  Page
    { layoutProperties = Core.Nothing,
      masterProperties = Core.Nothing,
      notesProperties = Core.Nothing,
      objectId = Core.Nothing,
      pageElements = Core.Nothing,
      pageProperties = Core.Nothing,
      pageType = Core.Nothing,
      revisionId = Core.Nothing,
      slideProperties = Core.Nothing
    }

instance Core.FromJSON Page where
  parseJSON =
    Core.withObject
      "Page"
      ( \o ->
          Page
            Core.<$> (o Core..:? "layoutProperties")
            Core.<*> (o Core..:? "masterProperties")
            Core.<*> (o Core..:? "notesProperties")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "pageElements" Core..!= Core.mempty)
            Core.<*> (o Core..:? "pageProperties")
            Core.<*> (o Core..:? "pageType")
            Core.<*> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "slideProperties")
      )

instance Core.ToJSON Page where
  toJSON Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("layoutProperties" Core..=)
              Core.<$> layoutProperties,
            ("masterProperties" Core..=)
              Core.<$> masterProperties,
            ("notesProperties" Core..=) Core.<$> notesProperties,
            ("objectId" Core..=) Core.<$> objectId,
            ("pageElements" Core..=) Core.<$> pageElements,
            ("pageProperties" Core..=) Core.<$> pageProperties,
            ("pageType" Core..=) Core.<$> pageType,
            ("revisionId" Core..=) Core.<$> revisionId,
            ("slideProperties" Core..=)
              Core.<$> slideProperties
          ]
      )

-- | The page background fill.
--
-- /See:/ 'newPageBackgroundFill' smart constructor.
data PageBackgroundFill = PageBackgroundFill
  { -- | The background fill property state. Updating the fill on a page will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a page, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
    propertyState :: (Core.Maybe PageBackgroundFill_PropertyState),
    -- | Solid color fill.
    solidFill :: (Core.Maybe SolidFill),
    -- | Stretched picture fill.
    stretchedPictureFill :: (Core.Maybe StretchedPictureFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageBackgroundFill' with the minimum fields required to make a request.
newPageBackgroundFill ::
  PageBackgroundFill
newPageBackgroundFill =
  PageBackgroundFill
    { propertyState = Core.Nothing,
      solidFill = Core.Nothing,
      stretchedPictureFill = Core.Nothing
    }

instance Core.FromJSON PageBackgroundFill where
  parseJSON =
    Core.withObject
      "PageBackgroundFill"
      ( \o ->
          PageBackgroundFill
            Core.<$> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "solidFill")
            Core.<*> (o Core..:? "stretchedPictureFill")
      )

instance Core.ToJSON PageBackgroundFill where
  toJSON PageBackgroundFill {..} =
    Core.object
      ( Core.catMaybes
          [ ("propertyState" Core..=) Core.<$> propertyState,
            ("solidFill" Core..=) Core.<$> solidFill,
            ("stretchedPictureFill" Core..=)
              Core.<$> stretchedPictureFill
          ]
      )

-- | A visual element rendered on a page.
--
-- /See:/ 'newPageElement' smart constructor.
data PageElement = PageElement
  { -- | The description of the page element. Combined with title to display alt text. The field is not supported for Group elements.
    description :: (Core.Maybe Core.Text),
    -- | A collection of page elements joined as a single unit.
    elementGroup :: (Core.Maybe Group),
    -- | An image page element.
    image :: (Core.Maybe Image),
    -- | A line page element.
    line :: (Core.Maybe Line),
    -- | The object ID for this page element. Object IDs used by google.apps.slides.v1.Page and google.apps.slides.v1.PageElement share the same namespace.
    objectId :: (Core.Maybe Core.Text),
    -- | A generic shape.
    shape :: (Core.Maybe Shape),
    -- | A linked chart embedded from Google Sheets. Unlinked charts are represented as images.
    sheetsChart :: (Core.Maybe SheetsChart),
    -- | The size of the page element.
    size :: (Core.Maybe Size),
    -- | A table page element.
    table :: (Core.Maybe Table),
    -- | The title of the page element. Combined with description to display alt text. The field is not supported for Group elements.
    title :: (Core.Maybe Core.Text),
    -- | The transform of the page element. The visual appearance of the page element is determined by its absolute transform. To compute the absolute transform, preconcatenate a page element\'s transform with the transforms of all of its parent groups. If the page element is not in a group, its absolute transform is the same as the value in this field. The initial transform for the newly created Group is always the identity transform.
    transform :: (Core.Maybe AffineTransform),
    -- | A video page element.
    video :: (Core.Maybe Video),
    -- | A word art page element.
    wordArt :: (Core.Maybe WordArt)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageElement' with the minimum fields required to make a request.
newPageElement ::
  PageElement
newPageElement =
  PageElement
    { description = Core.Nothing,
      elementGroup = Core.Nothing,
      image = Core.Nothing,
      line = Core.Nothing,
      objectId = Core.Nothing,
      shape = Core.Nothing,
      sheetsChart = Core.Nothing,
      size = Core.Nothing,
      table = Core.Nothing,
      title = Core.Nothing,
      transform = Core.Nothing,
      video = Core.Nothing,
      wordArt = Core.Nothing
    }

instance Core.FromJSON PageElement where
  parseJSON =
    Core.withObject
      "PageElement"
      ( \o ->
          PageElement
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "elementGroup")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "line")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "shape")
            Core.<*> (o Core..:? "sheetsChart")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "table")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "transform")
            Core.<*> (o Core..:? "video")
            Core.<*> (o Core..:? "wordArt")
      )

instance Core.ToJSON PageElement where
  toJSON PageElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("elementGroup" Core..=) Core.<$> elementGroup,
            ("image" Core..=) Core.<$> image,
            ("line" Core..=) Core.<$> line,
            ("objectId" Core..=) Core.<$> objectId,
            ("shape" Core..=) Core.<$> shape,
            ("sheetsChart" Core..=) Core.<$> sheetsChart,
            ("size" Core..=) Core.<$> size,
            ("table" Core..=) Core.<$> table,
            ("title" Core..=) Core.<$> title,
            ("transform" Core..=) Core.<$> transform,
            ("video" Core..=) Core.<$> video,
            ("wordArt" Core..=) Core.<$> wordArt
          ]
      )

-- | Common properties for a page element. Note: When you initially create a PageElement, the API may modify the values of both @size@ and @transform@, but the visual size will be unchanged.
--
-- /See:/ 'newPageElementProperties' smart constructor.
data PageElementProperties = PageElementProperties
  { -- | The object ID of the page where the element is located.
    pageObjectId :: (Core.Maybe Core.Text),
    -- | The size of the element.
    size :: (Core.Maybe Size),
    -- | The transform for the element.
    transform :: (Core.Maybe AffineTransform)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageElementProperties' with the minimum fields required to make a request.
newPageElementProperties ::
  PageElementProperties
newPageElementProperties =
  PageElementProperties
    { pageObjectId = Core.Nothing,
      size = Core.Nothing,
      transform = Core.Nothing
    }

instance Core.FromJSON PageElementProperties where
  parseJSON =
    Core.withObject
      "PageElementProperties"
      ( \o ->
          PageElementProperties
            Core.<$> (o Core..:? "pageObjectId")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "transform")
      )

instance Core.ToJSON PageElementProperties where
  toJSON PageElementProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageObjectId" Core..=) Core.<$> pageObjectId,
            ("size" Core..=) Core.<$> size,
            ("transform" Core..=) Core.<$> transform
          ]
      )

-- | The properties of the Page. The page will inherit properties from the parent page. Depending on the page type the hierarchy is defined in either SlideProperties or LayoutProperties.
--
-- /See:/ 'newPageProperties' smart constructor.
data PageProperties = PageProperties
  { -- | The color scheme of the page. If unset, the color scheme is inherited from a parent page. If the page has no parent, the color scheme uses a default Slides color scheme, matching the defaults in the Slides editor. Only the concrete colors of the first 12 ThemeColorTypes are editable. In addition, only the color scheme on @Master@ pages can be updated. To update the field, a color scheme containing mappings from all the first 12 ThemeColorTypes to their concrete colors must be provided. Colors for the remaining ThemeColorTypes will be ignored.
    colorScheme :: (Core.Maybe ColorScheme),
    -- | The background fill of the page. If unset, the background fill is inherited from a parent page if it exists. If the page has no parent, then the background fill defaults to the corresponding fill in the Slides editor.
    pageBackgroundFill :: (Core.Maybe PageBackgroundFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageProperties' with the minimum fields required to make a request.
newPageProperties ::
  PageProperties
newPageProperties =
  PageProperties {colorScheme = Core.Nothing, pageBackgroundFill = Core.Nothing}

instance Core.FromJSON PageProperties where
  parseJSON =
    Core.withObject
      "PageProperties"
      ( \o ->
          PageProperties
            Core.<$> (o Core..:? "colorScheme")
            Core.<*> (o Core..:? "pageBackgroundFill")
      )

instance Core.ToJSON PageProperties where
  toJSON PageProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("colorScheme" Core..=) Core.<$> colorScheme,
            ("pageBackgroundFill" Core..=)
              Core.<$> pageBackgroundFill
          ]
      )

-- | A TextElement kind that represents the beginning of a new paragraph.
--
-- /See:/ 'newParagraphMarker' smart constructor.
data ParagraphMarker = ParagraphMarker
  { -- | The bullet for this paragraph. If not present, the paragraph does not belong to a list.
    bullet :: (Core.Maybe Bullet),
    -- | The paragraph\'s style
    style :: (Core.Maybe ParagraphStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphMarker' with the minimum fields required to make a request.
newParagraphMarker ::
  ParagraphMarker
newParagraphMarker =
  ParagraphMarker {bullet = Core.Nothing, style = Core.Nothing}

instance Core.FromJSON ParagraphMarker where
  parseJSON =
    Core.withObject
      "ParagraphMarker"
      ( \o ->
          ParagraphMarker
            Core.<$> (o Core..:? "bullet") Core.<*> (o Core..:? "style")
      )

instance Core.ToJSON ParagraphMarker where
  toJSON ParagraphMarker {..} =
    Core.object
      ( Core.catMaybes
          [ ("bullet" Core..=) Core.<$> bullet,
            ("style" Core..=) Core.<$> style
          ]
      )

-- | Styles that apply to a whole paragraph. If this text is contained in a shape with a parent placeholder, then these paragraph styles may be inherited from the parent. Which paragraph styles are inherited depend on the nesting level of lists: * A paragraph not in a list will inherit its paragraph style from the paragraph at the 0 nesting level of the list inside the parent placeholder. * A paragraph in a list will inherit its paragraph style from the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited paragraph styles are represented as unset fields in this message.
--
-- /See:/ 'newParagraphStyle' smart constructor.
data ParagraphStyle = ParagraphStyle
  { -- | The text alignment for this paragraph.
    alignment :: (Core.Maybe ParagraphStyle_Alignment),
    -- | The text direction of this paragraph. If unset, the value defaults to LEFT/TO/RIGHT since text direction is not inherited.
    direction :: (Core.Maybe ParagraphStyle_Direction),
    -- | The amount indentation for the paragraph on the side that corresponds to the end of the text, based on the current text direction. If unset, the value is inherited from the parent.
    indentEnd :: (Core.Maybe Dimension),
    -- | The amount of indentation for the start of the first line of the paragraph. If unset, the value is inherited from the parent.
    indentFirstLine :: (Core.Maybe Dimension),
    -- | The amount indentation for the paragraph on the side that corresponds to the start of the text, based on the current text direction. If unset, the value is inherited from the parent.
    indentStart :: (Core.Maybe Dimension),
    -- | The amount of space between lines, as a percentage of normal, where normal is represented as 100.0. If unset, the value is inherited from the parent.
    lineSpacing :: (Core.Maybe Core.Double),
    -- | The amount of extra space above the paragraph. If unset, the value is inherited from the parent.
    spaceAbove :: (Core.Maybe Dimension),
    -- | The amount of extra space below the paragraph. If unset, the value is inherited from the parent.
    spaceBelow :: (Core.Maybe Dimension),
    -- | The spacing mode for the paragraph.
    spacingMode :: (Core.Maybe ParagraphStyle_SpacingMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParagraphStyle' with the minimum fields required to make a request.
newParagraphStyle ::
  ParagraphStyle
newParagraphStyle =
  ParagraphStyle
    { alignment = Core.Nothing,
      direction = Core.Nothing,
      indentEnd = Core.Nothing,
      indentFirstLine = Core.Nothing,
      indentStart = Core.Nothing,
      lineSpacing = Core.Nothing,
      spaceAbove = Core.Nothing,
      spaceBelow = Core.Nothing,
      spacingMode = Core.Nothing
    }

instance Core.FromJSON ParagraphStyle where
  parseJSON =
    Core.withObject
      "ParagraphStyle"
      ( \o ->
          ParagraphStyle
            Core.<$> (o Core..:? "alignment")
            Core.<*> (o Core..:? "direction")
            Core.<*> (o Core..:? "indentEnd")
            Core.<*> (o Core..:? "indentFirstLine")
            Core.<*> (o Core..:? "indentStart")
            Core.<*> (o Core..:? "lineSpacing")
            Core.<*> (o Core..:? "spaceAbove")
            Core.<*> (o Core..:? "spaceBelow")
            Core.<*> (o Core..:? "spacingMode")
      )

instance Core.ToJSON ParagraphStyle where
  toJSON ParagraphStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignment" Core..=) Core.<$> alignment,
            ("direction" Core..=) Core.<$> direction,
            ("indentEnd" Core..=) Core.<$> indentEnd,
            ("indentFirstLine" Core..=) Core.<$> indentFirstLine,
            ("indentStart" Core..=) Core.<$> indentStart,
            ("lineSpacing" Core..=) Core.<$> lineSpacing,
            ("spaceAbove" Core..=) Core.<$> spaceAbove,
            ("spaceBelow" Core..=) Core.<$> spaceBelow,
            ("spacingMode" Core..=) Core.<$> spacingMode
          ]
      )

-- | The placeholder information that uniquely identifies a placeholder shape.
--
-- /See:/ 'newPlaceholder' smart constructor.
data Placeholder = Placeholder
  { -- | The index of the placeholder. If the same placeholder types are present in the same page, they would have different index values.
    index :: (Core.Maybe Core.Int32),
    -- | The object ID of this shape\'s parent placeholder. If unset, the parent placeholder shape does not exist, so the shape does not inherit properties from any other shape.
    parentObjectId :: (Core.Maybe Core.Text),
    -- | The type of the placeholder.
    type' :: (Core.Maybe Placeholder_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Placeholder' with the minimum fields required to make a request.
newPlaceholder ::
  Placeholder
newPlaceholder =
  Placeholder
    { index = Core.Nothing,
      parentObjectId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Placeholder where
  parseJSON =
    Core.withObject
      "Placeholder"
      ( \o ->
          Placeholder
            Core.<$> (o Core..:? "index")
            Core.<*> (o Core..:? "parentObjectId")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Placeholder where
  toJSON Placeholder {..} =
    Core.object
      ( Core.catMaybes
          [ ("index" Core..=) Core.<$> index,
            ("parentObjectId" Core..=) Core.<$> parentObjectId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A Google Slides presentation.
--
-- /See:/ 'newPresentation' smart constructor.
data Presentation = Presentation
  { -- | The layouts in the presentation. A layout is a template that determines how content is arranged and styled on the slides that inherit from that layout.
    layouts :: (Core.Maybe [Page]),
    -- | The locale of the presentation, as an IETF BCP 47 language tag.
    locale :: (Core.Maybe Core.Text),
    -- | The slide masters in the presentation. A slide master contains all common page elements and the common properties for a set of layouts. They serve three purposes: - Placeholder shapes on a master contain the default text styles and shape properties of all placeholder shapes on pages that use that master. - The master page properties define the common page properties inherited by its layouts. - Any other shapes on the master slide appear on all slides using that master, regardless of their layout.
    masters :: (Core.Maybe [Page]),
    -- | The notes master in the presentation. It serves three purposes: - Placeholder shapes on a notes master contain the default text styles and shape properties of all placeholder shapes on notes pages. Specifically, a @SLIDE_IMAGE@ placeholder shape contains the slide thumbnail, and a @BODY@ placeholder shape contains the speaker notes. - The notes master page properties define the common page properties inherited by all notes pages. - Any other shapes on the notes master appear on all notes pages. The notes master is read-only.
    notesMaster :: (Core.Maybe Page),
    -- | The size of pages in the presentation.
    pageSize :: (Core.Maybe Size),
    -- | The ID of the presentation.
    presentationId :: (Core.Maybe Core.Text),
    -- | The revision ID of the presentation. Can be used in update requests to assert that the presentation revision hasn\'t changed since the last read operation. Only populated if the user has edit access to the presentation. The format of the revision ID may change over time, so it should be treated opaquely. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the presentation has not changed. Conversely, a changed ID (for the same presentation and user) usually means the presentation has been updated; however, a changed ID can also be due to internal factors such as ID format changes.
    revisionId :: (Core.Maybe Core.Text),
    -- | The slides in the presentation. A slide inherits properties from a slide layout.
    slides :: (Core.Maybe [Page]),
    -- | The title of the presentation.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Presentation' with the minimum fields required to make a request.
newPresentation ::
  Presentation
newPresentation =
  Presentation
    { layouts = Core.Nothing,
      locale = Core.Nothing,
      masters = Core.Nothing,
      notesMaster = Core.Nothing,
      pageSize = Core.Nothing,
      presentationId = Core.Nothing,
      revisionId = Core.Nothing,
      slides = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Presentation where
  parseJSON =
    Core.withObject
      "Presentation"
      ( \o ->
          Presentation
            Core.<$> (o Core..:? "layouts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "masters" Core..!= Core.mempty)
            Core.<*> (o Core..:? "notesMaster")
            Core.<*> (o Core..:? "pageSize")
            Core.<*> (o Core..:? "presentationId")
            Core.<*> (o Core..:? "revisionId")
            Core.<*> (o Core..:? "slides" Core..!= Core.mempty)
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Presentation where
  toJSON Presentation {..} =
    Core.object
      ( Core.catMaybes
          [ ("layouts" Core..=) Core.<$> layouts,
            ("locale" Core..=) Core.<$> locale,
            ("masters" Core..=) Core.<$> masters,
            ("notesMaster" Core..=) Core.<$> notesMaster,
            ("pageSize" Core..=) Core.<$> pageSize,
            ("presentationId" Core..=) Core.<$> presentationId,
            ("revisionId" Core..=) Core.<$> revisionId,
            ("slides" Core..=) Core.<$> slides,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Specifies a contiguous range of an indexed collection, such as characters in text.
--
-- /See:/ 'newRange' smart constructor.
data Range = Range
  { -- | The optional zero-based index of the end of the collection. Required for @FIXED_RANGE@ ranges.
    endIndex :: (Core.Maybe Core.Int32),
    -- | The optional zero-based index of the beginning of the collection. Required for @FIXED_RANGE@ and @FROM_START_INDEX@ ranges.
    startIndex :: (Core.Maybe Core.Int32),
    -- | The type of range.
    type' :: (Core.Maybe Range_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
newRange ::
  Range
newRange =
  Range
    { endIndex = Core.Nothing,
      startIndex = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Range where
  parseJSON =
    Core.withObject
      "Range"
      ( \o ->
          Range
            Core.<$> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Range where
  toJSON Range {..} =
    Core.object
      ( Core.catMaybes
          [ ("endIndex" Core..=) Core.<$> endIndex,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A recolor effect applied on an image.
--
-- /See:/ 'newRecolor' smart constructor.
data Recolor = Recolor
  { -- | The name of the recolor effect. The name is determined from the @recolor_stops@ by matching the gradient against the colors in the page\'s current color scheme. This property is read-only.
    name :: (Core.Maybe Recolor_Name),
    -- | The recolor effect is represented by a gradient, which is a list of color stops. The colors in the gradient will replace the corresponding colors at the same position in the color palette and apply to the image. This property is read-only.
    recolorStops :: (Core.Maybe [ColorStop])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Recolor' with the minimum fields required to make a request.
newRecolor ::
  Recolor
newRecolor = Recolor {name = Core.Nothing, recolorStops = Core.Nothing}

instance Core.FromJSON Recolor where
  parseJSON =
    Core.withObject
      "Recolor"
      ( \o ->
          Recolor
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "recolorStops" Core..!= Core.mempty)
      )

instance Core.ToJSON Recolor where
  toJSON Recolor {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("recolorStops" Core..=) Core.<$> recolorStops
          ]
      )

-- | Refreshes an embedded Google Sheets chart by replacing it with the latest version of the chart from Google Sheets. NOTE: Refreshing charts requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.
--
-- /See:/ 'newRefreshSheetsChartRequest' smart constructor.
newtype RefreshSheetsChartRequest = RefreshSheetsChartRequest
  { -- | The object ID of the chart to refresh.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RefreshSheetsChartRequest' with the minimum fields required to make a request.
newRefreshSheetsChartRequest ::
  RefreshSheetsChartRequest
newRefreshSheetsChartRequest =
  RefreshSheetsChartRequest {objectId = Core.Nothing}

instance Core.FromJSON RefreshSheetsChartRequest where
  parseJSON =
    Core.withObject
      "RefreshSheetsChartRequest"
      ( \o ->
          RefreshSheetsChartRequest
            Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON RefreshSheetsChartRequest where
  toJSON RefreshSheetsChartRequest {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | Replaces all shapes that match the given criteria with the provided image. The images replacing the shapes are rectangular after being inserted into the presentation and do not take on the forms of the shapes.
--
-- /See:/ 'newReplaceAllShapesWithImageRequest' smart constructor.
data ReplaceAllShapesWithImageRequest = ReplaceAllShapesWithImageRequest
  { -- | If set, this request will replace all of the shapes that contain the given text.
    containsText :: (Core.Maybe SubstringMatchCriteria),
    -- | The image replace method. If you specify both a @replace_method@ and an @image_replace_method@, the @image_replace_method@ takes precedence. If you do not specify a value for @image_replace_method@, but specify a value for @replace_method@, then the specified @replace_method@ value is used. If you do not specify either, then CENTER_INSIDE is used.
    imageReplaceMethod :: (Core.Maybe ReplaceAllShapesWithImageRequest_ImageReplaceMethod),
    -- | The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length. The URL itself is saved with the image, and exposed via the Image.source_url field.
    imageUrl :: (Core.Maybe Core.Text),
    -- | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn\'t exist in the presentation.
    pageObjectIds :: (Core.Maybe [Core.Text]),
    -- | The replace method. /Deprecated/: use @image_replace_method@ instead. If you specify both a @replace_method@ and an @image_replace_method@, the @image_replace_method@ takes precedence.
    replaceMethod :: (Core.Maybe ReplaceAllShapesWithImageRequest_ReplaceMethod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllShapesWithImageRequest' with the minimum fields required to make a request.
newReplaceAllShapesWithImageRequest ::
  ReplaceAllShapesWithImageRequest
newReplaceAllShapesWithImageRequest =
  ReplaceAllShapesWithImageRequest
    { containsText = Core.Nothing,
      imageReplaceMethod = Core.Nothing,
      imageUrl = Core.Nothing,
      pageObjectIds = Core.Nothing,
      replaceMethod = Core.Nothing
    }

instance
  Core.FromJSON
    ReplaceAllShapesWithImageRequest
  where
  parseJSON =
    Core.withObject
      "ReplaceAllShapesWithImageRequest"
      ( \o ->
          ReplaceAllShapesWithImageRequest
            Core.<$> (o Core..:? "containsText")
            Core.<*> (o Core..:? "imageReplaceMethod")
            Core.<*> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "pageObjectIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "replaceMethod")
      )

instance Core.ToJSON ReplaceAllShapesWithImageRequest where
  toJSON ReplaceAllShapesWithImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("containsText" Core..=) Core.<$> containsText,
            ("imageReplaceMethod" Core..=)
              Core.<$> imageReplaceMethod,
            ("imageUrl" Core..=) Core.<$> imageUrl,
            ("pageObjectIds" Core..=) Core.<$> pageObjectIds,
            ("replaceMethod" Core..=) Core.<$> replaceMethod
          ]
      )

-- | The result of replacing shapes with an image.
--
-- /See:/ 'newReplaceAllShapesWithImageResponse' smart constructor.
newtype ReplaceAllShapesWithImageResponse = ReplaceAllShapesWithImageResponse
  { -- | The number of shapes replaced with images.
    occurrencesChanged :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllShapesWithImageResponse' with the minimum fields required to make a request.
newReplaceAllShapesWithImageResponse ::
  ReplaceAllShapesWithImageResponse
newReplaceAllShapesWithImageResponse =
  ReplaceAllShapesWithImageResponse {occurrencesChanged = Core.Nothing}

instance
  Core.FromJSON
    ReplaceAllShapesWithImageResponse
  where
  parseJSON =
    Core.withObject
      "ReplaceAllShapesWithImageResponse"
      ( \o ->
          ReplaceAllShapesWithImageResponse
            Core.<$> (o Core..:? "occurrencesChanged")
      )

instance
  Core.ToJSON
    ReplaceAllShapesWithImageResponse
  where
  toJSON ReplaceAllShapesWithImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("occurrencesChanged" Core..=)
              Core.<$> occurrencesChanged
          ]
      )

-- | Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape. NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.
--
-- /See:/ 'newReplaceAllShapesWithSheetsChartRequest' smart constructor.
data ReplaceAllShapesWithSheetsChartRequest = ReplaceAllShapesWithSheetsChartRequest
  { -- | The ID of the specific chart in the Google Sheets spreadsheet.
    chartId :: (Core.Maybe Core.Int32),
    -- | The criteria that the shapes must match in order to be replaced. The request will replace all of the shapes that contain the given text.
    containsText :: (Core.Maybe SubstringMatchCriteria),
    -- | The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
    linkingMode :: (Core.Maybe ReplaceAllShapesWithSheetsChartRequest_LinkingMode),
    -- | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn\'t exist in the presentation.
    pageObjectIds :: (Core.Maybe [Core.Text]),
    -- | The ID of the Google Sheets spreadsheet that contains the chart.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllShapesWithSheetsChartRequest' with the minimum fields required to make a request.
newReplaceAllShapesWithSheetsChartRequest ::
  ReplaceAllShapesWithSheetsChartRequest
newReplaceAllShapesWithSheetsChartRequest =
  ReplaceAllShapesWithSheetsChartRequest
    { chartId = Core.Nothing,
      containsText = Core.Nothing,
      linkingMode = Core.Nothing,
      pageObjectIds = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance
  Core.FromJSON
    ReplaceAllShapesWithSheetsChartRequest
  where
  parseJSON =
    Core.withObject
      "ReplaceAllShapesWithSheetsChartRequest"
      ( \o ->
          ReplaceAllShapesWithSheetsChartRequest
            Core.<$> (o Core..:? "chartId")
            Core.<*> (o Core..:? "containsText")
            Core.<*> (o Core..:? "linkingMode")
            Core.<*> (o Core..:? "pageObjectIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance
  Core.ToJSON
    ReplaceAllShapesWithSheetsChartRequest
  where
  toJSON ReplaceAllShapesWithSheetsChartRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("containsText" Core..=) Core.<$> containsText,
            ("linkingMode" Core..=) Core.<$> linkingMode,
            ("pageObjectIds" Core..=) Core.<$> pageObjectIds,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | The result of replacing shapes with a Google Sheets chart.
--
-- /See:/ 'newReplaceAllShapesWithSheetsChartResponse' smart constructor.
newtype ReplaceAllShapesWithSheetsChartResponse = ReplaceAllShapesWithSheetsChartResponse
  { -- | The number of shapes replaced with charts.
    occurrencesChanged :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllShapesWithSheetsChartResponse' with the minimum fields required to make a request.
newReplaceAllShapesWithSheetsChartResponse ::
  ReplaceAllShapesWithSheetsChartResponse
newReplaceAllShapesWithSheetsChartResponse =
  ReplaceAllShapesWithSheetsChartResponse {occurrencesChanged = Core.Nothing}

instance
  Core.FromJSON
    ReplaceAllShapesWithSheetsChartResponse
  where
  parseJSON =
    Core.withObject
      "ReplaceAllShapesWithSheetsChartResponse"
      ( \o ->
          ReplaceAllShapesWithSheetsChartResponse
            Core.<$> (o Core..:? "occurrencesChanged")
      )

instance
  Core.ToJSON
    ReplaceAllShapesWithSheetsChartResponse
  where
  toJSON ReplaceAllShapesWithSheetsChartResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("occurrencesChanged" Core..=)
              Core.<$> occurrencesChanged
          ]
      )

-- | Replaces all instances of text matching a criteria with replace text.
--
-- /See:/ 'newReplaceAllTextRequest' smart constructor.
data ReplaceAllTextRequest = ReplaceAllTextRequest
  { -- | Finds text in a shape matching this substring.
    containsText :: (Core.Maybe SubstringMatchCriteria),
    -- | If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes master, or if a page with that object ID doesn\'t exist in the presentation.
    pageObjectIds :: (Core.Maybe [Core.Text]),
    -- | The text that will replace the matched text.
    replaceText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceAllTextRequest' with the minimum fields required to make a request.
newReplaceAllTextRequest ::
  ReplaceAllTextRequest
newReplaceAllTextRequest =
  ReplaceAllTextRequest
    { containsText = Core.Nothing,
      pageObjectIds = Core.Nothing,
      replaceText = Core.Nothing
    }

instance Core.FromJSON ReplaceAllTextRequest where
  parseJSON =
    Core.withObject
      "ReplaceAllTextRequest"
      ( \o ->
          ReplaceAllTextRequest
            Core.<$> (o Core..:? "containsText")
            Core.<*> (o Core..:? "pageObjectIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "replaceText")
      )

instance Core.ToJSON ReplaceAllTextRequest where
  toJSON ReplaceAllTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("containsText" Core..=) Core.<$> containsText,
            ("pageObjectIds" Core..=) Core.<$> pageObjectIds,
            ("replaceText" Core..=) Core.<$> replaceText
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
          ReplaceAllTextResponse
            Core.<$> (o Core..:? "occurrencesChanged")
      )

instance Core.ToJSON ReplaceAllTextResponse where
  toJSON ReplaceAllTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("occurrencesChanged" Core..=)
              Core.<$> occurrencesChanged
          ]
      )

-- | Replaces an existing image with a new image. Replacing an image removes some image effects from the existing image.
--
-- /See:/ 'newReplaceImageRequest' smart constructor.
data ReplaceImageRequest = ReplaceImageRequest
  { -- | The ID of the existing image that will be replaced.
    imageObjectId :: (Core.Maybe Core.Text),
    -- | The replacement method.
    imageReplaceMethod :: (Core.Maybe ReplaceImageRequest_ImageReplaceMethod),
    -- | The image URL. The image is fetched once at insertion time and a copy is stored for display inside the presentation. Images must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length. The URL itself is saved with the image, and exposed via the Image.source_url field.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplaceImageRequest' with the minimum fields required to make a request.
newReplaceImageRequest ::
  ReplaceImageRequest
newReplaceImageRequest =
  ReplaceImageRequest
    { imageObjectId = Core.Nothing,
      imageReplaceMethod = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON ReplaceImageRequest where
  parseJSON =
    Core.withObject
      "ReplaceImageRequest"
      ( \o ->
          ReplaceImageRequest
            Core.<$> (o Core..:? "imageObjectId")
            Core.<*> (o Core..:? "imageReplaceMethod")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ReplaceImageRequest where
  toJSON ReplaceImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageObjectId" Core..=) Core.<$> imageObjectId,
            ("imageReplaceMethod" Core..=)
              Core.<$> imageReplaceMethod,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A single kind of update to apply to a presentation.
--
-- /See:/ 'newRequest' smart constructor.
data Request' = Request'
  { -- | Creates an image.
    createImage :: (Core.Maybe CreateImageRequest),
    -- | Creates a line.
    createLine :: (Core.Maybe CreateLineRequest),
    -- | Creates bullets for paragraphs.
    createParagraphBullets :: (Core.Maybe CreateParagraphBulletsRequest),
    -- | Creates a new shape.
    createShape :: (Core.Maybe CreateShapeRequest),
    -- | Creates an embedded Google Sheets chart.
    createSheetsChart :: (Core.Maybe CreateSheetsChartRequest),
    -- | Creates a new slide.
    createSlide :: (Core.Maybe CreateSlideRequest),
    -- | Creates a new table.
    createTable :: (Core.Maybe CreateTableRequest),
    -- | Creates a video.
    createVideo :: (Core.Maybe CreateVideoRequest),
    -- | Deletes a page or page element from the presentation.
    deleteObject :: (Core.Maybe DeleteObjectRequest),
    -- | Deletes bullets from paragraphs.
    deleteParagraphBullets :: (Core.Maybe DeleteParagraphBulletsRequest),
    -- | Deletes a column from a table.
    deleteTableColumn :: (Core.Maybe DeleteTableColumnRequest),
    -- | Deletes a row from a table.
    deleteTableRow :: (Core.Maybe DeleteTableRowRequest),
    -- | Deletes text from a shape or a table cell.
    deleteText :: (Core.Maybe DeleteTextRequest),
    -- | Duplicates a slide or page element.
    duplicateObject :: (Core.Maybe DuplicateObjectRequest),
    -- | Groups objects, such as page elements.
    groupObjects :: (Core.Maybe GroupObjectsRequest),
    -- | Inserts columns into a table.
    insertTableColumns :: (Core.Maybe InsertTableColumnsRequest),
    -- | Inserts rows into a table.
    insertTableRows :: (Core.Maybe InsertTableRowsRequest),
    -- | Inserts text into a shape or table cell.
    insertText :: (Core.Maybe InsertTextRequest),
    -- | Merges cells in a Table.
    mergeTableCells :: (Core.Maybe MergeTableCellsRequest),
    -- | Refreshes a Google Sheets chart.
    refreshSheetsChart :: (Core.Maybe RefreshSheetsChartRequest),
    -- | Replaces all shapes matching some criteria with an image.
    replaceAllShapesWithImage :: (Core.Maybe ReplaceAllShapesWithImageRequest),
    -- | Replaces all shapes matching some criteria with a Google Sheets chart.
    replaceAllShapesWithSheetsChart :: (Core.Maybe ReplaceAllShapesWithSheetsChartRequest),
    -- | Replaces all instances of specified text.
    replaceAllText :: (Core.Maybe ReplaceAllTextRequest),
    -- | Replaces an existing image with a new image.
    replaceImage :: (Core.Maybe ReplaceImageRequest),
    -- | Reroutes a line such that it\'s connected at the two closest connection sites on the connected page elements.
    rerouteLine :: (Core.Maybe RerouteLineRequest),
    -- | Ungroups objects, such as groups.
    ungroupObjects :: (Core.Maybe UngroupObjectsRequest),
    -- | Unmerges cells in a Table.
    unmergeTableCells :: (Core.Maybe UnmergeTableCellsRequest),
    -- | Updates the properties of an Image.
    updateImageProperties :: (Core.Maybe UpdateImagePropertiesRequest),
    -- | Updates the category of a line.
    updateLineCategory :: (Core.Maybe UpdateLineCategoryRequest),
    -- | Updates the properties of a Line.
    updateLineProperties :: (Core.Maybe UpdateLinePropertiesRequest),
    -- | Updates the alt text title and\/or description of a page element.
    updatePageElementAltText :: (Core.Maybe UpdatePageElementAltTextRequest),
    -- | Updates the transform of a page element.
    updatePageElementTransform :: (Core.Maybe UpdatePageElementTransformRequest),
    -- | Updates the Z-order of page elements.
    updatePageElementsZOrder :: (Core.Maybe UpdatePageElementsZOrderRequest),
    -- | Updates the properties of a Page.
    updatePageProperties :: (Core.Maybe UpdatePagePropertiesRequest),
    -- | Updates the styling of paragraphs within a Shape or Table.
    updateParagraphStyle :: (Core.Maybe UpdateParagraphStyleRequest),
    -- | Updates the properties of a Shape.
    updateShapeProperties :: (Core.Maybe UpdateShapePropertiesRequest),
    -- | Updates the properties of a Slide
    updateSlideProperties :: (Core.Maybe UpdateSlidePropertiesRequest),
    -- | Updates the position of a set of slides in the presentation.
    updateSlidesPosition :: (Core.Maybe UpdateSlidesPositionRequest),
    -- | Updates the properties of the table borders in a Table.
    updateTableBorderProperties :: (Core.Maybe UpdateTableBorderPropertiesRequest),
    -- | Updates the properties of a TableCell.
    updateTableCellProperties :: (Core.Maybe UpdateTableCellPropertiesRequest),
    -- | Updates the properties of a Table column.
    updateTableColumnProperties :: (Core.Maybe UpdateTableColumnPropertiesRequest),
    -- | Updates the properties of a Table row.
    updateTableRowProperties :: (Core.Maybe UpdateTableRowPropertiesRequest),
    -- | Updates the styling of text within a Shape or Table.
    updateTextStyle :: (Core.Maybe UpdateTextStyleRequest),
    -- | Updates the properties of a Video.
    updateVideoProperties :: (Core.Maybe UpdateVideoPropertiesRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Request' with the minimum fields required to make a request.
newRequest ::
  Request'
newRequest =
  Request'
    { createImage = Core.Nothing,
      createLine = Core.Nothing,
      createParagraphBullets = Core.Nothing,
      createShape = Core.Nothing,
      createSheetsChart = Core.Nothing,
      createSlide = Core.Nothing,
      createTable = Core.Nothing,
      createVideo = Core.Nothing,
      deleteObject = Core.Nothing,
      deleteParagraphBullets = Core.Nothing,
      deleteTableColumn = Core.Nothing,
      deleteTableRow = Core.Nothing,
      deleteText = Core.Nothing,
      duplicateObject = Core.Nothing,
      groupObjects = Core.Nothing,
      insertTableColumns = Core.Nothing,
      insertTableRows = Core.Nothing,
      insertText = Core.Nothing,
      mergeTableCells = Core.Nothing,
      refreshSheetsChart = Core.Nothing,
      replaceAllShapesWithImage = Core.Nothing,
      replaceAllShapesWithSheetsChart = Core.Nothing,
      replaceAllText = Core.Nothing,
      replaceImage = Core.Nothing,
      rerouteLine = Core.Nothing,
      ungroupObjects = Core.Nothing,
      unmergeTableCells = Core.Nothing,
      updateImageProperties = Core.Nothing,
      updateLineCategory = Core.Nothing,
      updateLineProperties = Core.Nothing,
      updatePageElementAltText = Core.Nothing,
      updatePageElementTransform = Core.Nothing,
      updatePageElementsZOrder = Core.Nothing,
      updatePageProperties = Core.Nothing,
      updateParagraphStyle = Core.Nothing,
      updateShapeProperties = Core.Nothing,
      updateSlideProperties = Core.Nothing,
      updateSlidesPosition = Core.Nothing,
      updateTableBorderProperties = Core.Nothing,
      updateTableCellProperties = Core.Nothing,
      updateTableColumnProperties = Core.Nothing,
      updateTableRowProperties = Core.Nothing,
      updateTextStyle = Core.Nothing,
      updateVideoProperties = Core.Nothing
    }

instance Core.FromJSON Request' where
  parseJSON =
    Core.withObject
      "Request'"
      ( \o ->
          Request'
            Core.<$> (o Core..:? "createImage")
            Core.<*> (o Core..:? "createLine")
            Core.<*> (o Core..:? "createParagraphBullets")
            Core.<*> (o Core..:? "createShape")
            Core.<*> (o Core..:? "createSheetsChart")
            Core.<*> (o Core..:? "createSlide")
            Core.<*> (o Core..:? "createTable")
            Core.<*> (o Core..:? "createVideo")
            Core.<*> (o Core..:? "deleteObject")
            Core.<*> (o Core..:? "deleteParagraphBullets")
            Core.<*> (o Core..:? "deleteTableColumn")
            Core.<*> (o Core..:? "deleteTableRow")
            Core.<*> (o Core..:? "deleteText")
            Core.<*> (o Core..:? "duplicateObject")
            Core.<*> (o Core..:? "groupObjects")
            Core.<*> (o Core..:? "insertTableColumns")
            Core.<*> (o Core..:? "insertTableRows")
            Core.<*> (o Core..:? "insertText")
            Core.<*> (o Core..:? "mergeTableCells")
            Core.<*> (o Core..:? "refreshSheetsChart")
            Core.<*> (o Core..:? "replaceAllShapesWithImage")
            Core.<*> (o Core..:? "replaceAllShapesWithSheetsChart")
            Core.<*> (o Core..:? "replaceAllText")
            Core.<*> (o Core..:? "replaceImage")
            Core.<*> (o Core..:? "rerouteLine")
            Core.<*> (o Core..:? "ungroupObjects")
            Core.<*> (o Core..:? "unmergeTableCells")
            Core.<*> (o Core..:? "updateImageProperties")
            Core.<*> (o Core..:? "updateLineCategory")
            Core.<*> (o Core..:? "updateLineProperties")
            Core.<*> (o Core..:? "updatePageElementAltText")
            Core.<*> (o Core..:? "updatePageElementTransform")
            Core.<*> (o Core..:? "updatePageElementsZOrder")
            Core.<*> (o Core..:? "updatePageProperties")
            Core.<*> (o Core..:? "updateParagraphStyle")
            Core.<*> (o Core..:? "updateShapeProperties")
            Core.<*> (o Core..:? "updateSlideProperties")
            Core.<*> (o Core..:? "updateSlidesPosition")
            Core.<*> (o Core..:? "updateTableBorderProperties")
            Core.<*> (o Core..:? "updateTableCellProperties")
            Core.<*> (o Core..:? "updateTableColumnProperties")
            Core.<*> (o Core..:? "updateTableRowProperties")
            Core.<*> (o Core..:? "updateTextStyle")
            Core.<*> (o Core..:? "updateVideoProperties")
      )

instance Core.ToJSON Request' where
  toJSON Request' {..} =
    Core.object
      ( Core.catMaybes
          [ ("createImage" Core..=) Core.<$> createImage,
            ("createLine" Core..=) Core.<$> createLine,
            ("createParagraphBullets" Core..=)
              Core.<$> createParagraphBullets,
            ("createShape" Core..=) Core.<$> createShape,
            ("createSheetsChart" Core..=)
              Core.<$> createSheetsChart,
            ("createSlide" Core..=) Core.<$> createSlide,
            ("createTable" Core..=) Core.<$> createTable,
            ("createVideo" Core..=) Core.<$> createVideo,
            ("deleteObject" Core..=) Core.<$> deleteObject,
            ("deleteParagraphBullets" Core..=)
              Core.<$> deleteParagraphBullets,
            ("deleteTableColumn" Core..=)
              Core.<$> deleteTableColumn,
            ("deleteTableRow" Core..=) Core.<$> deleteTableRow,
            ("deleteText" Core..=) Core.<$> deleteText,
            ("duplicateObject" Core..=) Core.<$> duplicateObject,
            ("groupObjects" Core..=) Core.<$> groupObjects,
            ("insertTableColumns" Core..=)
              Core.<$> insertTableColumns,
            ("insertTableRows" Core..=) Core.<$> insertTableRows,
            ("insertText" Core..=) Core.<$> insertText,
            ("mergeTableCells" Core..=) Core.<$> mergeTableCells,
            ("refreshSheetsChart" Core..=)
              Core.<$> refreshSheetsChart,
            ("replaceAllShapesWithImage" Core..=)
              Core.<$> replaceAllShapesWithImage,
            ("replaceAllShapesWithSheetsChart" Core..=)
              Core.<$> replaceAllShapesWithSheetsChart,
            ("replaceAllText" Core..=) Core.<$> replaceAllText,
            ("replaceImage" Core..=) Core.<$> replaceImage,
            ("rerouteLine" Core..=) Core.<$> rerouteLine,
            ("ungroupObjects" Core..=) Core.<$> ungroupObjects,
            ("unmergeTableCells" Core..=)
              Core.<$> unmergeTableCells,
            ("updateImageProperties" Core..=)
              Core.<$> updateImageProperties,
            ("updateLineCategory" Core..=)
              Core.<$> updateLineCategory,
            ("updateLineProperties" Core..=)
              Core.<$> updateLineProperties,
            ("updatePageElementAltText" Core..=)
              Core.<$> updatePageElementAltText,
            ("updatePageElementTransform" Core..=)
              Core.<$> updatePageElementTransform,
            ("updatePageElementsZOrder" Core..=)
              Core.<$> updatePageElementsZOrder,
            ("updatePageProperties" Core..=)
              Core.<$> updatePageProperties,
            ("updateParagraphStyle" Core..=)
              Core.<$> updateParagraphStyle,
            ("updateShapeProperties" Core..=)
              Core.<$> updateShapeProperties,
            ("updateSlideProperties" Core..=)
              Core.<$> updateSlideProperties,
            ("updateSlidesPosition" Core..=)
              Core.<$> updateSlidesPosition,
            ("updateTableBorderProperties" Core..=)
              Core.<$> updateTableBorderProperties,
            ("updateTableCellProperties" Core..=)
              Core.<$> updateTableCellProperties,
            ("updateTableColumnProperties" Core..=)
              Core.<$> updateTableColumnProperties,
            ("updateTableRowProperties" Core..=)
              Core.<$> updateTableRowProperties,
            ("updateTextStyle" Core..=) Core.<$> updateTextStyle,
            ("updateVideoProperties" Core..=)
              Core.<$> updateVideoProperties
          ]
      )

-- | Reroutes a line such that it\'s connected at the two closest connection sites on the connected page elements.
--
-- /See:/ 'newRerouteLineRequest' smart constructor.
newtype RerouteLineRequest = RerouteLineRequest
  { -- | The object ID of the line to reroute. Only a line with a category indicating it is a \"connector\" can be rerouted. The start and end connections of the line must be on different page elements.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RerouteLineRequest' with the minimum fields required to make a request.
newRerouteLineRequest ::
  RerouteLineRequest
newRerouteLineRequest = RerouteLineRequest {objectId = Core.Nothing}

instance Core.FromJSON RerouteLineRequest where
  parseJSON =
    Core.withObject
      "RerouteLineRequest"
      ( \o ->
          RerouteLineRequest Core.<$> (o Core..:? "objectId")
      )

instance Core.ToJSON RerouteLineRequest where
  toJSON RerouteLineRequest {..} =
    Core.object
      ( Core.catMaybes
          [("objectId" Core..=) Core.<$> objectId]
      )

-- | A single response from an update.
--
-- /See:/ 'newResponse' smart constructor.
data Response = Response
  { -- | The result of creating an image.
    createImage :: (Core.Maybe CreateImageResponse),
    -- | The result of creating a line.
    createLine :: (Core.Maybe CreateLineResponse),
    -- | The result of creating a shape.
    createShape :: (Core.Maybe CreateShapeResponse),
    -- | The result of creating a Google Sheets chart.
    createSheetsChart :: (Core.Maybe CreateSheetsChartResponse),
    -- | The result of creating a slide.
    createSlide :: (Core.Maybe CreateSlideResponse),
    -- | The result of creating a table.
    createTable :: (Core.Maybe CreateTableResponse),
    -- | The result of creating a video.
    createVideo :: (Core.Maybe CreateVideoResponse),
    -- | The result of duplicating an object.
    duplicateObject :: (Core.Maybe DuplicateObjectResponse),
    -- | The result of grouping objects.
    groupObjects :: (Core.Maybe GroupObjectsResponse),
    -- | The result of replacing all shapes matching some criteria with an image.
    replaceAllShapesWithImage :: (Core.Maybe ReplaceAllShapesWithImageResponse),
    -- | The result of replacing all shapes matching some criteria with a Google Sheets chart.
    replaceAllShapesWithSheetsChart :: (Core.Maybe ReplaceAllShapesWithSheetsChartResponse),
    -- | The result of replacing text.
    replaceAllText :: (Core.Maybe ReplaceAllTextResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Response' with the minimum fields required to make a request.
newResponse ::
  Response
newResponse =
  Response
    { createImage = Core.Nothing,
      createLine = Core.Nothing,
      createShape = Core.Nothing,
      createSheetsChart = Core.Nothing,
      createSlide = Core.Nothing,
      createTable = Core.Nothing,
      createVideo = Core.Nothing,
      duplicateObject = Core.Nothing,
      groupObjects = Core.Nothing,
      replaceAllShapesWithImage = Core.Nothing,
      replaceAllShapesWithSheetsChart = Core.Nothing,
      replaceAllText = Core.Nothing
    }

instance Core.FromJSON Response where
  parseJSON =
    Core.withObject
      "Response"
      ( \o ->
          Response
            Core.<$> (o Core..:? "createImage")
            Core.<*> (o Core..:? "createLine")
            Core.<*> (o Core..:? "createShape")
            Core.<*> (o Core..:? "createSheetsChart")
            Core.<*> (o Core..:? "createSlide")
            Core.<*> (o Core..:? "createTable")
            Core.<*> (o Core..:? "createVideo")
            Core.<*> (o Core..:? "duplicateObject")
            Core.<*> (o Core..:? "groupObjects")
            Core.<*> (o Core..:? "replaceAllShapesWithImage")
            Core.<*> (o Core..:? "replaceAllShapesWithSheetsChart")
            Core.<*> (o Core..:? "replaceAllText")
      )

instance Core.ToJSON Response where
  toJSON Response {..} =
    Core.object
      ( Core.catMaybes
          [ ("createImage" Core..=) Core.<$> createImage,
            ("createLine" Core..=) Core.<$> createLine,
            ("createShape" Core..=) Core.<$> createShape,
            ("createSheetsChart" Core..=)
              Core.<$> createSheetsChart,
            ("createSlide" Core..=) Core.<$> createSlide,
            ("createTable" Core..=) Core.<$> createTable,
            ("createVideo" Core..=) Core.<$> createVideo,
            ("duplicateObject" Core..=) Core.<$> duplicateObject,
            ("groupObjects" Core..=) Core.<$> groupObjects,
            ("replaceAllShapesWithImage" Core..=)
              Core.<$> replaceAllShapesWithImage,
            ("replaceAllShapesWithSheetsChart" Core..=)
              Core.<$> replaceAllShapesWithSheetsChart,
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
  RgbColor {blue = Core.Nothing, green = Core.Nothing, red = Core.Nothing}

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

-- | The shadow properties of a page element. If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.
--
-- /See:/ 'newShadow' smart constructor.
data Shadow = Shadow
  { -- | The alignment point of the shadow, that sets the origin for translate, scale and skew of the shadow. This property is read-only.
    alignment :: (Core.Maybe Shadow_Alignment),
    -- | The alpha of the shadow\'s color, from 0.0 to 1.0.
    alpha :: (Core.Maybe Core.Double),
    -- | The radius of the shadow blur. The larger the radius, the more diffuse the shadow becomes.
    blurRadius :: (Core.Maybe Dimension),
    -- | The shadow color value.
    color :: (Core.Maybe OpaqueColor),
    -- | The shadow property state. Updating the shadow on a page element will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no shadow on a page element, set this field to @NOT_RENDERED@. In this case, any other shadow fields set in the same request will be ignored.
    propertyState :: (Core.Maybe Shadow_PropertyState),
    -- | Whether the shadow should rotate with the shape. This property is read-only.
    rotateWithShape :: (Core.Maybe Core.Bool),
    -- | Transform that encodes the translate, scale, and skew of the shadow, relative to the alignment position.
    transform :: (Core.Maybe AffineTransform),
    -- | The type of the shadow. This property is read-only.
    type' :: (Core.Maybe Shadow_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Shadow' with the minimum fields required to make a request.
newShadow ::
  Shadow
newShadow =
  Shadow
    { alignment = Core.Nothing,
      alpha = Core.Nothing,
      blurRadius = Core.Nothing,
      color = Core.Nothing,
      propertyState = Core.Nothing,
      rotateWithShape = Core.Nothing,
      transform = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Shadow where
  parseJSON =
    Core.withObject
      "Shadow"
      ( \o ->
          Shadow
            Core.<$> (o Core..:? "alignment")
            Core.<*> (o Core..:? "alpha")
            Core.<*> (o Core..:? "blurRadius")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "rotateWithShape")
            Core.<*> (o Core..:? "transform")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Shadow where
  toJSON Shadow {..} =
    Core.object
      ( Core.catMaybes
          [ ("alignment" Core..=) Core.<$> alignment,
            ("alpha" Core..=) Core.<$> alpha,
            ("blurRadius" Core..=) Core.<$> blurRadius,
            ("color" Core..=) Core.<$> color,
            ("propertyState" Core..=) Core.<$> propertyState,
            ("rotateWithShape" Core..=) Core.<$> rotateWithShape,
            ("transform" Core..=) Core.<$> transform,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A PageElement kind representing a generic shape that does not have a more specific classification.
--
-- /See:/ 'newShape' smart constructor.
data Shape = Shape
  { -- | Placeholders are page elements that inherit from corresponding placeholders on layouts and masters. If set, the shape is a placeholder shape and any inherited properties can be resolved by looking at the parent placeholder identified by the Placeholder.parent/object/id field.
    placeholder :: (Core.Maybe Placeholder),
    -- | The properties of the shape.
    shapeProperties :: (Core.Maybe ShapeProperties),
    -- | The type of the shape.
    shapeType :: (Core.Maybe Shape_ShapeType),
    -- | The text content of the shape.
    text :: (Core.Maybe TextContent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Shape' with the minimum fields required to make a request.
newShape ::
  Shape
newShape =
  Shape
    { placeholder = Core.Nothing,
      shapeProperties = Core.Nothing,
      shapeType = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Shape where
  parseJSON =
    Core.withObject
      "Shape"
      ( \o ->
          Shape
            Core.<$> (o Core..:? "placeholder")
            Core.<*> (o Core..:? "shapeProperties")
            Core.<*> (o Core..:? "shapeType")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Shape where
  toJSON Shape {..} =
    Core.object
      ( Core.catMaybes
          [ ("placeholder" Core..=) Core.<$> placeholder,
            ("shapeProperties" Core..=) Core.<$> shapeProperties,
            ("shapeType" Core..=) Core.<$> shapeType,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | The shape background fill.
--
-- /See:/ 'newShapeBackgroundFill' smart constructor.
data ShapeBackgroundFill = ShapeBackgroundFill
  { -- | The background fill property state. Updating the fill on a shape will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a shape, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
    propertyState :: (Core.Maybe ShapeBackgroundFill_PropertyState),
    -- | Solid color fill.
    solidFill :: (Core.Maybe SolidFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShapeBackgroundFill' with the minimum fields required to make a request.
newShapeBackgroundFill ::
  ShapeBackgroundFill
newShapeBackgroundFill =
  ShapeBackgroundFill {propertyState = Core.Nothing, solidFill = Core.Nothing}

instance Core.FromJSON ShapeBackgroundFill where
  parseJSON =
    Core.withObject
      "ShapeBackgroundFill"
      ( \o ->
          ShapeBackgroundFill
            Core.<$> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "solidFill")
      )

instance Core.ToJSON ShapeBackgroundFill where
  toJSON ShapeBackgroundFill {..} =
    Core.object
      ( Core.catMaybes
          [ ("propertyState" Core..=) Core.<$> propertyState,
            ("solidFill" Core..=) Core.<$> solidFill
          ]
      )

-- | The properties of a Shape. If the shape is a placeholder shape as determined by the placeholder field, then these properties may be inherited from a parent placeholder shape. Determining the rendered value of the property depends on the corresponding property_state field value. Any text autofit settings on the shape are automatically deactivated by requests that can impact how text fits in the shape.
--
-- /See:/ 'newShapeProperties' smart constructor.
data ShapeProperties = ShapeProperties
  { -- | The autofit properties of the shape. This property is only set for shapes that allow text.
    autofit :: (Core.Maybe Autofit),
    -- | The alignment of the content in the shape. If unspecified, the alignment is inherited from a parent placeholder if it exists. If the shape has no parent, the default alignment matches the alignment for new shapes created in the Slides editor.
    contentAlignment :: (Core.Maybe ShapeProperties_ContentAlignment),
    -- | The hyperlink destination of the shape. If unset, there is no link. Links are not inherited from parent placeholders.
    link :: (Core.Maybe Link),
    -- | The outline of the shape. If unset, the outline is inherited from a parent placeholder if it exists. If the shape has no parent, then the default outline depends on the shape type, matching the defaults for new shapes created in the Slides editor.
    outline :: (Core.Maybe Outline),
    -- | The shadow properties of the shape. If unset, the shadow is inherited from a parent placeholder if it exists. If the shape has no parent, then the default shadow matches the defaults for new shapes created in the Slides editor. This property is read-only.
    shadow :: (Core.Maybe Shadow),
    -- | The background fill of the shape. If unset, the background fill is inherited from a parent placeholder if it exists. If the shape has no parent, then the default background fill depends on the shape type, matching the defaults for new shapes created in the Slides editor.
    shapeBackgroundFill :: (Core.Maybe ShapeBackgroundFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShapeProperties' with the minimum fields required to make a request.
newShapeProperties ::
  ShapeProperties
newShapeProperties =
  ShapeProperties
    { autofit = Core.Nothing,
      contentAlignment = Core.Nothing,
      link = Core.Nothing,
      outline = Core.Nothing,
      shadow = Core.Nothing,
      shapeBackgroundFill = Core.Nothing
    }

instance Core.FromJSON ShapeProperties where
  parseJSON =
    Core.withObject
      "ShapeProperties"
      ( \o ->
          ShapeProperties
            Core.<$> (o Core..:? "autofit")
            Core.<*> (o Core..:? "contentAlignment")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "outline")
            Core.<*> (o Core..:? "shadow")
            Core.<*> (o Core..:? "shapeBackgroundFill")
      )

instance Core.ToJSON ShapeProperties where
  toJSON ShapeProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("autofit" Core..=) Core.<$> autofit,
            ("contentAlignment" Core..=)
              Core.<$> contentAlignment,
            ("link" Core..=) Core.<$> link,
            ("outline" Core..=) Core.<$> outline,
            ("shadow" Core..=) Core.<$> shadow,
            ("shapeBackgroundFill" Core..=)
              Core.<$> shapeBackgroundFill
          ]
      )

-- | A PageElement kind representing a linked chart embedded from Google Sheets.
--
-- /See:/ 'newSheetsChart' smart constructor.
data SheetsChart = SheetsChart
  { -- | The ID of the specific chart in the Google Sheets spreadsheet that is embedded.
    chartId :: (Core.Maybe Core.Int32),
    -- | The URL of an image of the embedded chart, with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation\'s sharing settings change.
    contentUrl :: (Core.Maybe Core.Text),
    -- | The properties of the Sheets chart.
    sheetsChartProperties :: (Core.Maybe SheetsChartProperties),
    -- | The ID of the Google Sheets spreadsheet that contains the source chart.
    spreadsheetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsChart' with the minimum fields required to make a request.
newSheetsChart ::
  SheetsChart
newSheetsChart =
  SheetsChart
    { chartId = Core.Nothing,
      contentUrl = Core.Nothing,
      sheetsChartProperties = Core.Nothing,
      spreadsheetId = Core.Nothing
    }

instance Core.FromJSON SheetsChart where
  parseJSON =
    Core.withObject
      "SheetsChart"
      ( \o ->
          SheetsChart
            Core.<$> (o Core..:? "chartId")
            Core.<*> (o Core..:? "contentUrl")
            Core.<*> (o Core..:? "sheetsChartProperties")
            Core.<*> (o Core..:? "spreadsheetId")
      )

instance Core.ToJSON SheetsChart where
  toJSON SheetsChart {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartId" Core..=) Core.<$> chartId,
            ("contentUrl" Core..=) Core.<$> contentUrl,
            ("sheetsChartProperties" Core..=)
              Core.<$> sheetsChartProperties,
            ("spreadsheetId" Core..=) Core.<$> spreadsheetId
          ]
      )

-- | The properties of the SheetsChart.
--
-- /See:/ 'newSheetsChartProperties' smart constructor.
newtype SheetsChartProperties = SheetsChartProperties
  { -- | The properties of the embedded chart image.
    chartImageProperties :: (Core.Maybe ImageProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SheetsChartProperties' with the minimum fields required to make a request.
newSheetsChartProperties ::
  SheetsChartProperties
newSheetsChartProperties =
  SheetsChartProperties {chartImageProperties = Core.Nothing}

instance Core.FromJSON SheetsChartProperties where
  parseJSON =
    Core.withObject
      "SheetsChartProperties"
      ( \o ->
          SheetsChartProperties
            Core.<$> (o Core..:? "chartImageProperties")
      )

instance Core.ToJSON SheetsChartProperties where
  toJSON SheetsChartProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("chartImageProperties" Core..=)
              Core.<$> chartImageProperties
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
          Size
            Core.<$> (o Core..:? "height") Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Size where
  toJSON Size {..} =
    Core.object
      ( Core.catMaybes
          [ ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | The properties of Page that are only relevant for pages with page_type SLIDE.
--
-- /See:/ 'newSlideProperties' smart constructor.
data SlideProperties = SlideProperties
  { -- | Whether the slide is skipped in the presentation mode. Defaults to false.
    isSkipped :: (Core.Maybe Core.Bool),
    -- | The object ID of the layout that this slide is based on. This property is read-only.
    layoutObjectId :: (Core.Maybe Core.Text),
    -- | The object ID of the master that this slide is based on. This property is read-only.
    masterObjectId :: (Core.Maybe Core.Text),
    -- | The notes page that this slide is associated with. It defines the visual appearance of a notes page when printing or exporting slides with speaker notes. A notes page inherits properties from the notes master. The placeholder shape with type BODY on the notes page contains the speaker notes for this slide. The ID of this shape is identified by the speakerNotesObjectId field. The notes page is read-only except for the text content and styles of the speaker notes shape. This property is read-only.
    notesPage :: (Core.Maybe Page)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlideProperties' with the minimum fields required to make a request.
newSlideProperties ::
  SlideProperties
newSlideProperties =
  SlideProperties
    { isSkipped = Core.Nothing,
      layoutObjectId = Core.Nothing,
      masterObjectId = Core.Nothing,
      notesPage = Core.Nothing
    }

instance Core.FromJSON SlideProperties where
  parseJSON =
    Core.withObject
      "SlideProperties"
      ( \o ->
          SlideProperties
            Core.<$> (o Core..:? "isSkipped")
            Core.<*> (o Core..:? "layoutObjectId")
            Core.<*> (o Core..:? "masterObjectId")
            Core.<*> (o Core..:? "notesPage")
      )

instance Core.ToJSON SlideProperties where
  toJSON SlideProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("isSkipped" Core..=) Core.<$> isSkipped,
            ("layoutObjectId" Core..=) Core.<$> layoutObjectId,
            ("masterObjectId" Core..=) Core.<$> masterObjectId,
            ("notesPage" Core..=) Core.<$> notesPage
          ]
      )

-- | A solid color fill. The page or page element is filled entirely with the specified color value. If any field is unset, its value may be inherited from a parent placeholder if it exists.
--
-- /See:/ 'newSolidFill' smart constructor.
data SolidFill = SolidFill
  { -- | The fraction of this @color@ that should be applied to the pixel. That is, the final pixel color is defined by the equation: pixel color = alpha * (color) + (1.0 - alpha) * (background color) This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color.
    alpha :: (Core.Maybe Core.Double),
    -- | The color value of the solid fill.
    color :: (Core.Maybe OpaqueColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SolidFill' with the minimum fields required to make a request.
newSolidFill ::
  SolidFill
newSolidFill = SolidFill {alpha = Core.Nothing, color = Core.Nothing}

instance Core.FromJSON SolidFill where
  parseJSON =
    Core.withObject
      "SolidFill"
      ( \o ->
          SolidFill
            Core.<$> (o Core..:? "alpha") Core.<*> (o Core..:? "color")
      )

instance Core.ToJSON SolidFill where
  toJSON SolidFill {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("color" Core..=) Core.<$> color
          ]
      )

-- | The stretched picture fill. The page or page element is filled entirely with the specified picture. The picture is stretched to fit its container.
--
-- /See:/ 'newStretchedPictureFill' smart constructor.
data StretchedPictureFill = StretchedPictureFill
  { -- | Reading the content/url: An URL to a picture with a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the picture as the original requester. Access to the picture may be lost if the presentation\'s sharing settings change. Writing the content/url: The picture is fetched once at insertion time and a copy is stored for display inside the presentation. Pictures must be less than 50MB in size, cannot exceed 25 megapixels, and must be in one of PNG, JPEG, or GIF format. The provided URL can be at most 2 kB in length.
    contentUrl :: (Core.Maybe Core.Text),
    -- | The original size of the picture fill. This field is read-only.
    size :: (Core.Maybe Size)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StretchedPictureFill' with the minimum fields required to make a request.
newStretchedPictureFill ::
  StretchedPictureFill
newStretchedPictureFill =
  StretchedPictureFill {contentUrl = Core.Nothing, size = Core.Nothing}

instance Core.FromJSON StretchedPictureFill where
  parseJSON =
    Core.withObject
      "StretchedPictureFill"
      ( \o ->
          StretchedPictureFill
            Core.<$> (o Core..:? "contentUrl")
            Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON StretchedPictureFill where
  toJSON StretchedPictureFill {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentUrl" Core..=) Core.<$> contentUrl,
            ("size" Core..=) Core.<$> size
          ]
      )

-- | A criteria that matches a specific string of text in a shape or table.
--
-- /See:/ 'newSubstringMatchCriteria' smart constructor.
data SubstringMatchCriteria = SubstringMatchCriteria
  { -- | Indicates whether the search should respect case: - @True@: the search is case sensitive. - @False@: the search is case insensitive.
    matchCase :: (Core.Maybe Core.Bool),
    -- | The text to search for in the shape or table.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubstringMatchCriteria' with the minimum fields required to make a request.
newSubstringMatchCriteria ::
  SubstringMatchCriteria
newSubstringMatchCriteria =
  SubstringMatchCriteria {matchCase = Core.Nothing, text = Core.Nothing}

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

-- | A PageElement kind representing a table.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | Number of columns in the table.
    columns :: (Core.Maybe Core.Int32),
    -- | Properties of horizontal cell borders. A table\'s horizontal cell borders are represented as a grid. The grid has one more row than the number of rows in the table and the same number of columns as the table. For example, if the table is 3 x 3, its horizontal borders will be represented as a grid with 4 rows and 3 columns.
    horizontalBorderRows :: (Core.Maybe [TableBorderRow]),
    -- | Number of rows in the table.
    rows :: (Core.Maybe Core.Int32),
    -- | Properties of each column.
    tableColumns :: (Core.Maybe [TableColumnProperties]),
    -- | Properties and contents of each row. Cells that span multiple rows are contained in only one of these rows and have a row_span greater than 1.
    tableRows :: (Core.Maybe [TableRow]),
    -- | Properties of vertical cell borders. A table\'s vertical cell borders are represented as a grid. The grid has the same number of rows as the table and one more column than the number of columns in the table. For example, if the table is 3 x 3, its vertical borders will be represented as a grid with 3 rows and 4 columns.
    verticalBorderRows :: (Core.Maybe [TableBorderRow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { columns = Core.Nothing,
      horizontalBorderRows = Core.Nothing,
      rows = Core.Nothing,
      tableColumns = Core.Nothing,
      tableRows = Core.Nothing,
      verticalBorderRows = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "columns")
            Core.<*> ( o Core..:? "horizontalBorderRows"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "tableColumns" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tableRows" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "verticalBorderRows"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("horizontalBorderRows" Core..=)
              Core.<$> horizontalBorderRows,
            ("rows" Core..=) Core.<$> rows,
            ("tableColumns" Core..=) Core.<$> tableColumns,
            ("tableRows" Core..=) Core.<$> tableRows,
            ("verticalBorderRows" Core..=)
              Core.<$> verticalBorderRows
          ]
      )

-- | The properties of each border cell.
--
-- /See:/ 'newTableBorderCell' smart constructor.
data TableBorderCell = TableBorderCell
  { -- | The location of the border within the border table.
    location :: (Core.Maybe TableCellLocation),
    -- | The border properties.
    tableBorderProperties :: (Core.Maybe TableBorderProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableBorderCell' with the minimum fields required to make a request.
newTableBorderCell ::
  TableBorderCell
newTableBorderCell =
  TableBorderCell
    { location = Core.Nothing,
      tableBorderProperties = Core.Nothing
    }

instance Core.FromJSON TableBorderCell where
  parseJSON =
    Core.withObject
      "TableBorderCell"
      ( \o ->
          TableBorderCell
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "tableBorderProperties")
      )

instance Core.ToJSON TableBorderCell where
  toJSON TableBorderCell {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("tableBorderProperties" Core..=)
              Core.<$> tableBorderProperties
          ]
      )

-- | The fill of the border.
--
-- /See:/ 'newTableBorderFill' smart constructor.
newtype TableBorderFill = TableBorderFill
  { -- | Solid fill.
    solidFill :: (Core.Maybe SolidFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableBorderFill' with the minimum fields required to make a request.
newTableBorderFill ::
  TableBorderFill
newTableBorderFill = TableBorderFill {solidFill = Core.Nothing}

instance Core.FromJSON TableBorderFill where
  parseJSON =
    Core.withObject
      "TableBorderFill"
      ( \o ->
          TableBorderFill Core.<$> (o Core..:? "solidFill")
      )

instance Core.ToJSON TableBorderFill where
  toJSON TableBorderFill {..} =
    Core.object
      ( Core.catMaybes
          [("solidFill" Core..=) Core.<$> solidFill]
      )

-- | The border styling properties of the TableBorderCell.
--
-- /See:/ 'newTableBorderProperties' smart constructor.
data TableBorderProperties = TableBorderProperties
  { -- | The dash style of the border.
    dashStyle :: (Core.Maybe TableBorderProperties_DashStyle),
    -- | The fill of the table border.
    tableBorderFill :: (Core.Maybe TableBorderFill),
    -- | The thickness of the border.
    weight :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableBorderProperties' with the minimum fields required to make a request.
newTableBorderProperties ::
  TableBorderProperties
newTableBorderProperties =
  TableBorderProperties
    { dashStyle = Core.Nothing,
      tableBorderFill = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON TableBorderProperties where
  parseJSON =
    Core.withObject
      "TableBorderProperties"
      ( \o ->
          TableBorderProperties
            Core.<$> (o Core..:? "dashStyle")
            Core.<*> (o Core..:? "tableBorderFill")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON TableBorderProperties where
  toJSON TableBorderProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("dashStyle" Core..=) Core.<$> dashStyle,
            ("tableBorderFill" Core..=) Core.<$> tableBorderFill,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | Contents of each border row in a table.
--
-- /See:/ 'newTableBorderRow' smart constructor.
newtype TableBorderRow = TableBorderRow
  { -- | Properties of each border cell. When a border\'s adjacent table cells are merged, it is not included in the response.
    tableBorderCells :: (Core.Maybe [TableBorderCell])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableBorderRow' with the minimum fields required to make a request.
newTableBorderRow ::
  TableBorderRow
newTableBorderRow = TableBorderRow {tableBorderCells = Core.Nothing}

instance Core.FromJSON TableBorderRow where
  parseJSON =
    Core.withObject
      "TableBorderRow"
      ( \o ->
          TableBorderRow
            Core.<$> (o Core..:? "tableBorderCells" Core..!= Core.mempty)
      )

instance Core.ToJSON TableBorderRow where
  toJSON TableBorderRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("tableBorderCells" Core..=)
              Core.<$> tableBorderCells
          ]
      )

-- | Properties and contents of each table cell.
--
-- /See:/ 'newTableCell' smart constructor.
data TableCell = TableCell
  { -- | Column span of the cell.
    columnSpan :: (Core.Maybe Core.Int32),
    -- | The location of the cell within the table.
    location :: (Core.Maybe TableCellLocation),
    -- | Row span of the cell.
    rowSpan :: (Core.Maybe Core.Int32),
    -- | The properties of the table cell.
    tableCellProperties :: (Core.Maybe TableCellProperties),
    -- | The text content of the cell.
    text :: (Core.Maybe TextContent)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
newTableCell ::
  TableCell
newTableCell =
  TableCell
    { columnSpan = Core.Nothing,
      location = Core.Nothing,
      rowSpan = Core.Nothing,
      tableCellProperties = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON TableCell where
  parseJSON =
    Core.withObject
      "TableCell"
      ( \o ->
          TableCell
            Core.<$> (o Core..:? "columnSpan")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "rowSpan")
            Core.<*> (o Core..:? "tableCellProperties")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON TableCell where
  toJSON TableCell {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnSpan" Core..=) Core.<$> columnSpan,
            ("location" Core..=) Core.<$> location,
            ("rowSpan" Core..=) Core.<$> rowSpan,
            ("tableCellProperties" Core..=)
              Core.<$> tableCellProperties,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | The table cell background fill.
--
-- /See:/ 'newTableCellBackgroundFill' smart constructor.
data TableCellBackgroundFill = TableCellBackgroundFill
  { -- | The background fill property state. Updating the fill on a table cell will implicitly update this field to @RENDERED@, unless another value is specified in the same request. To have no fill on a table cell, set this field to @NOT_RENDERED@. In this case, any other fill fields set in the same request will be ignored.
    propertyState :: (Core.Maybe TableCellBackgroundFill_PropertyState),
    -- | Solid color fill.
    solidFill :: (Core.Maybe SolidFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellBackgroundFill' with the minimum fields required to make a request.
newTableCellBackgroundFill ::
  TableCellBackgroundFill
newTableCellBackgroundFill =
  TableCellBackgroundFill
    { propertyState = Core.Nothing,
      solidFill = Core.Nothing
    }

instance Core.FromJSON TableCellBackgroundFill where
  parseJSON =
    Core.withObject
      "TableCellBackgroundFill"
      ( \o ->
          TableCellBackgroundFill
            Core.<$> (o Core..:? "propertyState")
            Core.<*> (o Core..:? "solidFill")
      )

instance Core.ToJSON TableCellBackgroundFill where
  toJSON TableCellBackgroundFill {..} =
    Core.object
      ( Core.catMaybes
          [ ("propertyState" Core..=) Core.<$> propertyState,
            ("solidFill" Core..=) Core.<$> solidFill
          ]
      )

-- | A location of a single table cell within a table.
--
-- /See:/ 'newTableCellLocation' smart constructor.
data TableCellLocation = TableCellLocation
  { -- | The 0-based column index.
    columnIndex :: (Core.Maybe Core.Int32),
    -- | The 0-based row index.
    rowIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellLocation' with the minimum fields required to make a request.
newTableCellLocation ::
  TableCellLocation
newTableCellLocation =
  TableCellLocation {columnIndex = Core.Nothing, rowIndex = Core.Nothing}

instance Core.FromJSON TableCellLocation where
  parseJSON =
    Core.withObject
      "TableCellLocation"
      ( \o ->
          TableCellLocation
            Core.<$> (o Core..:? "columnIndex")
            Core.<*> (o Core..:? "rowIndex")
      )

instance Core.ToJSON TableCellLocation where
  toJSON TableCellLocation {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndex" Core..=) Core.<$> columnIndex,
            ("rowIndex" Core..=) Core.<$> rowIndex
          ]
      )

-- | The properties of the TableCell.
--
-- /See:/ 'newTableCellProperties' smart constructor.
data TableCellProperties = TableCellProperties
  { -- | The alignment of the content in the table cell. The default alignment matches the alignment for newly created table cells in the Slides editor.
    contentAlignment :: (Core.Maybe TableCellProperties_ContentAlignment),
    -- | The background fill of the table cell. The default fill matches the fill for newly created table cells in the Slides editor.
    tableCellBackgroundFill :: (Core.Maybe TableCellBackgroundFill)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCellProperties' with the minimum fields required to make a request.
newTableCellProperties ::
  TableCellProperties
newTableCellProperties =
  TableCellProperties
    { contentAlignment = Core.Nothing,
      tableCellBackgroundFill = Core.Nothing
    }

instance Core.FromJSON TableCellProperties where
  parseJSON =
    Core.withObject
      "TableCellProperties"
      ( \o ->
          TableCellProperties
            Core.<$> (o Core..:? "contentAlignment")
            Core.<*> (o Core..:? "tableCellBackgroundFill")
      )

instance Core.ToJSON TableCellProperties where
  toJSON TableCellProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentAlignment" Core..=)
              Core.<$> contentAlignment,
            ("tableCellBackgroundFill" Core..=)
              Core.<$> tableCellBackgroundFill
          ]
      )

-- | Properties of each column in a table.
--
-- /See:/ 'newTableColumnProperties' smart constructor.
newtype TableColumnProperties = TableColumnProperties
  { -- | Width of a column.
    columnWidth :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableColumnProperties' with the minimum fields required to make a request.
newTableColumnProperties ::
  TableColumnProperties
newTableColumnProperties = TableColumnProperties {columnWidth = Core.Nothing}

instance Core.FromJSON TableColumnProperties where
  parseJSON =
    Core.withObject
      "TableColumnProperties"
      ( \o ->
          TableColumnProperties
            Core.<$> (o Core..:? "columnWidth")
      )

instance Core.ToJSON TableColumnProperties where
  toJSON TableColumnProperties {..} =
    Core.object
      ( Core.catMaybes
          [("columnWidth" Core..=) Core.<$> columnWidth]
      )

-- | A table range represents a reference to a subset of a table. It\'s important to note that the cells specified by a table range do not necessarily form a rectangle. For example, let\'s say we have a 3 x 3 table where all the cells of the last row are merged together. The table looks like this: [ ] A table range with location = (0, 0), row span = 3 and column span = 2 specifies the following cells: x x [ x x x ]
--
-- /See:/ 'newTableRange' smart constructor.
data TableRange = TableRange
  { -- | The column span of the table range.
    columnSpan :: (Core.Maybe Core.Int32),
    -- | The starting location of the table range.
    location :: (Core.Maybe TableCellLocation),
    -- | The row span of the table range.
    rowSpan :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRange' with the minimum fields required to make a request.
newTableRange ::
  TableRange
newTableRange =
  TableRange
    { columnSpan = Core.Nothing,
      location = Core.Nothing,
      rowSpan = Core.Nothing
    }

instance Core.FromJSON TableRange where
  parseJSON =
    Core.withObject
      "TableRange"
      ( \o ->
          TableRange
            Core.<$> (o Core..:? "columnSpan")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "rowSpan")
      )

instance Core.ToJSON TableRange where
  toJSON TableRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnSpan" Core..=) Core.<$> columnSpan,
            ("location" Core..=) Core.<$> location,
            ("rowSpan" Core..=) Core.<$> rowSpan
          ]
      )

-- | Properties and contents of each row in a table.
--
-- /See:/ 'newTableRow' smart constructor.
data TableRow = TableRow
  { -- | Height of a row.
    rowHeight :: (Core.Maybe Dimension),
    -- | Properties and contents of each cell. Cells that span multiple columns are represented only once with a column_span greater than 1. As a result, the length of this collection does not always match the number of columns of the entire table.
    tableCells :: (Core.Maybe [TableCell]),
    -- | Properties of the row.
    tableRowProperties :: (Core.Maybe TableRowProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
newTableRow ::
  TableRow
newTableRow =
  TableRow
    { rowHeight = Core.Nothing,
      tableCells = Core.Nothing,
      tableRowProperties = Core.Nothing
    }

instance Core.FromJSON TableRow where
  parseJSON =
    Core.withObject
      "TableRow"
      ( \o ->
          TableRow
            Core.<$> (o Core..:? "rowHeight")
            Core.<*> (o Core..:? "tableCells" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tableRowProperties")
      )

instance Core.ToJSON TableRow where
  toJSON TableRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowHeight" Core..=) Core.<$> rowHeight,
            ("tableCells" Core..=) Core.<$> tableCells,
            ("tableRowProperties" Core..=)
              Core.<$> tableRowProperties
          ]
      )

-- | Properties of each row in a table.
--
-- /See:/ 'newTableRowProperties' smart constructor.
newtype TableRowProperties = TableRowProperties
  { -- | Minimum height of the row. The row will be rendered in the Slides editor at a height equal to or greater than this value in order to show all the text in the row\'s cell(s).
    minRowHeight :: (Core.Maybe Dimension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRowProperties' with the minimum fields required to make a request.
newTableRowProperties ::
  TableRowProperties
newTableRowProperties = TableRowProperties {minRowHeight = Core.Nothing}

instance Core.FromJSON TableRowProperties where
  parseJSON =
    Core.withObject
      "TableRowProperties"
      ( \o ->
          TableRowProperties
            Core.<$> (o Core..:? "minRowHeight")
      )

instance Core.ToJSON TableRowProperties where
  toJSON TableRowProperties {..} =
    Core.object
      ( Core.catMaybes
          [("minRowHeight" Core..=) Core.<$> minRowHeight]
      )

-- | The general text content. The text must reside in a compatible shape (e.g. text box or rectangle) or a table cell in a page.
--
-- /See:/ 'newTextContent' smart constructor.
data TextContent = TextContent
  { -- | The bulleted lists contained in this text, keyed by list ID.
    lists :: (Core.Maybe TextContent_Lists),
    -- | The text contents broken down into its component parts, including styling information. This property is read-only.
    textElements :: (Core.Maybe [TextElement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextContent' with the minimum fields required to make a request.
newTextContent ::
  TextContent
newTextContent = TextContent {lists = Core.Nothing, textElements = Core.Nothing}

instance Core.FromJSON TextContent where
  parseJSON =
    Core.withObject
      "TextContent"
      ( \o ->
          TextContent
            Core.<$> (o Core..:? "lists")
            Core.<*> (o Core..:? "textElements" Core..!= Core.mempty)
      )

instance Core.ToJSON TextContent where
  toJSON TextContent {..} =
    Core.object
      ( Core.catMaybes
          [ ("lists" Core..=) Core.<$> lists,
            ("textElements" Core..=) Core.<$> textElements
          ]
      )

-- | The bulleted lists contained in this text, keyed by list ID.
--
-- /See:/ 'newTextContent_Lists' smart constructor.
newtype TextContent_Lists = TextContent_Lists
  { -- |
    additional :: (Core.HashMap Core.Text List)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextContent_Lists' with the minimum fields required to make a request.
newTextContent_Lists ::
  -- |  See 'additional'.
  Core.HashMap Core.Text List ->
  TextContent_Lists
newTextContent_Lists additional = TextContent_Lists {additional = additional}

instance Core.FromJSON TextContent_Lists where
  parseJSON =
    Core.withObject
      "TextContent_Lists"
      ( \o ->
          TextContent_Lists Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TextContent_Lists where
  toJSON TextContent_Lists {..} = Core.toJSON additional

-- | A TextElement describes the content of a range of indices in the text content of a Shape or TableCell.
--
-- /See:/ 'newTextElement' smart constructor.
data TextElement = TextElement
  { -- | A TextElement representing a spot in the text that is dynamically replaced with content that can change over time.
    autoText :: (Core.Maybe AutoText),
    -- | The zero-based end index of this text element, exclusive, in Unicode code units.
    endIndex :: (Core.Maybe Core.Int32),
    -- | A marker representing the beginning of a new paragraph. The @start_index@ and @end_index@ of this TextElement represent the range of the paragraph. Other TextElements with an index range contained inside this paragraph\'s range are considered to be part of this paragraph. The range of indices of two separate paragraphs will never overlap.
    paragraphMarker :: (Core.Maybe ParagraphMarker),
    -- | The zero-based start index of this text element, in Unicode code units.
    startIndex :: (Core.Maybe Core.Int32),
    -- | A TextElement representing a run of text where all of the characters in the run have the same TextStyle. The @start_index@ and @end_index@ of TextRuns will always be fully contained in the index range of a single @paragraph_marker@ TextElement. In other words, a TextRun will never span multiple paragraphs.
    textRun :: (Core.Maybe TextRun)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextElement' with the minimum fields required to make a request.
newTextElement ::
  TextElement
newTextElement =
  TextElement
    { autoText = Core.Nothing,
      endIndex = Core.Nothing,
      paragraphMarker = Core.Nothing,
      startIndex = Core.Nothing,
      textRun = Core.Nothing
    }

instance Core.FromJSON TextElement where
  parseJSON =
    Core.withObject
      "TextElement"
      ( \o ->
          TextElement
            Core.<$> (o Core..:? "autoText")
            Core.<*> (o Core..:? "endIndex")
            Core.<*> (o Core..:? "paragraphMarker")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "textRun")
      )

instance Core.ToJSON TextElement where
  toJSON TextElement {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoText" Core..=) Core.<$> autoText,
            ("endIndex" Core..=) Core.<$> endIndex,
            ("paragraphMarker" Core..=) Core.<$> paragraphMarker,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("textRun" Core..=) Core.<$> textRun
          ]
      )

-- | A TextElement kind that represents a run of text that all has the same styling.
--
-- /See:/ 'newTextRun' smart constructor.
data TextRun = TextRun
  { -- | The text of this run.
    content :: (Core.Maybe Core.Text),
    -- | The styling applied to this run.
    style :: (Core.Maybe TextStyle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextRun' with the minimum fields required to make a request.
newTextRun ::
  TextRun
newTextRun = TextRun {content = Core.Nothing, style = Core.Nothing}

instance Core.FromJSON TextRun where
  parseJSON =
    Core.withObject
      "TextRun"
      ( \o ->
          TextRun
            Core.<$> (o Core..:? "content") Core.<*> (o Core..:? "style")
      )

instance Core.ToJSON TextRun where
  toJSON TextRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("style" Core..=) Core.<$> style
          ]
      )

-- | Represents the styling that can be applied to a TextRun. If this text is contained in a shape with a parent placeholder, then these text styles may be inherited from the parent. Which text styles are inherited depend on the nesting level of lists: * A text run in a paragraph that is not in a list will inherit its text style from the the newline character in the paragraph at the 0 nesting level of the list inside the parent placeholder. * A text run in a paragraph that is in a list will inherit its text style from the newline character in the paragraph at its corresponding nesting level of the list inside the parent placeholder. Inherited text styles are represented as unset fields in this message. If text is contained in a shape without a parent placeholder, unsetting these fields will revert the style to a value matching the defaults in the Slides editor.
--
-- /See:/ 'newTextStyle' smart constructor.
data TextStyle = TextStyle
  { -- | The background color of the text. If set, the color is either opaque or transparent, depending on if the @opaque_color@ field in it is set.
    backgroundColor :: (Core.Maybe OptionalColor),
    -- | The text\'s vertical offset from its normal position. Text with @SUPERSCRIPT@ or @SUBSCRIPT@ baseline offsets is automatically rendered in a smaller font size, computed based on the @font_size@ field. The @font_size@ itself is not affected by changes in this field.
    baselineOffset :: (Core.Maybe TextStyle_BaselineOffset),
    -- | Whether or not the text is rendered as bold.
    bold :: (Core.Maybe Core.Bool),
    -- | The font family of the text. The font family can be any font from the Font menu in Slides or from [Google Fonts] (https:\/\/fonts.google.com\/). If the font name is unrecognized, the text is rendered in @Arial@. Some fonts can affect the weight of the text. If an update request specifies values for both @font_family@ and @bold@, the explicitly-set @bold@ value is used.
    fontFamily :: (Core.Maybe Core.Text),
    -- | The size of the text\'s font. When read, the @font_size@ will specified in points.
    fontSize :: (Core.Maybe Dimension),
    -- | The color of the text itself. If set, the color is either opaque or transparent, depending on if the @opaque_color@ field in it is set.
    foregroundColor :: (Core.Maybe OptionalColor),
    -- | Whether or not the text is italicized.
    italic :: (Core.Maybe Core.Bool),
    -- | The hyperlink destination of the text. If unset, there is no link. Links are not inherited from parent text. Changing the link in an update request causes some other changes to the text style of the range: * When setting a link, the text foreground color will be set to ThemeColorType.HYPERLINK and the text will be underlined. If these fields are modified in the same request, those values will be used instead of the link defaults. * Setting a link on a text range that overlaps with an existing link will also update the existing link to point to the new URL. * Links are not settable on newline characters. As a result, setting a link on a text range that crosses a paragraph boundary, such as @\"ABC\\n123\"@, will separate the newline character(s) into their own text runs. The link will be applied separately to the runs before and after the newline. * Removing a link will update the text style of the range to match the style of the preceding text (or the default text styles if the preceding text is another link)
    -- unless different styles are being set in the same request.
    link :: (Core.Maybe Link),
    -- | Whether or not the text is in small capital letters.
    smallCaps :: (Core.Maybe Core.Bool),
    -- | Whether or not the text is struck through.
    strikethrough :: (Core.Maybe Core.Bool),
    -- | Whether or not the text is underlined.
    underline :: (Core.Maybe Core.Bool),
    -- | The font family and rendered weight of the text. This field is an extension of @font_family@ meant to support explicit font weights without breaking backwards compatibility. As such, when reading the style of a range of text, the value of @weighted_font_family#font_family@ will always be equal to that of @font_family@. However, when writing, if both fields are included in the field mask (either explicitly or through the wildcard @\"*\"@), their values are reconciled as follows: * If @font_family@ is set and @weighted_font_family@ is not, the value of @font_family@ is applied with weight @400@ (\"normal\"). * If both fields are set, the value of @font_family@ must match that of @weighted_font_family#font_family@. If so, the font family and weight of @weighted_font_family@ is applied. Otherwise, a 400 bad request error is returned. * If @weighted_font_family@ is set and @font_family@ is not, the font family and weight of @weighted_font_family@ is applied. * If neither field is set, the font family and weight of
    -- the text inherit from the parent. Note that these properties cannot inherit separately from each other. If an update request specifies values for both @weighted_font_family@ and @bold@, the @weighted_font_family@ is applied first, then @bold@. If @weighted_font_family#weight@ is not set, it defaults to @400@. If @weighted_font_family@ is set, then @weighted_font_family#font_family@ must also be set with a non-empty value. Otherwise, a 400 bad request error is returned.
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
      fontFamily = Core.Nothing,
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
            Core.<*> (o Core..:? "fontFamily")
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
          [ ("backgroundColor" Core..=)
              Core.<$> backgroundColor,
            ("baselineOffset" Core..=) Core.<$> baselineOffset,
            ("bold" Core..=) Core.<$> bold,
            ("fontFamily" Core..=) Core.<$> fontFamily,
            ("fontSize" Core..=) Core.<$> fontSize,
            ("foregroundColor" Core..=) Core.<$> foregroundColor,
            ("italic" Core..=) Core.<$> italic,
            ("link" Core..=) Core.<$> link,
            ("smallCaps" Core..=) Core.<$> smallCaps,
            ("strikethrough" Core..=) Core.<$> strikethrough,
            ("underline" Core..=) Core.<$> underline,
            ("weightedFontFamily" Core..=)
              Core.<$> weightedFontFamily
          ]
      )

-- | A pair mapping a theme color type to the concrete color it represents.
--
-- /See:/ 'newThemeColorPair' smart constructor.
data ThemeColorPair = ThemeColorPair
  { -- | The concrete color corresponding to the theme color type above.
    color :: (Core.Maybe RgbColor),
    -- | The type of the theme color.
    type' :: (Core.Maybe ThemeColorPair_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ThemeColorPair' with the minimum fields required to make a request.
newThemeColorPair ::
  ThemeColorPair
newThemeColorPair = ThemeColorPair {color = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON ThemeColorPair where
  parseJSON =
    Core.withObject
      "ThemeColorPair"
      ( \o ->
          ThemeColorPair
            Core.<$> (o Core..:? "color") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ThemeColorPair where
  toJSON ThemeColorPair {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The thumbnail of a page.
--
-- /See:/ 'newThumbnail' smart constructor.
data Thumbnail = Thumbnail
  { -- | The content URL of the thumbnail image. The URL to the image has a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation\'s sharing settings change. The mime type of the thumbnail image is the same as specified in the @GetPageThumbnailRequest@.
    contentUrl :: (Core.Maybe Core.Text),
    -- | The positive height in pixels of the thumbnail image.
    height :: (Core.Maybe Core.Int32),
    -- | The positive width in pixels of the thumbnail image.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
newThumbnail ::
  Thumbnail
newThumbnail =
  Thumbnail
    { contentUrl = Core.Nothing,
      height = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Thumbnail where
  parseJSON =
    Core.withObject
      "Thumbnail"
      ( \o ->
          Thumbnail
            Core.<$> (o Core..:? "contentUrl")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Thumbnail where
  toJSON Thumbnail {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentUrl" Core..=) Core.<$> contentUrl,
            ("height" Core..=) Core.<$> height,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Ungroups objects, such as groups.
--
-- /See:/ 'newUngroupObjectsRequest' smart constructor.
newtype UngroupObjectsRequest = UngroupObjectsRequest
  { -- | The object IDs of the objects to ungroup. Only groups that are not inside other groups can be ungrouped. All the groups should be on the same page. The group itself is deleted. The visual sizes and positions of all the children are preserved.
    objectIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UngroupObjectsRequest' with the minimum fields required to make a request.
newUngroupObjectsRequest ::
  UngroupObjectsRequest
newUngroupObjectsRequest = UngroupObjectsRequest {objectIds = Core.Nothing}

instance Core.FromJSON UngroupObjectsRequest where
  parseJSON =
    Core.withObject
      "UngroupObjectsRequest"
      ( \o ->
          UngroupObjectsRequest
            Core.<$> (o Core..:? "objectIds" Core..!= Core.mempty)
      )

instance Core.ToJSON UngroupObjectsRequest where
  toJSON UngroupObjectsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("objectIds" Core..=) Core.<$> objectIds]
      )

-- | Unmerges cells in a Table.
--
-- /See:/ 'newUnmergeTableCellsRequest' smart constructor.
data UnmergeTableCellsRequest = UnmergeTableCellsRequest
  { -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The table range specifying which cells of the table to unmerge. All merged cells in this range will be unmerged, and cells that are already unmerged will not be affected. If the range has no merged cells, the request will do nothing. If there is text in any of the merged cells, the text will remain in the upper-left (\"head\") cell of the resulting block of unmerged cells.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UnmergeTableCellsRequest' with the minimum fields required to make a request.
newUnmergeTableCellsRequest ::
  UnmergeTableCellsRequest
newUnmergeTableCellsRequest =
  UnmergeTableCellsRequest {objectId = Core.Nothing, tableRange = Core.Nothing}

instance Core.FromJSON UnmergeTableCellsRequest where
  parseJSON =
    Core.withObject
      "UnmergeTableCellsRequest"
      ( \o ->
          UnmergeTableCellsRequest
            Core.<$> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tableRange")
      )

instance Core.ToJSON UnmergeTableCellsRequest where
  toJSON UnmergeTableCellsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("objectId" Core..=) Core.<$> objectId,
            ("tableRange" Core..=) Core.<$> tableRange
          ]
      )

-- | Update the properties of an Image.
--
-- /See:/ 'newUpdateImagePropertiesRequest' smart constructor.
data UpdateImagePropertiesRequest = UpdateImagePropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @imageProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the image outline color, set @fields@ to @\"outline.outlineFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The image properties to update.
    imageProperties :: (Core.Maybe ImageProperties),
    -- | The object ID of the image the updates are applied to.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateImagePropertiesRequest' with the minimum fields required to make a request.
newUpdateImagePropertiesRequest ::
  UpdateImagePropertiesRequest
newUpdateImagePropertiesRequest =
  UpdateImagePropertiesRequest
    { fields = Core.Nothing,
      imageProperties = Core.Nothing,
      objectId = Core.Nothing
    }

instance Core.FromJSON UpdateImagePropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateImagePropertiesRequest"
      ( \o ->
          UpdateImagePropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "imageProperties")
            Core.<*> (o Core..:? "objectId")
      )

instance Core.ToJSON UpdateImagePropertiesRequest where
  toJSON UpdateImagePropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("imageProperties" Core..=) Core.<$> imageProperties,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | Updates the category of a line.
--
-- /See:/ 'newUpdateLineCategoryRequest' smart constructor.
data UpdateLineCategoryRequest = UpdateLineCategoryRequest
  { -- | The line category to update to. The exact line type is determined based on the category to update to and how it\'s routed to connect to other page elements.
    lineCategory :: (Core.Maybe UpdateLineCategoryRequest_LineCategory),
    -- | The object ID of the line the update is applied to. Only a line with a category indicating it is a \"connector\" can be updated. The line may be rerouted after updating its category.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateLineCategoryRequest' with the minimum fields required to make a request.
newUpdateLineCategoryRequest ::
  UpdateLineCategoryRequest
newUpdateLineCategoryRequest =
  UpdateLineCategoryRequest
    { lineCategory = Core.Nothing,
      objectId = Core.Nothing
    }

instance Core.FromJSON UpdateLineCategoryRequest where
  parseJSON =
    Core.withObject
      "UpdateLineCategoryRequest"
      ( \o ->
          UpdateLineCategoryRequest
            Core.<$> (o Core..:? "lineCategory")
            Core.<*> (o Core..:? "objectId")
      )

instance Core.ToJSON UpdateLineCategoryRequest where
  toJSON UpdateLineCategoryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("lineCategory" Core..=) Core.<$> lineCategory,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | Updates the properties of a Line.
--
-- /See:/ 'newUpdateLinePropertiesRequest' smart constructor.
data UpdateLinePropertiesRequest = UpdateLinePropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @lineProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the line solid fill color, set @fields@ to @\"lineFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The line properties to update.
    lineProperties :: (Core.Maybe LineProperties),
    -- | The object ID of the line the update is applied to.
    objectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateLinePropertiesRequest' with the minimum fields required to make a request.
newUpdateLinePropertiesRequest ::
  UpdateLinePropertiesRequest
newUpdateLinePropertiesRequest =
  UpdateLinePropertiesRequest
    { fields = Core.Nothing,
      lineProperties = Core.Nothing,
      objectId = Core.Nothing
    }

instance Core.FromJSON UpdateLinePropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateLinePropertiesRequest"
      ( \o ->
          UpdateLinePropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "lineProperties")
            Core.<*> (o Core..:? "objectId")
      )

instance Core.ToJSON UpdateLinePropertiesRequest where
  toJSON UpdateLinePropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("lineProperties" Core..=) Core.<$> lineProperties,
            ("objectId" Core..=) Core.<$> objectId
          ]
      )

-- | Updates the alt text title and\/or description of a page element.
--
-- /See:/ 'newUpdatePageElementAltTextRequest' smart constructor.
data UpdatePageElementAltTextRequest = UpdatePageElementAltTextRequest
  { -- | The updated alt text description of the page element. If unset the existing value will be maintained. The description is exposed to screen readers and other accessibility interfaces. Only use human readable values related to the content of the page element.
    description :: (Core.Maybe Core.Text),
    -- | The object ID of the page element the updates are applied to.
    objectId :: (Core.Maybe Core.Text),
    -- | The updated alt text title of the page element. If unset the existing value will be maintained. The title is exposed to screen readers and other accessibility interfaces. Only use human readable values related to the content of the page element.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePageElementAltTextRequest' with the minimum fields required to make a request.
newUpdatePageElementAltTextRequest ::
  UpdatePageElementAltTextRequest
newUpdatePageElementAltTextRequest =
  UpdatePageElementAltTextRequest
    { description = Core.Nothing,
      objectId = Core.Nothing,
      title = Core.Nothing
    }

instance
  Core.FromJSON
    UpdatePageElementAltTextRequest
  where
  parseJSON =
    Core.withObject
      "UpdatePageElementAltTextRequest"
      ( \o ->
          UpdatePageElementAltTextRequest
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON UpdatePageElementAltTextRequest where
  toJSON UpdatePageElementAltTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("objectId" Core..=) Core.<$> objectId,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Updates the transform of a page element. Updating the transform of a group will change the absolute transform of the page elements in that group, which can change their visual appearance. See the documentation for PageElement.transform for more details.
--
-- /See:/ 'newUpdatePageElementTransformRequest' smart constructor.
data UpdatePageElementTransformRequest = UpdatePageElementTransformRequest
  { -- | The apply mode of the transform update.
    applyMode :: (Core.Maybe UpdatePageElementTransformRequest_ApplyMode),
    -- | The object ID of the page element to update.
    objectId :: (Core.Maybe Core.Text),
    -- | The input transform matrix used to update the page element.
    transform :: (Core.Maybe AffineTransform)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePageElementTransformRequest' with the minimum fields required to make a request.
newUpdatePageElementTransformRequest ::
  UpdatePageElementTransformRequest
newUpdatePageElementTransformRequest =
  UpdatePageElementTransformRequest
    { applyMode = Core.Nothing,
      objectId = Core.Nothing,
      transform = Core.Nothing
    }

instance
  Core.FromJSON
    UpdatePageElementTransformRequest
  where
  parseJSON =
    Core.withObject
      "UpdatePageElementTransformRequest"
      ( \o ->
          UpdatePageElementTransformRequest
            Core.<$> (o Core..:? "applyMode")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "transform")
      )

instance
  Core.ToJSON
    UpdatePageElementTransformRequest
  where
  toJSON UpdatePageElementTransformRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("applyMode" Core..=) Core.<$> applyMode,
            ("objectId" Core..=) Core.<$> objectId,
            ("transform" Core..=) Core.<$> transform
          ]
      )

-- | Updates the Z-order of page elements. Z-order is an ordering of the elements on the page from back to front. The page element in the front may cover the elements that are behind it.
--
-- /See:/ 'newUpdatePageElementsZOrderRequest' smart constructor.
data UpdatePageElementsZOrderRequest = UpdatePageElementsZOrderRequest
  { -- | The Z-order operation to apply on the page elements. When applying the operation on multiple page elements, the relative Z-orders within these page elements before the operation is maintained.
    operation :: (Core.Maybe UpdatePageElementsZOrderRequest_Operation),
    -- | The object IDs of the page elements to update. All the page elements must be on the same page and must not be grouped.
    pageElementObjectIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePageElementsZOrderRequest' with the minimum fields required to make a request.
newUpdatePageElementsZOrderRequest ::
  UpdatePageElementsZOrderRequest
newUpdatePageElementsZOrderRequest =
  UpdatePageElementsZOrderRequest
    { operation = Core.Nothing,
      pageElementObjectIds = Core.Nothing
    }

instance
  Core.FromJSON
    UpdatePageElementsZOrderRequest
  where
  parseJSON =
    Core.withObject
      "UpdatePageElementsZOrderRequest"
      ( \o ->
          UpdatePageElementsZOrderRequest
            Core.<$> (o Core..:? "operation")
            Core.<*> ( o Core..:? "pageElementObjectIds"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON UpdatePageElementsZOrderRequest where
  toJSON UpdatePageElementsZOrderRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("operation" Core..=) Core.<$> operation,
            ("pageElementObjectIds" Core..=)
              Core.<$> pageElementObjectIds
          ]
      )

-- | Updates the properties of a Page.
--
-- /See:/ 'newUpdatePagePropertiesRequest' smart constructor.
data UpdatePagePropertiesRequest = UpdatePagePropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @pageProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the page background solid fill color, set @fields@ to @\"pageBackgroundFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the page the update is applied to.
    objectId :: (Core.Maybe Core.Text),
    -- | The page properties to update.
    pageProperties :: (Core.Maybe PageProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdatePagePropertiesRequest' with the minimum fields required to make a request.
newUpdatePagePropertiesRequest ::
  UpdatePagePropertiesRequest
newUpdatePagePropertiesRequest =
  UpdatePagePropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      pageProperties = Core.Nothing
    }

instance Core.FromJSON UpdatePagePropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdatePagePropertiesRequest"
      ( \o ->
          UpdatePagePropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "pageProperties")
      )

instance Core.ToJSON UpdatePagePropertiesRequest where
  toJSON UpdatePagePropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("pageProperties" Core..=) Core.<$> pageProperties
          ]
      )

-- | Updates the styling for all of the paragraphs within a Shape or Table that overlap with the given text index range.
--
-- /See:/ 'newUpdateParagraphStyleRequest' smart constructor.
data UpdateParagraphStyleRequest = UpdateParagraphStyleRequest
  { -- | The location of the cell in the table containing the paragraph(s) to style. If @object_id@ refers to a table, @cell_location@ must have a value. Otherwise, it must not.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The fields that should be updated. At least one field must be specified. The root @style@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example, to update the paragraph alignment, set @fields@ to @\"alignment\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the shape or table with the text to be styled.
    objectId :: (Core.Maybe Core.Text),
    -- | The paragraph\'s style.
    style :: (Core.Maybe ParagraphStyle),
    -- | The range of text containing the paragraph(s) to style.
    textRange :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateParagraphStyleRequest' with the minimum fields required to make a request.
newUpdateParagraphStyleRequest ::
  UpdateParagraphStyleRequest
newUpdateParagraphStyleRequest =
  UpdateParagraphStyleRequest
    { cellLocation = Core.Nothing,
      fields = Core.Nothing,
      objectId = Core.Nothing,
      style = Core.Nothing,
      textRange = Core.Nothing
    }

instance Core.FromJSON UpdateParagraphStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateParagraphStyleRequest"
      ( \o ->
          UpdateParagraphStyleRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "style")
            Core.<*> (o Core..:? "textRange")
      )

instance Core.ToJSON UpdateParagraphStyleRequest where
  toJSON UpdateParagraphStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("style" Core..=) Core.<$> style,
            ("textRange" Core..=) Core.<$> textRange
          ]
      )

-- | Update the properties of a Shape.
--
-- /See:/ 'newUpdateShapePropertiesRequest' smart constructor.
data UpdateShapePropertiesRequest = UpdateShapePropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @shapeProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the shape background solid fill color, set @fields@ to @\"shapeBackgroundFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the shape the updates are applied to.
    objectId :: (Core.Maybe Core.Text),
    -- | The shape properties to update.
    shapeProperties :: (Core.Maybe ShapeProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateShapePropertiesRequest' with the minimum fields required to make a request.
newUpdateShapePropertiesRequest ::
  UpdateShapePropertiesRequest
newUpdateShapePropertiesRequest =
  UpdateShapePropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      shapeProperties = Core.Nothing
    }

instance Core.FromJSON UpdateShapePropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateShapePropertiesRequest"
      ( \o ->
          UpdateShapePropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "shapeProperties")
      )

instance Core.ToJSON UpdateShapePropertiesRequest where
  toJSON UpdateShapePropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("shapeProperties" Core..=)
              Core.<$> shapeProperties
          ]
      )

-- | Updates the properties of a Slide.
--
-- /See:/ 'newUpdateSlidePropertiesRequest' smart constructor.
data UpdateSlidePropertiesRequest = UpdateSlidePropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root \'slideProperties\' is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update whether a slide is skipped, set @fields@ to @\"isSkipped\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the slide the update is applied to.
    objectId :: (Core.Maybe Core.Text),
    -- | The slide properties to update.
    slideProperties :: (Core.Maybe SlideProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSlidePropertiesRequest' with the minimum fields required to make a request.
newUpdateSlidePropertiesRequest ::
  UpdateSlidePropertiesRequest
newUpdateSlidePropertiesRequest =
  UpdateSlidePropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      slideProperties = Core.Nothing
    }

instance Core.FromJSON UpdateSlidePropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateSlidePropertiesRequest"
      ( \o ->
          UpdateSlidePropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "slideProperties")
      )

instance Core.ToJSON UpdateSlidePropertiesRequest where
  toJSON UpdateSlidePropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("slideProperties" Core..=)
              Core.<$> slideProperties
          ]
      )

-- | Updates the position of slides in the presentation.
--
-- /See:/ 'newUpdateSlidesPositionRequest' smart constructor.
data UpdateSlidesPositionRequest = UpdateSlidesPositionRequest
  { -- | The index where the slides should be inserted, based on the slide arrangement before the move takes place. Must be between zero and the number of slides in the presentation, inclusive.
    insertionIndex :: (Core.Maybe Core.Int32),
    -- | The IDs of the slides in the presentation that should be moved. The slides in this list must be in existing presentation order, without duplicates.
    slideObjectIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateSlidesPositionRequest' with the minimum fields required to make a request.
newUpdateSlidesPositionRequest ::
  UpdateSlidesPositionRequest
newUpdateSlidesPositionRequest =
  UpdateSlidesPositionRequest
    { insertionIndex = Core.Nothing,
      slideObjectIds = Core.Nothing
    }

instance Core.FromJSON UpdateSlidesPositionRequest where
  parseJSON =
    Core.withObject
      "UpdateSlidesPositionRequest"
      ( \o ->
          UpdateSlidesPositionRequest
            Core.<$> (o Core..:? "insertionIndex")
            Core.<*> (o Core..:? "slideObjectIds" Core..!= Core.mempty)
      )

instance Core.ToJSON UpdateSlidesPositionRequest where
  toJSON UpdateSlidesPositionRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertionIndex" Core..=) Core.<$> insertionIndex,
            ("slideObjectIds" Core..=) Core.<$> slideObjectIds
          ]
      )

-- | Updates the properties of the table borders in a Table.
--
-- /See:/ 'newUpdateTableBorderPropertiesRequest' smart constructor.
data UpdateTableBorderPropertiesRequest = UpdateTableBorderPropertiesRequest
  { -- | The border position in the table range the updates should apply to. If a border position is not specified, the updates will apply to all borders in the table range.
    borderPosition :: (Core.Maybe UpdateTableBorderPropertiesRequest_BorderPosition),
    -- | The fields that should be updated. At least one field must be specified. The root @tableBorderProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the table border solid fill color, set @fields@ to @\"tableBorderFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The table border properties to update.
    tableBorderProperties :: (Core.Maybe TableBorderProperties),
    -- | The table range representing the subset of the table to which the updates are applied. If a table range is not specified, the updates will apply to the entire table.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableBorderPropertiesRequest' with the minimum fields required to make a request.
newUpdateTableBorderPropertiesRequest ::
  UpdateTableBorderPropertiesRequest
newUpdateTableBorderPropertiesRequest =
  UpdateTableBorderPropertiesRequest
    { borderPosition = Core.Nothing,
      fields = Core.Nothing,
      objectId = Core.Nothing,
      tableBorderProperties = Core.Nothing,
      tableRange = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateTableBorderPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateTableBorderPropertiesRequest"
      ( \o ->
          UpdateTableBorderPropertiesRequest
            Core.<$> (o Core..:? "borderPosition")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tableBorderProperties")
            Core.<*> (o Core..:? "tableRange")
      )

instance
  Core.ToJSON
    UpdateTableBorderPropertiesRequest
  where
  toJSON UpdateTableBorderPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("borderPosition" Core..=) Core.<$> borderPosition,
            ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("tableBorderProperties" Core..=)
              Core.<$> tableBorderProperties,
            ("tableRange" Core..=) Core.<$> tableRange
          ]
      )

-- | Update the properties of a TableCell.
--
-- /See:/ 'newUpdateTableCellPropertiesRequest' smart constructor.
data UpdateTableCellPropertiesRequest = UpdateTableCellPropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @tableCellProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the table cell background solid fill color, set @fields@ to @\"tableCellBackgroundFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The table cell properties to update.
    tableCellProperties :: (Core.Maybe TableCellProperties),
    -- | The table range representing the subset of the table to which the updates are applied. If a table range is not specified, the updates will apply to the entire table.
    tableRange :: (Core.Maybe TableRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableCellPropertiesRequest' with the minimum fields required to make a request.
newUpdateTableCellPropertiesRequest ::
  UpdateTableCellPropertiesRequest
newUpdateTableCellPropertiesRequest =
  UpdateTableCellPropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      tableCellProperties = Core.Nothing,
      tableRange = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateTableCellPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateTableCellPropertiesRequest"
      ( \o ->
          UpdateTableCellPropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tableCellProperties")
            Core.<*> (o Core..:? "tableRange")
      )

instance Core.ToJSON UpdateTableCellPropertiesRequest where
  toJSON UpdateTableCellPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("tableCellProperties" Core..=)
              Core.<$> tableCellProperties,
            ("tableRange" Core..=) Core.<$> tableRange
          ]
      )

-- | Updates the properties of a Table column.
--
-- /See:/ 'newUpdateTableColumnPropertiesRequest' smart constructor.
data UpdateTableColumnPropertiesRequest = UpdateTableColumnPropertiesRequest
  { -- | The list of zero-based indices specifying which columns to update. If no indices are provided, all columns in the table will be updated.
    columnIndices :: (Core.Maybe [Core.Int32]),
    -- | The fields that should be updated. At least one field must be specified. The root @tableColumnProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the column width, set @fields@ to @\"column_width\"@. If \'\"column_width\"\' is included in the field mask but the property is left unset, the column width will default to 406,400 EMU (32 points).
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The table column properties to update. If the value of @table_column_properties#column_width@ in the request is less than 406,400 EMU (32 points), a 400 bad request error is returned.
    tableColumnProperties :: (Core.Maybe TableColumnProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableColumnPropertiesRequest' with the minimum fields required to make a request.
newUpdateTableColumnPropertiesRequest ::
  UpdateTableColumnPropertiesRequest
newUpdateTableColumnPropertiesRequest =
  UpdateTableColumnPropertiesRequest
    { columnIndices = Core.Nothing,
      fields = Core.Nothing,
      objectId = Core.Nothing,
      tableColumnProperties = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateTableColumnPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateTableColumnPropertiesRequest"
      ( \o ->
          UpdateTableColumnPropertiesRequest
            Core.<$> (o Core..:? "columnIndices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "tableColumnProperties")
      )

instance
  Core.ToJSON
    UpdateTableColumnPropertiesRequest
  where
  toJSON UpdateTableColumnPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIndices" Core..=) Core.<$> columnIndices,
            ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("tableColumnProperties" Core..=)
              Core.<$> tableColumnProperties
          ]
      )

-- | Updates the properties of a Table row.
--
-- /See:/ 'newUpdateTableRowPropertiesRequest' smart constructor.
data UpdateTableRowPropertiesRequest = UpdateTableRowPropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @tableRowProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the minimum row height, set @fields@ to @\"min_row_height\"@. If \'\"min/row/height\"\' is included in the field mask but the property is left unset, the minimum row height will default to 0.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the table.
    objectId :: (Core.Maybe Core.Text),
    -- | The list of zero-based indices specifying which rows to update. If no indices are provided, all rows in the table will be updated.
    rowIndices :: (Core.Maybe [Core.Int32]),
    -- | The table row properties to update.
    tableRowProperties :: (Core.Maybe TableRowProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTableRowPropertiesRequest' with the minimum fields required to make a request.
newUpdateTableRowPropertiesRequest ::
  UpdateTableRowPropertiesRequest
newUpdateTableRowPropertiesRequest =
  UpdateTableRowPropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      rowIndices = Core.Nothing,
      tableRowProperties = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateTableRowPropertiesRequest
  where
  parseJSON =
    Core.withObject
      "UpdateTableRowPropertiesRequest"
      ( \o ->
          UpdateTableRowPropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "rowIndices" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tableRowProperties")
      )

instance Core.ToJSON UpdateTableRowPropertiesRequest where
  toJSON UpdateTableRowPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("rowIndices" Core..=) Core.<$> rowIndices,
            ("tableRowProperties" Core..=)
              Core.<$> tableRowProperties
          ]
      )

-- | Update the styling of text in a Shape or Table.
--
-- /See:/ 'newUpdateTextStyleRequest' smart constructor.
data UpdateTextStyleRequest = UpdateTextStyleRequest
  { -- | The location of the cell in the table containing the text to style. If @object_id@ refers to a table, @cell_location@ must have a value. Otherwise, it must not.
    cellLocation :: (Core.Maybe TableCellLocation),
    -- | The fields that should be updated. At least one field must be specified. The root @style@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example, to update the text style to bold, set @fields@ to @\"bold\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the shape or table with the text to be styled.
    objectId :: (Core.Maybe Core.Text),
    -- | The style(s) to set on the text. If the value for a particular style matches that of the parent, that style will be set to inherit. Certain text style changes may cause other changes meant to mirror the behavior of the Slides editor. See the documentation of TextStyle for more information.
    style :: (Core.Maybe TextStyle),
    -- | The range of text to style. The range may be extended to include adjacent newlines. If the range fully contains a paragraph belonging to a list, the paragraph\'s bullet is also updated with the matching text style.
    textRange :: (Core.Maybe Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateTextStyleRequest' with the minimum fields required to make a request.
newUpdateTextStyleRequest ::
  UpdateTextStyleRequest
newUpdateTextStyleRequest =
  UpdateTextStyleRequest
    { cellLocation = Core.Nothing,
      fields = Core.Nothing,
      objectId = Core.Nothing,
      style = Core.Nothing,
      textRange = Core.Nothing
    }

instance Core.FromJSON UpdateTextStyleRequest where
  parseJSON =
    Core.withObject
      "UpdateTextStyleRequest"
      ( \o ->
          UpdateTextStyleRequest
            Core.<$> (o Core..:? "cellLocation")
            Core.<*> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "style")
            Core.<*> (o Core..:? "textRange")
      )

instance Core.ToJSON UpdateTextStyleRequest where
  toJSON UpdateTextStyleRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("cellLocation" Core..=) Core.<$> cellLocation,
            ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("style" Core..=) Core.<$> style,
            ("textRange" Core..=) Core.<$> textRange
          ]
      )

-- | Update the properties of a Video.
--
-- /See:/ 'newUpdateVideoPropertiesRequest' smart constructor.
data UpdateVideoPropertiesRequest = UpdateVideoPropertiesRequest
  { -- | The fields that should be updated. At least one field must be specified. The root @videoProperties@ is implied and should not be specified. A single @\"*\"@ can be used as short-hand for listing every field. For example to update the video outline color, set @fields@ to @\"outline.outlineFill.solidFill.color\"@. To reset a property to its default value, include its field name in the field mask but leave the field itself unset.
    fields :: (Core.Maybe Core.GFieldMask),
    -- | The object ID of the video the updates are applied to.
    objectId :: (Core.Maybe Core.Text),
    -- | The video properties to update.
    videoProperties :: (Core.Maybe VideoProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateVideoPropertiesRequest' with the minimum fields required to make a request.
newUpdateVideoPropertiesRequest ::
  UpdateVideoPropertiesRequest
newUpdateVideoPropertiesRequest =
  UpdateVideoPropertiesRequest
    { fields = Core.Nothing,
      objectId = Core.Nothing,
      videoProperties = Core.Nothing
    }

instance Core.FromJSON UpdateVideoPropertiesRequest where
  parseJSON =
    Core.withObject
      "UpdateVideoPropertiesRequest"
      ( \o ->
          UpdateVideoPropertiesRequest
            Core.<$> (o Core..:? "fields")
            Core.<*> (o Core..:? "objectId")
            Core.<*> (o Core..:? "videoProperties")
      )

instance Core.ToJSON UpdateVideoPropertiesRequest where
  toJSON UpdateVideoPropertiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("fields" Core..=) Core.<$> fields,
            ("objectId" Core..=) Core.<$> objectId,
            ("videoProperties" Core..=)
              Core.<$> videoProperties
          ]
      )

-- | A PageElement kind representing a video.
--
-- /See:/ 'newVideo' smart constructor.
data Video = Video
  { -- | The video source\'s unique identifier for this video.
    id :: (Core.Maybe Core.Text),
    -- | The video source.
    source :: (Core.Maybe Video_Source),
    -- | An URL to a video. The URL is valid as long as the source video exists and sharing settings do not change.
    url :: (Core.Maybe Core.Text),
    -- | The properties of the video.
    videoProperties :: (Core.Maybe VideoProperties)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
newVideo ::
  Video
newVideo =
  Video
    { id = Core.Nothing,
      source = Core.Nothing,
      url = Core.Nothing,
      videoProperties = Core.Nothing
    }

instance Core.FromJSON Video where
  parseJSON =
    Core.withObject
      "Video"
      ( \o ->
          Video
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "url")
            Core.<*> (o Core..:? "videoProperties")
      )

instance Core.ToJSON Video where
  toJSON Video {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("source" Core..=) Core.<$> source,
            ("url" Core..=) Core.<$> url,
            ("videoProperties" Core..=)
              Core.<$> videoProperties
          ]
      )

-- | The properties of the Video.
--
-- /See:/ 'newVideoProperties' smart constructor.
data VideoProperties = VideoProperties
  { -- | Whether to enable video autoplay when the page is displayed in present mode. Defaults to false.
    autoPlay :: (Core.Maybe Core.Bool),
    -- | The time at which to end playback, measured in seconds from the beginning of the video. If set, the end time should be after the start time. If not set or if you set this to a value that exceeds the video\'s length, the video will be played until its end.
    end :: (Core.Maybe Core.Word32),
    -- | Whether to mute the audio during video playback. Defaults to false.
    mute :: (Core.Maybe Core.Bool),
    -- | The outline of the video. The default outline matches the defaults for new videos created in the Slides editor.
    outline :: (Core.Maybe Outline),
    -- | The time at which to start playback, measured in seconds from the beginning of the video. If set, the start time should be before the end time. If you set this to a value that exceeds the video\'s length in seconds, the video will be played from the last second. If not set, the video will be played from the beginning.
    start :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VideoProperties' with the minimum fields required to make a request.
newVideoProperties ::
  VideoProperties
newVideoProperties =
  VideoProperties
    { autoPlay = Core.Nothing,
      end = Core.Nothing,
      mute = Core.Nothing,
      outline = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON VideoProperties where
  parseJSON =
    Core.withObject
      "VideoProperties"
      ( \o ->
          VideoProperties
            Core.<$> (o Core..:? "autoPlay")
            Core.<*> (o Core..:? "end")
            Core.<*> (o Core..:? "mute")
            Core.<*> (o Core..:? "outline")
            Core.<*> (o Core..:? "start")
      )

instance Core.ToJSON VideoProperties where
  toJSON VideoProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoPlay" Core..=) Core.<$> autoPlay,
            ("end" Core..=) Core.<$> end,
            ("mute" Core..=) Core.<$> mute,
            ("outline" Core..=) Core.<$> outline,
            ("start" Core..=) Core.<$> start
          ]
      )

-- | Represents a font family and weight used to style a TextRun.
--
-- /See:/ 'newWeightedFontFamily' smart constructor.
data WeightedFontFamily = WeightedFontFamily
  { -- | The font family of the text. The font family can be any font from the Font menu in Slides or from [Google Fonts] (https:\/\/fonts.google.com\/). If the font name is unrecognized, the text is rendered in @Arial@.
    fontFamily :: (Core.Maybe Core.Text),
    -- | The rendered weight of the text. This field can have any value that is a multiple of @100@ between @100@ and @900@, inclusive. This range corresponds to the numerical values described in the CSS 2.1 Specification, <https://www.w3.org/TR/CSS21/fonts.html#font-boldness section 15.6>, with non-numerical values disallowed. Weights greater than or equal to @700@ are considered bold, and weights less than @700@are not bold. The default value is @400@ (\"normal\").
    weight :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WeightedFontFamily' with the minimum fields required to make a request.
newWeightedFontFamily ::
  WeightedFontFamily
newWeightedFontFamily =
  WeightedFontFamily {fontFamily = Core.Nothing, weight = Core.Nothing}

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

-- | A PageElement kind representing word art.
--
-- /See:/ 'newWordArt' smart constructor.
newtype WordArt = WordArt
  { -- | The text rendered as word art.
    renderedText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WordArt' with the minimum fields required to make a request.
newWordArt ::
  WordArt
newWordArt = WordArt {renderedText = Core.Nothing}

instance Core.FromJSON WordArt where
  parseJSON =
    Core.withObject
      "WordArt"
      (\o -> WordArt Core.<$> (o Core..:? "renderedText"))

instance Core.ToJSON WordArt where
  toJSON WordArt {..} =
    Core.object
      ( Core.catMaybes
          [("renderedText" Core..=) Core.<$> renderedText]
      )

-- | Provides control over how write requests are executed.
--
-- /See:/ 'newWriteControl' smart constructor.
newtype WriteControl = WriteControl
  { -- | The revision ID of the presentation required for the write request. If specified and the @required_revision_id@ doesn\'t exactly match the presentation\'s current @revision_id@, the request will not be processed and will return a 400 bad request error.
    requiredRevisionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WriteControl' with the minimum fields required to make a request.
newWriteControl ::
  WriteControl
newWriteControl = WriteControl {requiredRevisionId = Core.Nothing}

instance Core.FromJSON WriteControl where
  parseJSON =
    Core.withObject
      "WriteControl"
      ( \o ->
          WriteControl
            Core.<$> (o Core..:? "requiredRevisionId")
      )

instance Core.ToJSON WriteControl where
  toJSON WriteControl {..} =
    Core.object
      ( Core.catMaybes
          [ ("requiredRevisionId" Core..=)
              Core.<$> requiredRevisionId
          ]
      )
