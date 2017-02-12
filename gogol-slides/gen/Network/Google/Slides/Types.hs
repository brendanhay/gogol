{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Slides.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Slides.Types
    (
    -- * Service Configuration
      slidesService

    -- * OAuth Scopes
    , spreadsheetsReadOnlyScope
    , presentationsScope
    , driveReadOnlyScope
    , driveScope
    , spreadsheetsScope
    , presentationsReadOnlyScope

    -- * ParagraphMarker
    , ParagraphMarker
    , paragraphMarker
    , pmStyle
    , pmBullet

    -- * DeleteTableRowRequest
    , DeleteTableRowRequest
    , deleteTableRowRequest
    , dtrrCellLocation
    , dtrrTableObjectId

    -- * ParagraphStyleDirection
    , ParagraphStyleDirection (..)

    -- * PageElementProperties
    , PageElementProperties
    , pageElementProperties
    , pepTransform
    , pepSize
    , pepPageObjectId

    -- * TextStyleBaselineOffSet
    , TextStyleBaselineOffSet (..)

    -- * ReplaceAllShapesWithImageResponse
    , ReplaceAllShapesWithImageResponse
    , replaceAllShapesWithImageResponse
    , raswirOccurrencesChanged

    -- * RangeType
    , RangeType (..)

    -- * OutlineFill
    , OutlineFill
    , outlineFill
    , ofSolidFill

    -- * Image
    , Image
    , image
    , iImageProperties
    , iContentURL

    -- * UpdateLinePropertiesRequest
    , UpdateLinePropertiesRequest
    , updateLinePropertiesRequest
    , ulprLineProperties
    , ulprObjectId
    , ulprFields

    -- * CropProperties
    , CropProperties
    , cropProperties
    , cpBottomOffSet
    , cpTopOffSet
    , cpAngle
    , cpRightOffSet
    , cpLeftOffSet

    -- * LineProperties
    , LineProperties
    , lineProperties
    , lpWeight
    , lpLink
    , lpDashStyle
    , lpStartArrow
    , lpLineFill
    , lpEndArrow

    -- * Group
    , Group
    , group'
    , gChildren

    -- * BatchUpdatePresentationRequest
    , BatchUpdatePresentationRequest
    , batchUpdatePresentationRequest
    , buprRequests

    -- * CreateShapeRequest
    , CreateShapeRequest
    , createShapeRequest
    , csrShapeType
    , csrObjectId
    , csrElementProperties

    -- * PageBackgRoundFillPropertyState
    , PageBackgRoundFillPropertyState (..)

    -- * AutoText
    , AutoText
    , autoText
    , atStyle
    , atContent
    , atType

    -- * List
    , List
    , list
    , lListId
    , lNestingLevel

    -- * RgbColor
    , RgbColor
    , rgbColor
    , rcRed
    , rcGreen
    , rcBlue

    -- * UpdatePagePropertiesRequest
    , UpdatePagePropertiesRequest
    , updatePagePropertiesRequest
    , upprObjectId
    , upprPageProperties
    , upprFields

    -- * CreateSheetsChartRequest
    , CreateSheetsChartRequest
    , createSheetsChartRequest
    , cscrObjectId
    , cscrSpreadsheetId
    , cscrLinkingMode
    , cscrElementProperties
    , cscrChartId

    -- * CreateParagraphBulletsRequestBulletPreset
    , CreateParagraphBulletsRequestBulletPreset (..)

    -- * CreateShapeRequestShapeType
    , CreateShapeRequestShapeType (..)

    -- * LayoutReferencePredefinedLayout
    , LayoutReferencePredefinedLayout (..)

    -- * DeleteTextRequest
    , DeleteTextRequest
    , deleteTextRequest
    , dtrTextRange
    , dtrObjectId
    , dtrCellLocation

    -- * InsertTableColumnsRequest
    , InsertTableColumnsRequest
    , insertTableColumnsRequest
    , itcrInsertRight
    , itcrNumber
    , itcrCellLocation
    , itcrTableObjectId

    -- * TextContentLists
    , TextContentLists
    , textContentLists
    , tclAddtional

    -- * Size
    , Size
    , size
    , sHeight
    , sWidth

    -- * StretchedPictureFill
    , StretchedPictureFill
    , stretchedPictureFill
    , spfSize
    , spfContentURL

    -- * CreateLineRequestLineCategory
    , CreateLineRequestLineCategory (..)

    -- * SheetsChart
    , SheetsChart
    , sheetsChart
    , scSpreadsheetId
    , scContentURL
    , scSheetsChartProperties
    , scChartId

    -- * CreateShapeResponse
    , CreateShapeResponse
    , createShapeResponse
    , cObjectId

    -- * DeleteTableColumnRequest
    , DeleteTableColumnRequest
    , deleteTableColumnRequest
    , dtcrCellLocation
    , dtcrTableObjectId

    -- * ShapeShapeType
    , ShapeShapeType (..)

    -- * OutlinePropertyState
    , OutlinePropertyState (..)

    -- * Link
    , Link
    , link
    , lURL
    , lPageObjectId
    , lRelativeLink
    , lSlideIndex

    -- * Dimension
    , Dimension
    , dimension
    , dMagnitude
    , dUnit

    -- * BatchUpdatePresentationResponse
    , BatchUpdatePresentationResponse
    , batchUpdatePresentationResponse
    , buprPresentationId
    , buprReplies

    -- * DuplicateObjectRequestObjectIds
    , DuplicateObjectRequestObjectIds
    , duplicateObjectRequestObjectIds
    , doroiAddtional

    -- * CreateTableRequest
    , CreateTableRequest
    , createTableRequest
    , ctrObjectId
    , ctrRows
    , ctrElementProperties
    , ctrColumns

    -- * Response
    , Response
    , response
    , rReplaceAllShapesWithImage
    , rCreateLine
    , rReplaceAllText
    , rCreateShape
    , rCreateSheetsChart
    , rDuplicateObject
    , rCreateTable
    , rCreateVideo
    , rCreateImage
    , rCreateSlide

    -- * OptionalColor
    , OptionalColor
    , optionalColor
    , ocOpaqueColor

    -- * DuplicateObjectRequest
    , DuplicateObjectRequest
    , duplicateObjectRequest
    , dorObjectId
    , dorObjectIds

    -- * PlaceholderType
    , PlaceholderType (..)

    -- * Page
    , Page
    , page
    , pObjectId
    , pPageElements
    , pSlideProperties
    , pPageProperties
    , pLayoutProperties
    , pPageType

    -- * ReplaceAllTextResponse
    , ReplaceAllTextResponse
    , replaceAllTextResponse
    , ratrOccurrencesChanged

    -- * ReplaceAllShapesWithImageRequestReplaceMethod
    , ReplaceAllShapesWithImageRequestReplaceMethod (..)

    -- * Bullet
    , Bullet
    , bullet
    , bGlyph
    , bListId
    , bNestingLevel
    , bBulletStyle

    -- * CreateSheetsChartRequestLinkingMode
    , CreateSheetsChartRequestLinkingMode (..)

    -- * UpdateImagePropertiesRequest
    , UpdateImagePropertiesRequest
    , updateImagePropertiesRequest
    , uiprObjectId
    , uiprImageProperties
    , uiprFields

    -- * SlideProperties
    , SlideProperties
    , slideProperties
    , spLayoutObjectId
    , spMasterObjectId

    -- * Presentation
    , Presentation
    , presentation
    , pSlides
    , pMasters
    , pLocale
    , pPresentationId
    , pTitle
    , pPageSize
    , pLayouts

    -- * ThemeColorPair
    , ThemeColorPair
    , themeColorPair
    , tcpColor
    , tcpType

    -- * ShapeBackgRoundFillPropertyState
    , ShapeBackgRoundFillPropertyState (..)

    -- * OpaqueColorThemeColor
    , OpaqueColorThemeColor (..)

    -- * Shadow
    , Shadow
    , shadow
    , sTransform
    , sColor
    , sBlurRadius
    , sRotateWithShape
    , sAlpha
    , sAlignment
    , sPropertyState
    , sType

    -- * LinePropertiesDashStyle
    , LinePropertiesDashStyle (..)

    -- * ImageProperties
    , ImageProperties
    , imageProperties
    , ipCropProperties
    , ipLink
    , ipTransparency
    , ipShadow
    , ipContrast
    , ipRecolor
    , ipOutline
    , ipBrightness

    -- * ParagraphStyleAlignment
    , ParagraphStyleAlignment (..)

    -- * Line
    , Line
    , line
    , lLineProperties
    , lLineType

    -- * CreateVideoResponse
    , CreateVideoResponse
    , createVideoResponse
    , cvrObjectId

    -- * LayoutReference
    , LayoutReference
    , layoutReference
    , lrPredefinedLayout
    , lrLayoutId

    -- * LineFill
    , LineFill
    , lineFill
    , lfSolidFill

    -- * UpdatePageElementTransformRequest
    , UpdatePageElementTransformRequest
    , updatePageElementTransformRequest
    , upetrTransform
    , upetrObjectId
    , upetrApplyMode

    -- * ShadowAlignment
    , ShadowAlignment (..)

    -- * InsertTableRowsRequest
    , InsertTableRowsRequest
    , insertTableRowsRequest
    , itrrInsertBelow
    , itrrNumber
    , itrrCellLocation
    , itrrTableObjectId

    -- * LinePropertiesEndArrow
    , LinePropertiesEndArrow (..)

    -- * Video
    , Video
    , video
    , vURL
    , vSource
    , vId
    , vVideoProperties

    -- * TableCellBackgRoundFillPropertyState
    , TableCellBackgRoundFillPropertyState (..)

    -- * CreateVideoRequestSource
    , CreateVideoRequestSource (..)

    -- * TableCellProperties
    , TableCellProperties
    , tableCellProperties
    , tcpTableCellBackgRoundFill

    -- * CreateLineResponse
    , CreateLineResponse
    , createLineResponse
    , clrObjectId

    -- * WordArt
    , WordArt
    , wordArt
    , waRenderedText

    -- * TableCellBackgRoundFill
    , TableCellBackgRoundFill
    , tableCellBackgRoundFill
    , tcbrfSolidFill
    , tcbrfPropertyState

    -- * LinkRelativeLink
    , LinkRelativeLink (..)

    -- * VideoSource
    , VideoSource (..)

    -- * TextRun
    , TextRun
    , textRun
    , trStyle
    , trContent

    -- * RefreshSheetsChartRequest
    , RefreshSheetsChartRequest
    , refreshSheetsChartRequest
    , rscrObjectId

    -- * TableRow
    , TableRow
    , tableRow
    , trTableCells
    , trRowHeight

    -- * CreateVideoRequest
    , CreateVideoRequest
    , createVideoRequest
    , creObjectId
    , creElementProperties
    , creSource
    , creId

    -- * TextContent
    , TextContent
    , textContent
    , tcTextElements
    , tcLists

    -- * Shape
    , Shape
    , shape
    , sShapeType
    , sText
    , sPlaceholder
    , sShapeProperties

    -- * AffineTransform
    , AffineTransform
    , affineTransform
    , atTranslateX
    , atShearY
    , atTranslateY
    , atShearX
    , atScaleX
    , atUnit
    , atScaleY

    -- * CreateSheetsChartResponse
    , CreateSheetsChartResponse
    , createSheetsChartResponse
    , cscrsObjectId

    -- * Range
    , Range
    , range
    , rEndIndex
    , rType
    , rStartIndex

    -- * CreateImageRequest
    , CreateImageRequest
    , createImageRequest
    , cirObjectId
    , cirURL
    , cirElementProperties

    -- * Xgafv
    , Xgafv (..)

    -- * AutoTextType
    , AutoTextType (..)

    -- * TextStyle
    , TextStyle
    , textStyle
    , tsFontFamily
    , tsLink
    , tsBackgRoundColor
    , tsBaselineOffSet
    , tsForegRoundColor
    , tsFontSize
    , tsSmallCaps
    , tsUnderline
    , tsItalic
    , tsBold
    , tsStrikethrough

    -- * SolidFill
    , SolidFill
    , solidFill
    , sfColor
    , sfAlpha

    -- * UpdateTextStyleRequest
    , UpdateTextStyleRequest
    , updateTextStyleRequest
    , utsrStyle
    , utsrTextRange
    , utsrObjectId
    , utsrCellLocation
    , utsrFields

    -- * Recolor
    , Recolor
    , recolor
    , rRecolorStops

    -- * PageProperties
    , PageProperties
    , pageProperties
    , ppPageBackgRoundFill
    , ppColorScheme

    -- * PageBackgRoundFill
    , PageBackgRoundFill
    , pageBackgRoundFill
    , pbrfStretchedPictureFill
    , pbrfSolidFill
    , pbrfPropertyState

    -- * NestingLevel
    , NestingLevel
    , nestingLevel
    , nlBulletStyle

    -- * OpaqueColor
    , OpaqueColor
    , opaqueColor
    , ocThemeColor
    , ocRgbColor

    -- * CreateSlideRequest
    , CreateSlideRequest
    , createSlideRequest
    , csrsObjectId
    , csrsSlideLayoutReference
    , csrsInsertionIndex

    -- * TableCellLocation
    , TableCellLocation
    , tableCellLocation
    , tclColumnIndex
    , tclRowIndex

    -- * UpdateSlidesPositionRequest
    , UpdateSlidesPositionRequest
    , updateSlidesPositionRequest
    , usprSlideObjectIds
    , usprInsertionIndex

    -- * ReplaceAllShapesWithImageRequest
    , ReplaceAllShapesWithImageRequest
    , replaceAllShapesWithImageRequest
    , raswirContainsText
    , raswirImageURL
    , raswirReplaceMethod

    -- * PageElement
    , PageElement
    , pageElement
    , peTransform
    , peImage
    , peSize
    , peSheetsChart
    , peObjectId
    , peLine
    , peElementGroup
    , peVideo
    , peWordArt
    , peShape
    , peTitle
    , peTable
    , peDescription

    -- * ColorStop
    , ColorStop
    , colorStop
    , csColor
    , csAlpha
    , csPosition

    -- * DeleteObjectRequest
    , DeleteObjectRequest
    , deleteObjectRequest
    , dObjectId

    -- * CreateSlideResponse
    , CreateSlideResponse
    , createSlideResponse
    , ccObjectId

    -- * ColorScheme
    , ColorScheme
    , colorScheme
    , csColors

    -- * TableCell
    , TableCell
    , tableCell
    , tcColumnSpan
    , tcLocation
    , tcText
    , tcRowSpan
    , tcTableCellProperties

    -- * ListNestingLevel
    , ListNestingLevel
    , listNestingLevel
    , lnlAddtional

    -- * Outline
    , Outline
    , outline
    , oOutlineFill
    , oWeight
    , oDashStyle
    , oPropertyState

    -- * UpdateVideoPropertiesRequest
    , UpdateVideoPropertiesRequest
    , updateVideoPropertiesRequest
    , uvprObjectId
    , uvprVideoProperties
    , uvprFields

    -- * VideoProperties
    , VideoProperties
    , videoProperties
    , vpOutline

    -- * LineLineType
    , LineLineType (..)

    -- * PagePageType
    , PagePageType (..)

    -- * CreateImageResponse
    , CreateImageResponse
    , createImageResponse
    , ciriObjectId

    -- * TextElement
    , TextElement
    , textElement
    , teParagraphMarker
    , teAutoText
    , teEndIndex
    , teTextRun
    , teStartIndex

    -- * ParagraphStyleSpacingMode
    , ParagraphStyleSpacingMode (..)

    -- * InsertTextRequest
    , InsertTextRequest
    , insertTextRequest
    , itrText
    , itrObjectId
    , itrInsertionIndex
    , itrCellLocation

    -- * CreateLineRequest
    , CreateLineRequest
    , createLineRequest
    , clrlObjectId
    , clrlLineCategory
    , clrlElementProperties

    -- * Placeholder
    , Placeholder
    , placeholder
    , pParentObjectId
    , pType
    , pIndex

    -- * LayoutProperties
    , LayoutProperties
    , layoutProperties
    , lpMasterObjectId
    , lpName
    , lpDisplayName

    -- * UpdateShapePropertiesRequest
    , UpdateShapePropertiesRequest
    , updateShapePropertiesRequest
    , usprObjectId
    , usprShapeProperties
    , usprFields

    -- * Table
    , Table
    , table
    , tTableRows
    , tRows
    , tColumns
    , tTableColumns

    -- * ThemeColorPairType
    , ThemeColorPairType (..)

    -- * LinePropertiesStartArrow
    , LinePropertiesStartArrow (..)

    -- * ShapeProperties
    , ShapeProperties
    , shapeProperties
    , spLink
    , spShadow
    , spOutline
    , spShapeBackgRoundFill

    -- * ShadowPropertyState
    , ShadowPropertyState (..)

    -- * ShadowType
    , ShadowType (..)

    -- * ShapeBackgRoundFill
    , ShapeBackgRoundFill
    , shapeBackgRoundFill
    , sbrfSolidFill
    , sbrfPropertyState

    -- * UpdatePageElementTransformRequestApplyMode
    , UpdatePageElementTransformRequestApplyMode (..)

    -- * CreateParagraphBulletsRequest
    , CreateParagraphBulletsRequest
    , createParagraphBulletsRequest
    , cpbrTextRange
    , cpbrObjectId
    , cpbrBulletPreset
    , cpbrCellLocation

    -- * DimensionUnit
    , DimensionUnit (..)

    -- * OutlineDashStyle
    , OutlineDashStyle (..)

    -- * AffineTransformUnit
    , AffineTransformUnit (..)

    -- * UpdateTableCellPropertiesRequest
    , UpdateTableCellPropertiesRequest
    , updateTableCellPropertiesRequest
    , utcprObjectId
    , utcprTableCellProperties
    , utcprTableRange
    , utcprFields

    -- * SheetsChartProperties
    , SheetsChartProperties
    , sheetsChartProperties
    , scpChartImageProperties

    -- * ParagraphStyle
    , ParagraphStyle
    , paragraphStyle
    , psLineSpacing
    , psDirection
    , psIndentFirstLine
    , psIndentEnd
    , psIndentStart
    , psAlignment
    , psSpaceBelow
    , psSpacingMode
    , psSpaceAbove

    -- * CreateTableResponse
    , CreateTableResponse
    , createTableResponse
    , ctrtObjectId

    -- * TableColumnProperties
    , TableColumnProperties
    , tableColumnProperties
    , tcpColumnWidth

    -- * DuplicateObjectResponse
    , DuplicateObjectResponse
    , duplicateObjectResponse
    , dupObjectId

    -- * ReplaceAllTextRequest
    , ReplaceAllTextRequest
    , replaceAllTextRequest
    , ratrContainsText
    , ratrReplaceText

    -- * TableRange
    , TableRange
    , tableRange
    , trColumnSpan
    , trLocation
    , trRowSpan

    -- * Request'
    , Request'
    , request'
    , reqReplaceAllShapesWithImage
    , reqDeleteObject
    , reqUpdateSlidesPosition
    , reqUpdateShapeProperties
    , reqCreateParagraphBullets
    , reqCreateLine
    , reqInsertText
    , reqDeleteTableRow
    , reqUpdateTableCellProperties
    , reqReplaceAllText
    , reqCreateShape
    , reqUpdatePageProperties
    , reqUpdateLineProperties
    , reqDeleteTableColumn
    , reqDeleteText
    , reqCreateSheetsChart
    , reqInsertTableColumns
    , reqUpdateImageProperties
    , reqDuplicateObject
    , reqCreateTable
    , reqCreateVideo
    , reqRefreshSheetsChart
    , reqUpdatePageElementTransform
    , reqInsertTableRows
    , reqCreateImage
    , reqCreateSlide
    , reqUpdateTextStyle
    , reqUpdateVideoProperties

    -- * SubstringMatchCriteria
    , SubstringMatchCriteria
    , substringMatchCriteria
    , smcMatchCase
    , smcText
    ) where

import           Network.Google.Prelude
import           Network.Google.Slides.Types.Product
import           Network.Google.Slides.Types.Sum

-- | Default request referring to version 'v1' of the Google Slides API. This contains the host and root path used as a starting point for constructing service requests.
slidesService :: ServiceConfig
slidesService
  = defaultService (ServiceId "slides:v1")
      "slides.googleapis.com"

-- | View your Google Spreadsheets
spreadsheetsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/spreadsheets.readonly"]
spreadsheetsReadOnlyScope = Proxy;

-- | View and manage your Google Slides presentations
presentationsScope :: Proxy '["https://www.googleapis.com/auth/presentations"]
presentationsScope = Proxy;

-- | View the files in your Google Drive
driveReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadOnlyScope = Proxy;

-- | View and manage the files in your Google Drive
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy;

-- | View and manage your spreadsheets in Google Drive
spreadsheetsScope :: Proxy '["https://www.googleapis.com/auth/spreadsheets"]
spreadsheetsScope = Proxy;

-- | View your Google Slides presentations
presentationsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/presentations.readonly"]
presentationsReadOnlyScope = Proxy;
