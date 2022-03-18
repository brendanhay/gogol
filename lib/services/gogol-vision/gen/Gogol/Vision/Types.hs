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
-- Module      : Gogol.Vision.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Vision.Types
  ( -- * Configuration
    visionService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudVisionScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnnotateFileResponse
    AnnotateFileResponse (..),
    newAnnotateFileResponse,

    -- ** AnnotateImageResponse
    AnnotateImageResponse (..),
    newAnnotateImageResponse,

    -- ** AsyncAnnotateFileResponse
    AsyncAnnotateFileResponse (..),
    newAsyncAnnotateFileResponse,

    -- ** AsyncBatchAnnotateFilesResponse
    AsyncBatchAnnotateFilesResponse (..),
    newAsyncBatchAnnotateFilesResponse,

    -- ** AsyncBatchAnnotateImagesResponse
    AsyncBatchAnnotateImagesResponse (..),
    newAsyncBatchAnnotateImagesResponse,

    -- ** BatchAnnotateFilesResponse
    BatchAnnotateFilesResponse (..),
    newBatchAnnotateFilesResponse,

    -- ** BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- ** BatchOperationMetadata_State
    BatchOperationMetadata_State (..),

    -- ** Block
    Block (..),
    newBlock,

    -- ** Block_BlockType
    Block_BlockType (..),

    -- ** BoundingPoly
    BoundingPoly (..),
    newBoundingPoly,

    -- ** Color
    Color (..),
    newColor,

    -- ** ColorInfo
    ColorInfo (..),
    newColorInfo,

    -- ** CropHint
    CropHint (..),
    newCropHint,

    -- ** CropHintsAnnotation
    CropHintsAnnotation (..),
    newCropHintsAnnotation,

    -- ** DetectedBreak
    DetectedBreak (..),
    newDetectedBreak,

    -- ** DetectedBreak_Type
    DetectedBreak_Type (..),

    -- ** DetectedLanguage
    DetectedLanguage (..),
    newDetectedLanguage,

    -- ** DominantColorsAnnotation
    DominantColorsAnnotation (..),
    newDominantColorsAnnotation,

    -- ** EntityAnnotation
    EntityAnnotation (..),
    newEntityAnnotation,

    -- ** FaceAnnotation
    FaceAnnotation (..),
    newFaceAnnotation,

    -- ** FaceAnnotation_AngerLikelihood
    FaceAnnotation_AngerLikelihood (..),

    -- ** FaceAnnotation_BlurredLikelihood
    FaceAnnotation_BlurredLikelihood (..),

    -- ** FaceAnnotation_HeadwearLikelihood
    FaceAnnotation_HeadwearLikelihood (..),

    -- ** FaceAnnotation_JoyLikelihood
    FaceAnnotation_JoyLikelihood (..),

    -- ** FaceAnnotation_SorrowLikelihood
    FaceAnnotation_SorrowLikelihood (..),

    -- ** FaceAnnotation_SurpriseLikelihood
    FaceAnnotation_SurpriseLikelihood (..),

    -- ** FaceAnnotation_UnderExposedLikelihood
    FaceAnnotation_UnderExposedLikelihood (..),

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** GoogleCloudVisionV1p1beta1AnnotateFileResponse
    GoogleCloudVisionV1p1beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p1beta1AnnotateFileResponse,

    -- ** GoogleCloudVisionV1p1beta1AnnotateImageResponse
    GoogleCloudVisionV1p1beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p1beta1AnnotateImageResponse,

    -- ** GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse,

    -- ** GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p1beta1Block
    GoogleCloudVisionV1p1beta1Block (..),
    newGoogleCloudVisionV1p1beta1Block,

    -- ** GoogleCloudVisionV1p1beta1Block_BlockType
    GoogleCloudVisionV1p1beta1Block_BlockType (..),

    -- ** GoogleCloudVisionV1p1beta1BoundingPoly
    GoogleCloudVisionV1p1beta1BoundingPoly (..),
    newGoogleCloudVisionV1p1beta1BoundingPoly,

    -- ** GoogleCloudVisionV1p1beta1ColorInfo
    GoogleCloudVisionV1p1beta1ColorInfo (..),
    newGoogleCloudVisionV1p1beta1ColorInfo,

    -- ** GoogleCloudVisionV1p1beta1CropHint
    GoogleCloudVisionV1p1beta1CropHint (..),
    newGoogleCloudVisionV1p1beta1CropHint,

    -- ** GoogleCloudVisionV1p1beta1CropHintsAnnotation
    GoogleCloudVisionV1p1beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p1beta1CropHintsAnnotation,

    -- ** GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    GoogleCloudVisionV1p1beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p1beta1DominantColorsAnnotation,

    -- ** GoogleCloudVisionV1p1beta1EntityAnnotation
    GoogleCloudVisionV1p1beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p1beta1EntityAnnotation,

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation
    GoogleCloudVisionV1p1beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p1beta1FaceAnnotation,

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood (..),

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p1beta1FaceAnnotationLandmark,

    -- ** GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type (..),

    -- ** GoogleCloudVisionV1p1beta1GcsDestination
    GoogleCloudVisionV1p1beta1GcsDestination (..),
    newGoogleCloudVisionV1p1beta1GcsDestination,

    -- ** GoogleCloudVisionV1p1beta1GcsSource
    GoogleCloudVisionV1p1beta1GcsSource (..),
    newGoogleCloudVisionV1p1beta1GcsSource,

    -- ** GoogleCloudVisionV1p1beta1ImageAnnotationContext
    GoogleCloudVisionV1p1beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p1beta1ImageAnnotationContext,

    -- ** GoogleCloudVisionV1p1beta1ImageProperties
    GoogleCloudVisionV1p1beta1ImageProperties (..),
    newGoogleCloudVisionV1p1beta1ImageProperties,

    -- ** GoogleCloudVisionV1p1beta1InputConfig
    GoogleCloudVisionV1p1beta1InputConfig (..),
    newGoogleCloudVisionV1p1beta1InputConfig,

    -- ** GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation,

    -- ** GoogleCloudVisionV1p1beta1LocationInfo
    GoogleCloudVisionV1p1beta1LocationInfo (..),
    newGoogleCloudVisionV1p1beta1LocationInfo,

    -- ** GoogleCloudVisionV1p1beta1NormalizedVertex
    GoogleCloudVisionV1p1beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p1beta1NormalizedVertex,

    -- ** GoogleCloudVisionV1p1beta1OperationMetadata
    GoogleCloudVisionV1p1beta1OperationMetadata (..),
    newGoogleCloudVisionV1p1beta1OperationMetadata,

    -- ** GoogleCloudVisionV1p1beta1OperationMetadata_State
    GoogleCloudVisionV1p1beta1OperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p1beta1OutputConfig
    GoogleCloudVisionV1p1beta1OutputConfig (..),
    newGoogleCloudVisionV1p1beta1OutputConfig,

    -- ** GoogleCloudVisionV1p1beta1Page
    GoogleCloudVisionV1p1beta1Page (..),
    newGoogleCloudVisionV1p1beta1Page,

    -- ** GoogleCloudVisionV1p1beta1Paragraph
    GoogleCloudVisionV1p1beta1Paragraph (..),
    newGoogleCloudVisionV1p1beta1Paragraph,

    -- ** GoogleCloudVisionV1p1beta1Position
    GoogleCloudVisionV1p1beta1Position (..),
    newGoogleCloudVisionV1p1beta1Position,

    -- ** GoogleCloudVisionV1p1beta1Product
    GoogleCloudVisionV1p1beta1Product (..),
    newGoogleCloudVisionV1p1beta1Product,

    -- ** GoogleCloudVisionV1p1beta1ProductKeyValue
    GoogleCloudVisionV1p1beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p1beta1ProductKeyValue,

    -- ** GoogleCloudVisionV1p1beta1ProductSearchResults
    GoogleCloudVisionV1p1beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResults,

    -- ** GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult,

    -- ** GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation,

    -- ** GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    GoogleCloudVisionV1p1beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsResult,

    -- ** GoogleCloudVisionV1p1beta1Property
    GoogleCloudVisionV1p1beta1Property (..),
    newGoogleCloudVisionV1p1beta1Property,

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p1beta1SafeSearchAnnotation,

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult (..),

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical (..),

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy (..),

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof (..),

    -- ** GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence (..),

    -- ** GoogleCloudVisionV1p1beta1Symbol
    GoogleCloudVisionV1p1beta1Symbol (..),
    newGoogleCloudVisionV1p1beta1Symbol,

    -- ** GoogleCloudVisionV1p1beta1TextAnnotation
    GoogleCloudVisionV1p1beta1TextAnnotation (..),
    newGoogleCloudVisionV1p1beta1TextAnnotation,

    -- ** GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak,

    -- ** GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type (..),

    -- ** GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage,

    -- ** GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p1beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationTextProperty,

    -- ** GoogleCloudVisionV1p1beta1Vertex
    GoogleCloudVisionV1p1beta1Vertex (..),
    newGoogleCloudVisionV1p1beta1Vertex,

    -- ** GoogleCloudVisionV1p1beta1WebDetection
    GoogleCloudVisionV1p1beta1WebDetection (..),
    newGoogleCloudVisionV1p1beta1WebDetection,

    -- ** GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    GoogleCloudVisionV1p1beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebEntity,

    -- ** GoogleCloudVisionV1p1beta1WebDetectionWebImage
    GoogleCloudVisionV1p1beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebImage,

    -- ** GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    GoogleCloudVisionV1p1beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebLabel,

    -- ** GoogleCloudVisionV1p1beta1WebDetectionWebPage
    GoogleCloudVisionV1p1beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebPage,

    -- ** GoogleCloudVisionV1p1beta1Word
    GoogleCloudVisionV1p1beta1Word (..),
    newGoogleCloudVisionV1p1beta1Word,

    -- ** GoogleCloudVisionV1p2beta1AnnotateFileRequest
    GoogleCloudVisionV1p2beta1AnnotateFileRequest (..),
    newGoogleCloudVisionV1p2beta1AnnotateFileRequest,

    -- ** GoogleCloudVisionV1p2beta1AnnotateFileResponse
    GoogleCloudVisionV1p2beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p2beta1AnnotateFileResponse,

    -- ** GoogleCloudVisionV1p2beta1AnnotateImageRequest
    GoogleCloudVisionV1p2beta1AnnotateImageRequest (..),
    newGoogleCloudVisionV1p2beta1AnnotateImageRequest,

    -- ** GoogleCloudVisionV1p2beta1AnnotateImageResponse
    GoogleCloudVisionV1p2beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p2beta1AnnotateImageResponse,

    -- ** GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest,

    -- ** GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse,

    -- ** GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest,

    -- ** GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest,

    -- ** GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest,

    -- ** GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest,

    -- ** GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse,

    -- ** GoogleCloudVisionV1p2beta1Block
    GoogleCloudVisionV1p2beta1Block (..),
    newGoogleCloudVisionV1p2beta1Block,

    -- ** GoogleCloudVisionV1p2beta1Block_BlockType
    GoogleCloudVisionV1p2beta1Block_BlockType (..),

    -- ** GoogleCloudVisionV1p2beta1BoundingPoly
    GoogleCloudVisionV1p2beta1BoundingPoly (..),
    newGoogleCloudVisionV1p2beta1BoundingPoly,

    -- ** GoogleCloudVisionV1p2beta1ColorInfo
    GoogleCloudVisionV1p2beta1ColorInfo (..),
    newGoogleCloudVisionV1p2beta1ColorInfo,

    -- ** GoogleCloudVisionV1p2beta1CropHint
    GoogleCloudVisionV1p2beta1CropHint (..),
    newGoogleCloudVisionV1p2beta1CropHint,

    -- ** GoogleCloudVisionV1p2beta1CropHintsAnnotation
    GoogleCloudVisionV1p2beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p2beta1CropHintsAnnotation,

    -- ** GoogleCloudVisionV1p2beta1CropHintsParams
    GoogleCloudVisionV1p2beta1CropHintsParams (..),
    newGoogleCloudVisionV1p2beta1CropHintsParams,

    -- ** GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    GoogleCloudVisionV1p2beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p2beta1DominantColorsAnnotation,

    -- ** GoogleCloudVisionV1p2beta1EntityAnnotation
    GoogleCloudVisionV1p2beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p2beta1EntityAnnotation,

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation
    GoogleCloudVisionV1p2beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p2beta1FaceAnnotation,

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood (..),

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p2beta1FaceAnnotationLandmark,

    -- ** GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type (..),

    -- ** GoogleCloudVisionV1p2beta1Feature
    GoogleCloudVisionV1p2beta1Feature (..),
    newGoogleCloudVisionV1p2beta1Feature,

    -- ** GoogleCloudVisionV1p2beta1Feature_Type
    GoogleCloudVisionV1p2beta1Feature_Type (..),

    -- ** GoogleCloudVisionV1p2beta1GcsDestination
    GoogleCloudVisionV1p2beta1GcsDestination (..),
    newGoogleCloudVisionV1p2beta1GcsDestination,

    -- ** GoogleCloudVisionV1p2beta1GcsSource
    GoogleCloudVisionV1p2beta1GcsSource (..),
    newGoogleCloudVisionV1p2beta1GcsSource,

    -- ** GoogleCloudVisionV1p2beta1Image
    GoogleCloudVisionV1p2beta1Image (..),
    newGoogleCloudVisionV1p2beta1Image,

    -- ** GoogleCloudVisionV1p2beta1ImageAnnotationContext
    GoogleCloudVisionV1p2beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p2beta1ImageAnnotationContext,

    -- ** GoogleCloudVisionV1p2beta1ImageContext
    GoogleCloudVisionV1p2beta1ImageContext (..),
    newGoogleCloudVisionV1p2beta1ImageContext,

    -- ** GoogleCloudVisionV1p2beta1ImageProperties
    GoogleCloudVisionV1p2beta1ImageProperties (..),
    newGoogleCloudVisionV1p2beta1ImageProperties,

    -- ** GoogleCloudVisionV1p2beta1ImageSource
    GoogleCloudVisionV1p2beta1ImageSource (..),
    newGoogleCloudVisionV1p2beta1ImageSource,

    -- ** GoogleCloudVisionV1p2beta1InputConfig
    GoogleCloudVisionV1p2beta1InputConfig (..),
    newGoogleCloudVisionV1p2beta1InputConfig,

    -- ** GoogleCloudVisionV1p2beta1LatLongRect
    GoogleCloudVisionV1p2beta1LatLongRect (..),
    newGoogleCloudVisionV1p2beta1LatLongRect,

    -- ** GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation,

    -- ** GoogleCloudVisionV1p2beta1LocationInfo
    GoogleCloudVisionV1p2beta1LocationInfo (..),
    newGoogleCloudVisionV1p2beta1LocationInfo,

    -- ** GoogleCloudVisionV1p2beta1NormalizedVertex
    GoogleCloudVisionV1p2beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p2beta1NormalizedVertex,

    -- ** GoogleCloudVisionV1p2beta1OperationMetadata
    GoogleCloudVisionV1p2beta1OperationMetadata (..),
    newGoogleCloudVisionV1p2beta1OperationMetadata,

    -- ** GoogleCloudVisionV1p2beta1OperationMetadata_State
    GoogleCloudVisionV1p2beta1OperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p2beta1OutputConfig
    GoogleCloudVisionV1p2beta1OutputConfig (..),
    newGoogleCloudVisionV1p2beta1OutputConfig,

    -- ** GoogleCloudVisionV1p2beta1Page
    GoogleCloudVisionV1p2beta1Page (..),
    newGoogleCloudVisionV1p2beta1Page,

    -- ** GoogleCloudVisionV1p2beta1Paragraph
    GoogleCloudVisionV1p2beta1Paragraph (..),
    newGoogleCloudVisionV1p2beta1Paragraph,

    -- ** GoogleCloudVisionV1p2beta1Position
    GoogleCloudVisionV1p2beta1Position (..),
    newGoogleCloudVisionV1p2beta1Position,

    -- ** GoogleCloudVisionV1p2beta1Product
    GoogleCloudVisionV1p2beta1Product (..),
    newGoogleCloudVisionV1p2beta1Product,

    -- ** GoogleCloudVisionV1p2beta1ProductKeyValue
    GoogleCloudVisionV1p2beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p2beta1ProductKeyValue,

    -- ** GoogleCloudVisionV1p2beta1ProductSearchParams
    GoogleCloudVisionV1p2beta1ProductSearchParams (..),
    newGoogleCloudVisionV1p2beta1ProductSearchParams,

    -- ** GoogleCloudVisionV1p2beta1ProductSearchResults
    GoogleCloudVisionV1p2beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResults,

    -- ** GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult,

    -- ** GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation,

    -- ** GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    GoogleCloudVisionV1p2beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsResult,

    -- ** GoogleCloudVisionV1p2beta1Property
    GoogleCloudVisionV1p2beta1Property (..),
    newGoogleCloudVisionV1p2beta1Property,

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p2beta1SafeSearchAnnotation,

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult (..),

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical (..),

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy (..),

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof (..),

    -- ** GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence (..),

    -- ** GoogleCloudVisionV1p2beta1Symbol
    GoogleCloudVisionV1p2beta1Symbol (..),
    newGoogleCloudVisionV1p2beta1Symbol,

    -- ** GoogleCloudVisionV1p2beta1TextAnnotation
    GoogleCloudVisionV1p2beta1TextAnnotation (..),
    newGoogleCloudVisionV1p2beta1TextAnnotation,

    -- ** GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak,

    -- ** GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type (..),

    -- ** GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage,

    -- ** GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p2beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationTextProperty,

    -- ** GoogleCloudVisionV1p2beta1TextDetectionParams
    GoogleCloudVisionV1p2beta1TextDetectionParams (..),
    newGoogleCloudVisionV1p2beta1TextDetectionParams,

    -- ** GoogleCloudVisionV1p2beta1Vertex
    GoogleCloudVisionV1p2beta1Vertex (..),
    newGoogleCloudVisionV1p2beta1Vertex,

    -- ** GoogleCloudVisionV1p2beta1WebDetection
    GoogleCloudVisionV1p2beta1WebDetection (..),
    newGoogleCloudVisionV1p2beta1WebDetection,

    -- ** GoogleCloudVisionV1p2beta1WebDetectionParams
    GoogleCloudVisionV1p2beta1WebDetectionParams (..),
    newGoogleCloudVisionV1p2beta1WebDetectionParams,

    -- ** GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    GoogleCloudVisionV1p2beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebEntity,

    -- ** GoogleCloudVisionV1p2beta1WebDetectionWebImage
    GoogleCloudVisionV1p2beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebImage,

    -- ** GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    GoogleCloudVisionV1p2beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebLabel,

    -- ** GoogleCloudVisionV1p2beta1WebDetectionWebPage
    GoogleCloudVisionV1p2beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebPage,

    -- ** GoogleCloudVisionV1p2beta1Word
    GoogleCloudVisionV1p2beta1Word (..),
    newGoogleCloudVisionV1p2beta1Word,

    -- ** GoogleCloudVisionV1p3beta1AnnotateFileResponse
    GoogleCloudVisionV1p3beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p3beta1AnnotateFileResponse,

    -- ** GoogleCloudVisionV1p3beta1AnnotateImageResponse
    GoogleCloudVisionV1p3beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p3beta1AnnotateImageResponse,

    -- ** GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse,

    -- ** GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p3beta1BatchOperationMetadata
    GoogleCloudVisionV1p3beta1BatchOperationMetadata (..),
    newGoogleCloudVisionV1p3beta1BatchOperationMetadata,

    -- ** GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
    GoogleCloudVisionV1p3beta1BatchOperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p3beta1Block
    GoogleCloudVisionV1p3beta1Block (..),
    newGoogleCloudVisionV1p3beta1Block,

    -- ** GoogleCloudVisionV1p3beta1Block_BlockType
    GoogleCloudVisionV1p3beta1Block_BlockType (..),

    -- ** GoogleCloudVisionV1p3beta1BoundingPoly
    GoogleCloudVisionV1p3beta1BoundingPoly (..),
    newGoogleCloudVisionV1p3beta1BoundingPoly,

    -- ** GoogleCloudVisionV1p3beta1ColorInfo
    GoogleCloudVisionV1p3beta1ColorInfo (..),
    newGoogleCloudVisionV1p3beta1ColorInfo,

    -- ** GoogleCloudVisionV1p3beta1CropHint
    GoogleCloudVisionV1p3beta1CropHint (..),
    newGoogleCloudVisionV1p3beta1CropHint,

    -- ** GoogleCloudVisionV1p3beta1CropHintsAnnotation
    GoogleCloudVisionV1p3beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p3beta1CropHintsAnnotation,

    -- ** GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    GoogleCloudVisionV1p3beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p3beta1DominantColorsAnnotation,

    -- ** GoogleCloudVisionV1p3beta1EntityAnnotation
    GoogleCloudVisionV1p3beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p3beta1EntityAnnotation,

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation
    GoogleCloudVisionV1p3beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p3beta1FaceAnnotation,

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood (..),

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p3beta1FaceAnnotationLandmark,

    -- ** GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type (..),

    -- ** GoogleCloudVisionV1p3beta1GcsDestination
    GoogleCloudVisionV1p3beta1GcsDestination (..),
    newGoogleCloudVisionV1p3beta1GcsDestination,

    -- ** GoogleCloudVisionV1p3beta1GcsSource
    GoogleCloudVisionV1p3beta1GcsSource (..),
    newGoogleCloudVisionV1p3beta1GcsSource,

    -- ** GoogleCloudVisionV1p3beta1ImageAnnotationContext
    GoogleCloudVisionV1p3beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p3beta1ImageAnnotationContext,

    -- ** GoogleCloudVisionV1p3beta1ImageProperties
    GoogleCloudVisionV1p3beta1ImageProperties (..),
    newGoogleCloudVisionV1p3beta1ImageProperties,

    -- ** GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    GoogleCloudVisionV1p3beta1ImportProductSetsResponse (..),
    newGoogleCloudVisionV1p3beta1ImportProductSetsResponse,

    -- ** GoogleCloudVisionV1p3beta1InputConfig
    GoogleCloudVisionV1p3beta1InputConfig (..),
    newGoogleCloudVisionV1p3beta1InputConfig,

    -- ** GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation,

    -- ** GoogleCloudVisionV1p3beta1LocationInfo
    GoogleCloudVisionV1p3beta1LocationInfo (..),
    newGoogleCloudVisionV1p3beta1LocationInfo,

    -- ** GoogleCloudVisionV1p3beta1NormalizedVertex
    GoogleCloudVisionV1p3beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p3beta1NormalizedVertex,

    -- ** GoogleCloudVisionV1p3beta1OperationMetadata
    GoogleCloudVisionV1p3beta1OperationMetadata (..),
    newGoogleCloudVisionV1p3beta1OperationMetadata,

    -- ** GoogleCloudVisionV1p3beta1OperationMetadata_State
    GoogleCloudVisionV1p3beta1OperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p3beta1OutputConfig
    GoogleCloudVisionV1p3beta1OutputConfig (..),
    newGoogleCloudVisionV1p3beta1OutputConfig,

    -- ** GoogleCloudVisionV1p3beta1Page
    GoogleCloudVisionV1p3beta1Page (..),
    newGoogleCloudVisionV1p3beta1Page,

    -- ** GoogleCloudVisionV1p3beta1Paragraph
    GoogleCloudVisionV1p3beta1Paragraph (..),
    newGoogleCloudVisionV1p3beta1Paragraph,

    -- ** GoogleCloudVisionV1p3beta1Position
    GoogleCloudVisionV1p3beta1Position (..),
    newGoogleCloudVisionV1p3beta1Position,

    -- ** GoogleCloudVisionV1p3beta1Product
    GoogleCloudVisionV1p3beta1Product (..),
    newGoogleCloudVisionV1p3beta1Product,

    -- ** GoogleCloudVisionV1p3beta1ProductKeyValue
    GoogleCloudVisionV1p3beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p3beta1ProductKeyValue,

    -- ** GoogleCloudVisionV1p3beta1ProductSearchResults
    GoogleCloudVisionV1p3beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResults,

    -- ** GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult,

    -- ** GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation,

    -- ** GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    GoogleCloudVisionV1p3beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsResult,

    -- ** GoogleCloudVisionV1p3beta1Property
    GoogleCloudVisionV1p3beta1Property (..),
    newGoogleCloudVisionV1p3beta1Property,

    -- ** GoogleCloudVisionV1p3beta1ReferenceImage
    GoogleCloudVisionV1p3beta1ReferenceImage (..),
    newGoogleCloudVisionV1p3beta1ReferenceImage,

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p3beta1SafeSearchAnnotation,

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult (..),

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical (..),

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy (..),

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof (..),

    -- ** GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence (..),

    -- ** GoogleCloudVisionV1p3beta1Symbol
    GoogleCloudVisionV1p3beta1Symbol (..),
    newGoogleCloudVisionV1p3beta1Symbol,

    -- ** GoogleCloudVisionV1p3beta1TextAnnotation
    GoogleCloudVisionV1p3beta1TextAnnotation (..),
    newGoogleCloudVisionV1p3beta1TextAnnotation,

    -- ** GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak,

    -- ** GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type (..),

    -- ** GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage,

    -- ** GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p3beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationTextProperty,

    -- ** GoogleCloudVisionV1p3beta1Vertex
    GoogleCloudVisionV1p3beta1Vertex (..),
    newGoogleCloudVisionV1p3beta1Vertex,

    -- ** GoogleCloudVisionV1p3beta1WebDetection
    GoogleCloudVisionV1p3beta1WebDetection (..),
    newGoogleCloudVisionV1p3beta1WebDetection,

    -- ** GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    GoogleCloudVisionV1p3beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebEntity,

    -- ** GoogleCloudVisionV1p3beta1WebDetectionWebImage
    GoogleCloudVisionV1p3beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebImage,

    -- ** GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    GoogleCloudVisionV1p3beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebLabel,

    -- ** GoogleCloudVisionV1p3beta1WebDetectionWebPage
    GoogleCloudVisionV1p3beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebPage,

    -- ** GoogleCloudVisionV1p3beta1Word
    GoogleCloudVisionV1p3beta1Word (..),
    newGoogleCloudVisionV1p3beta1Word,

    -- ** GoogleCloudVisionV1p4beta1AnnotateFileResponse
    GoogleCloudVisionV1p4beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p4beta1AnnotateFileResponse,

    -- ** GoogleCloudVisionV1p4beta1AnnotateImageResponse
    GoogleCloudVisionV1p4beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p4beta1AnnotateImageResponse,

    -- ** GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse,

    -- ** GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse,

    -- ** GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse,

    -- ** GoogleCloudVisionV1p4beta1BatchOperationMetadata
    GoogleCloudVisionV1p4beta1BatchOperationMetadata (..),
    newGoogleCloudVisionV1p4beta1BatchOperationMetadata,

    -- ** GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
    GoogleCloudVisionV1p4beta1BatchOperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p4beta1Block
    GoogleCloudVisionV1p4beta1Block (..),
    newGoogleCloudVisionV1p4beta1Block,

    -- ** GoogleCloudVisionV1p4beta1Block_BlockType
    GoogleCloudVisionV1p4beta1Block_BlockType (..),

    -- ** GoogleCloudVisionV1p4beta1BoundingPoly
    GoogleCloudVisionV1p4beta1BoundingPoly (..),
    newGoogleCloudVisionV1p4beta1BoundingPoly,

    -- ** GoogleCloudVisionV1p4beta1Celebrity
    GoogleCloudVisionV1p4beta1Celebrity (..),
    newGoogleCloudVisionV1p4beta1Celebrity,

    -- ** GoogleCloudVisionV1p4beta1ColorInfo
    GoogleCloudVisionV1p4beta1ColorInfo (..),
    newGoogleCloudVisionV1p4beta1ColorInfo,

    -- ** GoogleCloudVisionV1p4beta1CropHint
    GoogleCloudVisionV1p4beta1CropHint (..),
    newGoogleCloudVisionV1p4beta1CropHint,

    -- ** GoogleCloudVisionV1p4beta1CropHintsAnnotation
    GoogleCloudVisionV1p4beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p4beta1CropHintsAnnotation,

    -- ** GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    GoogleCloudVisionV1p4beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p4beta1DominantColorsAnnotation,

    -- ** GoogleCloudVisionV1p4beta1EntityAnnotation
    GoogleCloudVisionV1p4beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p4beta1EntityAnnotation,

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation
    GoogleCloudVisionV1p4beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p4beta1FaceAnnotation,

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood (..),

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p4beta1FaceAnnotationLandmark,

    -- ** GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type (..),

    -- ** GoogleCloudVisionV1p4beta1FaceRecognitionResult
    GoogleCloudVisionV1p4beta1FaceRecognitionResult (..),
    newGoogleCloudVisionV1p4beta1FaceRecognitionResult,

    -- ** GoogleCloudVisionV1p4beta1GcsDestination
    GoogleCloudVisionV1p4beta1GcsDestination (..),
    newGoogleCloudVisionV1p4beta1GcsDestination,

    -- ** GoogleCloudVisionV1p4beta1GcsSource
    GoogleCloudVisionV1p4beta1GcsSource (..),
    newGoogleCloudVisionV1p4beta1GcsSource,

    -- ** GoogleCloudVisionV1p4beta1ImageAnnotationContext
    GoogleCloudVisionV1p4beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p4beta1ImageAnnotationContext,

    -- ** GoogleCloudVisionV1p4beta1ImageProperties
    GoogleCloudVisionV1p4beta1ImageProperties (..),
    newGoogleCloudVisionV1p4beta1ImageProperties,

    -- ** GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    GoogleCloudVisionV1p4beta1ImportProductSetsResponse (..),
    newGoogleCloudVisionV1p4beta1ImportProductSetsResponse,

    -- ** GoogleCloudVisionV1p4beta1InputConfig
    GoogleCloudVisionV1p4beta1InputConfig (..),
    newGoogleCloudVisionV1p4beta1InputConfig,

    -- ** GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation,

    -- ** GoogleCloudVisionV1p4beta1LocationInfo
    GoogleCloudVisionV1p4beta1LocationInfo (..),
    newGoogleCloudVisionV1p4beta1LocationInfo,

    -- ** GoogleCloudVisionV1p4beta1NormalizedVertex
    GoogleCloudVisionV1p4beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p4beta1NormalizedVertex,

    -- ** GoogleCloudVisionV1p4beta1OperationMetadata
    GoogleCloudVisionV1p4beta1OperationMetadata (..),
    newGoogleCloudVisionV1p4beta1OperationMetadata,

    -- ** GoogleCloudVisionV1p4beta1OperationMetadata_State
    GoogleCloudVisionV1p4beta1OperationMetadata_State (..),

    -- ** GoogleCloudVisionV1p4beta1OutputConfig
    GoogleCloudVisionV1p4beta1OutputConfig (..),
    newGoogleCloudVisionV1p4beta1OutputConfig,

    -- ** GoogleCloudVisionV1p4beta1Page
    GoogleCloudVisionV1p4beta1Page (..),
    newGoogleCloudVisionV1p4beta1Page,

    -- ** GoogleCloudVisionV1p4beta1Paragraph
    GoogleCloudVisionV1p4beta1Paragraph (..),
    newGoogleCloudVisionV1p4beta1Paragraph,

    -- ** GoogleCloudVisionV1p4beta1Position
    GoogleCloudVisionV1p4beta1Position (..),
    newGoogleCloudVisionV1p4beta1Position,

    -- ** GoogleCloudVisionV1p4beta1Product
    GoogleCloudVisionV1p4beta1Product (..),
    newGoogleCloudVisionV1p4beta1Product,

    -- ** GoogleCloudVisionV1p4beta1ProductKeyValue
    GoogleCloudVisionV1p4beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p4beta1ProductKeyValue,

    -- ** GoogleCloudVisionV1p4beta1ProductSearchResults
    GoogleCloudVisionV1p4beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResults,

    -- ** GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult,

    -- ** GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation,

    -- ** GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    GoogleCloudVisionV1p4beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsResult,

    -- ** GoogleCloudVisionV1p4beta1Property
    GoogleCloudVisionV1p4beta1Property (..),
    newGoogleCloudVisionV1p4beta1Property,

    -- ** GoogleCloudVisionV1p4beta1ReferenceImage
    GoogleCloudVisionV1p4beta1ReferenceImage (..),
    newGoogleCloudVisionV1p4beta1ReferenceImage,

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p4beta1SafeSearchAnnotation,

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult (..),

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical (..),

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy (..),

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof (..),

    -- ** GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence (..),

    -- ** GoogleCloudVisionV1p4beta1Symbol
    GoogleCloudVisionV1p4beta1Symbol (..),
    newGoogleCloudVisionV1p4beta1Symbol,

    -- ** GoogleCloudVisionV1p4beta1TextAnnotation
    GoogleCloudVisionV1p4beta1TextAnnotation (..),
    newGoogleCloudVisionV1p4beta1TextAnnotation,

    -- ** GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak,

    -- ** GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type (..),

    -- ** GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage,

    -- ** GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p4beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationTextProperty,

    -- ** GoogleCloudVisionV1p4beta1Vertex
    GoogleCloudVisionV1p4beta1Vertex (..),
    newGoogleCloudVisionV1p4beta1Vertex,

    -- ** GoogleCloudVisionV1p4beta1WebDetection
    GoogleCloudVisionV1p4beta1WebDetection (..),
    newGoogleCloudVisionV1p4beta1WebDetection,

    -- ** GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    GoogleCloudVisionV1p4beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebEntity,

    -- ** GoogleCloudVisionV1p4beta1WebDetectionWebImage
    GoogleCloudVisionV1p4beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebImage,

    -- ** GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    GoogleCloudVisionV1p4beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebLabel,

    -- ** GoogleCloudVisionV1p4beta1WebDetectionWebPage
    GoogleCloudVisionV1p4beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebPage,

    -- ** GoogleCloudVisionV1p4beta1Word
    GoogleCloudVisionV1p4beta1Word (..),
    newGoogleCloudVisionV1p4beta1Word,

    -- ** GroupedResult
    GroupedResult (..),
    newGroupedResult,

    -- ** ImageAnnotationContext
    ImageAnnotationContext (..),
    newImageAnnotationContext,

    -- ** ImageProperties
    ImageProperties (..),
    newImageProperties,

    -- ** ImportProductSetsResponse
    ImportProductSetsResponse (..),
    newImportProductSetsResponse,

    -- ** InputConfig
    InputConfig (..),
    newInputConfig,

    -- ** KeyValue
    KeyValue (..),
    newKeyValue,

    -- ** Landmark
    Landmark (..),
    newLandmark,

    -- ** Landmark_Type
    Landmark_Type (..),

    -- ** LatLng
    LatLng (..),
    newLatLng,

    -- ** LocalizedObjectAnnotation
    LocalizedObjectAnnotation (..),
    newLocalizedObjectAnnotation,

    -- ** LocationInfo
    LocationInfo (..),
    newLocationInfo,

    -- ** NormalizedVertex
    NormalizedVertex (..),
    newNormalizedVertex,

    -- ** ObjectAnnotation
    ObjectAnnotation (..),
    newObjectAnnotation,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** OperationMetadata_State
    OperationMetadata_State (..),

    -- ** OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- ** Page
    Page (..),
    newPage,

    -- ** Paragraph
    Paragraph (..),
    newParagraph,

    -- ** Position
    Position (..),
    newPosition,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductSearchResults
    ProductSearchResults (..),
    newProductSearchResults,

    -- ** Property
    Property (..),
    newProperty,

    -- ** ReferenceImage
    ReferenceImage (..),
    newReferenceImage,

    -- ** Result
    Result (..),
    newResult,

    -- ** SafeSearchAnnotation
    SafeSearchAnnotation (..),
    newSafeSearchAnnotation,

    -- ** SafeSearchAnnotation_Adult
    SafeSearchAnnotation_Adult (..),

    -- ** SafeSearchAnnotation_Medical
    SafeSearchAnnotation_Medical (..),

    -- ** SafeSearchAnnotation_Racy
    SafeSearchAnnotation_Racy (..),

    -- ** SafeSearchAnnotation_Spoof
    SafeSearchAnnotation_Spoof (..),

    -- ** SafeSearchAnnotation_Violence
    SafeSearchAnnotation_Violence (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** Symbol
    Symbol (..),
    newSymbol,

    -- ** TextAnnotation
    TextAnnotation (..),
    newTextAnnotation,

    -- ** TextProperty
    TextProperty (..),
    newTextProperty,

    -- ** Vertex
    Vertex (..),
    newVertex,

    -- ** WebDetection
    WebDetection (..),
    newWebDetection,

    -- ** WebEntity
    WebEntity (..),
    newWebEntity,

    -- ** WebImage
    WebImage (..),
    newWebImage,

    -- ** WebLabel
    WebLabel (..),
    newWebLabel,

    -- ** WebPage
    WebPage (..),
    newWebPage,

    -- ** Word
    Word (..),
    newWord,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vision.Internal.Product
import Gogol.Vision.Internal.Sum

-- | Default request referring to version @v1p2beta1@ of the Cloud Vision API. This contains the host and root path used as a starting point for constructing service requests.
visionService :: Core.ServiceConfig
visionService =
  Core.defaultService
    (Core.ServiceId "vision:v1p2beta1")
    "vision.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Apply machine learning models to understand and label images
cloudVisionScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-vision"]
cloudVisionScope = Core.Proxy
