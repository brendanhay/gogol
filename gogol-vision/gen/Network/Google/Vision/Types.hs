{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vision.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vision.Types
    (
    -- * Service Configuration
      visionService

    -- * OAuth Scopes
    , cloudVisionScope
    , cloudPlatformScope

    -- * GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    , GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    , googleCloudVisionV1p1beta1LocalizedObjectAnnotation
    , gcvvloaLanguageCode
    , gcvvloaScore
    , gcvvloaBoundingPoly
    , gcvvloaName
    , gcvvloaMid

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * GoogleCloudVisionV1p1beta1OutputConfig
    , GoogleCloudVisionV1p1beta1OutputConfig
    , googleCloudVisionV1p1beta1OutputConfig
    , gcvvocGcsDestination
    , gcvvocBatchSize

    -- * GoogleCloudVisionV1p3beta1ProductKeyValue
    , GoogleCloudVisionV1p3beta1ProductKeyValue
    , googleCloudVisionV1p3beta1ProductKeyValue
    , gcvvpkvValue
    , gcvvpkvKey

    -- * GoogleCloudVisionV1p4beta1OperationMetadata
    , GoogleCloudVisionV1p4beta1OperationMetadata
    , googleCloudVisionV1p4beta1OperationMetadata
    , gcvvomState
    , gcvvomUpdateTime
    , gcvvomCreateTime

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationSorrowLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationSorrowLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    , GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    , googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    , gcvvabafrResponses

    -- * FaceAnnotationUnderExposedLikelihood
    , FaceAnnotationUnderExposedLikelihood (..)

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationJoyLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationJoyLikelihood (..)

    -- * GoogleCloudVisionV1p3beta1ImageAnnotationContext
    , GoogleCloudVisionV1p3beta1ImageAnnotationContext
    , googleCloudVisionV1p3beta1ImageAnnotationContext
    , gcvviacURI
    , gcvviacPageNumber

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    , GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    , googleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    , gcvvpsroaLanguageCode
    , gcvvpsroaScore
    , gcvvpsroaName
    , gcvvpsroaMid

    -- * GoogleCloudVisionV1p3beta1Property
    , GoogleCloudVisionV1p3beta1Property
    , googleCloudVisionV1p3beta1Property
    , gcvvpUint64Value
    , gcvvpValue
    , gcvvpName

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    , GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    , googleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    , gcvvtadlLanguageCode
    , gcvvtadlConfidence

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationSurpriseLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationSurpriseLikelihood (..)

    -- * KeyValue
    , KeyValue
    , keyValue
    , kvValue
    , kvKey

    -- * GoogleCloudVisionV1p2beta1AnnotateImageResponse
    , GoogleCloudVisionV1p2beta1AnnotateImageResponse
    , googleCloudVisionV1p2beta1AnnotateImageResponse
    , gcvvairLogoAnnotations
    , gcvvairProductSearchResults
    , gcvvairContext
    , gcvvairLabelAnnotations
    , gcvvairFaceAnnotations
    , gcvvairError
    , gcvvairWebDetection
    , gcvvairSafeSearchAnnotation
    , gcvvairLandmarkAnnotations
    , gcvvairLocalizedObjectAnnotations
    , gcvvairTextAnnotations
    , gcvvairCropHintsAnnotation
    , gcvvairFullTextAnnotation
    , gcvvairImagePropertiesAnnotation

    -- * ImportProductSetsResponse
    , ImportProductSetsResponse
    , importProductSetsResponse
    , ipsrReferenceImages
    , ipsrStatuses

    -- * GoogleCloudVisionV1p2beta1Symbol
    , GoogleCloudVisionV1p2beta1Symbol
    , googleCloudVisionV1p2beta1Symbol
    , gcvvsProperty
    , gcvvsBoundingBox
    , gcvvsText
    , gcvvsConfidence

    -- * GoogleCloudVisionV1p2beta1Paragraph
    , GoogleCloudVisionV1p2beta1Paragraph
    , googleCloudVisionV1p2beta1Paragraph
    , gcvvpProperty
    , gcvvpBoundingBox
    , gcvvpConfidence
    , gcvvpWords

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation
    , GoogleCloudVisionV1p2beta1FaceAnnotation
    , googleCloudVisionV1p2beta1FaceAnnotation
    , gcvvfaTiltAngle
    , gcvvfaBlurredLikelihood
    , gcvvfaBoundingPoly
    , gcvvfaSurpriseLikelihood
    , gcvvfaLandmarkingConfidence
    , gcvvfaPanAngle
    , gcvvfaRollAngle
    , gcvvfaUnderExposedLikelihood
    , gcvvfaFdBoundingPoly
    , gcvvfaAngerLikelihood
    , gcvvfaDetectionConfidence
    , gcvvfaHeadwearLikelihood
    , gcvvfaSorrowLikelihood
    , gcvvfaJoyLikelihood
    , gcvvfaLandmarks

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    , googleCloudVisionV1p4beta1SafeSearchAnnotation
    , gcvvssaSpoof
    , gcvvssaRacy
    , gcvvssaAdult
    , gcvvssaMedical
    , gcvvssaViolence

    -- * GoogleCloudVisionV1p1beta1CropHint
    , GoogleCloudVisionV1p1beta1CropHint
    , googleCloudVisionV1p1beta1CropHint
    , gcvvchBoundingPoly
    , gcvvchConfidence
    , gcvvchImportanceFraction

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationBlurredLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationBlurredLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1ImageProperties
    , GoogleCloudVisionV1p2beta1ImageProperties
    , googleCloudVisionV1p2beta1ImageProperties
    , gcvvipDominantColors

    -- * GoogleCloudVisionV1p3beta1ProductSearchResults
    , GoogleCloudVisionV1p3beta1ProductSearchResults
    , googleCloudVisionV1p3beta1ProductSearchResults
    , gcvvpsrProductGroupedResults
    , gcvvpsrResults
    , gcvvpsrIndexTime

    -- * GoogleCloudVisionV1p2beta1OutputConfig
    , GoogleCloudVisionV1p2beta1OutputConfig
    , googleCloudVisionV1p2beta1OutputConfig
    , gGcsDestination
    , gBatchSize

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    , GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    , googleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    , gLanguageCode
    , gConfidence

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationLandmarkType
    , GoogleCloudVisionV1p3beta1FaceAnnotationLandmarkType (..)

    -- * GoogleCloudVisionV1p1beta1Symbol
    , GoogleCloudVisionV1p1beta1Symbol
    , googleCloudVisionV1p1beta1Symbol
    , gooProperty
    , gooBoundingBox
    , gooText
    , gooConfidence

    -- * ImageAnnotationContext
    , ImageAnnotationContext
    , imageAnnotationContext
    , iacURI
    , iacPageNumber

    -- * GoogleCloudVisionV1p2beta1CropHint
    , GoogleCloudVisionV1p2beta1CropHint
    , googleCloudVisionV1p2beta1CropHint
    , gcvvchcBoundingPoly
    , gcvvchcConfidence
    , gcvvchcImportanceFraction

    -- * Property
    , Property
    , property
    , pUint64Value
    , pValue
    , pName

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreakType
    , GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreakType (..)

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationUnderExposedLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationUnderExposedLikelihood (..)

    -- * GoogleCloudVisionV1p4beta1Product
    , GoogleCloudVisionV1p4beta1Product
    , googleCloudVisionV1p4beta1Product
    , gName
    , gDisplayName
    , gProductCategory
    , gProductLabels
    , gDescription

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationSurpriseLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationSurpriseLikelihood (..)

    -- * AsyncBatchAnnotateImagesResponse
    , AsyncBatchAnnotateImagesResponse
    , asyncBatchAnnotateImagesResponse
    , abairOutputConfig

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation
    , GoogleCloudVisionV1p1beta1FaceAnnotation
    , googleCloudVisionV1p1beta1FaceAnnotation
    , gTiltAngle
    , gBlurredLikelihood
    , gBoundingPoly
    , gSurpriseLikelihood
    , gLandmarkingConfidence
    , gPanAngle
    , gRollAngle
    , gUnderExposedLikelihood
    , gFdBoundingPoly
    , gAngerLikelihood
    , gDetectionConfidence
    , gHeadwearLikelihood
    , gSorrowLikelihood
    , gJoyLikelihood
    , gLandmarks

    -- * GoogleCloudVisionV1p3beta1InputConfig
    , GoogleCloudVisionV1p3beta1InputConfig
    , googleCloudVisionV1p3beta1InputConfig
    , gcvvicGcsSource
    , gcvvicContent
    , gcvvicMimeType

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebPage
    , GoogleCloudVisionV1p3beta1WebDetectionWebPage
    , googleCloudVisionV1p3beta1WebDetectionWebPage
    , gcvvwdwpScore
    , gcvvwdwpURL
    , gcvvwdwpPageTitle
    , gcvvwdwpPartialMatchingImages
    , gcvvwdwpFullMatchingImages

    -- * ProductSearchResults
    , ProductSearchResults
    , productSearchResults
    , psrProductGroupedResults
    , psrResults
    , psrIndexTime

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    , GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    , googleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    , gooLanguageCode
    , gooScore
    , gooName
    , gooMid

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotationSpoof
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotationSpoof (..)

    -- * GoogleCloudVisionV1p4beta1BatchOperationMetadataState
    , GoogleCloudVisionV1p4beta1BatchOperationMetadataState (..)

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , googleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , gcvvabairParent
    , gcvvabairRequests
    , gcvvabairOutputConfig

    -- * GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    , GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    , googleCloudVisionV1p4beta1DominantColorsAnnotation
    , gcvvdcaColors

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationAngerLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationAngerLikelihood (..)

    -- * Landmark
    , Landmark
    , landmark
    , lType
    , lPosition

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    , googleCloudVisionV1p2beta1SafeSearchAnnotation
    , gSpoof
    , gRacy
    , gAdult
    , gMedical
    , gViolence

    -- * GoogleCloudVisionV1p4beta1AnnotateImageResponse
    , GoogleCloudVisionV1p4beta1AnnotateImageResponse
    , googleCloudVisionV1p4beta1AnnotateImageResponse
    , gLogoAnnotations
    , gProductSearchResults
    , gContext
    , gLabelAnnotations
    , gFaceAnnotations
    , gError
    , gWebDetection
    , gSafeSearchAnnotation
    , gLandmarkAnnotations
    , gLocalizedObjectAnnotations
    , gTextAnnotations
    , gCropHintsAnnotation
    , gFullTextAnnotation
    , gImagePropertiesAnnotation

    -- * GoogleCloudVisionV1p2beta1OperationMetadata
    , GoogleCloudVisionV1p2beta1OperationMetadata
    , googleCloudVisionV1p2beta1OperationMetadata
    , gState
    , gUpdateTime
    , gCreateTime

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    , GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    , googleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    , gcvvtadlcLanguageCode
    , gcvvtadlcConfidence

    -- * GoogleCloudVisionV1p3beta1CropHintsAnnotation
    , GoogleCloudVisionV1p3beta1CropHintsAnnotation
    , googleCloudVisionV1p3beta1CropHintsAnnotation
    , gcvvchaCropHints

    -- * GoogleCloudVisionV1p1beta1ColorInfo
    , GoogleCloudVisionV1p1beta1ColorInfo
    , googleCloudVisionV1p1beta1ColorInfo
    , gcvvciColor
    , gcvvciScore
    , gcvvciPixelFraction

    -- * GcsSource
    , GcsSource
    , gcsSource
    , gsURI

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    , GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    , googleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    , gcvvtadbIsPrefix
    , gcvvtadbType

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationSorrowLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationSorrowLikelihood (..)

    -- * GoogleCloudVisionV1p4beta1Paragraph
    , GoogleCloudVisionV1p4beta1Paragraph
    , googleCloudVisionV1p4beta1Paragraph
    , gcvvpcProperty
    , gcvvpcBoundingBox
    , gcvvpcConfidence
    , gcvvpcWords

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationJoyLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationJoyLikelihood (..)

    -- * GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    , GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    , googleCloudVisionV1p1beta1DominantColorsAnnotation
    , gColors

    -- * GoogleCloudVisionV1p4beta1Symbol
    , GoogleCloudVisionV1p4beta1Symbol
    , googleCloudVisionV1p4beta1Symbol
    , gcvvscProperty
    , gcvvscBoundingBox
    , gcvvscText
    , gcvvscConfidence

    -- * GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    , GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    , googleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    , gResponses

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotationViolence
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotationViolence (..)

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    , GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    , googleCloudVisionV1p3beta1WebDetectionWebLabel
    , gcvvwdwlLanguageCode
    , gcvvwdwlLabel

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotationMedical
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotationMedical (..)

    -- * GoogleCloudVisionV1p4beta1ImageProperties
    , GoogleCloudVisionV1p4beta1ImageProperties
    , googleCloudVisionV1p4beta1ImageProperties
    , gDominantColors

    -- * GoogleCloudVisionV1p2beta1ImageContext
    , GoogleCloudVisionV1p2beta1ImageContext
    , googleCloudVisionV1p2beta1ImageContext
    , gcvvicCropHintsParams
    , gcvvicWebDetectionParams
    , gcvvicProductSearchParams
    , gcvvicLanguageHints
    , gcvvicLatLongRect
    , gcvvicTextDetectionParams

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationBlurredLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationBlurredLikelihood (..)

    -- * TextProperty
    , TextProperty
    , textProperty
    , tpDetectedLanguages
    , tpDetectedBreak

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation
    , GoogleCloudVisionV1p4beta1FaceAnnotation
    , googleCloudVisionV1p4beta1FaceAnnotation
    , gooTiltAngle
    , gooBlurredLikelihood
    , gooBoundingPoly
    , gooSurpriseLikelihood
    , gooRecognitionResult
    , gooLandmarkingConfidence
    , gooPanAngle
    , gooRollAngle
    , gooUnderExposedLikelihood
    , gooFdBoundingPoly
    , gooAngerLikelihood
    , gooDetectionConfidence
    , gooHeadwearLikelihood
    , gooSorrowLikelihood
    , gooJoyLikelihood
    , gooLandmarks

    -- * TextAnnotation
    , TextAnnotation
    , textAnnotation
    , taText
    , taPages

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    , GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    , googleCloudVisionV1p3beta1ProductSearchResultsResult
    , gcvvpsrrImage
    , gcvvpsrrScore
    , gcvvpsrrProduct

    -- * GoogleCloudVisionV1p3beta1Paragraph
    , GoogleCloudVisionV1p3beta1Paragraph
    , googleCloudVisionV1p3beta1Paragraph
    , ggProperty
    , ggBoundingBox
    , ggConfidence
    , ggWords

    -- * GoogleCloudVisionV1p4beta1NormalizedVertex
    , GoogleCloudVisionV1p4beta1NormalizedVertex
    , googleCloudVisionV1p4beta1NormalizedVertex
    , gcvvnvX
    , gcvvnvY

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotationRacy
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotationRacy (..)

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    , GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    , googleCloudVisionV1p1beta1WebDetectionWebEntity
    , gcvvwdweScore
    , gcvvwdweEntityId
    , gcvvwdweDescription

    -- * GoogleCloudVisionV1p2beta1AnnotateFileResponse
    , GoogleCloudVisionV1p2beta1AnnotateFileResponse
    , googleCloudVisionV1p2beta1AnnotateFileResponse
    , gcvvafrResponses
    , gcvvafrError
    , gcvvafrInputConfig
    , gcvvafrTotalPages

    -- * GoogleCloudVisionV1p3beta1Word
    , GoogleCloudVisionV1p3beta1Word
    , googleCloudVisionV1p3beta1Word
    , gcvvwProperty
    , gcvvwBoundingBox
    , gcvvwSymbols
    , gcvvwConfidence

    -- * LocalizedObjectAnnotation
    , LocalizedObjectAnnotation
    , localizedObjectAnnotation
    , loaLanguageCode
    , loaScore
    , loaBoundingPoly
    , loaName
    , loaMid

    -- * GoogleCloudVisionV1p2beta1WebDetection
    , GoogleCloudVisionV1p2beta1WebDetection
    , googleCloudVisionV1p2beta1WebDetection
    , gcvvwdVisuallySimilarImages
    , gcvvwdBestGuessLabels
    , gcvvwdPagesWithMatchingImages
    , gcvvwdPartialMatchingImages
    , gcvvwdFullMatchingImages
    , gcvvwdWebEntities

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * GoogleCloudVisionV1p2beta1OperationMetadataState
    , GoogleCloudVisionV1p2beta1OperationMetadataState (..)

    -- * Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

    -- * GoogleCloudVisionV1p4beta1Position
    , GoogleCloudVisionV1p4beta1Position
    , googleCloudVisionV1p4beta1Position
    , gcvvpZ
    , gcvvpX
    , gcvvpY

    -- * GoogleCloudVisionV1p2beta1ProductKeyValue
    , GoogleCloudVisionV1p2beta1ProductKeyValue
    , googleCloudVisionV1p2beta1ProductKeyValue
    , gValue
    , gKey

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    , GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    , googleCloudVisionV1p1beta1FaceAnnotationLandmark
    , gcvvfalType
    , gcvvfalPosition

    -- * GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    , GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    , googleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    , gooResponses

    -- * GoogleCloudVisionV1p1beta1EntityAnnotation
    , GoogleCloudVisionV1p1beta1EntityAnnotation
    , googleCloudVisionV1p1beta1EntityAnnotation
    , gcvveaScore
    , gcvveaTopicality
    , gcvveaLocale
    , gcvveaBoundingPoly
    , gcvveaConfidence
    , gcvveaMid
    , gcvveaLocations
    , gcvveaDescription
    , gcvveaProperties

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationBlurredLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationBlurredLikelihood (..)

    -- * GoogleCloudVisionV1p3beta1AnnotateImageResponse
    , GoogleCloudVisionV1p3beta1AnnotateImageResponse
    , googleCloudVisionV1p3beta1AnnotateImageResponse
    , gooLogoAnnotations
    , gooProductSearchResults
    , gooContext
    , gooLabelAnnotations
    , gooFaceAnnotations
    , gooError
    , gooWebDetection
    , gooSafeSearchAnnotation
    , gooLandmarkAnnotations
    , gooLocalizedObjectAnnotations
    , gooTextAnnotations
    , gooCropHintsAnnotation
    , gooFullTextAnnotation
    , gooImagePropertiesAnnotation

    -- * GoogleCloudVisionV1p3beta1ImageProperties
    , GoogleCloudVisionV1p3beta1ImageProperties
    , googleCloudVisionV1p3beta1ImageProperties
    , gcvvipsDominantColors

    -- * GoogleCloudVisionV1p4beta1CropHintsAnnotation
    , GoogleCloudVisionV1p4beta1CropHintsAnnotation
    , googleCloudVisionV1p4beta1CropHintsAnnotation
    , gCropHints

    -- * FaceAnnotationHeadwearLikelihood
    , FaceAnnotationHeadwearLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1ImageSource
    , GoogleCloudVisionV1p2beta1ImageSource
    , googleCloudVisionV1p2beta1ImageSource
    , gcvvisGcsImageURI
    , gcvvisImageURI

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    , GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    , googleCloudVisionV1p4beta1FaceAnnotationLandmark
    , gType
    , gPosition

    -- * GoogleCloudVisionV1p4beta1EntityAnnotation
    , GoogleCloudVisionV1p4beta1EntityAnnotation
    , googleCloudVisionV1p4beta1EntityAnnotation
    , gcvveacScore
    , gcvveacTopicality
    , gcvveacLocale
    , gcvveacBoundingPoly
    , gcvveacConfidence
    , gcvveacMid
    , gcvveacLocations
    , gcvveacDescription
    , gcvveacProperties

    -- * BlockBlockType
    , BlockBlockType (..)

    -- * GoogleCloudVisionV1p3beta1Page
    , GoogleCloudVisionV1p3beta1Page
    , googleCloudVisionV1p3beta1Page
    , goooProperty
    , goooHeight
    , goooBlocks
    , goooWidth
    , goooConfidence

    -- * GoogleCloudVisionV1p1beta1Block
    , GoogleCloudVisionV1p1beta1Block
    , googleCloudVisionV1p1beta1Block
    , gcvvbProperty
    , gcvvbBoundingBox
    , gcvvbParagraphs
    , gcvvbConfidence
    , gcvvbBlockType

    -- * GoogleCloudVisionV1p3beta1BatchOperationMetadataState
    , GoogleCloudVisionV1p3beta1BatchOperationMetadataState (..)

    -- * GoogleCloudVisionV1p3beta1GcsDestination
    , GoogleCloudVisionV1p3beta1GcsDestination
    , googleCloudVisionV1p3beta1GcsDestination
    , gcvvgdURI

    -- * GoogleCloudVisionV1p3beta1Product
    , GoogleCloudVisionV1p3beta1Product
    , googleCloudVisionV1p3beta1Product
    , gcvvpcName
    , gcvvpcDisplayName
    , gcvvpcProductCategory
    , gcvvpcProductLabels
    , gcvvpcDescription

    -- * GoogleCloudVisionV1p4beta1ReferenceImage
    , GoogleCloudVisionV1p4beta1ReferenceImage
    , googleCloudVisionV1p4beta1ReferenceImage
    , gcvvriURI
    , gcvvriName
    , gcvvriBoundingPolys

    -- * GoogleCloudVisionV1p4beta1InputConfig
    , GoogleCloudVisionV1p4beta1InputConfig
    , googleCloudVisionV1p4beta1InputConfig
    , gGcsSource
    , gContent
    , gMimeType

    -- * GoogleCloudVisionV1p4beta1BatchOperationMetadata
    , GoogleCloudVisionV1p4beta1BatchOperationMetadata
    , googleCloudVisionV1p4beta1BatchOperationMetadata
    , gcvvbomState
    , gcvvbomEndTime
    , gcvvbomSubmitTime

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotationRacy
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotationRacy (..)

    -- * BoundingPoly
    , BoundingPoly
    , boundingPoly
    , bpNormalizedVertices
    , bpVertices

    -- * GoogleCloudVisionV1p1beta1NormalizedVertex
    , GoogleCloudVisionV1p1beta1NormalizedVertex
    , googleCloudVisionV1p1beta1NormalizedVertex
    , gX
    , gY

    -- * GoogleCloudVisionV1p3beta1LocationInfo
    , GoogleCloudVisionV1p3beta1LocationInfo
    , googleCloudVisionV1p3beta1LocationInfo
    , gcvvliLatLng

    -- * SafeSearchAnnotationAdult
    , SafeSearchAnnotationAdult (..)

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebPage
    , GoogleCloudVisionV1p4beta1WebDetectionWebPage
    , googleCloudVisionV1p4beta1WebDetectionWebPage
    , gScore
    , gURL
    , gPageTitle
    , gPartialMatchingImages
    , gFullMatchingImages

    -- * BatchAnnotateFilesResponse
    , BatchAnnotateFilesResponse
    , batchAnnotateFilesResponse
    , bafrResponses

    -- * Vertex
    , Vertex
    , vertex
    , vX
    , vY

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreakType
    , GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreakType (..)

    -- * GoogleCloudVisionV1p1beta1Position
    , GoogleCloudVisionV1p1beta1Position
    , googleCloudVisionV1p1beta1Position
    , gooZ
    , gooX
    , gooY

    -- * GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    , GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    , googleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    , gcvvaafrOutputConfig

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotationRacy
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotationRacy (..)

    -- * GoogleCloudVisionV1p3beta1BlockBlockType
    , GoogleCloudVisionV1p3beta1BlockBlockType (..)

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebImage
    , GoogleCloudVisionV1p3beta1WebDetectionWebImage
    , googleCloudVisionV1p3beta1WebDetectionWebImage
    , gcvvwdwiScore
    , gcvvwdwiURL

    -- * GoogleCloudVisionV1p3beta1Vertex
    , GoogleCloudVisionV1p3beta1Vertex
    , googleCloudVisionV1p3beta1Vertex
    , gcvvvX
    , gcvvvY

    -- * WebEntity
    , WebEntity
    , webEntity
    , weScore
    , weEntityId
    , weDescription

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    , GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    , googleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    , gcvvbairResponses

    -- * GoogleCloudVisionV1p1beta1GcsSource
    , GoogleCloudVisionV1p1beta1GcsSource
    , googleCloudVisionV1p1beta1GcsSource
    , gcvvgsURI

    -- * GoogleCloudVisionV1p2beta1CropHintsAnnotation
    , GoogleCloudVisionV1p2beta1CropHintsAnnotation
    , googleCloudVisionV1p2beta1CropHintsAnnotation
    , gooCropHints

    -- * GoogleCloudVisionV1p4beta1WebDetection
    , GoogleCloudVisionV1p4beta1WebDetection
    , googleCloudVisionV1p4beta1WebDetection
    , gooVisuallySimilarImages
    , gooBestGuessLabels
    , gooPagesWithMatchingImages
    , gooPartialMatchingImages
    , gooFullMatchingImages
    , gooWebEntities

    -- * GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURI

    -- * GoogleCloudVisionV1p3beta1BoundingPoly
    , GoogleCloudVisionV1p3beta1BoundingPoly
    , googleCloudVisionV1p3beta1BoundingPoly
    , gcvvbpNormalizedVertices
    , gcvvbpVertices

    -- * GoogleCloudVisionV1p2beta1NormalizedVertex
    , GoogleCloudVisionV1p2beta1NormalizedVertex
    , googleCloudVisionV1p2beta1NormalizedVertex
    , gcvvnvcX
    , gcvvnvcY

    -- * FaceAnnotationAngerLikelihood
    , FaceAnnotationAngerLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1Position
    , GoogleCloudVisionV1p2beta1Position
    , googleCloudVisionV1p2beta1Position
    , gcvvpcZ
    , gcvvpcX
    , gcvvpcY

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationJoyLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationJoyLikelihood (..)

    -- * GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    , GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    , googleCloudVisionV1p3beta1TextAnnotationTextProperty
    , gcvvtatpDetectedLanguages
    , gcvvtatpDetectedBreak

    -- * LocationInfo
    , LocationInfo
    , locationInfo
    , liLatLng

    -- * GoogleCloudVisionV1p4beta1OperationMetadataState
    , GoogleCloudVisionV1p4beta1OperationMetadataState (..)

    -- * SafeSearchAnnotationMedical
    , SafeSearchAnnotationMedical (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * GoogleCloudVisionV1p4beta1AnnotateFileResponse
    , GoogleCloudVisionV1p4beta1AnnotateFileResponse
    , googleCloudVisionV1p4beta1AnnotateFileResponse
    , gcvvafrcResponses
    , gcvvafrcError
    , gcvvafrcInputConfig
    , gcvvafrcTotalPages

    -- * Page
    , Page
    , page
    , pProperty
    , pHeight
    , pBlocks
    , pWidth
    , pConfidence

    -- * ColorInfo
    , ColorInfo
    , colorInfo
    , ciColor
    , ciScore
    , ciPixelFraction

    -- * GoogleCloudVisionV1p4beta1FaceRecognitionResult
    , GoogleCloudVisionV1p4beta1FaceRecognitionResult
    , googleCloudVisionV1p4beta1FaceRecognitionResult
    , gcvvfrrCelebrity
    , gcvvfrrConfidence

    -- * GoogleCloudVisionV1p4beta1ProductKeyValue
    , GoogleCloudVisionV1p4beta1ProductKeyValue
    , googleCloudVisionV1p4beta1ProductKeyValue
    , gooValue
    , gooKey

    -- * GoogleCloudVisionV1p3beta1OperationMetadata
    , GoogleCloudVisionV1p3beta1OperationMetadata
    , googleCloudVisionV1p3beta1OperationMetadata
    , gooState
    , gooUpdateTime
    , gooCreateTime

    -- * GoogleCloudVisionV1p2beta1Feature
    , GoogleCloudVisionV1p2beta1Feature
    , googleCloudVisionV1p2beta1Feature
    , gcvvfModel
    , gcvvfType
    , gcvvfMaxResults

    -- * WebLabel
    , WebLabel
    , webLabel
    , wlLanguageCode
    , wlLabel

    -- * GoogleCloudVisionV1p1beta1ProductKeyValue
    , GoogleCloudVisionV1p1beta1ProductKeyValue
    , googleCloudVisionV1p1beta1ProductKeyValue
    , gcvvpkvcValue
    , gcvvpkvcKey

    -- * GoogleCloudVisionV1p1beta1ImageAnnotationContext
    , GoogleCloudVisionV1p1beta1ImageAnnotationContext
    , googleCloudVisionV1p1beta1ImageAnnotationContext
    , gURI
    , gPageNumber

    -- * GoogleCloudVisionV1p4beta1GcsSource
    , GoogleCloudVisionV1p4beta1GcsSource
    , googleCloudVisionV1p4beta1GcsSource
    , gooURI

    -- * GoogleCloudVisionV1p4beta1TextAnnotation
    , GoogleCloudVisionV1p4beta1TextAnnotation
    , googleCloudVisionV1p4beta1TextAnnotation
    , gcvvtaText
    , gcvvtaPages

    -- * Paragraph
    , Paragraph
    , paragraph
    , parProperty
    , parBoundingBox
    , parConfidence
    , parWords

    -- * Symbol
    , Symbol
    , symbol
    , sProperty
    , sBoundingBox
    , sText
    , sConfidence

    -- * FaceAnnotationBlurredLikelihood
    , FaceAnnotationBlurredLikelihood (..)

    -- * AnnotateImageResponse
    , AnnotateImageResponse
    , annotateImageResponse
    , airLogoAnnotations
    , airProductSearchResults
    , airContext
    , airLabelAnnotations
    , airFaceAnnotations
    , airError
    , airWebDetection
    , airSafeSearchAnnotation
    , airLandmarkAnnotations
    , airLocalizedObjectAnnotations
    , airTextAnnotations
    , airCropHintsAnnotation
    , airFullTextAnnotation
    , airImagePropertiesAnnotation

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationLandmarkType
    , GoogleCloudVisionV1p2beta1FaceAnnotationLandmarkType (..)

    -- * GoogleCloudVisionV1p3beta1OutputConfig
    , GoogleCloudVisionV1p3beta1OutputConfig
    , googleCloudVisionV1p3beta1OutputConfig
    , gooGcsDestination
    , gooBatchSize

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationSurpriseLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationSurpriseLikelihood (..)

    -- * ImageProperties
    , ImageProperties
    , imageProperties
    , ipDominantColors

    -- * GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    , GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    , googleCloudVisionV1p3beta1LocalizedObjectAnnotation
    , gcvvloacLanguageCode
    , gcvvloacScore
    , gcvvloacBoundingPoly
    , gcvvloacName
    , gcvvloacMid

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationUnderExposedLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationUnderExposedLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    , GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    , googleCloudVisionV1p2beta1WebDetectionWebEntity
    , gcvvwdwecScore
    , gcvvwdwecEntityId
    , gcvvwdwecDescription

    -- * AsyncBatchAnnotateFilesResponse
    , AsyncBatchAnnotateFilesResponse
    , asyncBatchAnnotateFilesResponse
    , abafrResponses

    -- * GoogleCloudVisionV1p3beta1CropHint
    , GoogleCloudVisionV1p3beta1CropHint
    , googleCloudVisionV1p3beta1CropHint
    , gcvvch1BoundingPoly
    , gcvvch1Confidence
    , gcvvch1ImportanceFraction

    -- * FaceAnnotation
    , FaceAnnotation
    , faceAnnotation
    , faTiltAngle
    , faBlurredLikelihood
    , faBoundingPoly
    , faSurpriseLikelihood
    , faLandmarkingConfidence
    , faPanAngle
    , faRollAngle
    , faUnderExposedLikelihood
    , faFdBoundingPoly
    , faAngerLikelihood
    , faDetectionConfidence
    , faHeadwearLikelihood
    , faSorrowLikelihood
    , faJoyLikelihood
    , faLandmarks

    -- * GoogleCloudVisionV1p1beta1Property
    , GoogleCloudVisionV1p1beta1Property
    , googleCloudVisionV1p1beta1Property
    , ggUint64Value
    , ggValue
    , ggName

    -- * GoogleCloudVisionV1p1beta1ProductSearchResults
    , GoogleCloudVisionV1p1beta1ProductSearchResults
    , googleCloudVisionV1p1beta1ProductSearchResults
    , gProductGroupedResults
    , gResults
    , gIndexTime

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    , GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    , googleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    , gcvvpsroacLanguageCode
    , gcvvpsroacScore
    , gcvvpsroacName
    , gcvvpsroacMid

    -- * GoogleCloudVisionV1p2beta1LatLongRect
    , GoogleCloudVisionV1p2beta1LatLongRect
    , googleCloudVisionV1p2beta1LatLongRect
    , gcvvllrMaxLatLng
    , gcvvllrMinLatLng

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    , GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    , googleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    , goooLanguageCode
    , goooScore
    , goooName
    , goooMid

    -- * DetectedBreak
    , DetectedBreak
    , detectedBreak
    , dbIsPrefix
    , dbType

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationSurpriseLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationSurpriseLikelihood (..)

    -- * Result
    , Result
    , result
    , rImage
    , rScore
    , rProduct

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    , GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    , googleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    , gcvvpsrgrResults
    , gcvvpsrgrBoundingPoly
    , gcvvpsrgrObjectAnnotations

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    , googleCloudVisionV1p1beta1SafeSearchAnnotation
    , gooSpoof
    , gooRacy
    , gooAdult
    , gooMedical
    , gooViolence

    -- * GoogleCloudVisionV1p4beta1CropHint
    , GoogleCloudVisionV1p4beta1CropHint
    , googleCloudVisionV1p4beta1CropHint
    , g1BoundingPoly
    , g1Confidence
    , g1ImportanceFraction

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationSorrowLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationSorrowLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1Product
    , GoogleCloudVisionV1p2beta1Product
    , googleCloudVisionV1p2beta1Product
    , gcvvp1Name
    , gcvvp1DisplayName
    , gcvvp1ProductCategory
    , gcvvp1ProductLabels
    , gcvvp1Description

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreakType
    , GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreakType (..)

    -- * Block
    , Block
    , block
    , bProperty
    , bBoundingBox
    , bParagraphs
    , bConfidence
    , bBlockType

    -- * GoogleCloudVisionV1p4beta1OutputConfig
    , GoogleCloudVisionV1p4beta1OutputConfig
    , googleCloudVisionV1p4beta1OutputConfig
    , gcvvoccGcsDestination
    , gcvvoccBatchSize

    -- * GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    , GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    , googleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    , gInputConfig
    , gFeatures
    , gOutputConfig
    , gImageContext

    -- * GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    , GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    , googleCloudVisionV1p2beta1DominantColorsAnnotation
    , gooColors

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotationSpoof
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotationSpoof (..)

    -- * SafeSearchAnnotationViolence
    , SafeSearchAnnotationViolence (..)

    -- * GoogleCloudVisionV1p3beta1TextAnnotation
    , GoogleCloudVisionV1p3beta1TextAnnotation
    , googleCloudVisionV1p3beta1TextAnnotation
    , gText
    , gPages

    -- * AsyncAnnotateFileResponse
    , AsyncAnnotateFileResponse
    , asyncAnnotateFileResponse
    , aafrOutputConfig

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotationAdult
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotationAdult (..)

    -- * InputConfig
    , InputConfig
    , inputConfig
    , icGcsSource
    , icContent
    , icMimeType

    -- * EntityAnnotation
    , EntityAnnotation
    , entityAnnotation
    , eaScore
    , eaTopicality
    , eaLocale
    , eaBoundingPoly
    , eaConfidence
    , eaMid
    , eaLocations
    , eaDescription
    , eaProperties

    -- * GoogleCloudVisionV1p3beta1OperationMetadataState
    , GoogleCloudVisionV1p3beta1OperationMetadataState (..)

    -- * GoogleCloudVisionV1p2beta1TextDetectionParams
    , GoogleCloudVisionV1p2beta1TextDetectionParams
    , googleCloudVisionV1p2beta1TextDetectionParams
    , gcvvtdpEnableTextDetectionConfidenceScore

    -- * GoogleCloudVisionV1p4beta1BlockBlockType
    , GoogleCloudVisionV1p4beta1BlockBlockType (..)

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    , GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    , googleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    , gcvvpsrgrcResults
    , gcvvpsrgrcBoundingPoly
    , gcvvpsrgrcObjectAnnotations

    -- * GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    , GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    , googleCloudVisionV1p4beta1TextAnnotationTextProperty
    , gDetectedLanguages
    , gDetectedBreak

    -- * ReferenceImage
    , ReferenceImage
    , referenceImage
    , riURI
    , riName
    , riBoundingPolys

    -- * GoogleCloudVisionV1p4beta1Vertex
    , GoogleCloudVisionV1p4beta1Vertex
    , googleCloudVisionV1p4beta1Vertex
    , gcvvvcX
    , gcvvvcY

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotationSpoof
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotationSpoof (..)

    -- * BatchOperationMetadata
    , BatchOperationMetadata
    , batchOperationMetadata
    , bomState
    , bomEndTime
    , bomSubmitTime

    -- * GoogleCloudVisionV1p3beta1WebDetection
    , GoogleCloudVisionV1p3beta1WebDetection
    , googleCloudVisionV1p3beta1WebDetection
    , gcvvwdcVisuallySimilarImages
    , gcvvwdcBestGuessLabels
    , gcvvwdcPagesWithMatchingImages
    , gcvvwdcPartialMatchingImages
    , gcvvwdcFullMatchingImages
    , gcvvwdcWebEntities

    -- * DetectedLanguage
    , DetectedLanguage
    , detectedLanguage
    , dlLanguageCode
    , dlConfidence

    -- * GoogleCloudVisionV1p3beta1AnnotateFileResponse
    , GoogleCloudVisionV1p3beta1AnnotateFileResponse
    , googleCloudVisionV1p3beta1AnnotateFileResponse
    , ggResponses
    , ggError
    , ggInputConfig
    , ggTotalPages

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    , GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    , googleCloudVisionV1p2beta1ProductSearchResultsResult
    , gcvvpsrrcImage
    , gcvvpsrrcScore
    , gcvvpsrrcProduct

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebImage
    , GoogleCloudVisionV1p4beta1WebDetectionWebImage
    , googleCloudVisionV1p4beta1WebDetectionWebImage
    , gcvvwdwicScore
    , gcvvwdwicURL

    -- * GoogleCloudVisionV1p4beta1BoundingPoly
    , GoogleCloudVisionV1p4beta1BoundingPoly
    , googleCloudVisionV1p4beta1BoundingPoly
    , gNormalizedVertices
    , gVertices

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationHeadwearLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationHeadwearLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1Word
    , GoogleCloudVisionV1p2beta1Word
    , googleCloudVisionV1p2beta1Word
    , gcvvwcProperty
    , gcvvwcBoundingBox
    , gcvvwcSymbols
    , gcvvwcConfidence

    -- * GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    , GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    , googleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    , gcvvbafrResponses

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotationAdult
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotationAdult (..)

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationAngerLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationAngerLikelihood (..)

    -- * OperationMetadataState
    , OperationMetadataState (..)

    -- * GoogleCloudVisionV1p1beta1Word
    , GoogleCloudVisionV1p1beta1Word
    , googleCloudVisionV1p1beta1Word
    , gcvvw1Property
    , gcvvw1BoundingBox
    , gcvvw1Symbols
    , gcvvw1Confidence

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    , GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    , googleCloudVisionV1p1beta1ProductSearchResultsResult
    , ggImage
    , ggScore
    , ggProduct

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationBlurredLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationBlurredLikelihood (..)

    -- * GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    , GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    , googleCloudVisionV1p3beta1ImportProductSetsResponse
    , gcvvipsrReferenceImages
    , gcvvipsrStatuses

    -- * GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    , GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    , googleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    , gcvvabafrcResponses

    -- * GoogleCloudVisionV1p4beta1ColorInfo
    , GoogleCloudVisionV1p4beta1ColorInfo
    , googleCloudVisionV1p4beta1ColorInfo
    , gcvvcicColor
    , gcvvcicScore
    , gcvvcicPixelFraction

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationHeadwearLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationHeadwearLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1AnnotateFileRequest
    , GoogleCloudVisionV1p2beta1AnnotateFileRequest
    , googleCloudVisionV1p2beta1AnnotateFileRequest
    , gooPages
    , gooInputConfig
    , gooFeatures
    , gooImageContext

    -- * GoogleCloudVisionV1p1beta1ImageProperties
    , GoogleCloudVisionV1p1beta1ImageProperties
    , googleCloudVisionV1p1beta1ImageProperties
    , gooDominantColors

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotationMedical
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotationMedical (..)

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    , GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    , googleCloudVisionV1p3beta1WebDetectionWebEntity
    , gcvvwdwe1Score
    , gcvvwdwe1EntityId
    , gcvvwdwe1Description

    -- * GoogleCloudVisionV1p4beta1Celebrity
    , GoogleCloudVisionV1p4beta1Celebrity
    , googleCloudVisionV1p4beta1Celebrity
    , gcvvcName
    , gcvvcDisplayName
    , gcvvcDescription

    -- * GoogleCloudVisionV1p1beta1AnnotateImageResponse
    , GoogleCloudVisionV1p1beta1AnnotateImageResponse
    , googleCloudVisionV1p1beta1AnnotateImageResponse
    , gcvvaircLogoAnnotations
    , gcvvaircProductSearchResults
    , gcvvaircContext
    , gcvvaircLabelAnnotations
    , gcvvaircFaceAnnotations
    , gcvvaircError
    , gcvvaircWebDetection
    , gcvvaircSafeSearchAnnotation
    , gcvvaircLandmarkAnnotations
    , gcvvaircLocalizedObjectAnnotations
    , gcvvaircTextAnnotations
    , gcvvaircCropHintsAnnotation
    , gcvvaircFullTextAnnotation
    , gcvvaircImagePropertiesAnnotation

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    , GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    , googleCloudVisionV1p3beta1FaceAnnotationLandmark
    , gooType
    , gooPosition

    -- * GoogleCloudVisionV1p3beta1BatchOperationMetadata
    , GoogleCloudVisionV1p3beta1BatchOperationMetadata
    , googleCloudVisionV1p3beta1BatchOperationMetadata
    , gcvvbomcState
    , gcvvbomcEndTime
    , gcvvbomcSubmitTime

    -- * WebImage
    , WebImage
    , webImage
    , wiScore
    , wiURL

    -- * GoogleCloudVisionV1p1beta1Paragraph
    , GoogleCloudVisionV1p1beta1Paragraph
    , googleCloudVisionV1p1beta1Paragraph
    , gcvvp1Property
    , gcvvp1BoundingBox
    , gcvvp1Confidence
    , gcvvp1Words

    -- * WebDetection
    , WebDetection
    , webDetection
    , wdVisuallySimilarImages
    , wdBestGuessLabels
    , wdPagesWithMatchingImages
    , wdPartialMatchingImages
    , wdFullMatchingImages
    , wdWebEntities

    -- * AnnotateFileResponse
    , AnnotateFileResponse
    , annotateFileResponse
    , afrResponses
    , afrError
    , afrInputConfig
    , afrTotalPages

    -- * GoogleCloudVisionV1p3beta1EntityAnnotation
    , GoogleCloudVisionV1p3beta1EntityAnnotation
    , googleCloudVisionV1p3beta1EntityAnnotation
    , gcvvea1Score
    , gcvvea1Topicality
    , gcvvea1Locale
    , gcvvea1BoundingPoly
    , gcvvea1Confidence
    , gcvvea1Mid
    , gcvvea1Locations
    , gcvvea1Description
    , gcvvea1Properties

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    , GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    , googleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    , gcvvtadbcIsPrefix
    , gcvvtadbcType

    -- * GroupedResult
    , GroupedResult
    , groupedResult
    , grResults
    , grBoundingPoly
    , grObjectAnnotations

    -- * GoogleCloudVisionV1p4beta1Page
    , GoogleCloudVisionV1p4beta1Page
    , googleCloudVisionV1p4beta1Page
    , goo1Property
    , goo1Height
    , goo1Blocks
    , goo1Width
    , goo1Confidence

    -- * GoogleCloudVisionV1p4beta1GcsDestination
    , GoogleCloudVisionV1p4beta1GcsDestination
    , googleCloudVisionV1p4beta1GcsDestination
    , gcvvgdcURI

    -- * GoogleCloudVisionV1p3beta1ReferenceImage
    , GoogleCloudVisionV1p3beta1ReferenceImage
    , googleCloudVisionV1p3beta1ReferenceImage
    , gcvvricURI
    , gcvvricName
    , gcvvricBoundingPolys

    -- * GoogleCloudVisionV1p4beta1LocationInfo
    , GoogleCloudVisionV1p4beta1LocationInfo
    , googleCloudVisionV1p4beta1LocationInfo
    , gLatLng

    -- * GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    , GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    , googleCloudVisionV1p2beta1LocalizedObjectAnnotation
    , gcvvloa1LanguageCode
    , gcvvloa1Score
    , gcvvloa1BoundingPoly
    , gcvvloa1Name
    , gcvvloa1Mid

    -- * GoogleCloudVisionV1p3beta1Block
    , GoogleCloudVisionV1p3beta1Block
    , googleCloudVisionV1p3beta1Block
    , gcvvbcProperty
    , gcvvbcBoundingBox
    , gcvvbcParagraphs
    , gcvvbcConfidence
    , gcvvbcBlockType

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotationAdult
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotationAdult (..)

    -- * GoogleCloudVisionV1p4beta1Word
    , GoogleCloudVisionV1p4beta1Word
    , googleCloudVisionV1p4beta1Word
    , gcvvw2Property
    , gcvvw2BoundingBox
    , gcvvw2Symbols
    , gcvvw2Confidence

    -- * LandmarkType
    , LandmarkType (..)

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreakType
    , GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreakType (..)

    -- * GoogleCloudVisionV1p2beta1Vertex
    , GoogleCloudVisionV1p2beta1Vertex
    , googleCloudVisionV1p2beta1Vertex
    , ggX
    , ggY

    -- * GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    , GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    , googleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    , gooOutputConfig

    -- * ObjectAnnotation
    , ObjectAnnotation
    , objectAnnotation
    , oaLanguageCode
    , oaScore
    , oaName
    , oaMid

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleCloudVisionV1p2beta1BlockBlockType
    , GoogleCloudVisionV1p2beta1BlockBlockType (..)

    -- * GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    , GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    , googleCloudVisionV1p2beta1TextAnnotationTextProperty
    , gooDetectedLanguages
    , gooDetectedBreak

    -- * GoogleCloudVisionV1p2beta1BoundingPoly
    , GoogleCloudVisionV1p2beta1BoundingPoly
    , googleCloudVisionV1p2beta1BoundingPoly
    , gooNormalizedVertices
    , gooVertices

    -- * GoogleCloudVisionV1p3beta1Position
    , GoogleCloudVisionV1p3beta1Position
    , googleCloudVisionV1p3beta1Position
    , goooZ
    , goooX
    , goooY

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    , GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    , googleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    , gcvvbafrcResponses

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    , GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    , googleCloudVisionV1p4beta1ProductSearchResultsResult
    , gcvvpsrr1Image
    , gcvvpsrr1Score
    , gcvvpsrr1Product

    -- * GoogleCloudVisionV1p1beta1GcsDestination
    , GoogleCloudVisionV1p1beta1GcsDestination
    , googleCloudVisionV1p1beta1GcsDestination
    , ggURI

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotationRacy
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotationRacy (..)

    -- * GoogleCloudVisionV1p1beta1LocationInfo
    , GoogleCloudVisionV1p1beta1LocationInfo
    , googleCloudVisionV1p1beta1LocationInfo
    , gooLatLng

    -- * GoogleCloudVisionV1p1beta1Product
    , GoogleCloudVisionV1p1beta1Product
    , googleCloudVisionV1p1beta1Product
    , g1Name
    , g1DisplayName
    , g1ProductCategory
    , g1ProductLabels
    , g1Description

    -- * GoogleCloudVisionV1p3beta1NormalizedVertex
    , GoogleCloudVisionV1p3beta1NormalizedVertex
    , googleCloudVisionV1p3beta1NormalizedVertex
    , gcvvnv1X
    , gcvvnv1Y

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebImage
    , GoogleCloudVisionV1p2beta1WebDetectionWebImage
    , googleCloudVisionV1p2beta1WebDetectionWebImage
    , gcvvwdwi1Score
    , gcvvwdwi1URL

    -- * GoogleCloudVisionV1p1beta1Page
    , GoogleCloudVisionV1p1beta1Page
    , googleCloudVisionV1p1beta1Page
    , gcvvp2Property
    , gcvvp2Height
    , gcvvp2Blocks
    , gcvvp2Width
    , gcvvp2Confidence

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    , GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    , googleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    , ggResults
    , ggBoundingPoly
    , ggObjectAnnotations

    -- * GoogleCloudVisionV1p3beta1Symbol
    , GoogleCloudVisionV1p3beta1Symbol
    , googleCloudVisionV1p3beta1Symbol
    , gcvvs1Property
    , gcvvs1BoundingBox
    , gcvvs1Text
    , gcvvs1Confidence

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotationViolence
    , GoogleCloudVisionV1p4beta1SafeSearchAnnotationViolence (..)

    -- * CropHint
    , CropHint
    , cropHint
    , chBoundingPoly
    , chConfidence
    , chImportanceFraction

    -- * GoogleCloudVisionV1p2beta1Image
    , GoogleCloudVisionV1p2beta1Image
    , googleCloudVisionV1p2beta1Image
    , gcvviContent
    , gcvviSource

    -- * GoogleCloudVisionV1p1beta1InputConfig
    , GoogleCloudVisionV1p1beta1InputConfig
    , googleCloudVisionV1p1beta1InputConfig
    , gooGcsSource
    , gooContent
    , gooMimeType

    -- * GoogleCloudVisionV1p2beta1ImageAnnotationContext
    , GoogleCloudVisionV1p2beta1ImageAnnotationContext
    , googleCloudVisionV1p2beta1ImageAnnotationContext
    , gcvviaccURI
    , gcvviaccPageNumber

    -- * GoogleCloudVisionV1p2beta1ProductSearchResults
    , GoogleCloudVisionV1p2beta1ProductSearchResults
    , googleCloudVisionV1p2beta1ProductSearchResults
    , gcvvpsrsProductGroupedResults
    , gcvvpsrsResults
    , gcvvpsrsIndexTime

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationUnderExposedLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationUnderExposedLikelihood (..)

    -- * GoogleCloudVisionV1p4beta1Block
    , GoogleCloudVisionV1p4beta1Block
    , googleCloudVisionV1p4beta1Block
    , gcvvb1Property
    , gcvvb1BoundingBox
    , gcvvb1Paragraphs
    , gcvvb1Confidence
    , gcvvb1BlockType

    -- * SafeSearchAnnotationSpoof
    , SafeSearchAnnotationSpoof (..)

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationLandmarkType
    , GoogleCloudVisionV1p1beta1FaceAnnotationLandmarkType (..)

    -- * GoogleCloudVisionV1p2beta1Property
    , GoogleCloudVisionV1p2beta1Property
    , googleCloudVisionV1p2beta1Property
    , goo1Uint64Value
    , goo1Value
    , goo1Name

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    , GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    , googleCloudVisionV1p4beta1WebDetectionWebLabel
    , gcvvwdwlcLanguageCode
    , gcvvwdwlcLabel

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation
    , GoogleCloudVisionV1p3beta1FaceAnnotation
    , googleCloudVisionV1p3beta1FaceAnnotation
    , gcvvfacTiltAngle
    , gcvvfacBlurredLikelihood
    , gcvvfacBoundingPoly
    , gcvvfacSurpriseLikelihood
    , gcvvfacLandmarkingConfidence
    , gcvvfacPanAngle
    , gcvvfacRollAngle
    , gcvvfacUnderExposedLikelihood
    , gcvvfacFdBoundingPoly
    , gcvvfacAngerLikelihood
    , gcvvfacDetectionConfidence
    , gcvvfacHeadwearLikelihood
    , gcvvfacSorrowLikelihood
    , gcvvfacJoyLikelihood
    , gcvvfacLandmarks

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    , GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    , googleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    , gcvvtadl1LanguageCode
    , gcvvtadl1Confidence

    -- * GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    , GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    , googleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    , gcvvaafrcOutputConfig

    -- * FaceAnnotationSurpriseLikelihood
    , FaceAnnotationSurpriseLikelihood (..)

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebPage
    , GoogleCloudVisionV1p1beta1WebDetectionWebPage
    , googleCloudVisionV1p1beta1WebDetectionWebPage
    , gcvvwdwpcScore
    , gcvvwdwpcURL
    , gcvvwdwpcPageTitle
    , gcvvwdwpcPartialMatchingImages
    , gcvvwdwpcFullMatchingImages

    -- * OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination
    , ocBatchSize

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    , GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    , googleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    , ggIsPrefix
    , ggType

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotationMedical
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotationMedical (..)

    -- * GoogleCloudVisionV1p2beta1TextAnnotation
    , GoogleCloudVisionV1p2beta1TextAnnotation
    , googleCloudVisionV1p2beta1TextAnnotation
    , gcvvtacText
    , gcvvtacPages

    -- * SafeSearchAnnotation
    , SafeSearchAnnotation
    , safeSearchAnnotation
    , ssaSpoof
    , ssaRacy
    , ssaAdult
    , ssaMedical
    , ssaViolence

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    , GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    , googleCloudVisionV1p1beta1WebDetectionWebLabel
    , ggLanguageCode
    , ggLabel

    -- * GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    , GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    , googleCloudVisionV1p3beta1DominantColorsAnnotation
    , gcvvdcacColors

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    , GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    , googleCloudVisionV1p4beta1WebDetectionWebEntity
    , goo1Score
    , goo1EntityId
    , goo1Description

    -- * GoogleCloudVisionV1p3beta1ColorInfo
    , GoogleCloudVisionV1p3beta1ColorInfo
    , googleCloudVisionV1p3beta1ColorInfo
    , gcvvci1Color
    , gcvvci1Score
    , gcvvci1PixelFraction

    -- * FaceAnnotationSorrowLikelihood
    , FaceAnnotationSorrowLikelihood (..)

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationAngerLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationAngerLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1CropHintsParams
    , GoogleCloudVisionV1p2beta1CropHintsParams
    , googleCloudVisionV1p2beta1CropHintsParams
    , gcvvchpAspectRatios

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationLandmarkType
    , GoogleCloudVisionV1p4beta1FaceAnnotationLandmarkType (..)

    -- * FaceAnnotationJoyLikelihood
    , FaceAnnotationJoyLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , googleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , gcvvbafrParent
    , gcvvbafrRequests

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotationViolence
    , GoogleCloudVisionV1p1beta1SafeSearchAnnotationViolence (..)

    -- * GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    , GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    , googleCloudVisionV1p4beta1ImportProductSetsResponse
    , gReferenceImages
    , gStatuses

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationUnderExposedLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationUnderExposedLikelihood (..)

    -- * GoogleCloudVisionV1p1beta1CropHintsAnnotation
    , GoogleCloudVisionV1p1beta1CropHintsAnnotation
    , googleCloudVisionV1p1beta1CropHintsAnnotation
    , gcvvchacCropHints

    -- * GoogleCloudVisionV1p2beta1GcsSource
    , GoogleCloudVisionV1p2beta1GcsSource
    , googleCloudVisionV1p2beta1GcsSource
    , gcvvgscURI

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omState
    , omUpdateTime
    , omCreateTime

    -- * Product
    , Product
    , product
    , proName
    , proDisplayName
    , proProductCategory
    , proProductLabels
    , proDescription

    -- * GoogleCloudVisionV1p2beta1Block
    , GoogleCloudVisionV1p2beta1Block
    , googleCloudVisionV1p2beta1Block
    , gcvvb2Property
    , gcvvb2BoundingBox
    , gcvvb2Paragraphs
    , gcvvb2Confidence
    , gcvvb2BlockType

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    , googleCloudVisionV1p3beta1SafeSearchAnnotation
    , gcvvssacSpoof
    , gcvvssacRacy
    , gcvvssacAdult
    , gcvvssacMedical
    , gcvvssacViolence

    -- * GoogleCloudVisionV1p1beta1TextAnnotation
    , GoogleCloudVisionV1p1beta1TextAnnotation
    , googleCloudVisionV1p1beta1TextAnnotation
    , ggText
    , ggPages

    -- * GoogleCloudVisionV1p2beta1ProductSearchParams
    , GoogleCloudVisionV1p2beta1ProductSearchParams
    , googleCloudVisionV1p2beta1ProductSearchParams
    , gcvvpspProductCategories
    , gcvvpspBoundingPoly
    , gcvvpspProductSet
    , gcvvpspFilter

    -- * WebPage
    , WebPage
    , webPage
    , wpScore
    , wpURL
    , wpPageTitle
    , wpPartialMatchingImages
    , wpFullMatchingImages

    -- * DominantColorsAnnotation
    , DominantColorsAnnotation
    , dominantColorsAnnotation
    , dcaColors

    -- * GoogleCloudVisionV1p4beta1ImageAnnotationContext
    , GoogleCloudVisionV1p4beta1ImageAnnotationContext
    , googleCloudVisionV1p4beta1ImageAnnotationContext
    , goooURI
    , goooPageNumber

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotationAdult
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotationAdult (..)

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    , GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    , googleCloudVisionV1p2beta1WebDetectionWebLabel
    , gcvvwdwl1LanguageCode
    , gcvvwdwl1Label

    -- * GoogleCloudVisionV1p4beta1ProductSearchResults
    , GoogleCloudVisionV1p4beta1ProductSearchResults
    , googleCloudVisionV1p4beta1ProductSearchResults
    , gooProductGroupedResults
    , gooResults
    , gooIndexTime

    -- * GoogleCloudVisionV1p4beta1Property
    , GoogleCloudVisionV1p4beta1Property
    , googleCloudVisionV1p4beta1Property
    , gcvvp2Uint64Value
    , gcvvp2Value
    , gcvvp2Name

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    , GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    , googleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    , goooResults
    , goooBoundingPoly
    , goooObjectAnnotations

    -- * BatchOperationMetadataState
    , BatchOperationMetadataState (..)

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotationViolence
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotationViolence (..)

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationSorrowLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationSorrowLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    , GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    , googleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    , ggOutputConfig

    -- * GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    , GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    , googleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    , gcvvabaircOutputConfig

    -- * GoogleCloudVisionV1p2beta1EntityAnnotation
    , GoogleCloudVisionV1p2beta1EntityAnnotation
    , googleCloudVisionV1p2beta1EntityAnnotation
    , gcvvea2Score
    , gcvvea2Topicality
    , gcvvea2Locale
    , gcvvea2BoundingPoly
    , gcvvea2Confidence
    , gcvvea2Mid
    , gcvvea2Locations
    , gcvvea2Description
    , gcvvea2Properties

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotationSpoof
    , GoogleCloudVisionV1p3beta1SafeSearchAnnotationSpoof (..)

    -- * GoogleCloudVisionV1p1beta1OperationMetadataState
    , GoogleCloudVisionV1p1beta1OperationMetadataState (..)

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , googleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , gcvvabafrParent
    , gcvvabafrRequests

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebPage
    , GoogleCloudVisionV1p2beta1WebDetectionWebPage
    , googleCloudVisionV1p2beta1WebDetectionWebPage
    , gcvvwdwp1Score
    , gcvvwdwp1URL
    , gcvvwdwp1PageTitle
    , gcvvwdwp1PartialMatchingImages
    , gcvvwdwp1FullMatchingImages

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationHeadwearLikelihood
    , GoogleCloudVisionV1p3beta1FaceAnnotationHeadwearLikelihood (..)

    -- * Word
    , Word
    , word
    , wProperty
    , wBoundingBox
    , wSymbols
    , wConfidence

    -- * GoogleCloudVisionV1p2beta1InputConfig
    , GoogleCloudVisionV1p2beta1InputConfig
    , googleCloudVisionV1p2beta1InputConfig
    , gcvviccGcsSource
    , gcvviccContent
    , gcvviccMimeType

    -- * GoogleCloudVisionV1p1beta1WebDetection
    , GoogleCloudVisionV1p1beta1WebDetection
    , googleCloudVisionV1p1beta1WebDetection
    , ggVisuallySimilarImages
    , ggBestGuessLabels
    , ggPagesWithMatchingImages
    , ggPartialMatchingImages
    , ggFullMatchingImages
    , ggWebEntities

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    , GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    , googleCloudVisionV1p2beta1FaceAnnotationLandmark
    , gcvvfalcType
    , gcvvfalcPosition

    -- * GoogleCloudVisionV1p2beta1AnnotateImageRequest
    , GoogleCloudVisionV1p2beta1AnnotateImageRequest
    , googleCloudVisionV1p2beta1AnnotateImageRequest
    , gcvvairImage
    , gcvvairFeatures
    , gcvvairImageContext

    -- * GoogleCloudVisionV1p2beta1FeatureType
    , GoogleCloudVisionV1p2beta1FeatureType (..)

    -- * GoogleCloudVisionV1p1beta1AnnotateFileResponse
    , GoogleCloudVisionV1p1beta1AnnotateFileResponse
    , googleCloudVisionV1p1beta1AnnotateFileResponse
    , goooResponses
    , goooError
    , goooInputConfig
    , goooTotalPages

    -- * DetectedBreakType
    , DetectedBreakType (..)

    -- * GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    , GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    , googleCloudVisionV1p4beta1LocalizedObjectAnnotation
    , gcvvloa2LanguageCode
    , gcvvloa2Score
    , gcvvloa2BoundingPoly
    , gcvvloa2Name
    , gcvvloa2Mid

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationAngerLikelihood
    , GoogleCloudVisionV1p2beta1FaceAnnotationAngerLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1Page
    , GoogleCloudVisionV1p2beta1Page
    , googleCloudVisionV1p2beta1Page
    , g2Property
    , g2Height
    , g2Blocks
    , g2Width
    , g2Confidence

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    , GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    , googleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    , goooIsPrefix
    , goooType

    -- * GoogleCloudVisionV1p2beta1WebDetectionParams
    , GoogleCloudVisionV1p2beta1WebDetectionParams
    , googleCloudVisionV1p2beta1WebDetectionParams
    , gcvvwdpIncludeGeoResults

    -- * GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    , GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    , googleCloudVisionV1p1beta1TextAnnotationTextProperty
    , gcvvtatpcDetectedLanguages
    , gcvvtatpcDetectedBreak

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotationMedical
    , GoogleCloudVisionV1p2beta1SafeSearchAnnotationMedical (..)

    -- * GoogleCloudVisionV1p1beta1Vertex
    , GoogleCloudVisionV1p1beta1Vertex
    , googleCloudVisionV1p1beta1Vertex
    , gcvvv1X
    , gcvvv1Y

    -- * GoogleCloudVisionV1p1beta1BlockBlockType
    , GoogleCloudVisionV1p1beta1BlockBlockType (..)

    -- * CropHintsAnnotation
    , CropHintsAnnotation
    , cropHintsAnnotation
    , chaCropHints

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , googleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , gcvvbairParent
    , gcvvbairRequests

    -- * SafeSearchAnnotationRacy
    , SafeSearchAnnotationRacy (..)

    -- * GoogleCloudVisionV1p2beta1ColorInfo
    , GoogleCloudVisionV1p2beta1ColorInfo
    , googleCloudVisionV1p2beta1ColorInfo
    , g1Color
    , g1Score
    , g1PixelFraction

    -- * GoogleCloudVisionV1p1beta1BoundingPoly
    , GoogleCloudVisionV1p1beta1BoundingPoly
    , googleCloudVisionV1p1beta1BoundingPoly
    , gcvvbpcNormalizedVertices
    , gcvvbpcVertices

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebImage
    , GoogleCloudVisionV1p1beta1WebDetectionWebImage
    , googleCloudVisionV1p1beta1WebDetectionWebImage
    , gcvvwdwi2Score
    , gcvvwdwi2URL

    -- * Position
    , Position
    , position
    , pZ
    , pX
    , pY

    -- * GoogleCloudVisionV1p3beta1GcsSource
    , GoogleCloudVisionV1p3beta1GcsSource
    , googleCloudVisionV1p3beta1GcsSource
    , gcvvgs1URI

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationJoyLikelihood
    , GoogleCloudVisionV1p1beta1FaceAnnotationJoyLikelihood (..)

    -- * GoogleCloudVisionV1p2beta1LocationInfo
    , GoogleCloudVisionV1p2beta1LocationInfo
    , googleCloudVisionV1p2beta1LocationInfo
    , gcvvlicLatLng

    -- * NormalizedVertex
    , NormalizedVertex
    , normalizedVertex
    , nvX
    , nvY

    -- * GoogleCloudVisionV1p1beta1OperationMetadata
    , GoogleCloudVisionV1p1beta1OperationMetadata
    , googleCloudVisionV1p1beta1OperationMetadata
    , gcvvomcState
    , gcvvomcUpdateTime
    , gcvvomcCreateTime

    -- * GoogleCloudVisionV1p2beta1GcsDestination
    , GoogleCloudVisionV1p2beta1GcsDestination
    , googleCloudVisionV1p2beta1GcsDestination
    , gcvvgd1URI

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationHeadwearLikelihood
    , GoogleCloudVisionV1p4beta1FaceAnnotationHeadwearLikelihood (..)
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types.Product
import Network.Google.Vision.Types.Sum

-- | Default request referring to version 'v1p2beta1' of the Cloud Vision API. This contains the host and root path used as a starting point for constructing service requests.
visionService :: ServiceConfig
visionService
  = defaultService (ServiceId "vision:v1p2beta1")
      "vision.googleapis.com"

-- | Apply machine learning models to understand and label images
cloudVisionScope :: Proxy '["https://www.googleapis.com/auth/cloud-vision"]
cloudVisionScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
