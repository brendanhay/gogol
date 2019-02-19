{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Docs.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Docs.Types
    (
    -- * Service Configuration
      docsService

    -- * OAuth Scopes
    , driveReadOnlyScope
    , driveScope
    , driveFileScope
    , documentsScope
    , documentsReadOnlyScope

    -- * TableCellStyleSuggestionState
    , TableCellStyleSuggestionState
    , tableCellStyleSuggestionState
    , tcsssPaddingLeftSuggested
    , tcsssPaddingTopSuggested
    , tcsssBOrderTopSuggested
    , tcsssRowSpanSuggested
    , tcsssPaddingBottomSuggested
    , tcsssBOrderBottomSuggested
    , tcsssPaddingRightSuggested
    , tcsssColumnSpanSuggested
    , tcsssBOrderLeftSuggested
    , tcsssContentAlignmentSuggested
    , tcsssBackgRoundColorSuggested
    , tcsssBOrderRightSuggested

    -- * EmbeddedObjectBOrderSuggestionState
    , EmbeddedObjectBOrderSuggestionState
    , embeddedObjectBOrderSuggestionState
    , eobossDashStyleSuggested
    , eobossPropertyStateSuggested
    , eobossColorSuggested
    , eobossWidthSuggested

    -- * TableCellBOrder
    , TableCellBOrder
    , tableCellBOrder
    , tcboColor
    , tcboWidth
    , tcboDashStyle

    -- * DeleteTableRowRequest
    , DeleteTableRowRequest
    , deleteTableRowRequest
    , dtrrTableCellLocation

    -- * NamedStylesSuggestionState
    , NamedStylesSuggestionState
    , namedStylesSuggestionState
    , nsssStylesSuggestionStates

    -- * PositionedObjectPositioning
    , PositionedObjectPositioning
    , positionedObjectPositioning
    , popLayout
    , popTopOffSet
    , popLeftOffSet

    -- * SuggestedParagraphStyle
    , SuggestedParagraphStyle
    , suggestedParagraphStyle
    , spsParagraphStyleSuggestionState
    , spsParagraphStyle

    -- * PositionedObjectProperties
    , PositionedObjectProperties
    , positionedObjectProperties
    , popEmbeddedObject
    , popPositioning

    -- * NamedStyle
    , NamedStyle
    , namedStyle
    , nsNamedStyleType
    , nsTextStyle
    , nsParagraphStyle

    -- * DeleteNamedRangeRequest
    , DeleteNamedRangeRequest
    , deleteNamedRangeRequest
    , dnrrNamedRangeId
    , dnrrName

    -- * ParagraphStyleDirection
    , ParagraphStyleDirection (..)

    -- * TextStyleBaselineOffSet
    , TextStyleBaselineOffSet (..)

    -- * EmbeddedDrawingPropertiesSuggestionState
    , EmbeddedDrawingPropertiesSuggestionState
    , embeddedDrawingPropertiesSuggestionState

    -- * TabStop
    , TabStop
    , tabStop
    , tsOffSet
    , tsAlignment

    -- * NamedRanges
    , NamedRanges
    , namedRanges
    , nrNamedRanges
    , nrName

    -- * TableColumnPropertiesWidthType
    , TableColumnPropertiesWidthType (..)

    -- * TableRowSuggestedTableRowStyleChanges
    , TableRowSuggestedTableRowStyleChanges
    , tableRowSuggestedTableRowStyleChanges
    , trstrscAddtional

    -- * PositionedObjectPropertiesSuggestionState
    , PositionedObjectPropertiesSuggestionState
    , positionedObjectPropertiesSuggestionState
    , popssPositioningSuggestionState
    , popssEmbeddedObjectSuggestionState

    -- * PositionedObjectPositioningSuggestionState
    , PositionedObjectPositioningSuggestionState
    , positionedObjectPositioningSuggestionState
    , popssTopOffSetSuggested
    , popssLayoutSuggested
    , popssLeftOffSetSuggested

    -- * NamedStyleSuggestionState
    , NamedStyleSuggestionState
    , namedStyleSuggestionState
    , nsssParagraphStyleSuggestionState
    , nsssNamedStyleType
    , nsssTextStyleSuggestionState

    -- * CropProperties
    , CropProperties
    , cropProperties
    , cpOffSetBottom
    , cpOffSetRight
    , cpAngle
    , cpOffSetTop
    , cpOffSetLeft

    -- * ParagraphStyleSuggestionState
    , ParagraphStyleSuggestionState
    , paragraphStyleSuggestionState
    , psssSpacingModeSuggested
    , psssBOrderTopSuggested
    , psssLineSpacingSuggested
    , psssDirectionSuggested
    , psssAvoidWidowAndOrphanSuggested
    , psssBOrderBottomSuggested
    , psssSpaceAboveSuggested
    , psssNamedStyleTypeSuggested
    , psssIndentStartSuggested
    , psssAlignmentSuggested
    , psssBOrderLeftSuggested
    , psssSpaceBelowSuggested
    , psssIndentFirstLineSuggested
    , psssShadingSuggestionState
    , psssHeadingIdSuggested
    , psssBOrderBetweenSuggested
    , psssKeepWithNextSuggested
    , psssIndentEndSuggested
    , psssBOrderRightSuggested
    , psssKeepLinesTogetherSuggested

    -- * FootNote
    , FootNote
    , footNote
    , fnContent
    , fnFootNoteId

    -- * AutoText
    , AutoText
    , autoText
    , atSuggestedInsertionIds
    , atSuggestedTextStyleChanges
    , atSuggestedDeletionIds
    , atTextStyle
    , atType

    -- * List
    , List
    , list
    , lSuggestedInsertionId
    , lSuggestedListPropertiesChanges
    , lSuggestedDeletionIds
    , lListProperties

    -- * ParagraphBOrder
    , ParagraphBOrder
    , paragraphBOrder
    , pboColor
    , pboWidth
    , pboDashStyle
    , pboPadding

    -- * SuggestedTableCellStyle
    , SuggestedTableCellStyle
    , suggestedTableCellStyle
    , stcsTableCellStyleSuggestionState
    , stcsTableCellStyle

    -- * InsertInlineImageResponse
    , InsertInlineImageResponse
    , insertInlineImageResponse
    , iiirObjectId

    -- * RgbColor
    , RgbColor
    , rgbColor
    , rcRed
    , rcGreen
    , rcBlue

    -- * CreateParagraphBulletsRequestBulletPreset
    , CreateParagraphBulletsRequestBulletPreset (..)

    -- * BackgRoundSuggestionState
    , BackgRoundSuggestionState
    , backgRoundSuggestionState
    , brssBackgRoundColorSuggested

    -- * TableCellBOrderDashStyle
    , TableCellBOrderDashStyle (..)

    -- * ParagraphStyleNamedStyleType
    , ParagraphStyleNamedStyleType (..)

    -- * InlineObjectProperties
    , InlineObjectProperties
    , inlineObjectProperties
    , iopEmbeddedObject

    -- * SuggestedDocumentStyle
    , SuggestedDocumentStyle
    , suggestedDocumentStyle
    , sdsDocumentStyle
    , sdsDocumentStyleSuggestionState

    -- * Location
    , Location
    , location
    , lIndex
    , lSegmentId

    -- * TableOfContents
    , TableOfContents
    , tableOfContents
    , tocSuggestedInsertionIds
    , tocContent
    , tocSuggestedDeletionIds

    -- * Color
    , Color
    , color
    , cRgbColor

    -- * Size
    , Size
    , size
    , sHeight
    , sWidth

    -- * InsertInlineSheetsChartResponse
    , InsertInlineSheetsChartResponse
    , insertInlineSheetsChartResponse
    , iiscrObjectId

    -- * TableRowStyleSuggestionState
    , TableRowStyleSuggestionState
    , tableRowStyleSuggestionState
    , trsssMinRowHeightSuggested

    -- * DeleteTableColumnRequest
    , DeleteTableColumnRequest
    , deleteTableColumnRequest
    , dtcrTableCellLocation

    -- * DocumentNamedRanges
    , DocumentNamedRanges
    , documentNamedRanges
    , dnrAddtional

    -- * EndOfSegmentLocation
    , EndOfSegmentLocation
    , endOfSegmentLocation
    , eoslSegmentId

    -- * DocumentInlineObjects
    , DocumentInlineObjects
    , documentInlineObjects
    , dioAddtional

    -- * ParagraphSuggestedPositionedObjectIds
    , ParagraphSuggestedPositionedObjectIds
    , paragraphSuggestedPositionedObjectIds
    , pspoiAddtional

    -- * Link
    , Link
    , link
    , lURL
    , lHeadingId
    , lBookmarkId

    -- * TabStopAlignment
    , TabStopAlignment (..)

    -- * NestingLevelGlyphType
    , NestingLevelGlyphType (..)

    -- * AutoTextSuggestedTextStyleChanges
    , AutoTextSuggestedTextStyleChanges
    , autoTextSuggestedTextStyleChanges
    , atstscAddtional

    -- * InsertInlineImageRequest
    , InsertInlineImageRequest
    , insertInlineImageRequest
    , iiirLocation
    , iiirEndOfSegmentLocation
    , iiirURI
    , iiirObjectSize

    -- * Dimension
    , Dimension
    , dimension
    , dMagnitude
    , dUnit

    -- * DocumentStyle
    , DocumentStyle
    , documentStyle
    , dsMarginTop
    , dsDefaultFooterId
    , dsFirstPageHeaderId
    , dsFirstPageFooterId
    , dsDefaultHeaderId
    , dsUseEvenPageHeaderFooter
    , dsMarginLeft
    , dsPageNumberStart
    , dsUseFirstPageHeaderFooter
    , dsEvenPageFooterId
    , dsPageSize
    , dsBackgRound
    , dsMarginRight
    , dsMarginBottom
    , dsEvenPageHeaderId

    -- * Body
    , Body
    , body
    , bContent

    -- * ListPropertiesSuggestionState
    , ListPropertiesSuggestionState
    , listPropertiesSuggestionState
    , lpssNestingLevelsSuggestionStates

    -- * ParagraphSuggestedBulletChanges
    , ParagraphSuggestedBulletChanges
    , paragraphSuggestedBulletChanges
    , psbcAddtional

    -- * Response
    , Response
    , response
    , rReplaceAllText
    , rCreateNamedRange
    , rInsertInlineImage
    , rInsertInlineSheetsChart

    -- * SheetsChartReference
    , SheetsChartReference
    , sheetsChartReference
    , scrSpreadsheetId
    , scrChartId

    -- * OptionalColor
    , OptionalColor
    , optionalColor
    , ocColor

    -- * CreateNamedRangeResponse
    , CreateNamedRangeResponse
    , createNamedRangeResponse
    , cnrrNamedRangeId

    -- * SuggestedBullet
    , SuggestedBullet
    , suggestedBullet
    , sbBullet
    , sbBulletSuggestionState

    -- * ParagraphBOrderDashStyle
    , ParagraphBOrderDashStyle (..)

    -- * EmbeddedObject
    , EmbeddedObject
    , embeddedObject
    , eoMarginTop
    , eoSize
    , eoLinkedContentReference
    , eoImageProperties
    , eoEmbeddedObjectBOrder
    , eoEmbeddedDrawingProperties
    , eoMarginLeft
    , eoTitle
    , eoMarginRight
    , eoDescription
    , eoMarginBottom

    -- * ReplaceAllTextResponse
    , ReplaceAllTextResponse
    , replaceAllTextResponse
    , ratrOccurrencesChanged

    -- * DocumentStyleSuggestionState
    , DocumentStyleSuggestionState
    , documentStyleSuggestionState
    , dsssFirstPageFooterIdSuggested
    , dsssDefaultHeaderIdSuggested
    , dsssUseEvenPageHeaderFooterSuggested
    , dsssPageNumberStartSuggested
    , dsssBackgRoundSuggestionState
    , dsssUseFirstPageHeaderFooterSuggested
    , dsssPageSizeSuggestionState
    , dsssMarginTopSuggested
    , dsssEvenPageFooterIdSuggested
    , dsssMarginBottomSuggested
    , dsssEvenPageHeaderIdSuggested
    , dsssMarginLeftSuggested
    , dsssMarginRightSuggested
    , dsssFirstPageHeaderIdSuggested
    , dsssDefaultFooterIdSuggested

    -- * LinkedContentReference
    , LinkedContentReference
    , linkedContentReference
    , lcrSheetsChartReference

    -- * Shading
    , Shading
    , shading
    , sBackgRoundColor

    -- * InlineObjectPropertiesSuggestionState
    , InlineObjectPropertiesSuggestionState
    , inlineObjectPropertiesSuggestionState
    , iopssEmbeddedObjectSuggestionState

    -- * PageBreakSuggestedTextStyleChanges
    , PageBreakSuggestedTextStyleChanges
    , pageBreakSuggestedTextStyleChanges
    , pbstscAddtional

    -- * DocumentLists
    , DocumentLists
    , documentLists
    , dlAddtional

    -- * DeleteContentRangeRequest
    , DeleteContentRangeRequest
    , deleteContentRangeRequest
    , dcrrRange

    -- * Bullet
    , Bullet
    , bullet
    , bListId
    , bTextStyle
    , bNestingLevel

    -- * Paragraph
    , Paragraph
    , paragraph
    , pBullet
    , pSuggestedBulletChanges
    , pSuggestedPositionedObjectIds
    , pSuggestedParagraphStyleChanges
    , pElements
    , pPositionedObjectIds
    , pParagraphStyle

    -- * TextRunSuggestedTextStyleChanges
    , TextRunSuggestedTextStyleChanges
    , textRunSuggestedTextStyleChanges
    , trstscAddtional

    -- * SuggestedTableRowStyle
    , SuggestedTableRowStyle
    , suggestedTableRowStyle
    , strsTableRowStyleSuggestionState
    , strsTableRowStyle

    -- * DocumentFootNotes
    , DocumentFootNotes
    , documentFootNotes
    , dfnAddtional

    -- * ImageProperties
    , ImageProperties
    , imageProperties
    , ipCropProperties
    , ipContentURI
    , ipTransparency
    , ipAngle
    , ipContrast
    , ipSourceURI
    , ipBrightness

    -- * ParagraphStyleAlignment
    , ParagraphStyleAlignment (..)

    -- * SizeSuggestionState
    , SizeSuggestionState
    , sizeSuggestionState
    , sssHeightSuggested
    , sssWidthSuggested

    -- * ListSuggestedListPropertiesChanges
    , ListSuggestedListPropertiesChanges
    , listSuggestedListPropertiesChanges
    , lslpcAddtional

    -- * BatchUpdateDocumentResponse
    , BatchUpdateDocumentResponse
    , batchUpdateDocumentResponse
    , budrDocumentId
    , budrReplies
    , budrWriteControl

    -- * TableStyle
    , TableStyle
    , tableStyle
    , tsTableColumnProperties

    -- * FootNoteReference
    , FootNoteReference
    , footNoteReference
    , fnrSuggestedInsertionIds
    , fnrSuggestedTextStyleChanges
    , fnrFootNoteId
    , fnrSuggestedDeletionIds
    , fnrTextStyle
    , fnrFootNoteNumber

    -- * ColumnBreak
    , ColumnBreak
    , columnBreak
    , cbSuggestedInsertionIds
    , cbSuggestedTextStyleChanges
    , cbSuggestedDeletionIds
    , cbTextStyle

    -- * InlineObjectSuggestedInlineObjectPropertiesChanges
    , InlineObjectSuggestedInlineObjectPropertiesChanges
    , inlineObjectSuggestedInlineObjectPropertiesChanges
    , iosiopcAddtional

    -- * Equation
    , Equation
    , equation
    , eSuggestedInsertionIds
    , eSuggestedDeletionIds

    -- * NamedRange
    , NamedRange
    , namedRange
    , nNamedRangeId
    , nRanges
    , nName

    -- * CropPropertiesSuggestionState
    , CropPropertiesSuggestionState
    , cropPropertiesSuggestionState
    , cpssAngleSuggested
    , cpssOffSetRightSuggested
    , cpssOffSetBottomSuggested
    , cpssOffSetTopSuggested
    , cpssOffSetLeftSuggested

    -- * TextRun
    , TextRun
    , textRun
    , trSuggestedInsertionIds
    , trSuggestedTextStyleChanges
    , trContent
    , trSuggestedDeletionIds
    , trTextStyle

    -- * TableRow
    , TableRow
    , tableRow
    , tSuggestedInsertionIds
    , tTableCells
    , tEndIndex
    , tSuggestedDeletionIds
    , tSuggestedTableRowStyleChanges
    , tTableRowStyle
    , tStartIndex

    -- * WeightedFontFamily
    , WeightedFontFamily
    , weightedFontFamily
    , wffFontFamily
    , wffWeight

    -- * PageBreak
    , PageBreak
    , pageBreak
    , pbSuggestedInsertionIds
    , pbSuggestedTextStyleChanges
    , pbSuggestedDeletionIds
    , pbTextStyle

    -- * InlineObject
    , InlineObject
    , inlineObject
    , ioSuggestedInsertionId
    , ioInlineObjectProperties
    , ioObjectId
    , ioSuggestedDeletionIds
    , ioSuggestedInlineObjectPropertiesChanges

    -- * EmbeddedObjectBOrder
    , EmbeddedObjectBOrder
    , embeddedObjectBOrder
    , eoboColor
    , eoboWidth
    , eoboDashStyle
    , eoboPropertyState

    -- * EmbeddedObjectBOrderPropertyState
    , EmbeddedObjectBOrderPropertyState (..)

    -- * TableCellSuggestedTableCellStyleChanges
    , TableCellSuggestedTableCellStyleChanges
    , tableCellSuggestedTableCellStyleChanges
    , tcstcscAddtional

    -- * TableCellStyle
    , TableCellStyle
    , tableCellStyle
    , tcsBOrderRight
    , tcsBOrderTop
    , tcsColumnSpan
    , tcsBackgRoundColor
    , tcsPaddingBottom
    , tcsRowSpan
    , tcsBOrderLeft
    , tcsPaddingLeft
    , tcsPaddingTop
    , tcsBOrderBottom
    , tcsContentAlignment
    , tcsPaddingRight

    -- * Header
    , Header
    , header
    , hHeaderId
    , hContent

    -- * Range
    , Range
    , range
    , rEndIndex
    , rStartIndex
    , rSegmentId

    -- * Document
    , Document
    , document
    , dNamedRanges
    , dInlineObjects
    , dDocumentId
    , dBody
    , dDocumentStyle
    , dFooters
    , dPositionedObjects
    , dSuggestionsViewMode
    , dHeaders
    , dNamedStyles
    , dSuggestedNamedStylesChanges
    , dSuggestedDocumentStyleChanges
    , dTitle
    , dRevisionId
    , dFootNotes
    , dLists

    -- * DocumentSuggestedDocumentStyleChanges
    , DocumentSuggestedDocumentStyleChanges
    , documentSuggestedDocumentStyleChanges
    , dsdscAddtional

    -- * NamedStyles
    , NamedStyles
    , namedStyles
    , nsStyles

    -- * ParagraphSuggestedParagraphStyleChanges
    , ParagraphSuggestedParagraphStyleChanges
    , paragraphSuggestedParagraphStyleChanges
    , pspscAddtional

    -- * EmbeddedDrawingProperties
    , EmbeddedDrawingProperties
    , embeddedDrawingProperties

    -- * SuggestedTextStyle
    , SuggestedTextStyle
    , suggestedTextStyle
    , stsTextStyle
    , stsTextStyleSuggestionState

    -- * SectionStyleColumnSeparatorStyle
    , SectionStyleColumnSeparatorStyle (..)

    -- * InsertTableRowRequest
    , InsertTableRowRequest
    , insertTableRowRequest
    , itrrInsertBelow
    , itrrTableCellLocation

    -- * SuggestedNamedStyles
    , SuggestedNamedStyles
    , suggestedNamedStyles
    , snsNamedStylesSuggestionState
    , snsNamedStyles

    -- * Xgafv
    , Xgafv (..)

    -- * AutoTextType
    , AutoTextType (..)

    -- * WriteControl
    , WriteControl
    , writeControl
    , wcRequiredRevisionId

    -- * TextStyle
    , TextStyle
    , textStyle
    , tsLink
    , tsBackgRoundColor
    , tsBaselineOffSet
    , tsForegRoundColor
    , tsFontSize
    , tsSmallCaps
    , tsUnderline
    , tsWeightedFontFamily
    , tsItalic
    , tsBold
    , tsStrikethrough

    -- * HorizontalRuleSuggestedTextStyleChanges
    , HorizontalRuleSuggestedTextStyleChanges
    , horizontalRuleSuggestedTextStyleChanges
    , hrstscAddtional

    -- * UpdateTextStyleRequest
    , UpdateTextStyleRequest
    , updateTextStyleRequest
    , utsrRange
    , utsrTextStyle
    , utsrFields

    -- * InlineObjectElement
    , InlineObjectElement
    , inlineObjectElement
    , ioeSuggestedInsertionIds
    , ioeSuggestedTextStyleChanges
    , ioeInlineObjectId
    , ioeSuggestedDeletionIds
    , ioeTextStyle

    -- * SectionStyleContentDirection
    , SectionStyleContentDirection (..)

    -- * NestingLevel
    , NestingLevel
    , nestingLevel
    , nlIndentFirstLine
    , nlGlyphFormat
    , nlBulletAlignment
    , nlIndentStart
    , nlGlyphSymbol
    , nlTextStyle
    , nlGlyphType
    , nlStartNumber

    -- * TableCellLocation
    , TableCellLocation
    , tableCellLocation
    , tclColumnIndex
    , tclTableStartLocation
    , tclRowIndex

    -- * DeletePositionedObjectRequest
    , DeletePositionedObjectRequest
    , deletePositionedObjectRequest
    , dporObjectId

    -- * Footer
    , Footer
    , footer
    , fFooterId
    , fContent

    -- * PositionedObject
    , PositionedObject
    , positionedObject
    , poSuggestedPositionedObjectPropertiesChanges
    , poPositionedObjectProperties
    , poSuggestedInsertionId
    , poObjectId
    , poSuggestedDeletionIds

    -- * ObjectReferences
    , ObjectReferences
    , objectReferences
    , orObjectIds

    -- * BulletSuggestionState
    , BulletSuggestionState
    , bulletSuggestionState
    , bssNestingLevelSuggested
    , bssListIdSuggested
    , bssTextStyleSuggestionState

    -- * ImagePropertiesSuggestionState
    , ImagePropertiesSuggestionState
    , imagePropertiesSuggestionState
    , ipssAngleSuggested
    , ipssContrastSuggested
    , ipssContentURISuggested
    , ipssSourceURISuggested
    , ipssCropPropertiesSuggestionState
    , ipssBrightnessSuggested
    , ipssTransparencySuggested

    -- * ShadingSuggestionState
    , ShadingSuggestionState
    , shadingSuggestionState
    , sssBackgRoundColorSuggested

    -- * DocumentSuggestedNamedStylesChanges
    , DocumentSuggestedNamedStylesChanges
    , documentSuggestedNamedStylesChanges
    , dsnscAddtional

    -- * TableCell
    , TableCell
    , tableCell
    , tcSuggestedInsertionIds
    , tcSuggestedTableCellStyleChanges
    , tcEndIndex
    , tcContent
    , tcTableCellStyle
    , tcSuggestedDeletionIds
    , tcStartIndex

    -- * SheetsChartReferenceSuggestionState
    , SheetsChartReferenceSuggestionState
    , sheetsChartReferenceSuggestionState
    , scrssChartIdSuggested
    , scrssSpreadsheetIdSuggested

    -- * ParagraphElement
    , ParagraphElement
    , paragraphElement
    , peAutoText
    , peEndIndex
    , peFootNoteReference
    , peColumnBreak
    , peTextRun
    , peEquation
    , pePageBreak
    , peInlineObjectElement
    , peHorizontalRule
    , peStartIndex

    -- * NamedStyleNamedStyleType
    , NamedStyleNamedStyleType (..)

    -- * HorizontalRule
    , HorizontalRule
    , horizontalRule
    , hrSuggestedInsertionIds
    , hrSuggestedTextStyleChanges
    , hrSuggestedDeletionIds
    , hrTextStyle

    -- * EmbeddedObjectSuggestionState
    , EmbeddedObjectSuggestionState
    , embeddedObjectSuggestionState
    , eossEmbeddedObjectBOrderSuggestionState
    , eossEmbeddedDrawingPropertiesSuggestionState
    , eossTitleSuggested
    , eossMarginTopSuggested
    , eossSizeSuggestionState
    , eossMarginBottomSuggested
    , eossImagePropertiesSuggestionState
    , eossMarginLeftSuggested
    , eossLinkedContentReferenceSuggestionState
    , eossDescriptionSuggested
    , eossMarginRightSuggested

    -- * SuggestedInlineObjectProperties
    , SuggestedInlineObjectProperties
    , suggestedInlineObjectProperties
    , siopInlineObjectProperties
    , siopInlineObjectPropertiesSuggestionState

    -- * LinkedContentReferenceSuggestionState
    , LinkedContentReferenceSuggestionState
    , linkedContentReferenceSuggestionState
    , lcrssSheetsChartReferenceSuggestionState

    -- * InlineObjectElementSuggestedTextStyleChanges
    , InlineObjectElementSuggestedTextStyleChanges
    , inlineObjectElementSuggestedTextStyleChanges
    , ioestscAddtional

    -- * ParagraphStyleSpacingMode
    , ParagraphStyleSpacingMode (..)

    -- * StructuralElement
    , StructuralElement
    , structuralElement
    , seTableOfContents
    , seParagraph
    , seEndIndex
    , seTable
    , seStartIndex
    , seSectionBreak

    -- * DeleteParagraphBulletsRequest
    , DeleteParagraphBulletsRequest
    , deleteParagraphBulletsRequest
    , dpbrRange

    -- * BatchUpdateDocumentRequest
    , BatchUpdateDocumentRequest
    , batchUpdateDocumentRequest
    , bRequests
    , bWriteControl

    -- * ListProperties
    , ListProperties
    , listProperties
    , lpNestingLevels

    -- * InsertTextRequest
    , InsertTextRequest
    , insertTextRequest
    , itrLocation
    , itrText
    , itrEndOfSegmentLocation

    -- * NestingLevelBulletAlignment
    , NestingLevelBulletAlignment (..)

    -- * ColumnBreakSuggestedTextStyleChanges
    , ColumnBreakSuggestedTextStyleChanges
    , columnBreakSuggestedTextStyleChanges
    , cbstscAddtional

    -- * FootNoteReferenceSuggestedTextStyleChanges
    , FootNoteReferenceSuggestedTextStyleChanges
    , footNoteReferenceSuggestedTextStyleChanges
    , fnrstscAddtional

    -- * DocumentHeaders
    , DocumentHeaders
    , documentHeaders
    , dhAddtional

    -- * TableRowStyle
    , TableRowStyle
    , tableRowStyle
    , trsMinRowHeight

    -- * NamedStyleSuggestionStateNamedStyleType
    , NamedStyleSuggestionStateNamedStyleType (..)

    -- * SectionBreak
    , SectionBreak
    , sectionBreak
    , sbSuggestedInsertionIds
    , sbSuggestedDeletionIds
    , sbSectionStyle

    -- * EmbeddedObjectBOrderDashStyle
    , EmbeddedObjectBOrderDashStyle (..)

    -- * DocumentSuggestionsViewMode
    , DocumentSuggestionsViewMode (..)

    -- * Table
    , Table
    , table
    , tabSuggestedInsertionIds
    , tabTableRows
    , tabRows
    , tabTableStyle
    , tabSuggestedDeletionIds
    , tabColumns

    -- * SectionStyle
    , SectionStyle
    , sectionStyle
    , ssColumnSeparatorStyle
    , ssContentDirection
    , ssColumnProperties

    -- * PositionedObjectPositioningLayout
    , PositionedObjectPositioningLayout (..)

    -- * BackgRound
    , BackgRound
    , backgRound
    , brColor

    -- * SuggestedListProperties
    , SuggestedListProperties
    , suggestedListProperties
    , slpListPropertiesSuggestionState
    , slpListProperties

    -- * SectionColumnProperties
    , SectionColumnProperties
    , sectionColumnProperties
    , scpWidth
    , scpPaddingEnd

    -- * CreateParagraphBulletsRequest
    , CreateParagraphBulletsRequest
    , createParagraphBulletsRequest
    , cpbrBulletPreset
    , cpbrRange

    -- * DimensionUnit
    , DimensionUnit (..)

    -- * DocumentFooters
    , DocumentFooters
    , documentFooters
    , dfAddtional

    -- * CreateNamedRangeRequest
    , CreateNamedRangeRequest
    , createNamedRangeRequest
    , cnrrName
    , cnrrRange

    -- * TextStyleSuggestionState
    , TextStyleSuggestionState
    , textStyleSuggestionState
    , tsssItalicSuggested
    , tsssUnderlineSuggested
    , tsssFontSizeSuggested
    , tsssSmallCapsSuggested
    , tsssForegRoundColorSuggested
    , tsssBaselineOffSetSuggested
    , tsssWeightedFontFamilySuggested
    , tsssStrikethroughSuggested
    , tsssLinkSuggested
    , tsssBoldSuggested
    , tsssBackgRoundColorSuggested

    -- * NestingLevelSuggestionState
    , NestingLevelSuggestionState
    , nestingLevelSuggestionState
    , nlssGlyphFormatSuggested
    , nlssBulletAlignmentSuggested
    , nlssGlyphTypeSuggested
    , nlssStartNumberSuggested
    , nlssIndentStartSuggested
    , nlssGlyphSymbolSuggested
    , nlssIndentFirstLineSuggested
    , nlssTextStyleSuggestionState

    -- * ParagraphStyle
    , ParagraphStyle
    , paragraphStyle
    , psBOrderRight
    , psKeepLinesTogether
    , psTabStops
    , psBOrderTop
    , psLineSpacing
    , psDirection
    , psIndentFirstLine
    , psIndentEnd
    , psShading
    , psAvoidWidowAndOrphan
    , psNamedStyleType
    , psIndentStart
    , psAlignment
    , psBOrderLeft
    , psSpaceBelow
    , psSpacingMode
    , psHeadingId
    , psSpaceAbove
    , psBOrderBottom
    , psKeepWithNext
    , psBOrderBetween

    -- * SuggestedPositionedObjectProperties
    , SuggestedPositionedObjectProperties
    , suggestedPositionedObjectProperties
    , spopPositionedObjectProperties
    , spopPositionedObjectPropertiesSuggestionState

    -- * TableColumnProperties
    , TableColumnProperties
    , tableColumnProperties
    , tcpWidth
    , tcpWidthType

    -- * TableCellStyleContentAlignment
    , TableCellStyleContentAlignment (..)

    -- * UpdateParagraphStyleRequest
    , UpdateParagraphStyleRequest
    , updateParagraphStyleRequest
    , upsrRange
    , upsrFields
    , upsrParagraphStyle

    -- * ReplaceAllTextRequest
    , ReplaceAllTextRequest
    , replaceAllTextRequest
    , ratrContainsText
    , ratrReplaceText

    -- * DocumentPositionedObjects
    , DocumentPositionedObjects
    , documentPositionedObjects
    , dpoAddtional

    -- * Request'
    , Request'
    , request'
    , reqDeletePositionedObject
    , reqCreateParagraphBullets
    , reqInsertText
    , reqDeleteParagraphBullets
    , reqDeleteTableRow
    , reqDeleteNamedRange
    , reqReplaceAllText
    , reqUpdateParagraphStyle
    , reqCreateNamedRange
    , reqDeleteTableColumn
    , reqInsertInlineImage
    , reqDeleteContentRange
    , reqInsertTableRow
    , reqUpdateTextStyle

    -- * PositionedObjectSuggestedPositionedObjectPropertiesChanges
    , PositionedObjectSuggestedPositionedObjectPropertiesChanges
    , positionedObjectSuggestedPositionedObjectPropertiesChanges
    , pospopcAddtional

    -- * SubstringMatchCriteria
    , SubstringMatchCriteria
    , substringMatchCriteria
    , smcMatchCase
    , smcText
    ) where

import           Network.Google.Docs.Types.Product
import           Network.Google.Docs.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Docs API. This contains the host and root path used as a starting point for constructing service requests.
docsService :: ServiceConfig
docsService
  = defaultService (ServiceId "docs:v1")
      "docs.googleapis.com"

-- | See and download all your Google Drive files
driveReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadOnlyScope = Proxy

-- | See, edit, create, and delete all of your Google Drive files
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy

-- | View and manage Google Drive files and folders that you have opened or
-- created with this app
driveFileScope :: Proxy '["https://www.googleapis.com/auth/drive.file"]
driveFileScope = Proxy

-- | View and manage your Google Docs documents
documentsScope :: Proxy '["https://www.googleapis.com/auth/documents"]
documentsScope = Proxy

-- | View your Google Docs documents
documentsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/documents.readonly"]
documentsReadOnlyScope = Proxy
