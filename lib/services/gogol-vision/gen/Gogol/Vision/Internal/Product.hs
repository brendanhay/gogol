{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Vision.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Vision.Internal.Product
  ( -- * AnnotateFileResponse
    AnnotateFileResponse (..),
    newAnnotateFileResponse,

    -- * AnnotateImageResponse
    AnnotateImageResponse (..),
    newAnnotateImageResponse,

    -- * AsyncAnnotateFileResponse
    AsyncAnnotateFileResponse (..),
    newAsyncAnnotateFileResponse,

    -- * AsyncBatchAnnotateFilesResponse
    AsyncBatchAnnotateFilesResponse (..),
    newAsyncBatchAnnotateFilesResponse,

    -- * AsyncBatchAnnotateImagesResponse
    AsyncBatchAnnotateImagesResponse (..),
    newAsyncBatchAnnotateImagesResponse,

    -- * BatchAnnotateFilesResponse
    BatchAnnotateFilesResponse (..),
    newBatchAnnotateFilesResponse,

    -- * BatchOperationMetadata
    BatchOperationMetadata (..),
    newBatchOperationMetadata,

    -- * Block
    Block (..),
    newBlock,

    -- * BoundingPoly
    BoundingPoly (..),
    newBoundingPoly,

    -- * Color
    Color (..),
    newColor,

    -- * ColorInfo
    ColorInfo (..),
    newColorInfo,

    -- * CropHint
    CropHint (..),
    newCropHint,

    -- * CropHintsAnnotation
    CropHintsAnnotation (..),
    newCropHintsAnnotation,

    -- * DetectedBreak
    DetectedBreak (..),
    newDetectedBreak,

    -- * DetectedLanguage
    DetectedLanguage (..),
    newDetectedLanguage,

    -- * DominantColorsAnnotation
    DominantColorsAnnotation (..),
    newDominantColorsAnnotation,

    -- * EntityAnnotation
    EntityAnnotation (..),
    newEntityAnnotation,

    -- * FaceAnnotation
    FaceAnnotation (..),
    newFaceAnnotation,

    -- * GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- * GcsSource
    GcsSource (..),
    newGcsSource,

    -- * GoogleCloudVisionV1p1beta1AnnotateFileResponse
    GoogleCloudVisionV1p1beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p1beta1AnnotateFileResponse,

    -- * GoogleCloudVisionV1p1beta1AnnotateImageResponse
    GoogleCloudVisionV1p1beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p1beta1AnnotateImageResponse,

    -- * GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse,

    -- * GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p1beta1Block
    GoogleCloudVisionV1p1beta1Block (..),
    newGoogleCloudVisionV1p1beta1Block,

    -- * GoogleCloudVisionV1p1beta1BoundingPoly
    GoogleCloudVisionV1p1beta1BoundingPoly (..),
    newGoogleCloudVisionV1p1beta1BoundingPoly,

    -- * GoogleCloudVisionV1p1beta1ColorInfo
    GoogleCloudVisionV1p1beta1ColorInfo (..),
    newGoogleCloudVisionV1p1beta1ColorInfo,

    -- * GoogleCloudVisionV1p1beta1CropHint
    GoogleCloudVisionV1p1beta1CropHint (..),
    newGoogleCloudVisionV1p1beta1CropHint,

    -- * GoogleCloudVisionV1p1beta1CropHintsAnnotation
    GoogleCloudVisionV1p1beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p1beta1CropHintsAnnotation,

    -- * GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    GoogleCloudVisionV1p1beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p1beta1DominantColorsAnnotation,

    -- * GoogleCloudVisionV1p1beta1EntityAnnotation
    GoogleCloudVisionV1p1beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p1beta1EntityAnnotation,

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation
    GoogleCloudVisionV1p1beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p1beta1FaceAnnotation,

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p1beta1FaceAnnotationLandmark,

    -- * GoogleCloudVisionV1p1beta1GcsDestination
    GoogleCloudVisionV1p1beta1GcsDestination (..),
    newGoogleCloudVisionV1p1beta1GcsDestination,

    -- * GoogleCloudVisionV1p1beta1GcsSource
    GoogleCloudVisionV1p1beta1GcsSource (..),
    newGoogleCloudVisionV1p1beta1GcsSource,

    -- * GoogleCloudVisionV1p1beta1ImageAnnotationContext
    GoogleCloudVisionV1p1beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p1beta1ImageAnnotationContext,

    -- * GoogleCloudVisionV1p1beta1ImageProperties
    GoogleCloudVisionV1p1beta1ImageProperties (..),
    newGoogleCloudVisionV1p1beta1ImageProperties,

    -- * GoogleCloudVisionV1p1beta1InputConfig
    GoogleCloudVisionV1p1beta1InputConfig (..),
    newGoogleCloudVisionV1p1beta1InputConfig,

    -- * GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation,

    -- * GoogleCloudVisionV1p1beta1LocationInfo
    GoogleCloudVisionV1p1beta1LocationInfo (..),
    newGoogleCloudVisionV1p1beta1LocationInfo,

    -- * GoogleCloudVisionV1p1beta1NormalizedVertex
    GoogleCloudVisionV1p1beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p1beta1NormalizedVertex,

    -- * GoogleCloudVisionV1p1beta1OperationMetadata
    GoogleCloudVisionV1p1beta1OperationMetadata (..),
    newGoogleCloudVisionV1p1beta1OperationMetadata,

    -- * GoogleCloudVisionV1p1beta1OutputConfig
    GoogleCloudVisionV1p1beta1OutputConfig (..),
    newGoogleCloudVisionV1p1beta1OutputConfig,

    -- * GoogleCloudVisionV1p1beta1Page
    GoogleCloudVisionV1p1beta1Page (..),
    newGoogleCloudVisionV1p1beta1Page,

    -- * GoogleCloudVisionV1p1beta1Paragraph
    GoogleCloudVisionV1p1beta1Paragraph (..),
    newGoogleCloudVisionV1p1beta1Paragraph,

    -- * GoogleCloudVisionV1p1beta1Position
    GoogleCloudVisionV1p1beta1Position (..),
    newGoogleCloudVisionV1p1beta1Position,

    -- * GoogleCloudVisionV1p1beta1Product
    GoogleCloudVisionV1p1beta1Product (..),
    newGoogleCloudVisionV1p1beta1Product,

    -- * GoogleCloudVisionV1p1beta1ProductKeyValue
    GoogleCloudVisionV1p1beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p1beta1ProductKeyValue,

    -- * GoogleCloudVisionV1p1beta1ProductSearchResults
    GoogleCloudVisionV1p1beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResults,

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult,

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation,

    -- * GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    GoogleCloudVisionV1p1beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p1beta1ProductSearchResultsResult,

    -- * GoogleCloudVisionV1p1beta1Property
    GoogleCloudVisionV1p1beta1Property (..),
    newGoogleCloudVisionV1p1beta1Property,

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p1beta1SafeSearchAnnotation,

    -- * GoogleCloudVisionV1p1beta1Symbol
    GoogleCloudVisionV1p1beta1Symbol (..),
    newGoogleCloudVisionV1p1beta1Symbol,

    -- * GoogleCloudVisionV1p1beta1TextAnnotation
    GoogleCloudVisionV1p1beta1TextAnnotation (..),
    newGoogleCloudVisionV1p1beta1TextAnnotation,

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak,

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage,

    -- * GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p1beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p1beta1TextAnnotationTextProperty,

    -- * GoogleCloudVisionV1p1beta1Vertex
    GoogleCloudVisionV1p1beta1Vertex (..),
    newGoogleCloudVisionV1p1beta1Vertex,

    -- * GoogleCloudVisionV1p1beta1WebDetection
    GoogleCloudVisionV1p1beta1WebDetection (..),
    newGoogleCloudVisionV1p1beta1WebDetection,

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    GoogleCloudVisionV1p1beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebEntity,

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebImage
    GoogleCloudVisionV1p1beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebImage,

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    GoogleCloudVisionV1p1beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebLabel,

    -- * GoogleCloudVisionV1p1beta1WebDetectionWebPage
    GoogleCloudVisionV1p1beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p1beta1WebDetectionWebPage,

    -- * GoogleCloudVisionV1p1beta1Word
    GoogleCloudVisionV1p1beta1Word (..),
    newGoogleCloudVisionV1p1beta1Word,

    -- * GoogleCloudVisionV1p2beta1AnnotateFileRequest
    GoogleCloudVisionV1p2beta1AnnotateFileRequest (..),
    newGoogleCloudVisionV1p2beta1AnnotateFileRequest,

    -- * GoogleCloudVisionV1p2beta1AnnotateFileResponse
    GoogleCloudVisionV1p2beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p2beta1AnnotateFileResponse,

    -- * GoogleCloudVisionV1p2beta1AnnotateImageRequest
    GoogleCloudVisionV1p2beta1AnnotateImageRequest (..),
    newGoogleCloudVisionV1p2beta1AnnotateImageRequest,

    -- * GoogleCloudVisionV1p2beta1AnnotateImageResponse
    GoogleCloudVisionV1p2beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p2beta1AnnotateImageResponse,

    -- * GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest,

    -- * GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse,

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest,

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels,

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest,

    -- * GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels (..),
    newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels,

    -- * GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse (..),
    newGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse,

    -- * GoogleCloudVisionV1p2beta1Block
    GoogleCloudVisionV1p2beta1Block (..),
    newGoogleCloudVisionV1p2beta1Block,

    -- * GoogleCloudVisionV1p2beta1BoundingPoly
    GoogleCloudVisionV1p2beta1BoundingPoly (..),
    newGoogleCloudVisionV1p2beta1BoundingPoly,

    -- * GoogleCloudVisionV1p2beta1ColorInfo
    GoogleCloudVisionV1p2beta1ColorInfo (..),
    newGoogleCloudVisionV1p2beta1ColorInfo,

    -- * GoogleCloudVisionV1p2beta1CropHint
    GoogleCloudVisionV1p2beta1CropHint (..),
    newGoogleCloudVisionV1p2beta1CropHint,

    -- * GoogleCloudVisionV1p2beta1CropHintsAnnotation
    GoogleCloudVisionV1p2beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p2beta1CropHintsAnnotation,

    -- * GoogleCloudVisionV1p2beta1CropHintsParams
    GoogleCloudVisionV1p2beta1CropHintsParams (..),
    newGoogleCloudVisionV1p2beta1CropHintsParams,

    -- * GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    GoogleCloudVisionV1p2beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p2beta1DominantColorsAnnotation,

    -- * GoogleCloudVisionV1p2beta1EntityAnnotation
    GoogleCloudVisionV1p2beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p2beta1EntityAnnotation,

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation
    GoogleCloudVisionV1p2beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p2beta1FaceAnnotation,

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p2beta1FaceAnnotationLandmark,

    -- * GoogleCloudVisionV1p2beta1Feature
    GoogleCloudVisionV1p2beta1Feature (..),
    newGoogleCloudVisionV1p2beta1Feature,

    -- * GoogleCloudVisionV1p2beta1GcsDestination
    GoogleCloudVisionV1p2beta1GcsDestination (..),
    newGoogleCloudVisionV1p2beta1GcsDestination,

    -- * GoogleCloudVisionV1p2beta1GcsSource
    GoogleCloudVisionV1p2beta1GcsSource (..),
    newGoogleCloudVisionV1p2beta1GcsSource,

    -- * GoogleCloudVisionV1p2beta1Image
    GoogleCloudVisionV1p2beta1Image (..),
    newGoogleCloudVisionV1p2beta1Image,

    -- * GoogleCloudVisionV1p2beta1ImageAnnotationContext
    GoogleCloudVisionV1p2beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p2beta1ImageAnnotationContext,

    -- * GoogleCloudVisionV1p2beta1ImageContext
    GoogleCloudVisionV1p2beta1ImageContext (..),
    newGoogleCloudVisionV1p2beta1ImageContext,

    -- * GoogleCloudVisionV1p2beta1ImageProperties
    GoogleCloudVisionV1p2beta1ImageProperties (..),
    newGoogleCloudVisionV1p2beta1ImageProperties,

    -- * GoogleCloudVisionV1p2beta1ImageSource
    GoogleCloudVisionV1p2beta1ImageSource (..),
    newGoogleCloudVisionV1p2beta1ImageSource,

    -- * GoogleCloudVisionV1p2beta1InputConfig
    GoogleCloudVisionV1p2beta1InputConfig (..),
    newGoogleCloudVisionV1p2beta1InputConfig,

    -- * GoogleCloudVisionV1p2beta1LatLongRect
    GoogleCloudVisionV1p2beta1LatLongRect (..),
    newGoogleCloudVisionV1p2beta1LatLongRect,

    -- * GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation,

    -- * GoogleCloudVisionV1p2beta1LocationInfo
    GoogleCloudVisionV1p2beta1LocationInfo (..),
    newGoogleCloudVisionV1p2beta1LocationInfo,

    -- * GoogleCloudVisionV1p2beta1NormalizedVertex
    GoogleCloudVisionV1p2beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p2beta1NormalizedVertex,

    -- * GoogleCloudVisionV1p2beta1OperationMetadata
    GoogleCloudVisionV1p2beta1OperationMetadata (..),
    newGoogleCloudVisionV1p2beta1OperationMetadata,

    -- * GoogleCloudVisionV1p2beta1OutputConfig
    GoogleCloudVisionV1p2beta1OutputConfig (..),
    newGoogleCloudVisionV1p2beta1OutputConfig,

    -- * GoogleCloudVisionV1p2beta1Page
    GoogleCloudVisionV1p2beta1Page (..),
    newGoogleCloudVisionV1p2beta1Page,

    -- * GoogleCloudVisionV1p2beta1Paragraph
    GoogleCloudVisionV1p2beta1Paragraph (..),
    newGoogleCloudVisionV1p2beta1Paragraph,

    -- * GoogleCloudVisionV1p2beta1Position
    GoogleCloudVisionV1p2beta1Position (..),
    newGoogleCloudVisionV1p2beta1Position,

    -- * GoogleCloudVisionV1p2beta1Product
    GoogleCloudVisionV1p2beta1Product (..),
    newGoogleCloudVisionV1p2beta1Product,

    -- * GoogleCloudVisionV1p2beta1ProductKeyValue
    GoogleCloudVisionV1p2beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p2beta1ProductKeyValue,

    -- * GoogleCloudVisionV1p2beta1ProductSearchParams
    GoogleCloudVisionV1p2beta1ProductSearchParams (..),
    newGoogleCloudVisionV1p2beta1ProductSearchParams,

    -- * GoogleCloudVisionV1p2beta1ProductSearchResults
    GoogleCloudVisionV1p2beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResults,

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult,

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation,

    -- * GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    GoogleCloudVisionV1p2beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p2beta1ProductSearchResultsResult,

    -- * GoogleCloudVisionV1p2beta1Property
    GoogleCloudVisionV1p2beta1Property (..),
    newGoogleCloudVisionV1p2beta1Property,

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p2beta1SafeSearchAnnotation,

    -- * GoogleCloudVisionV1p2beta1Symbol
    GoogleCloudVisionV1p2beta1Symbol (..),
    newGoogleCloudVisionV1p2beta1Symbol,

    -- * GoogleCloudVisionV1p2beta1TextAnnotation
    GoogleCloudVisionV1p2beta1TextAnnotation (..),
    newGoogleCloudVisionV1p2beta1TextAnnotation,

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak,

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage,

    -- * GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p2beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p2beta1TextAnnotationTextProperty,

    -- * GoogleCloudVisionV1p2beta1TextDetectionParams
    GoogleCloudVisionV1p2beta1TextDetectionParams (..),
    newGoogleCloudVisionV1p2beta1TextDetectionParams,

    -- * GoogleCloudVisionV1p2beta1Vertex
    GoogleCloudVisionV1p2beta1Vertex (..),
    newGoogleCloudVisionV1p2beta1Vertex,

    -- * GoogleCloudVisionV1p2beta1WebDetection
    GoogleCloudVisionV1p2beta1WebDetection (..),
    newGoogleCloudVisionV1p2beta1WebDetection,

    -- * GoogleCloudVisionV1p2beta1WebDetectionParams
    GoogleCloudVisionV1p2beta1WebDetectionParams (..),
    newGoogleCloudVisionV1p2beta1WebDetectionParams,

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    GoogleCloudVisionV1p2beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebEntity,

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebImage
    GoogleCloudVisionV1p2beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebImage,

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    GoogleCloudVisionV1p2beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebLabel,

    -- * GoogleCloudVisionV1p2beta1WebDetectionWebPage
    GoogleCloudVisionV1p2beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p2beta1WebDetectionWebPage,

    -- * GoogleCloudVisionV1p2beta1Word
    GoogleCloudVisionV1p2beta1Word (..),
    newGoogleCloudVisionV1p2beta1Word,

    -- * GoogleCloudVisionV1p3beta1AnnotateFileResponse
    GoogleCloudVisionV1p3beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p3beta1AnnotateFileResponse,

    -- * GoogleCloudVisionV1p3beta1AnnotateImageResponse
    GoogleCloudVisionV1p3beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p3beta1AnnotateImageResponse,

    -- * GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse,

    -- * GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p3beta1BatchOperationMetadata
    GoogleCloudVisionV1p3beta1BatchOperationMetadata (..),
    newGoogleCloudVisionV1p3beta1BatchOperationMetadata,

    -- * GoogleCloudVisionV1p3beta1Block
    GoogleCloudVisionV1p3beta1Block (..),
    newGoogleCloudVisionV1p3beta1Block,

    -- * GoogleCloudVisionV1p3beta1BoundingPoly
    GoogleCloudVisionV1p3beta1BoundingPoly (..),
    newGoogleCloudVisionV1p3beta1BoundingPoly,

    -- * GoogleCloudVisionV1p3beta1ColorInfo
    GoogleCloudVisionV1p3beta1ColorInfo (..),
    newGoogleCloudVisionV1p3beta1ColorInfo,

    -- * GoogleCloudVisionV1p3beta1CropHint
    GoogleCloudVisionV1p3beta1CropHint (..),
    newGoogleCloudVisionV1p3beta1CropHint,

    -- * GoogleCloudVisionV1p3beta1CropHintsAnnotation
    GoogleCloudVisionV1p3beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p3beta1CropHintsAnnotation,

    -- * GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    GoogleCloudVisionV1p3beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p3beta1DominantColorsAnnotation,

    -- * GoogleCloudVisionV1p3beta1EntityAnnotation
    GoogleCloudVisionV1p3beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p3beta1EntityAnnotation,

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation
    GoogleCloudVisionV1p3beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p3beta1FaceAnnotation,

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p3beta1FaceAnnotationLandmark,

    -- * GoogleCloudVisionV1p3beta1GcsDestination
    GoogleCloudVisionV1p3beta1GcsDestination (..),
    newGoogleCloudVisionV1p3beta1GcsDestination,

    -- * GoogleCloudVisionV1p3beta1GcsSource
    GoogleCloudVisionV1p3beta1GcsSource (..),
    newGoogleCloudVisionV1p3beta1GcsSource,

    -- * GoogleCloudVisionV1p3beta1ImageAnnotationContext
    GoogleCloudVisionV1p3beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p3beta1ImageAnnotationContext,

    -- * GoogleCloudVisionV1p3beta1ImageProperties
    GoogleCloudVisionV1p3beta1ImageProperties (..),
    newGoogleCloudVisionV1p3beta1ImageProperties,

    -- * GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    GoogleCloudVisionV1p3beta1ImportProductSetsResponse (..),
    newGoogleCloudVisionV1p3beta1ImportProductSetsResponse,

    -- * GoogleCloudVisionV1p3beta1InputConfig
    GoogleCloudVisionV1p3beta1InputConfig (..),
    newGoogleCloudVisionV1p3beta1InputConfig,

    -- * GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation,

    -- * GoogleCloudVisionV1p3beta1LocationInfo
    GoogleCloudVisionV1p3beta1LocationInfo (..),
    newGoogleCloudVisionV1p3beta1LocationInfo,

    -- * GoogleCloudVisionV1p3beta1NormalizedVertex
    GoogleCloudVisionV1p3beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p3beta1NormalizedVertex,

    -- * GoogleCloudVisionV1p3beta1OperationMetadata
    GoogleCloudVisionV1p3beta1OperationMetadata (..),
    newGoogleCloudVisionV1p3beta1OperationMetadata,

    -- * GoogleCloudVisionV1p3beta1OutputConfig
    GoogleCloudVisionV1p3beta1OutputConfig (..),
    newGoogleCloudVisionV1p3beta1OutputConfig,

    -- * GoogleCloudVisionV1p3beta1Page
    GoogleCloudVisionV1p3beta1Page (..),
    newGoogleCloudVisionV1p3beta1Page,

    -- * GoogleCloudVisionV1p3beta1Paragraph
    GoogleCloudVisionV1p3beta1Paragraph (..),
    newGoogleCloudVisionV1p3beta1Paragraph,

    -- * GoogleCloudVisionV1p3beta1Position
    GoogleCloudVisionV1p3beta1Position (..),
    newGoogleCloudVisionV1p3beta1Position,

    -- * GoogleCloudVisionV1p3beta1Product
    GoogleCloudVisionV1p3beta1Product (..),
    newGoogleCloudVisionV1p3beta1Product,

    -- * GoogleCloudVisionV1p3beta1ProductKeyValue
    GoogleCloudVisionV1p3beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p3beta1ProductKeyValue,

    -- * GoogleCloudVisionV1p3beta1ProductSearchResults
    GoogleCloudVisionV1p3beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResults,

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult,

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation,

    -- * GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    GoogleCloudVisionV1p3beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p3beta1ProductSearchResultsResult,

    -- * GoogleCloudVisionV1p3beta1Property
    GoogleCloudVisionV1p3beta1Property (..),
    newGoogleCloudVisionV1p3beta1Property,

    -- * GoogleCloudVisionV1p3beta1ReferenceImage
    GoogleCloudVisionV1p3beta1ReferenceImage (..),
    newGoogleCloudVisionV1p3beta1ReferenceImage,

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p3beta1SafeSearchAnnotation,

    -- * GoogleCloudVisionV1p3beta1Symbol
    GoogleCloudVisionV1p3beta1Symbol (..),
    newGoogleCloudVisionV1p3beta1Symbol,

    -- * GoogleCloudVisionV1p3beta1TextAnnotation
    GoogleCloudVisionV1p3beta1TextAnnotation (..),
    newGoogleCloudVisionV1p3beta1TextAnnotation,

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak,

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage,

    -- * GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p3beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p3beta1TextAnnotationTextProperty,

    -- * GoogleCloudVisionV1p3beta1Vertex
    GoogleCloudVisionV1p3beta1Vertex (..),
    newGoogleCloudVisionV1p3beta1Vertex,

    -- * GoogleCloudVisionV1p3beta1WebDetection
    GoogleCloudVisionV1p3beta1WebDetection (..),
    newGoogleCloudVisionV1p3beta1WebDetection,

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    GoogleCloudVisionV1p3beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebEntity,

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebImage
    GoogleCloudVisionV1p3beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebImage,

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    GoogleCloudVisionV1p3beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebLabel,

    -- * GoogleCloudVisionV1p3beta1WebDetectionWebPage
    GoogleCloudVisionV1p3beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p3beta1WebDetectionWebPage,

    -- * GoogleCloudVisionV1p3beta1Word
    GoogleCloudVisionV1p3beta1Word (..),
    newGoogleCloudVisionV1p3beta1Word,

    -- * GoogleCloudVisionV1p4beta1AnnotateFileResponse
    GoogleCloudVisionV1p4beta1AnnotateFileResponse (..),
    newGoogleCloudVisionV1p4beta1AnnotateFileResponse,

    -- * GoogleCloudVisionV1p4beta1AnnotateImageResponse
    GoogleCloudVisionV1p4beta1AnnotateImageResponse (..),
    newGoogleCloudVisionV1p4beta1AnnotateImageResponse,

    -- * GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse,

    -- * GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse (..),
    newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse,

    -- * GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse (..),
    newGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse,

    -- * GoogleCloudVisionV1p4beta1BatchOperationMetadata
    GoogleCloudVisionV1p4beta1BatchOperationMetadata (..),
    newGoogleCloudVisionV1p4beta1BatchOperationMetadata,

    -- * GoogleCloudVisionV1p4beta1Block
    GoogleCloudVisionV1p4beta1Block (..),
    newGoogleCloudVisionV1p4beta1Block,

    -- * GoogleCloudVisionV1p4beta1BoundingPoly
    GoogleCloudVisionV1p4beta1BoundingPoly (..),
    newGoogleCloudVisionV1p4beta1BoundingPoly,

    -- * GoogleCloudVisionV1p4beta1Celebrity
    GoogleCloudVisionV1p4beta1Celebrity (..),
    newGoogleCloudVisionV1p4beta1Celebrity,

    -- * GoogleCloudVisionV1p4beta1ColorInfo
    GoogleCloudVisionV1p4beta1ColorInfo (..),
    newGoogleCloudVisionV1p4beta1ColorInfo,

    -- * GoogleCloudVisionV1p4beta1CropHint
    GoogleCloudVisionV1p4beta1CropHint (..),
    newGoogleCloudVisionV1p4beta1CropHint,

    -- * GoogleCloudVisionV1p4beta1CropHintsAnnotation
    GoogleCloudVisionV1p4beta1CropHintsAnnotation (..),
    newGoogleCloudVisionV1p4beta1CropHintsAnnotation,

    -- * GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    GoogleCloudVisionV1p4beta1DominantColorsAnnotation (..),
    newGoogleCloudVisionV1p4beta1DominantColorsAnnotation,

    -- * GoogleCloudVisionV1p4beta1EntityAnnotation
    GoogleCloudVisionV1p4beta1EntityAnnotation (..),
    newGoogleCloudVisionV1p4beta1EntityAnnotation,

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation
    GoogleCloudVisionV1p4beta1FaceAnnotation (..),
    newGoogleCloudVisionV1p4beta1FaceAnnotation,

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark (..),
    newGoogleCloudVisionV1p4beta1FaceAnnotationLandmark,

    -- * GoogleCloudVisionV1p4beta1FaceRecognitionResult
    GoogleCloudVisionV1p4beta1FaceRecognitionResult (..),
    newGoogleCloudVisionV1p4beta1FaceRecognitionResult,

    -- * GoogleCloudVisionV1p4beta1GcsDestination
    GoogleCloudVisionV1p4beta1GcsDestination (..),
    newGoogleCloudVisionV1p4beta1GcsDestination,

    -- * GoogleCloudVisionV1p4beta1GcsSource
    GoogleCloudVisionV1p4beta1GcsSource (..),
    newGoogleCloudVisionV1p4beta1GcsSource,

    -- * GoogleCloudVisionV1p4beta1ImageAnnotationContext
    GoogleCloudVisionV1p4beta1ImageAnnotationContext (..),
    newGoogleCloudVisionV1p4beta1ImageAnnotationContext,

    -- * GoogleCloudVisionV1p4beta1ImageProperties
    GoogleCloudVisionV1p4beta1ImageProperties (..),
    newGoogleCloudVisionV1p4beta1ImageProperties,

    -- * GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    GoogleCloudVisionV1p4beta1ImportProductSetsResponse (..),
    newGoogleCloudVisionV1p4beta1ImportProductSetsResponse,

    -- * GoogleCloudVisionV1p4beta1InputConfig
    GoogleCloudVisionV1p4beta1InputConfig (..),
    newGoogleCloudVisionV1p4beta1InputConfig,

    -- * GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation (..),
    newGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation,

    -- * GoogleCloudVisionV1p4beta1LocationInfo
    GoogleCloudVisionV1p4beta1LocationInfo (..),
    newGoogleCloudVisionV1p4beta1LocationInfo,

    -- * GoogleCloudVisionV1p4beta1NormalizedVertex
    GoogleCloudVisionV1p4beta1NormalizedVertex (..),
    newGoogleCloudVisionV1p4beta1NormalizedVertex,

    -- * GoogleCloudVisionV1p4beta1OperationMetadata
    GoogleCloudVisionV1p4beta1OperationMetadata (..),
    newGoogleCloudVisionV1p4beta1OperationMetadata,

    -- * GoogleCloudVisionV1p4beta1OutputConfig
    GoogleCloudVisionV1p4beta1OutputConfig (..),
    newGoogleCloudVisionV1p4beta1OutputConfig,

    -- * GoogleCloudVisionV1p4beta1Page
    GoogleCloudVisionV1p4beta1Page (..),
    newGoogleCloudVisionV1p4beta1Page,

    -- * GoogleCloudVisionV1p4beta1Paragraph
    GoogleCloudVisionV1p4beta1Paragraph (..),
    newGoogleCloudVisionV1p4beta1Paragraph,

    -- * GoogleCloudVisionV1p4beta1Position
    GoogleCloudVisionV1p4beta1Position (..),
    newGoogleCloudVisionV1p4beta1Position,

    -- * GoogleCloudVisionV1p4beta1Product
    GoogleCloudVisionV1p4beta1Product (..),
    newGoogleCloudVisionV1p4beta1Product,

    -- * GoogleCloudVisionV1p4beta1ProductKeyValue
    GoogleCloudVisionV1p4beta1ProductKeyValue (..),
    newGoogleCloudVisionV1p4beta1ProductKeyValue,

    -- * GoogleCloudVisionV1p4beta1ProductSearchResults
    GoogleCloudVisionV1p4beta1ProductSearchResults (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResults,

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult,

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation,

    -- * GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    GoogleCloudVisionV1p4beta1ProductSearchResultsResult (..),
    newGoogleCloudVisionV1p4beta1ProductSearchResultsResult,

    -- * GoogleCloudVisionV1p4beta1Property
    GoogleCloudVisionV1p4beta1Property (..),
    newGoogleCloudVisionV1p4beta1Property,

    -- * GoogleCloudVisionV1p4beta1ReferenceImage
    GoogleCloudVisionV1p4beta1ReferenceImage (..),
    newGoogleCloudVisionV1p4beta1ReferenceImage,

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation (..),
    newGoogleCloudVisionV1p4beta1SafeSearchAnnotation,

    -- * GoogleCloudVisionV1p4beta1Symbol
    GoogleCloudVisionV1p4beta1Symbol (..),
    newGoogleCloudVisionV1p4beta1Symbol,

    -- * GoogleCloudVisionV1p4beta1TextAnnotation
    GoogleCloudVisionV1p4beta1TextAnnotation (..),
    newGoogleCloudVisionV1p4beta1TextAnnotation,

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak,

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage,

    -- * GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    GoogleCloudVisionV1p4beta1TextAnnotationTextProperty (..),
    newGoogleCloudVisionV1p4beta1TextAnnotationTextProperty,

    -- * GoogleCloudVisionV1p4beta1Vertex
    GoogleCloudVisionV1p4beta1Vertex (..),
    newGoogleCloudVisionV1p4beta1Vertex,

    -- * GoogleCloudVisionV1p4beta1WebDetection
    GoogleCloudVisionV1p4beta1WebDetection (..),
    newGoogleCloudVisionV1p4beta1WebDetection,

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    GoogleCloudVisionV1p4beta1WebDetectionWebEntity (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebEntity,

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebImage
    GoogleCloudVisionV1p4beta1WebDetectionWebImage (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebImage,

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    GoogleCloudVisionV1p4beta1WebDetectionWebLabel (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebLabel,

    -- * GoogleCloudVisionV1p4beta1WebDetectionWebPage
    GoogleCloudVisionV1p4beta1WebDetectionWebPage (..),
    newGoogleCloudVisionV1p4beta1WebDetectionWebPage,

    -- * GoogleCloudVisionV1p4beta1Word
    GoogleCloudVisionV1p4beta1Word (..),
    newGoogleCloudVisionV1p4beta1Word,

    -- * GroupedResult
    GroupedResult (..),
    newGroupedResult,

    -- * ImageAnnotationContext
    ImageAnnotationContext (..),
    newImageAnnotationContext,

    -- * ImageProperties
    ImageProperties (..),
    newImageProperties,

    -- * ImportProductSetsResponse
    ImportProductSetsResponse (..),
    newImportProductSetsResponse,

    -- * InputConfig
    InputConfig (..),
    newInputConfig,

    -- * KeyValue
    KeyValue (..),
    newKeyValue,

    -- * Landmark
    Landmark (..),
    newLandmark,

    -- * LatLng
    LatLng (..),
    newLatLng,

    -- * LocalizedObjectAnnotation
    LocalizedObjectAnnotation (..),
    newLocalizedObjectAnnotation,

    -- * LocationInfo
    LocationInfo (..),
    newLocationInfo,

    -- * NormalizedVertex
    NormalizedVertex (..),
    newNormalizedVertex,

    -- * ObjectAnnotation
    ObjectAnnotation (..),
    newObjectAnnotation,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- * Page
    Page (..),
    newPage,

    -- * Paragraph
    Paragraph (..),
    newParagraph,

    -- * Position
    Position (..),
    newPosition,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductSearchResults
    ProductSearchResults (..),
    newProductSearchResults,

    -- * Property
    Property (..),
    newProperty,

    -- * ReferenceImage
    ReferenceImage (..),
    newReferenceImage,

    -- * Result
    Result (..),
    newResult,

    -- * SafeSearchAnnotation
    SafeSearchAnnotation (..),
    newSafeSearchAnnotation,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * Symbol
    Symbol (..),
    newSymbol,

    -- * TextAnnotation
    TextAnnotation (..),
    newTextAnnotation,

    -- * TextProperty
    TextProperty (..),
    newTextProperty,

    -- * Vertex
    Vertex (..),
    newVertex,

    -- * WebDetection
    WebDetection (..),
    newWebDetection,

    -- * WebEntity
    WebEntity (..),
    newWebEntity,

    -- * WebImage
    WebImage (..),
    newWebImage,

    -- * WebLabel
    WebLabel (..),
    newWebLabel,

    -- * WebPage
    WebPage (..),
    newWebPage,

    -- * Word
    Word (..),
    newWord,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Vision.Internal.Sum

-- | Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.
--
-- /See:/ 'newAnnotateFileResponse' smart constructor.
data AnnotateFileResponse = AnnotateFileResponse
  { -- | If set, represents the error message for the failed request. The @responses@ field will not be set in this case.
    error :: (Core.Maybe Status),
    -- | Information about the file for which this response is generated.
    inputConfig :: (Core.Maybe InputConfig),
    -- | Individual responses to images found within the file. This field will be empty if the @error@ field is set.
    responses :: (Core.Maybe [AnnotateImageResponse]),
    -- | This field gives the total number of pages in the file.
    totalPages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateFileResponse' with the minimum fields required to make a request.
newAnnotateFileResponse ::
  AnnotateFileResponse
newAnnotateFileResponse =
  AnnotateFileResponse
    { error = Core.Nothing,
      inputConfig = Core.Nothing,
      responses = Core.Nothing,
      totalPages = Core.Nothing
    }

instance Core.FromJSON AnnotateFileResponse where
  parseJSON =
    Core.withObject
      "AnnotateFileResponse"
      ( \o ->
          AnnotateFileResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "responses")
            Core.<*> (o Core..:? "totalPages")
      )

instance Core.ToJSON AnnotateFileResponse where
  toJSON AnnotateFileResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("responses" Core..=) Core.<$> responses,
            ("totalPages" Core..=) Core.<$> totalPages
          ]
      )

-- | Response to an image annotation request.
--
-- /See:/ 'newAnnotateImageResponse' smart constructor.
data AnnotateImageResponse = AnnotateImageResponse
  { -- | If present, contextual information is needed to understand where this image comes from.
    context :: (Core.Maybe ImageAnnotationContext),
    -- | If present, crop hints have completed successfully.
    cropHintsAnnotation :: (Core.Maybe CropHintsAnnotation),
    -- | If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when @error@ is set.
    error :: (Core.Maybe Status),
    -- | If present, face detection has completed successfully.
    faceAnnotations :: (Core.Maybe [FaceAnnotation]),
    -- | If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.
    fullTextAnnotation :: (Core.Maybe TextAnnotation),
    -- | If present, image properties were extracted successfully.
    imagePropertiesAnnotation :: (Core.Maybe ImageProperties),
    -- | If present, label detection has completed successfully.
    labelAnnotations :: (Core.Maybe [EntityAnnotation]),
    -- | If present, landmark detection has completed successfully.
    landmarkAnnotations :: (Core.Maybe [EntityAnnotation]),
    -- | If present, localized object detection has completed successfully. This will be sorted descending by confidence score.
    localizedObjectAnnotations :: (Core.Maybe [LocalizedObjectAnnotation]),
    -- | If present, logo detection has completed successfully.
    logoAnnotations :: (Core.Maybe [EntityAnnotation]),
    -- | If present, product search has completed successfully.
    productSearchResults :: (Core.Maybe ProductSearchResults),
    -- | If present, safe-search annotation has completed successfully.
    safeSearchAnnotation :: (Core.Maybe SafeSearchAnnotation),
    -- | If present, text (OCR) detection has completed successfully.
    textAnnotations :: (Core.Maybe [EntityAnnotation]),
    -- | If present, web detection has completed successfully.
    webDetection :: (Core.Maybe WebDetection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateImageResponse' with the minimum fields required to make a request.
newAnnotateImageResponse ::
  AnnotateImageResponse
newAnnotateImageResponse =
  AnnotateImageResponse
    { context = Core.Nothing,
      cropHintsAnnotation = Core.Nothing,
      error = Core.Nothing,
      faceAnnotations = Core.Nothing,
      fullTextAnnotation = Core.Nothing,
      imagePropertiesAnnotation = Core.Nothing,
      labelAnnotations = Core.Nothing,
      landmarkAnnotations = Core.Nothing,
      localizedObjectAnnotations = Core.Nothing,
      logoAnnotations = Core.Nothing,
      productSearchResults = Core.Nothing,
      safeSearchAnnotation = Core.Nothing,
      textAnnotations = Core.Nothing,
      webDetection = Core.Nothing
    }

instance Core.FromJSON AnnotateImageResponse where
  parseJSON =
    Core.withObject
      "AnnotateImageResponse"
      ( \o ->
          AnnotateImageResponse
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cropHintsAnnotation")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "faceAnnotations")
            Core.<*> (o Core..:? "fullTextAnnotation")
            Core.<*> (o Core..:? "imagePropertiesAnnotation")
            Core.<*> (o Core..:? "labelAnnotations")
            Core.<*> (o Core..:? "landmarkAnnotations")
            Core.<*> (o Core..:? "localizedObjectAnnotations")
            Core.<*> (o Core..:? "logoAnnotations")
            Core.<*> (o Core..:? "productSearchResults")
            Core.<*> (o Core..:? "safeSearchAnnotation")
            Core.<*> (o Core..:? "textAnnotations")
            Core.<*> (o Core..:? "webDetection")
      )

instance Core.ToJSON AnnotateImageResponse where
  toJSON AnnotateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cropHintsAnnotation" Core..=) Core.<$> cropHintsAnnotation,
            ("error" Core..=) Core.<$> error,
            ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
            ("fullTextAnnotation" Core..=) Core.<$> fullTextAnnotation,
            ("imagePropertiesAnnotation" Core..=)
              Core.<$> imagePropertiesAnnotation,
            ("labelAnnotations" Core..=) Core.<$> labelAnnotations,
            ("landmarkAnnotations" Core..=) Core.<$> landmarkAnnotations,
            ("localizedObjectAnnotations" Core..=)
              Core.<$> localizedObjectAnnotations,
            ("logoAnnotations" Core..=) Core.<$> logoAnnotations,
            ("productSearchResults" Core..=) Core.<$> productSearchResults,
            ("safeSearchAnnotation" Core..=) Core.<$> safeSearchAnnotation,
            ("textAnnotations" Core..=) Core.<$> textAnnotations,
            ("webDetection" Core..=) Core.<$> webDetection
          ]
      )

-- | The response for a single offline file annotation request.
--
-- /See:/ 'newAsyncAnnotateFileResponse' smart constructor.
newtype AsyncAnnotateFileResponse = AsyncAnnotateFileResponse
  { -- | The output location and metadata from AsyncAnnotateFileRequest.
    outputConfig :: (Core.Maybe OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsyncAnnotateFileResponse' with the minimum fields required to make a request.
newAsyncAnnotateFileResponse ::
  AsyncAnnotateFileResponse
newAsyncAnnotateFileResponse =
  AsyncAnnotateFileResponse {outputConfig = Core.Nothing}

instance Core.FromJSON AsyncAnnotateFileResponse where
  parseJSON =
    Core.withObject
      "AsyncAnnotateFileResponse"
      ( \o ->
          AsyncAnnotateFileResponse Core.<$> (o Core..:? "outputConfig")
      )

instance Core.ToJSON AsyncAnnotateFileResponse where
  toJSON AsyncAnnotateFileResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'newAsyncBatchAnnotateFilesResponse' smart constructor.
newtype AsyncBatchAnnotateFilesResponse = AsyncBatchAnnotateFilesResponse
  { -- | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.
    responses :: (Core.Maybe [AsyncAnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
newAsyncBatchAnnotateFilesResponse ::
  AsyncBatchAnnotateFilesResponse
newAsyncBatchAnnotateFilesResponse =
  AsyncBatchAnnotateFilesResponse {responses = Core.Nothing}

instance Core.FromJSON AsyncBatchAnnotateFilesResponse where
  parseJSON =
    Core.withObject
      "AsyncBatchAnnotateFilesResponse"
      ( \o ->
          AsyncBatchAnnotateFilesResponse Core.<$> (o Core..:? "responses")
      )

instance Core.ToJSON AsyncBatchAnnotateFilesResponse where
  toJSON AsyncBatchAnnotateFilesResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Response to an async batch image annotation request.
--
-- /See:/ 'newAsyncBatchAnnotateImagesResponse' smart constructor.
newtype AsyncBatchAnnotateImagesResponse = AsyncBatchAnnotateImagesResponse
  { -- | The output location and metadata from AsyncBatchAnnotateImagesRequest.
    outputConfig :: (Core.Maybe OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AsyncBatchAnnotateImagesResponse' with the minimum fields required to make a request.
newAsyncBatchAnnotateImagesResponse ::
  AsyncBatchAnnotateImagesResponse
newAsyncBatchAnnotateImagesResponse =
  AsyncBatchAnnotateImagesResponse {outputConfig = Core.Nothing}

instance Core.FromJSON AsyncBatchAnnotateImagesResponse where
  parseJSON =
    Core.withObject
      "AsyncBatchAnnotateImagesResponse"
      ( \o ->
          AsyncBatchAnnotateImagesResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance Core.ToJSON AsyncBatchAnnotateImagesResponse where
  toJSON AsyncBatchAnnotateImagesResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | A list of file annotation responses.
--
-- /See:/ 'newBatchAnnotateFilesResponse' smart constructor.
newtype BatchAnnotateFilesResponse = BatchAnnotateFilesResponse
  { -- | The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.
    responses :: (Core.Maybe [AnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchAnnotateFilesResponse' with the minimum fields required to make a request.
newBatchAnnotateFilesResponse ::
  BatchAnnotateFilesResponse
newBatchAnnotateFilesResponse =
  BatchAnnotateFilesResponse {responses = Core.Nothing}

instance Core.FromJSON BatchAnnotateFilesResponse where
  parseJSON =
    Core.withObject
      "BatchAnnotateFilesResponse"
      ( \o ->
          BatchAnnotateFilesResponse Core.<$> (o Core..:? "responses")
      )

instance Core.ToJSON BatchAnnotateFilesResponse where
  toJSON BatchAnnotateFilesResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Metadata for the batch operations such as the current state. This is included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newBatchOperationMetadata' smart constructor.
data BatchOperationMetadata = BatchOperationMetadata
  { -- | The time when the batch request is finished and google.longrunning.Operation.done is set to true.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The current state of the batch operation.
    state :: (Core.Maybe BatchOperationMetadata_State),
    -- | The time when the batch request was submitted to the server.
    submitTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchOperationMetadata' with the minimum fields required to make a request.
newBatchOperationMetadata ::
  BatchOperationMetadata
newBatchOperationMetadata =
  BatchOperationMetadata
    { endTime = Core.Nothing,
      state = Core.Nothing,
      submitTime = Core.Nothing
    }

instance Core.FromJSON BatchOperationMetadata where
  parseJSON =
    Core.withObject
      "BatchOperationMetadata"
      ( \o ->
          BatchOperationMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "submitTime")
      )

instance Core.ToJSON BatchOperationMetadata where
  toJSON BatchOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("state" Core..=) Core.<$> state,
            ("submitTime" Core..=) Core.<$> submitTime
          ]
      )

-- | Logical element on the page.
--
-- /See:/ 'newBlock' smart constructor.
data Block = Block
  { -- | Detected block type (text, image etc) for this block.
    blockType :: (Core.Maybe Block_BlockType),
    -- | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe BoundingPoly),
    -- | Confidence of the OCR results on the block. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | List of paragraphs in this block (if this blocks is of type text).
    paragraphs :: (Core.Maybe [Paragraph]),
    -- | Additional information detected for the block.
    property :: (Core.Maybe TextProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Block' with the minimum fields required to make a request.
newBlock ::
  Block
newBlock =
  Block
    { blockType = Core.Nothing,
      boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      paragraphs = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON Block where
  parseJSON =
    Core.withObject
      "Block"
      ( \o ->
          Block
            Core.<$> (o Core..:? "blockType")
            Core.<*> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON Block where
  toJSON Block {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockType" Core..=) Core.<$> blockType,
            ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("paragraphs" Core..=) Core.<$> paragraphs,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'newBoundingPoly' smart constructor.
data BoundingPoly = BoundingPoly
  { -- | The bounding polygon normalized vertices.
    normalizedVertices :: (Core.Maybe [NormalizedVertex]),
    -- | The bounding polygon vertices.
    vertices :: (Core.Maybe [Vertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BoundingPoly' with the minimum fields required to make a request.
newBoundingPoly ::
  BoundingPoly
newBoundingPoly =
  BoundingPoly
    { normalizedVertices = Core.Nothing,
      vertices = Core.Nothing
    }

instance Core.FromJSON BoundingPoly where
  parseJSON =
    Core.withObject
      "BoundingPoly"
      ( \o ->
          BoundingPoly
            Core.<$> (o Core..:? "normalizedVertices")
            Core.<*> (o Core..:? "vertices")
      )

instance Core.ToJSON BoundingPoly where
  toJSON BoundingPoly {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedVertices" Core..=) Core.<$> normalizedVertices,
            ("vertices" Core..=) Core.<$> vertices
          ]
      )

-- | Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of @java.awt.Color@ in Java; it can also be trivially provided to UIColor\'s @+colorWithRed:green:blue:alpha@ method in iOS; and, with just a little work, it can be easily formatted into a CSS @rgba()@ string in JavaScript. This reference page doesn\'t have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most @1e-5@. Example (Java): import com.google.type.Color; \/\/ ... public static java.awt.Color fromProto(Color
-- protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); } return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/ ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha/wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha/wrapper != nil) { alpha = [alpha/wrapper value]; }
-- return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor = function(rgb/color) { var redFrac = rgb/color.red || 0.0; var greenFrac = rgb/color.green || 0.0; var blueFrac = rgb/color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb/color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor =
-- function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \< missingZeros; i++) { resultBuilder.push(\'0\'); } resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/ ...
--
-- /See:/ 'newColor' smart constructor.
data Color = Color
  { -- | The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).
    alpha :: (Core.Maybe Core.Double),
    -- | The amount of blue in the color as a value in the interval [0, 1].
    blue :: (Core.Maybe Core.Double),
    -- | The amount of green in the color as a value in the interval [0, 1].
    green :: (Core.Maybe Core.Double),
    -- | The amount of red in the color as a value in the interval [0, 1].
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor ::
  Color
newColor =
  Color
    { alpha = Core.Nothing,
      blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON Color where
  parseJSON =
    Core.withObject
      "Color"
      ( \o ->
          Color
            Core.<$> (o Core..:? "alpha")
            Core.<*> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON Color where
  toJSON Color {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.
--
-- /See:/ 'newColorInfo' smart constructor.
data ColorInfo = ColorInfo
  { -- | RGB components of the color.
    color :: (Core.Maybe Color),
    -- | The fraction of pixels the color occupies in the image. Value in range [0, 1].
    pixelFraction :: (Core.Maybe Core.Double),
    -- | Image-specific score for this color. Value in range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColorInfo' with the minimum fields required to make a request.
newColorInfo ::
  ColorInfo
newColorInfo =
  ColorInfo
    { color = Core.Nothing,
      pixelFraction = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON ColorInfo where
  parseJSON =
    Core.withObject
      "ColorInfo"
      ( \o ->
          ColorInfo
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "pixelFraction")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON ColorInfo where
  toJSON ColorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("pixelFraction" Core..=) Core.<$> pixelFraction,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Single crop hint that is used to generate a new crop when serving an image.
--
-- /See:/ 'newCropHint' smart constructor.
data CropHint = CropHint
  { -- | The bounding polygon for the crop region. The coordinates of the bounding box are in the original image\'s scale.
    boundingPoly :: (Core.Maybe BoundingPoly),
    -- | Confidence of this being a salient region. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Fraction of importance of this salient region with respect to the original image.
    importanceFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CropHint' with the minimum fields required to make a request.
newCropHint ::
  CropHint
newCropHint =
  CropHint
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      importanceFraction = Core.Nothing
    }

instance Core.FromJSON CropHint where
  parseJSON =
    Core.withObject
      "CropHint"
      ( \o ->
          CropHint
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "importanceFraction")
      )

instance Core.ToJSON CropHint where
  toJSON CropHint {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("importanceFraction" Core..=) Core.<$> importanceFraction
          ]
      )

-- | Set of crop hints that are used to generate new crops when serving images.
--
-- /See:/ 'newCropHintsAnnotation' smart constructor.
newtype CropHintsAnnotation = CropHintsAnnotation
  { -- | Crop hint results.
    cropHints :: (Core.Maybe [CropHint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CropHintsAnnotation' with the minimum fields required to make a request.
newCropHintsAnnotation ::
  CropHintsAnnotation
newCropHintsAnnotation =
  CropHintsAnnotation {cropHints = Core.Nothing}

instance Core.FromJSON CropHintsAnnotation where
  parseJSON =
    Core.withObject
      "CropHintsAnnotation"
      (\o -> CropHintsAnnotation Core.<$> (o Core..:? "cropHints"))

instance Core.ToJSON CropHintsAnnotation where
  toJSON CropHintsAnnotation {..} =
    Core.object
      (Core.catMaybes [("cropHints" Core..=) Core.<$> cropHints])

-- | Detected start or end of a structural component.
--
-- /See:/ 'newDetectedBreak' smart constructor.
data DetectedBreak = DetectedBreak
  { -- | True if break prepends the element.
    isPrefix :: (Core.Maybe Core.Bool),
    -- | Detected break type.
    type' :: (Core.Maybe DetectedBreak_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectedBreak' with the minimum fields required to make a request.
newDetectedBreak ::
  DetectedBreak
newDetectedBreak =
  DetectedBreak {isPrefix = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON DetectedBreak where
  parseJSON =
    Core.withObject
      "DetectedBreak"
      ( \o ->
          DetectedBreak
            Core.<$> (o Core..:? "isPrefix")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON DetectedBreak where
  toJSON DetectedBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("isPrefix" Core..=) Core.<$> isPrefix,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detected language for a structural component.
--
-- /See:/ 'newDetectedLanguage' smart constructor.
data DetectedLanguage = DetectedLanguage
  { -- | Confidence of detected language. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DetectedLanguage' with the minimum fields required to make a request.
newDetectedLanguage ::
  DetectedLanguage
newDetectedLanguage =
  DetectedLanguage
    { confidence = Core.Nothing,
      languageCode = Core.Nothing
    }

instance Core.FromJSON DetectedLanguage where
  parseJSON =
    Core.withObject
      "DetectedLanguage"
      ( \o ->
          DetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON DetectedLanguage where
  toJSON DetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'newDominantColorsAnnotation' smart constructor.
newtype DominantColorsAnnotation = DominantColorsAnnotation
  { -- | RGB color values with their score and pixel fraction.
    colors :: (Core.Maybe [ColorInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DominantColorsAnnotation' with the minimum fields required to make a request.
newDominantColorsAnnotation ::
  DominantColorsAnnotation
newDominantColorsAnnotation =
  DominantColorsAnnotation {colors = Core.Nothing}

instance Core.FromJSON DominantColorsAnnotation where
  parseJSON =
    Core.withObject
      "DominantColorsAnnotation"
      (\o -> DominantColorsAnnotation Core.<$> (o Core..:? "colors"))

instance Core.ToJSON DominantColorsAnnotation where
  toJSON DominantColorsAnnotation {..} =
    Core.object (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | Set of detected entity features.
--
-- /See:/ 'newEntityAnnotation' smart constructor.
data EntityAnnotation = EntityAnnotation
  { -- | Image region to which this entity belongs. Not produced for @LABEL_DETECTION@ features.
    boundingPoly :: (Core.Maybe BoundingPoly),
    -- | __Deprecated. Use @score@ instead.__ The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Entity textual description, expressed in its @locale@ language.
    description :: (Core.Maybe Core.Text),
    -- | The language code for the locale in which the entity textual @description@ is expressed.
    locale :: (Core.Maybe Core.Text),
    -- | The location information for the detected entity. Multiple @LocationInfo@ elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.
    locations :: (Core.Maybe [LocationInfo]),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    mid :: (Core.Maybe Core.Text),
    -- | Some entities may have optional user-supplied @Property@ (name\/value) fields, such a score or string that qualifies the entity.
    properties :: (Core.Maybe [Property]),
    -- | Overall score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double),
    -- | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].
    topicality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityAnnotation' with the minimum fields required to make a request.
newEntityAnnotation ::
  EntityAnnotation
newEntityAnnotation =
  EntityAnnotation
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      description = Core.Nothing,
      locale = Core.Nothing,
      locations = Core.Nothing,
      mid = Core.Nothing,
      properties = Core.Nothing,
      score = Core.Nothing,
      topicality = Core.Nothing
    }

instance Core.FromJSON EntityAnnotation where
  parseJSON =
    Core.withObject
      "EntityAnnotation"
      ( \o ->
          EntityAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "topicality")
      )

instance Core.ToJSON EntityAnnotation where
  toJSON EntityAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("description" Core..=) Core.<$> description,
            ("locale" Core..=) Core.<$> locale,
            ("locations" Core..=) Core.<$> locations,
            ("mid" Core..=) Core.<$> mid,
            ("properties" Core..=) Core.<$> properties,
            ("score" Core..=) Core.<$> score,
            ("topicality" Core..=) Core.<$> topicality
          ]
      )

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'newFaceAnnotation' smart constructor.
data FaceAnnotation = FaceAnnotation
  { -- | Anger likelihood.
    angerLikelihood :: (Core.Maybe FaceAnnotation_AngerLikelihood),
    -- | Blurred likelihood.
    blurredLikelihood :: (Core.Maybe FaceAnnotation_BlurredLikelihood),
    -- | The bounding polygon around the face. The coordinates of the bounding box are in the original image\'s scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and\/or y coordinates may not be generated in the @BoundingPoly@ (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
    boundingPoly :: (Core.Maybe BoundingPoly),
    -- | Detection confidence. Range [0, 1].
    detectionConfidence :: (Core.Maybe Core.Double),
    -- | The @fd_bounding_poly@ bounding polygon is tighter than the @boundingPoly@, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
    fdBoundingPoly :: (Core.Maybe BoundingPoly),
    -- | Headwear likelihood.
    headwearLikelihood :: (Core.Maybe FaceAnnotation_HeadwearLikelihood),
    -- | Joy likelihood.
    joyLikelihood :: (Core.Maybe FaceAnnotation_JoyLikelihood),
    -- | Face landmarking confidence. Range [0, 1].
    landmarkingConfidence :: (Core.Maybe Core.Double),
    -- | Detected face landmarks.
    landmarks :: (Core.Maybe [Landmark]),
    -- | Yaw angle, which indicates the leftward\/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
    panAngle :: (Core.Maybe Core.Double),
    -- | Roll angle, which indicates the amount of clockwise\/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
    rollAngle :: (Core.Maybe Core.Double),
    -- | Sorrow likelihood.
    sorrowLikelihood :: (Core.Maybe FaceAnnotation_SorrowLikelihood),
    -- | Surprise likelihood.
    surpriseLikelihood :: (Core.Maybe FaceAnnotation_SurpriseLikelihood),
    -- | Pitch angle, which indicates the upwards\/downwards angle that the face is pointing relative to the image\'s horizontal plane. Range [-180,180].
    tiltAngle :: (Core.Maybe Core.Double),
    -- | Under-exposed likelihood.
    underExposedLikelihood :: (Core.Maybe FaceAnnotation_UnderExposedLikelihood)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FaceAnnotation' with the minimum fields required to make a request.
newFaceAnnotation ::
  FaceAnnotation
newFaceAnnotation =
  FaceAnnotation
    { angerLikelihood = Core.Nothing,
      blurredLikelihood = Core.Nothing,
      boundingPoly = Core.Nothing,
      detectionConfidence = Core.Nothing,
      fdBoundingPoly = Core.Nothing,
      headwearLikelihood = Core.Nothing,
      joyLikelihood = Core.Nothing,
      landmarkingConfidence = Core.Nothing,
      landmarks = Core.Nothing,
      panAngle = Core.Nothing,
      rollAngle = Core.Nothing,
      sorrowLikelihood = Core.Nothing,
      surpriseLikelihood = Core.Nothing,
      tiltAngle = Core.Nothing,
      underExposedLikelihood = Core.Nothing
    }

instance Core.FromJSON FaceAnnotation where
  parseJSON =
    Core.withObject
      "FaceAnnotation"
      ( \o ->
          FaceAnnotation
            Core.<$> (o Core..:? "angerLikelihood")
            Core.<*> (o Core..:? "blurredLikelihood")
            Core.<*> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "detectionConfidence")
            Core.<*> (o Core..:? "fdBoundingPoly")
            Core.<*> (o Core..:? "headwearLikelihood")
            Core.<*> (o Core..:? "joyLikelihood")
            Core.<*> (o Core..:? "landmarkingConfidence")
            Core.<*> (o Core..:? "landmarks")
            Core.<*> (o Core..:? "panAngle")
            Core.<*> (o Core..:? "rollAngle")
            Core.<*> (o Core..:? "sorrowLikelihood")
            Core.<*> (o Core..:? "surpriseLikelihood")
            Core.<*> (o Core..:? "tiltAngle")
            Core.<*> (o Core..:? "underExposedLikelihood")
      )

instance Core.ToJSON FaceAnnotation where
  toJSON FaceAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angerLikelihood" Core..=) Core.<$> angerLikelihood,
            ("blurredLikelihood" Core..=) Core.<$> blurredLikelihood,
            ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("detectionConfidence" Core..=) Core.<$> detectionConfidence,
            ("fdBoundingPoly" Core..=) Core.<$> fdBoundingPoly,
            ("headwearLikelihood" Core..=) Core.<$> headwearLikelihood,
            ("joyLikelihood" Core..=) Core.<$> joyLikelihood,
            ("landmarkingConfidence" Core..=) Core.<$> landmarkingConfidence,
            ("landmarks" Core..=) Core.<$> landmarks,
            ("panAngle" Core..=) Core.<$> panAngle,
            ("rollAngle" Core..=) Core.<$> rollAngle,
            ("sorrowLikelihood" Core..=) Core.<$> sorrowLikelihood,
            ("surpriseLikelihood" Core..=) Core.<$> surpriseLikelihood,
            ("tiltAngle" Core..=) Core.<$> tiltAngle,
            ("underExposedLikelihood" Core..=)
              Core.<$> underExposedLikelihood
          ]
      )

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'newGcsDestination' smart constructor.
newtype GcsDestination = GcsDestination
  { -- | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs:\/\/bucket-name\/here\/filenameprefix The output files will be created in gs:\/\/bucket-name\/here\/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs:\/\/bucket-name\/some\/location\/ The output files will be created in gs:\/\/bucket-name\/some\/location\/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too
    -- large and overflows into multiple sharded files.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
newGcsDestination ::
  GcsDestination
newGcsDestination = GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GcsDestination where
  parseJSON =
    Core.withObject
      "GcsDestination"
      (\o -> GcsDestination Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsDestination where
  toJSON GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'newGcsSource' smart constructor.
newtype GcsSource = GcsSource
  { -- | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
newGcsSource ::
  GcsSource
newGcsSource = GcsSource {uri = Core.Nothing}

instance Core.FromJSON GcsSource where
  parseJSON =
    Core.withObject
      "GcsSource"
      (\o -> GcsSource Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsSource where
  toJSON GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p1beta1AnnotateFileResponse = GoogleCloudVisionV1p1beta1AnnotateFileResponse
  { -- | If set, represents the error message for the failed request. The @responses@ field will not be set in this case.
    error :: (Core.Maybe Status),
    -- | Information about the file for which this response is generated.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p1beta1InputConfig),
    -- | Individual responses to images found within the file. This field will be empty if the @error@ field is set.
    responses :: (Core.Maybe [GoogleCloudVisionV1p1beta1AnnotateImageResponse]),
    -- | This field gives the total number of pages in the file.
    totalPages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1AnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1AnnotateFileResponse ::
  GoogleCloudVisionV1p1beta1AnnotateFileResponse
newGoogleCloudVisionV1p1beta1AnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AnnotateFileResponse
    { error =
        Core.Nothing,
      inputConfig = Core.Nothing,
      responses = Core.Nothing,
      totalPages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1AnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1AnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p1beta1AnnotateFileResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "responses")
            Core.<*> (o Core..:? "totalPages")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1AnnotateFileResponse where
  toJSON GoogleCloudVisionV1p1beta1AnnotateFileResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("responses" Core..=) Core.<$> responses,
            ("totalPages" Core..=) Core.<$> totalPages
          ]
      )

-- | Response to an image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p1beta1AnnotateImageResponse = GoogleCloudVisionV1p1beta1AnnotateImageResponse
  { -- | If present, contextual information is needed to understand where this image comes from.
    context :: (Core.Maybe GoogleCloudVisionV1p1beta1ImageAnnotationContext),
    -- | If present, crop hints have completed successfully.
    cropHintsAnnotation :: (Core.Maybe GoogleCloudVisionV1p1beta1CropHintsAnnotation),
    -- | If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when @error@ is set.
    error :: (Core.Maybe Status),
    -- | If present, face detection has completed successfully.
    faceAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1FaceAnnotation]),
    -- | If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.
    fullTextAnnotation :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotation),
    -- | If present, image properties were extracted successfully.
    imagePropertiesAnnotation :: (Core.Maybe GoogleCloudVisionV1p1beta1ImageProperties),
    -- | If present, label detection has completed successfully.
    labelAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation]),
    -- | If present, landmark detection has completed successfully.
    landmarkAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation]),
    -- | If present, localized object detection has completed successfully. This will be sorted descending by confidence score.
    localizedObjectAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation]),
    -- | If present, logo detection has completed successfully.
    logoAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation]),
    -- | If present, product search has completed successfully.
    productSearchResults :: (Core.Maybe GoogleCloudVisionV1p1beta1ProductSearchResults),
    -- | If present, safe-search annotation has completed successfully.
    safeSearchAnnotation :: (Core.Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation),
    -- | If present, text (OCR) detection has completed successfully.
    textAnnotations :: (Core.Maybe [GoogleCloudVisionV1p1beta1EntityAnnotation]),
    -- | If present, web detection has completed successfully.
    webDetection :: (Core.Maybe GoogleCloudVisionV1p1beta1WebDetection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1AnnotateImageResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1AnnotateImageResponse ::
  GoogleCloudVisionV1p1beta1AnnotateImageResponse
newGoogleCloudVisionV1p1beta1AnnotateImageResponse =
  GoogleCloudVisionV1p1beta1AnnotateImageResponse
    { context =
        Core.Nothing,
      cropHintsAnnotation = Core.Nothing,
      error = Core.Nothing,
      faceAnnotations = Core.Nothing,
      fullTextAnnotation = Core.Nothing,
      imagePropertiesAnnotation = Core.Nothing,
      labelAnnotations = Core.Nothing,
      landmarkAnnotations = Core.Nothing,
      localizedObjectAnnotations = Core.Nothing,
      logoAnnotations = Core.Nothing,
      productSearchResults = Core.Nothing,
      safeSearchAnnotation = Core.Nothing,
      textAnnotations = Core.Nothing,
      webDetection = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1AnnotateImageResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1AnnotateImageResponse"
      ( \o ->
          GoogleCloudVisionV1p1beta1AnnotateImageResponse
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cropHintsAnnotation")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "faceAnnotations")
            Core.<*> (o Core..:? "fullTextAnnotation")
            Core.<*> (o Core..:? "imagePropertiesAnnotation")
            Core.<*> (o Core..:? "labelAnnotations")
            Core.<*> (o Core..:? "landmarkAnnotations")
            Core.<*> (o Core..:? "localizedObjectAnnotations")
            Core.<*> (o Core..:? "logoAnnotations")
            Core.<*> (o Core..:? "productSearchResults")
            Core.<*> (o Core..:? "safeSearchAnnotation")
            Core.<*> (o Core..:? "textAnnotations")
            Core.<*> (o Core..:? "webDetection")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1AnnotateImageResponse
  where
  toJSON GoogleCloudVisionV1p1beta1AnnotateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cropHintsAnnotation" Core..=) Core.<$> cropHintsAnnotation,
            ("error" Core..=) Core.<$> error,
            ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
            ("fullTextAnnotation" Core..=) Core.<$> fullTextAnnotation,
            ("imagePropertiesAnnotation" Core..=)
              Core.<$> imagePropertiesAnnotation,
            ("labelAnnotations" Core..=) Core.<$> labelAnnotations,
            ("landmarkAnnotations" Core..=) Core.<$> landmarkAnnotations,
            ("localizedObjectAnnotations" Core..=)
              Core.<$> localizedObjectAnnotations,
            ("logoAnnotations" Core..=) Core.<$> logoAnnotations,
            ("productSearchResults" Core..=) Core.<$> productSearchResults,
            ("safeSearchAnnotation" Core..=) Core.<$> safeSearchAnnotation,
            ("textAnnotations" Core..=) Core.<$> textAnnotations,
            ("webDetection" Core..=) Core.<$> webDetection
          ]
      )

-- | The response for a single offline file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse = GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
  { -- | The output location and metadata from AsyncAnnotateFileRequest.
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p1beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse ::
  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
newGoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
    { outputConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse
  where
  toJSON GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse = GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
  { -- | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p1beta1AsyncAnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
newGoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse
  where
  toJSON
    GoogleCloudVisionV1p1beta1AsyncBatchAnnotateFilesResponse {..} =
      Core.object
        (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Logical element on the page.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Block' smart constructor.
data GoogleCloudVisionV1p1beta1Block = GoogleCloudVisionV1p1beta1Block
  { -- | Detected block type (text, image etc) for this block.
    blockType :: (Core.Maybe GoogleCloudVisionV1p1beta1Block_BlockType),
    -- | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Confidence of the OCR results on the block. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | List of paragraphs in this block (if this blocks is of type text).
    paragraphs :: (Core.Maybe [GoogleCloudVisionV1p1beta1Paragraph]),
    -- | Additional information detected for the block.
    property :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Block' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Block ::
  GoogleCloudVisionV1p1beta1Block
newGoogleCloudVisionV1p1beta1Block =
  GoogleCloudVisionV1p1beta1Block
    { blockType = Core.Nothing,
      boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      paragraphs = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Block where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Block"
      ( \o ->
          GoogleCloudVisionV1p1beta1Block
            Core.<$> (o Core..:? "blockType")
            Core.<*> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Block where
  toJSON GoogleCloudVisionV1p1beta1Block {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockType" Core..=) Core.<$> blockType,
            ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("paragraphs" Core..=) Core.<$> paragraphs,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p1beta1BoundingPoly = GoogleCloudVisionV1p1beta1BoundingPoly
  { -- | The bounding polygon normalized vertices.
    normalizedVertices :: (Core.Maybe [GoogleCloudVisionV1p1beta1NormalizedVertex]),
    -- | The bounding polygon vertices.
    vertices :: (Core.Maybe [GoogleCloudVisionV1p1beta1Vertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1BoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1BoundingPoly ::
  GoogleCloudVisionV1p1beta1BoundingPoly
newGoogleCloudVisionV1p1beta1BoundingPoly =
  GoogleCloudVisionV1p1beta1BoundingPoly
    { normalizedVertices =
        Core.Nothing,
      vertices = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1BoundingPoly where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1BoundingPoly"
      ( \o ->
          GoogleCloudVisionV1p1beta1BoundingPoly
            Core.<$> (o Core..:? "normalizedVertices")
            Core.<*> (o Core..:? "vertices")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1BoundingPoly where
  toJSON GoogleCloudVisionV1p1beta1BoundingPoly {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedVertices" Core..=) Core.<$> normalizedVertices,
            ("vertices" Core..=) Core.<$> vertices
          ]
      )

-- | Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p1beta1ColorInfo = GoogleCloudVisionV1p1beta1ColorInfo
  { -- | RGB components of the color.
    color :: (Core.Maybe Color),
    -- | The fraction of pixels the color occupies in the image. Value in range [0, 1].
    pixelFraction :: (Core.Maybe Core.Double),
    -- | Image-specific score for this color. Value in range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ColorInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ColorInfo ::
  GoogleCloudVisionV1p1beta1ColorInfo
newGoogleCloudVisionV1p1beta1ColorInfo =
  GoogleCloudVisionV1p1beta1ColorInfo
    { color = Core.Nothing,
      pixelFraction = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1ColorInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ColorInfo"
      ( \o ->
          GoogleCloudVisionV1p1beta1ColorInfo
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "pixelFraction")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1ColorInfo where
  toJSON GoogleCloudVisionV1p1beta1ColorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("pixelFraction" Core..=) Core.<$> pixelFraction,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Single crop hint that is used to generate a new crop when serving an image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1CropHint' smart constructor.
data GoogleCloudVisionV1p1beta1CropHint = GoogleCloudVisionV1p1beta1CropHint
  { -- | The bounding polygon for the crop region. The coordinates of the bounding box are in the original image\'s scale.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Confidence of this being a salient region. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Fraction of importance of this salient region with respect to the original image.
    importanceFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1CropHint' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1CropHint ::
  GoogleCloudVisionV1p1beta1CropHint
newGoogleCloudVisionV1p1beta1CropHint =
  GoogleCloudVisionV1p1beta1CropHint
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      importanceFraction = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1CropHint where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1CropHint"
      ( \o ->
          GoogleCloudVisionV1p1beta1CropHint
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "importanceFraction")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1CropHint where
  toJSON GoogleCloudVisionV1p1beta1CropHint {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("importanceFraction" Core..=) Core.<$> importanceFraction
          ]
      )

-- | Set of crop hints that are used to generate new crops when serving images.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p1beta1CropHintsAnnotation = GoogleCloudVisionV1p1beta1CropHintsAnnotation
  { -- | Crop hint results.
    cropHints :: (Core.Maybe [GoogleCloudVisionV1p1beta1CropHint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1CropHintsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1CropHintsAnnotation ::
  GoogleCloudVisionV1p1beta1CropHintsAnnotation
newGoogleCloudVisionV1p1beta1CropHintsAnnotation =
  GoogleCloudVisionV1p1beta1CropHintsAnnotation
    { cropHints =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1CropHintsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1CropHintsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1CropHintsAnnotation
            Core.<$> (o Core..:? "cropHints")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1CropHintsAnnotation where
  toJSON GoogleCloudVisionV1p1beta1CropHintsAnnotation {..} =
    Core.object
      (Core.catMaybes [("cropHints" Core..=) Core.<$> cropHints])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p1beta1DominantColorsAnnotation = GoogleCloudVisionV1p1beta1DominantColorsAnnotation
  { -- | RGB color values with their score and pixel fraction.
    colors :: (Core.Maybe [GoogleCloudVisionV1p1beta1ColorInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1DominantColorsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1DominantColorsAnnotation ::
  GoogleCloudVisionV1p1beta1DominantColorsAnnotation
newGoogleCloudVisionV1p1beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p1beta1DominantColorsAnnotation
    { colors =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1DominantColorsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1DominantColorsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1DominantColorsAnnotation
            Core.<$> (o Core..:? "colors")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1DominantColorsAnnotation
  where
  toJSON GoogleCloudVisionV1p1beta1DominantColorsAnnotation {..} =
    Core.object (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | Set of detected entity features.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1EntityAnnotation = GoogleCloudVisionV1p1beta1EntityAnnotation
  { -- | Image region to which this entity belongs. Not produced for @LABEL_DETECTION@ features.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | __Deprecated. Use @score@ instead.__ The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Entity textual description, expressed in its @locale@ language.
    description :: (Core.Maybe Core.Text),
    -- | The language code for the locale in which the entity textual @description@ is expressed.
    locale :: (Core.Maybe Core.Text),
    -- | The location information for the detected entity. Multiple @LocationInfo@ elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.
    locations :: (Core.Maybe [GoogleCloudVisionV1p1beta1LocationInfo]),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    mid :: (Core.Maybe Core.Text),
    -- | Some entities may have optional user-supplied @Property@ (name\/value) fields, such a score or string that qualifies the entity.
    properties :: (Core.Maybe [GoogleCloudVisionV1p1beta1Property]),
    -- | Overall score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double),
    -- | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].
    topicality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1EntityAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1EntityAnnotation ::
  GoogleCloudVisionV1p1beta1EntityAnnotation
newGoogleCloudVisionV1p1beta1EntityAnnotation =
  GoogleCloudVisionV1p1beta1EntityAnnotation
    { boundingPoly =
        Core.Nothing,
      confidence = Core.Nothing,
      description = Core.Nothing,
      locale = Core.Nothing,
      locations = Core.Nothing,
      mid = Core.Nothing,
      properties = Core.Nothing,
      score = Core.Nothing,
      topicality = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1EntityAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1EntityAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1EntityAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "topicality")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1EntityAnnotation where
  toJSON GoogleCloudVisionV1p1beta1EntityAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("description" Core..=) Core.<$> description,
            ("locale" Core..=) Core.<$> locale,
            ("locations" Core..=) Core.<$> locations,
            ("mid" Core..=) Core.<$> mid,
            ("properties" Core..=) Core.<$> properties,
            ("score" Core..=) Core.<$> score,
            ("topicality" Core..=) Core.<$> topicality
          ]
      )

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1FaceAnnotation = GoogleCloudVisionV1p1beta1FaceAnnotation
  { -- | Anger likelihood.
    angerLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
      ),
    -- | Blurred likelihood.
    blurredLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
      ),
    -- | The bounding polygon around the face. The coordinates of the bounding box are in the original image\'s scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and\/or y coordinates may not be generated in the @BoundingPoly@ (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Detection confidence. Range [0, 1].
    detectionConfidence :: (Core.Maybe Core.Double),
    -- | The @fd_bounding_poly@ bounding polygon is tighter than the @boundingPoly@, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
    fdBoundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Headwear likelihood.
    headwearLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
      ),
    -- | Joy likelihood.
    joyLikelihood :: (Core.Maybe GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood),
    -- | Face landmarking confidence. Range [0, 1].
    landmarkingConfidence :: (Core.Maybe Core.Double),
    -- | Detected face landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVisionV1p1beta1FaceAnnotationLandmark]),
    -- | Yaw angle, which indicates the leftward\/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
    panAngle :: (Core.Maybe Core.Double),
    -- | Roll angle, which indicates the amount of clockwise\/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
    rollAngle :: (Core.Maybe Core.Double),
    -- | Sorrow likelihood.
    sorrowLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
      ),
    -- | Surprise likelihood.
    surpriseLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
      ),
    -- | Pitch angle, which indicates the upwards\/downwards angle that the face is pointing relative to the image\'s horizontal plane. Range [-180,180].
    tiltAngle :: (Core.Maybe Core.Double),
    -- | Under-exposed likelihood.
    underExposedLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1FaceAnnotation ::
  GoogleCloudVisionV1p1beta1FaceAnnotation
newGoogleCloudVisionV1p1beta1FaceAnnotation =
  GoogleCloudVisionV1p1beta1FaceAnnotation
    { angerLikelihood =
        Core.Nothing,
      blurredLikelihood = Core.Nothing,
      boundingPoly = Core.Nothing,
      detectionConfidence = Core.Nothing,
      fdBoundingPoly = Core.Nothing,
      headwearLikelihood = Core.Nothing,
      joyLikelihood = Core.Nothing,
      landmarkingConfidence = Core.Nothing,
      landmarks = Core.Nothing,
      panAngle = Core.Nothing,
      rollAngle = Core.Nothing,
      sorrowLikelihood = Core.Nothing,
      surpriseLikelihood = Core.Nothing,
      tiltAngle = Core.Nothing,
      underExposedLikelihood = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1FaceAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1FaceAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1FaceAnnotation
            Core.<$> (o Core..:? "angerLikelihood")
            Core.<*> (o Core..:? "blurredLikelihood")
            Core.<*> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "detectionConfidence")
            Core.<*> (o Core..:? "fdBoundingPoly")
            Core.<*> (o Core..:? "headwearLikelihood")
            Core.<*> (o Core..:? "joyLikelihood")
            Core.<*> (o Core..:? "landmarkingConfidence")
            Core.<*> (o Core..:? "landmarks")
            Core.<*> (o Core..:? "panAngle")
            Core.<*> (o Core..:? "rollAngle")
            Core.<*> (o Core..:? "sorrowLikelihood")
            Core.<*> (o Core..:? "surpriseLikelihood")
            Core.<*> (o Core..:? "tiltAngle")
            Core.<*> (o Core..:? "underExposedLikelihood")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1FaceAnnotation where
  toJSON GoogleCloudVisionV1p1beta1FaceAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angerLikelihood" Core..=) Core.<$> angerLikelihood,
            ("blurredLikelihood" Core..=) Core.<$> blurredLikelihood,
            ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("detectionConfidence" Core..=) Core.<$> detectionConfidence,
            ("fdBoundingPoly" Core..=) Core.<$> fdBoundingPoly,
            ("headwearLikelihood" Core..=) Core.<$> headwearLikelihood,
            ("joyLikelihood" Core..=) Core.<$> joyLikelihood,
            ("landmarkingConfidence" Core..=) Core.<$> landmarkingConfidence,
            ("landmarks" Core..=) Core.<$> landmarks,
            ("panAngle" Core..=) Core.<$> panAngle,
            ("rollAngle" Core..=) Core.<$> rollAngle,
            ("sorrowLikelihood" Core..=) Core.<$> sorrowLikelihood,
            ("surpriseLikelihood" Core..=) Core.<$> surpriseLikelihood,
            ("tiltAngle" Core..=) Core.<$> tiltAngle,
            ("underExposedLikelihood" Core..=)
              Core.<$> underExposedLikelihood
          ]
      )

-- | A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that @0 \<= x \< width@ or @0 \<= y \< height@.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p1beta1FaceAnnotationLandmark = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
  { -- | Face landmark position.
    position :: (Core.Maybe GoogleCloudVisionV1p1beta1Position),
    -- | Face landmark type.
    type' :: (Core.Maybe GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1FaceAnnotationLandmark ::
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
newGoogleCloudVisionV1p1beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
    { position =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1FaceAnnotationLandmark"
      ( \o ->
          GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark
  where
  toJSON GoogleCloudVisionV1p1beta1FaceAnnotationLandmark {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p1beta1GcsDestination = GoogleCloudVisionV1p1beta1GcsDestination
  { -- | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs:\/\/bucket-name\/here\/filenameprefix The output files will be created in gs:\/\/bucket-name\/here\/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs:\/\/bucket-name\/some\/location\/ The output files will be created in gs:\/\/bucket-name\/some\/location\/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too
    -- large and overflows into multiple sharded files.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1GcsDestination' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1GcsDestination ::
  GoogleCloudVisionV1p1beta1GcsDestination
newGoogleCloudVisionV1p1beta1GcsDestination =
  GoogleCloudVisionV1p1beta1GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p1beta1GcsDestination where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1GcsDestination"
      ( \o ->
          GoogleCloudVisionV1p1beta1GcsDestination
            Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1GcsDestination where
  toJSON GoogleCloudVisionV1p1beta1GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p1beta1GcsSource = GoogleCloudVisionV1p1beta1GcsSource
  { -- | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1GcsSource' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1GcsSource ::
  GoogleCloudVisionV1p1beta1GcsSource
newGoogleCloudVisionV1p1beta1GcsSource =
  GoogleCloudVisionV1p1beta1GcsSource {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p1beta1GcsSource where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1GcsSource"
      ( \o ->
          GoogleCloudVisionV1p1beta1GcsSource Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1GcsSource where
  toJSON GoogleCloudVisionV1p1beta1GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p1beta1ImageAnnotationContext = GoogleCloudVisionV1p1beta1ImageAnnotationContext
  { -- | If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.
    pageNumber :: (Core.Maybe Core.Int32),
    -- | The URI of the file used to produce the image.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ImageAnnotationContext' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ImageAnnotationContext ::
  GoogleCloudVisionV1p1beta1ImageAnnotationContext
newGoogleCloudVisionV1p1beta1ImageAnnotationContext =
  GoogleCloudVisionV1p1beta1ImageAnnotationContext
    { pageNumber =
        Core.Nothing,
      uri = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1ImageAnnotationContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ImageAnnotationContext"
      ( \o ->
          GoogleCloudVisionV1p1beta1ImageAnnotationContext
            Core.<$> (o Core..:? "pageNumber")
            Core.<*> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1ImageAnnotationContext
  where
  toJSON GoogleCloudVisionV1p1beta1ImageAnnotationContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageNumber" Core..=) Core.<$> pageNumber,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p1beta1ImageProperties = GoogleCloudVisionV1p1beta1ImageProperties
  { -- | If present, dominant colors completed successfully.
    dominantColors :: (Core.Maybe GoogleCloudVisionV1p1beta1DominantColorsAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ImageProperties' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ImageProperties ::
  GoogleCloudVisionV1p1beta1ImageProperties
newGoogleCloudVisionV1p1beta1ImageProperties =
  GoogleCloudVisionV1p1beta1ImageProperties
    { dominantColors =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1ImageProperties where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ImageProperties"
      ( \o ->
          GoogleCloudVisionV1p1beta1ImageProperties
            Core.<$> (o Core..:? "dominantColors")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1ImageProperties where
  toJSON GoogleCloudVisionV1p1beta1ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [("dominantColors" Core..=) Core.<$> dominantColors]
      )

-- | The desired input location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p1beta1InputConfig = GoogleCloudVisionV1p1beta1InputConfig
  { -- | File content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.
    content :: (Core.Maybe Core.Base64),
    -- | The Google Cloud Storage location to read the input from.
    gcsSource :: (Core.Maybe GoogleCloudVisionV1p1beta1GcsSource),
    -- | The type of the file. Currently only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not supported.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1InputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1InputConfig ::
  GoogleCloudVisionV1p1beta1InputConfig
newGoogleCloudVisionV1p1beta1InputConfig =
  GoogleCloudVisionV1p1beta1InputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1InputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1InputConfig"
      ( \o ->
          GoogleCloudVisionV1p1beta1InputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1InputConfig where
  toJSON GoogleCloudVisionV1p1beta1InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation = GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
  { -- | Image region to which this object belongs. This must be populated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation ::
  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
newGoogleCloudVisionV1p1beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
    { boundingPoly =
        Core.Nothing,
      languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation
  where
  toJSON GoogleCloudVisionV1p1beta1LocalizedObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Detected entity location information.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p1beta1LocationInfo = GoogleCloudVisionV1p1beta1LocationInfo
  { -- | lat\/long location coordinates.
    latLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1LocationInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1LocationInfo ::
  GoogleCloudVisionV1p1beta1LocationInfo
newGoogleCloudVisionV1p1beta1LocationInfo =
  GoogleCloudVisionV1p1beta1LocationInfo {latLng = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p1beta1LocationInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1LocationInfo"
      ( \o ->
          GoogleCloudVisionV1p1beta1LocationInfo
            Core.<$> (o Core..:? "latLng")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1LocationInfo where
  toJSON GoogleCloudVisionV1p1beta1LocationInfo {..} =
    Core.object (Core.catMaybes [("latLng" Core..=) Core.<$> latLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p1beta1NormalizedVertex = GoogleCloudVisionV1p1beta1NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1NormalizedVertex ::
  GoogleCloudVisionV1p1beta1NormalizedVertex
newGoogleCloudVisionV1p1beta1NormalizedVertex =
  GoogleCloudVisionV1p1beta1NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1NormalizedVertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1NormalizedVertex"
      ( \o ->
          GoogleCloudVisionV1p1beta1NormalizedVertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1NormalizedVertex where
  toJSON GoogleCloudVisionV1p1beta1NormalizedVertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p1beta1OperationMetadata = GoogleCloudVisionV1p1beta1OperationMetadata
  { -- | The time when the batch request was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p1beta1OperationMetadata_State),
    -- | The time when the operation result was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1OperationMetadata ::
  GoogleCloudVisionV1p1beta1OperationMetadata
newGoogleCloudVisionV1p1beta1OperationMetadata =
  GoogleCloudVisionV1p1beta1OperationMetadata
    { createTime =
        Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1OperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p1beta1OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1OperationMetadata where
  toJSON GoogleCloudVisionV1p1beta1OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The desired output location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p1beta1OutputConfig = GoogleCloudVisionV1p1beta1OutputConfig
  { -- | The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If @batch_size@ = 20, then 5 json files each containing 20 response protos will be written under the prefix @gcs_destination@.@uri@. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
    batchSize :: (Core.Maybe Core.Int32),
    -- | The Google Cloud Storage location to write the output(s) to.
    gcsDestination :: (Core.Maybe GoogleCloudVisionV1p1beta1GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1OutputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1OutputConfig ::
  GoogleCloudVisionV1p1beta1OutputConfig
newGoogleCloudVisionV1p1beta1OutputConfig =
  GoogleCloudVisionV1p1beta1OutputConfig
    { batchSize = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1OutputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1OutputConfig"
      ( \o ->
          GoogleCloudVisionV1p1beta1OutputConfig
            Core.<$> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1OutputConfig where
  toJSON GoogleCloudVisionV1p1beta1OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.<$> batchSize,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Detected page from OCR.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Page' smart constructor.
data GoogleCloudVisionV1p1beta1Page = GoogleCloudVisionV1p1beta1Page
  { -- | List of blocks of text, images etc on this page.
    blocks :: (Core.Maybe [GoogleCloudVisionV1p1beta1Block]),
    -- | Confidence of the OCR results on the page. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Additional information detected on the page.
    property :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty),
    -- | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Page' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Page ::
  GoogleCloudVisionV1p1beta1Page
newGoogleCloudVisionV1p1beta1Page =
  GoogleCloudVisionV1p1beta1Page
    { blocks = Core.Nothing,
      confidence = Core.Nothing,
      height = Core.Nothing,
      property = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Page where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Page"
      ( \o ->
          GoogleCloudVisionV1p1beta1Page
            Core.<$> (o Core..:? "blocks")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Page where
  toJSON GoogleCloudVisionV1p1beta1Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("blocks" Core..=) Core.<$> blocks,
            ("confidence" Core..=) Core.<$> confidence,
            ("height" Core..=) Core.<$> height,
            ("property" Core..=) Core.<$> property,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p1beta1Paragraph = GoogleCloudVisionV1p1beta1Paragraph
  { -- | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Confidence of the OCR results for the paragraph. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the paragraph.
    property :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty),
    -- | List of all words in this paragraph.
    words :: (Core.Maybe [GoogleCloudVisionV1p1beta1Word])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Paragraph' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Paragraph ::
  GoogleCloudVisionV1p1beta1Paragraph
newGoogleCloudVisionV1p1beta1Paragraph =
  GoogleCloudVisionV1p1beta1Paragraph
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Paragraph where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Paragraph"
      ( \o ->
          GoogleCloudVisionV1p1beta1Paragraph
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Paragraph where
  toJSON GoogleCloudVisionV1p1beta1Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Position' smart constructor.
data GoogleCloudVisionV1p1beta1Position = GoogleCloudVisionV1p1beta1Position
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double),
    -- | Z coordinate (or depth).
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Position' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Position ::
  GoogleCloudVisionV1p1beta1Position
newGoogleCloudVisionV1p1beta1Position =
  GoogleCloudVisionV1p1beta1Position
    { x = Core.Nothing,
      y = Core.Nothing,
      z = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Position where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Position"
      ( \o ->
          GoogleCloudVisionV1p1beta1Position
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Position where
  toJSON GoogleCloudVisionV1p1beta1Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | A Product contains ReferenceImages.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Product' smart constructor.
data GoogleCloudVisionV1p1beta1Product = GoogleCloudVisionV1p1beta1Product
  { -- | User-provided metadata to be stored with this product. Must be at most 4096 characters long.
    description :: (Core.Maybe Core.Text),
    -- | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the product. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID@. This field is ignored when creating a product.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.
    productCategory :: (Core.Maybe Core.Text),
    -- | Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product/labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product/labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
    productLabels :: (Core.Maybe [GoogleCloudVisionV1p1beta1ProductKeyValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Product' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Product ::
  GoogleCloudVisionV1p1beta1Product
newGoogleCloudVisionV1p1beta1Product =
  GoogleCloudVisionV1p1beta1Product
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      productCategory = Core.Nothing,
      productLabels = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Product where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Product"
      ( \o ->
          GoogleCloudVisionV1p1beta1Product
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCategory")
            Core.<*> (o Core..:? "productLabels")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Product where
  toJSON GoogleCloudVisionV1p1beta1Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("productCategory" Core..=) Core.<$> productCategory,
            ("productLabels" Core..=) Core.<$> productLabels
          ]
      )

-- | A product label represented as a key-value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p1beta1ProductKeyValue = GoogleCloudVisionV1p1beta1ProductKeyValue
  { -- | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    key :: (Core.Maybe Core.Text),
    -- | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductKeyValue' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ProductKeyValue ::
  GoogleCloudVisionV1p1beta1ProductKeyValue
newGoogleCloudVisionV1p1beta1ProductKeyValue =
  GoogleCloudVisionV1p1beta1ProductKeyValue
    { key = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1ProductKeyValue where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ProductKeyValue"
      ( \o ->
          GoogleCloudVisionV1p1beta1ProductKeyValue
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1ProductKeyValue where
  toJSON GoogleCloudVisionV1p1beta1ProductKeyValue {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | Results for a product search request.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResults = GoogleCloudVisionV1p1beta1ProductSearchResults
  { -- | Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.
    indexTime :: (Core.Maybe Core.DateTime),
    -- | List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.
    productGroupedResults ::
      ( Core.Maybe
          [GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResults' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ProductSearchResults ::
  GoogleCloudVisionV1p1beta1ProductSearchResults
newGoogleCloudVisionV1p1beta1ProductSearchResults =
  GoogleCloudVisionV1p1beta1ProductSearchResults
    { indexTime =
        Core.Nothing,
      productGroupedResults = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1ProductSearchResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ProductSearchResults"
      ( \o ->
          GoogleCloudVisionV1p1beta1ProductSearchResults
            Core.<$> (o Core..:? "indexTime")
            Core.<*> (o Core..:? "productGroupedResults")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1ProductSearchResults where
  toJSON GoogleCloudVisionV1p1beta1ProductSearchResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexTime" Core..=) Core.<$> indexTime,
            ("productGroupedResults" Core..=) Core.<$> productGroupedResults,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Information about the products similar to a single product in a query image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult = GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
  { -- | The bounding polygon around the product detected in the query image.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | List of generic predictions for the object in the bounding box.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p1beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult ::
  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
newGoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
    { boundingPoly =
        Core.Nothing,
      objectAnnotations = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult"
      ( \o ->
          GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "objectAnnotations")
            Core.<*> (o Core..:? "results")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult
  where
  toJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsGroupedResult {..} =
      Core.object
        ( Core.catMaybes
            [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
              ("objectAnnotations" Core..=) Core.<$> objectAnnotations,
              ("results" Core..=) Core.<$> results
            ]
        )

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation = GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
  { -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation ::
  GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
newGoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
    { languageCode =
        Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation
  where
  toJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsObjectAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("languageCode" Core..=) Core.<$> languageCode,
              ("mid" Core..=) Core.<$> mid,
              ("name" Core..=) Core.<$> name,
              ("score" Core..=) Core.<$> score
            ]
        )

-- | Information about a product.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p1beta1ProductSearchResultsResult = GoogleCloudVisionV1p1beta1ProductSearchResultsResult
  { -- | The resource name of the image from the product that is the closest match to the query.
    image :: (Core.Maybe Core.Text),
    -- | The Product.
    product :: (Core.Maybe GoogleCloudVisionV1p1beta1Product),
    -- | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1ProductSearchResultsResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1ProductSearchResultsResult ::
  GoogleCloudVisionV1p1beta1ProductSearchResultsResult
newGoogleCloudVisionV1p1beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p1beta1ProductSearchResultsResult
    { image =
        Core.Nothing,
      product = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1ProductSearchResultsResult"
      ( \o ->
          GoogleCloudVisionV1p1beta1ProductSearchResultsResult
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1ProductSearchResultsResult
  where
  toJSON GoogleCloudVisionV1p1beta1ProductSearchResultsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("product" Core..=) Core.<$> product,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | A @Property@ consists of a user-supplied name\/value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Property' smart constructor.
data GoogleCloudVisionV1p1beta1Property = GoogleCloudVisionV1p1beta1Property
  { -- | Name of the property.
    name :: (Core.Maybe Core.Text),
    -- | Value of numeric properties.
    uint64Value :: (Core.Maybe Core.Word64),
    -- | Value of the property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Property' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Property ::
  GoogleCloudVisionV1p1beta1Property
newGoogleCloudVisionV1p1beta1Property =
  GoogleCloudVisionV1p1beta1Property
    { name = Core.Nothing,
      uint64Value = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Property where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Property"
      ( \o ->
          GoogleCloudVisionV1p1beta1Property
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "uint64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Property where
  toJSON GoogleCloudVisionV1p1beta1Property {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("uint64Value" Core..=) Core.. Core.AsText Core.<$> uint64Value,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1SafeSearchAnnotation = GoogleCloudVisionV1p1beta1SafeSearchAnnotation
  { -- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
    adult :: (Core.Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult),
    -- | Likelihood that this is a medical image.
    medical :: (Core.Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical),
    -- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
    racy :: (Core.Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy),
    -- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
    spoof :: (Core.Maybe GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof),
    -- | Likelihood that this image contains violent content. Violent content may include death, serious harm, or injury to individuals or groups of individuals.
    violence ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1SafeSearchAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1SafeSearchAnnotation ::
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation
newGoogleCloudVisionV1p1beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation
    { adult =
        Core.Nothing,
      medical = Core.Nothing,
      racy = Core.Nothing,
      spoof = Core.Nothing,
      violence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1SafeSearchAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1SafeSearchAnnotation
            Core.<$> (o Core..:? "adult")
            Core.<*> (o Core..:? "medical")
            Core.<*> (o Core..:? "racy")
            Core.<*> (o Core..:? "spoof")
            Core.<*> (o Core..:? "violence")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1SafeSearchAnnotation where
  toJSON GoogleCloudVisionV1p1beta1SafeSearchAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("adult" Core..=) Core.<$> adult,
            ("medical" Core..=) Core.<$> medical,
            ("racy" Core..=) Core.<$> racy,
            ("spoof" Core..=) Core.<$> spoof,
            ("violence" Core..=) Core.<$> violence
          ]
      )

-- | A single symbol representation.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Symbol' smart constructor.
data GoogleCloudVisionV1p1beta1Symbol = GoogleCloudVisionV1p1beta1Symbol
  { -- | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Confidence of the OCR results for the symbol. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the symbol.
    property :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty),
    -- | The actual UTF-8 representation of the symbol.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Symbol' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Symbol ::
  GoogleCloudVisionV1p1beta1Symbol
newGoogleCloudVisionV1p1beta1Symbol =
  GoogleCloudVisionV1p1beta1Symbol
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Symbol where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Symbol"
      ( \o ->
          GoogleCloudVisionV1p1beta1Symbol
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Symbol where
  toJSON GoogleCloudVisionV1p1beta1Symbol {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotation = GoogleCloudVisionV1p1beta1TextAnnotation
  { -- | List of pages detected by OCR.
    pages :: (Core.Maybe [GoogleCloudVisionV1p1beta1Page]),
    -- | UTF-8 text detected on the pages.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1TextAnnotation ::
  GoogleCloudVisionV1p1beta1TextAnnotation
newGoogleCloudVisionV1p1beta1TextAnnotation =
  GoogleCloudVisionV1p1beta1TextAnnotation
    { pages = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1TextAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1TextAnnotation"
      ( \o ->
          GoogleCloudVisionV1p1beta1TextAnnotation
            Core.<$> (o Core..:? "pages")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1TextAnnotation where
  toJSON GoogleCloudVisionV1p1beta1TextAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [("pages" Core..=) Core.<$> pages, ("text" Core..=) Core.<$> text]
      )

-- | Detected start or end of a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
  { -- | True if break prepends the element.
    isPrefix :: (Core.Maybe Core.Bool),
    -- | Detected break type.
    type' ::
      ( Core.Maybe
          GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak ::
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
newGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
    { isPrefix =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak"
      ( \o ->
          GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
            Core.<$> (o Core..:? "isPrefix")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak
  where
  toJSON GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("isPrefix" Core..=) Core.<$> isPrefix,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detected language for a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage = GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
  { -- | Confidence of detected language. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage ::
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
newGoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
    { confidence =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage"
      ( \o ->
          GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage
  where
  toJSON GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Additional information detected on the structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p1beta1TextAnnotationTextProperty = GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
  { -- | Detected start or end of a text segment.
    detectedBreak :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak),
    -- | A list of detected languages together with confidence.
    detectedLanguages ::
      ( Core.Maybe
          [GoogleCloudVisionV1p1beta1TextAnnotationDetectedLanguage]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1TextAnnotationTextProperty ::
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
newGoogleCloudVisionV1p1beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
    { detectedBreak =
        Core.Nothing,
      detectedLanguages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1TextAnnotationTextProperty"
      ( \o ->
          GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
            Core.<$> (o Core..:? "detectedBreak")
            Core.<*> (o Core..:? "detectedLanguages")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1TextAnnotationTextProperty
  where
  toJSON GoogleCloudVisionV1p1beta1TextAnnotationTextProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedBreak" Core..=) Core.<$> detectedBreak,
            ("detectedLanguages" Core..=) Core.<$> detectedLanguages
          ]
      )

-- | A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Vertex' smart constructor.
data GoogleCloudVisionV1p1beta1Vertex = GoogleCloudVisionV1p1beta1Vertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Int32),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Vertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Vertex ::
  GoogleCloudVisionV1p1beta1Vertex
newGoogleCloudVisionV1p1beta1Vertex =
  GoogleCloudVisionV1p1beta1Vertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Vertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Vertex"
      ( \o ->
          GoogleCloudVisionV1p1beta1Vertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Vertex where
  toJSON GoogleCloudVisionV1p1beta1Vertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetection = GoogleCloudVisionV1p1beta1WebDetection
  { -- | The service\'s best guess as to the topic of the request image. Inferred from similar images on the open web.
    bestGuessLabels :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebLabel]),
    -- | Fully matching images from the Internet. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage]),
    -- | Web pages containing the matching images from the Internet.
    pagesWithMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebPage]),
    -- | Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage]),
    -- | The visually similar image results.
    visuallySimilarImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage]),
    -- | Deduced entities from similar images on the Internet.
    webEntities :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebEntity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetection' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1WebDetection ::
  GoogleCloudVisionV1p1beta1WebDetection
newGoogleCloudVisionV1p1beta1WebDetection =
  GoogleCloudVisionV1p1beta1WebDetection
    { bestGuessLabels =
        Core.Nothing,
      fullMatchingImages = Core.Nothing,
      pagesWithMatchingImages = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      visuallySimilarImages = Core.Nothing,
      webEntities = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1WebDetection where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1WebDetection"
      ( \o ->
          GoogleCloudVisionV1p1beta1WebDetection
            Core.<$> (o Core..:? "bestGuessLabels")
            Core.<*> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pagesWithMatchingImages")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "visuallySimilarImages")
            Core.<*> (o Core..:? "webEntities")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1WebDetection where
  toJSON GoogleCloudVisionV1p1beta1WebDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestGuessLabels" Core..=) Core.<$> bestGuessLabels,
            ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pagesWithMatchingImages" Core..=)
              Core.<$> pagesWithMatchingImages,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("visuallySimilarImages" Core..=) Core.<$> visuallySimilarImages,
            ("webEntities" Core..=) Core.<$> webEntities
          ]
      )

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebEntity = GoogleCloudVisionV1p1beta1WebDetectionWebEntity
  { -- | Canonical description of the entity, in English.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID.
    entityId :: (Core.Maybe Core.Text),
    -- | Overall relevancy score for the entity. Not normalized and not comparable across different image queries.
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebEntity' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1WebDetectionWebEntity ::
  GoogleCloudVisionV1p1beta1WebDetectionWebEntity
newGoogleCloudVisionV1p1beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p1beta1WebDetectionWebEntity
    { description =
        Core.Nothing,
      entityId = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1WebDetectionWebEntity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1WebDetectionWebEntity"
      ( \o ->
          GoogleCloudVisionV1p1beta1WebDetectionWebEntity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p1beta1WebDetectionWebEntity
  where
  toJSON GoogleCloudVisionV1p1beta1WebDetectionWebEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Metadata for online images.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebImage = GoogleCloudVisionV1p1beta1WebDetectionWebImage
  { -- | (Deprecated) Overall relevancy score for the image.
    score :: (Core.Maybe Core.Double),
    -- | The result image URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1WebDetectionWebImage ::
  GoogleCloudVisionV1p1beta1WebDetectionWebImage
newGoogleCloudVisionV1p1beta1WebDetectionWebImage =
  GoogleCloudVisionV1p1beta1WebDetectionWebImage
    { score =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1WebDetectionWebImage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1WebDetectionWebImage"
      ( \o ->
          GoogleCloudVisionV1p1beta1WebDetectionWebImage
            Core.<$> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1WebDetectionWebImage where
  toJSON GoogleCloudVisionV1p1beta1WebDetectionWebImage {..} =
    Core.object
      ( Core.catMaybes
          [("score" Core..=) Core.<$> score, ("url" Core..=) Core.<$> url]
      )

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebLabel = GoogleCloudVisionV1p1beta1WebDetectionWebLabel
  { -- | Label for extra metadata.
    label :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for @label@, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebLabel' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1WebDetectionWebLabel ::
  GoogleCloudVisionV1p1beta1WebDetectionWebLabel
newGoogleCloudVisionV1p1beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p1beta1WebDetectionWebLabel
    { label =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1WebDetectionWebLabel
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1WebDetectionWebLabel"
      ( \o ->
          GoogleCloudVisionV1p1beta1WebDetectionWebLabel
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1WebDetectionWebLabel where
  toJSON GoogleCloudVisionV1p1beta1WebDetectionWebLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Metadata for web pages.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p1beta1WebDetectionWebPage = GoogleCloudVisionV1p1beta1WebDetectionWebPage
  { -- | Fully matching images on the page. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage]),
    -- | Title for the web page, may contain HTML markups.
    pageTitle :: (Core.Maybe Core.Text),
    -- | Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p1beta1WebDetectionWebImage]),
    -- | (Deprecated) Overall relevancy score for the web page.
    score :: (Core.Maybe Core.Double),
    -- | The result web page URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1WebDetectionWebPage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1WebDetectionWebPage ::
  GoogleCloudVisionV1p1beta1WebDetectionWebPage
newGoogleCloudVisionV1p1beta1WebDetectionWebPage =
  GoogleCloudVisionV1p1beta1WebDetectionWebPage
    { fullMatchingImages =
        Core.Nothing,
      pageTitle = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      score = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p1beta1WebDetectionWebPage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1WebDetectionWebPage"
      ( \o ->
          GoogleCloudVisionV1p1beta1WebDetectionWebPage
            Core.<$> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pageTitle")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1WebDetectionWebPage where
  toJSON GoogleCloudVisionV1p1beta1WebDetectionWebPage {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pageTitle" Core..=) Core.<$> pageTitle,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("score" Core..=) Core.<$> score,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A word representation.
--
-- /See:/ 'newGoogleCloudVisionV1p1beta1Word' smart constructor.
data GoogleCloudVisionV1p1beta1Word = GoogleCloudVisionV1p1beta1Word
  { -- | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p1beta1BoundingPoly),
    -- | Confidence of the OCR results for the word. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the word.
    property :: (Core.Maybe GoogleCloudVisionV1p1beta1TextAnnotationTextProperty),
    -- | List of symbols in the word. The order of the symbols follows the natural reading order.
    symbols :: (Core.Maybe [GoogleCloudVisionV1p1beta1Symbol])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p1beta1Word' with the minimum fields required to make a request.
newGoogleCloudVisionV1p1beta1Word ::
  GoogleCloudVisionV1p1beta1Word
newGoogleCloudVisionV1p1beta1Word =
  GoogleCloudVisionV1p1beta1Word
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      symbols = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p1beta1Word where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p1beta1Word"
      ( \o ->
          GoogleCloudVisionV1p1beta1Word
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "symbols")
      )

instance Core.ToJSON GoogleCloudVisionV1p1beta1Word where
  toJSON GoogleCloudVisionV1p1beta1Word {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("symbols" Core..=) Core.<$> symbols
          ]
      )

-- | A request to annotate one single file, e.g. a PDF, TIFF or GIF file.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AnnotateFileRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateFileRequest = GoogleCloudVisionV1p2beta1AnnotateFileRequest
  { -- | Required. Requested features.
    features :: (Core.Maybe [GoogleCloudVisionV1p2beta1Feature]),
    -- | Additional context that may accompany the image(s) in the file.
    imageContext :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageContext),
    -- | Required. Information about the input file.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1InputConfig),
    -- | Pages of the file to perform image annotation. Pages starts from 1, we assume the first page of the file is page 1. At most 5 pages are supported per request. Pages can be negative. Page 1 means the first page. Page 2 means the second page. Page -1 means the last page. Page -2 means the second to the last page. If the file is GIF instead of PDF or TIFF, page refers to GIF frames. If this field is empty, by default the service performs image annotation for the first 5 pages of the file.
    pages :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateFileRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AnnotateFileRequest ::
  GoogleCloudVisionV1p2beta1AnnotateFileRequest
newGoogleCloudVisionV1p2beta1AnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AnnotateFileRequest
    { features =
        Core.Nothing,
      imageContext = Core.Nothing,
      inputConfig = Core.Nothing,
      pages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AnnotateFileRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AnnotateFileRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1AnnotateFileRequest
            Core.<$> (o Core..:? "features")
            Core.<*> (o Core..:? "imageContext")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "pages")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1AnnotateFileRequest where
  toJSON GoogleCloudVisionV1p2beta1AnnotateFileRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("features" Core..=) Core.<$> features,
            ("imageContext" Core..=) Core.<$> imageContext,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("pages" Core..=) Core.<$> pages
          ]
      )

-- | Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateFileResponse = GoogleCloudVisionV1p2beta1AnnotateFileResponse
  { -- | If set, represents the error message for the failed request. The @responses@ field will not be set in this case.
    error :: (Core.Maybe Status),
    -- | Information about the file for which this response is generated.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1InputConfig),
    -- | Individual responses to images found within the file. This field will be empty if the @error@ field is set.
    responses :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateImageResponse]),
    -- | This field gives the total number of pages in the file.
    totalPages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AnnotateFileResponse ::
  GoogleCloudVisionV1p2beta1AnnotateFileResponse
newGoogleCloudVisionV1p2beta1AnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AnnotateFileResponse
    { error =
        Core.Nothing,
      inputConfig = Core.Nothing,
      responses = Core.Nothing,
      totalPages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1AnnotateFileResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "responses")
            Core.<*> (o Core..:? "totalPages")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1AnnotateFileResponse where
  toJSON GoogleCloudVisionV1p2beta1AnnotateFileResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("responses" Core..=) Core.<$> responses,
            ("totalPages" Core..=) Core.<$> totalPages
          ]
      )

-- | Request for performing Google Cloud Vision API tasks over a user-provided image, with user-requested features, and with context information.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AnnotateImageRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateImageRequest = GoogleCloudVisionV1p2beta1AnnotateImageRequest
  { -- | Requested features.
    features :: (Core.Maybe [GoogleCloudVisionV1p2beta1Feature]),
    -- | The image to be processed.
    image :: (Core.Maybe GoogleCloudVisionV1p2beta1Image),
    -- | Additional context that may accompany the image.
    imageContext :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateImageRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AnnotateImageRequest ::
  GoogleCloudVisionV1p2beta1AnnotateImageRequest
newGoogleCloudVisionV1p2beta1AnnotateImageRequest =
  GoogleCloudVisionV1p2beta1AnnotateImageRequest
    { features =
        Core.Nothing,
      image = Core.Nothing,
      imageContext = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AnnotateImageRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AnnotateImageRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1AnnotateImageRequest
            Core.<$> (o Core..:? "features")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "imageContext")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1AnnotateImageRequest where
  toJSON GoogleCloudVisionV1p2beta1AnnotateImageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("features" Core..=) Core.<$> features,
            ("image" Core..=) Core.<$> image,
            ("imageContext" Core..=) Core.<$> imageContext
          ]
      )

-- | Response to an image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p2beta1AnnotateImageResponse = GoogleCloudVisionV1p2beta1AnnotateImageResponse
  { -- | If present, contextual information is needed to understand where this image comes from.
    context :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageAnnotationContext),
    -- | If present, crop hints have completed successfully.
    cropHintsAnnotation :: (Core.Maybe GoogleCloudVisionV1p2beta1CropHintsAnnotation),
    -- | If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when @error@ is set.
    error :: (Core.Maybe Status),
    -- | If present, face detection has completed successfully.
    faceAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1FaceAnnotation]),
    -- | If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.
    fullTextAnnotation :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotation),
    -- | If present, image properties were extracted successfully.
    imagePropertiesAnnotation :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageProperties),
    -- | If present, label detection has completed successfully.
    labelAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation]),
    -- | If present, landmark detection has completed successfully.
    landmarkAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation]),
    -- | If present, localized object detection has completed successfully. This will be sorted descending by confidence score.
    localizedObjectAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation]),
    -- | If present, logo detection has completed successfully.
    logoAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation]),
    -- | If present, product search has completed successfully.
    productSearchResults :: (Core.Maybe GoogleCloudVisionV1p2beta1ProductSearchResults),
    -- | If present, safe-search annotation has completed successfully.
    safeSearchAnnotation :: (Core.Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation),
    -- | If present, text (OCR) detection has completed successfully.
    textAnnotations :: (Core.Maybe [GoogleCloudVisionV1p2beta1EntityAnnotation]),
    -- | If present, web detection has completed successfully.
    webDetection :: (Core.Maybe GoogleCloudVisionV1p2beta1WebDetection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AnnotateImageResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AnnotateImageResponse ::
  GoogleCloudVisionV1p2beta1AnnotateImageResponse
newGoogleCloudVisionV1p2beta1AnnotateImageResponse =
  GoogleCloudVisionV1p2beta1AnnotateImageResponse
    { context =
        Core.Nothing,
      cropHintsAnnotation = Core.Nothing,
      error = Core.Nothing,
      faceAnnotations = Core.Nothing,
      fullTextAnnotation = Core.Nothing,
      imagePropertiesAnnotation = Core.Nothing,
      labelAnnotations = Core.Nothing,
      landmarkAnnotations = Core.Nothing,
      localizedObjectAnnotations = Core.Nothing,
      logoAnnotations = Core.Nothing,
      productSearchResults = Core.Nothing,
      safeSearchAnnotation = Core.Nothing,
      textAnnotations = Core.Nothing,
      webDetection = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AnnotateImageResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AnnotateImageResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1AnnotateImageResponse
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cropHintsAnnotation")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "faceAnnotations")
            Core.<*> (o Core..:? "fullTextAnnotation")
            Core.<*> (o Core..:? "imagePropertiesAnnotation")
            Core.<*> (o Core..:? "labelAnnotations")
            Core.<*> (o Core..:? "landmarkAnnotations")
            Core.<*> (o Core..:? "localizedObjectAnnotations")
            Core.<*> (o Core..:? "logoAnnotations")
            Core.<*> (o Core..:? "productSearchResults")
            Core.<*> (o Core..:? "safeSearchAnnotation")
            Core.<*> (o Core..:? "textAnnotations")
            Core.<*> (o Core..:? "webDetection")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AnnotateImageResponse
  where
  toJSON GoogleCloudVisionV1p2beta1AnnotateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cropHintsAnnotation" Core..=) Core.<$> cropHintsAnnotation,
            ("error" Core..=) Core.<$> error,
            ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
            ("fullTextAnnotation" Core..=) Core.<$> fullTextAnnotation,
            ("imagePropertiesAnnotation" Core..=)
              Core.<$> imagePropertiesAnnotation,
            ("labelAnnotations" Core..=) Core.<$> labelAnnotations,
            ("landmarkAnnotations" Core..=) Core.<$> landmarkAnnotations,
            ("localizedObjectAnnotations" Core..=)
              Core.<$> localizedObjectAnnotations,
            ("logoAnnotations" Core..=) Core.<$> logoAnnotations,
            ("productSearchResults" Core..=) Core.<$> productSearchResults,
            ("safeSearchAnnotation" Core..=) Core.<$> safeSearchAnnotation,
            ("textAnnotations" Core..=) Core.<$> textAnnotations,
            ("webDetection" Core..=) Core.<$> webDetection
          ]
      )

-- | An offline file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest = GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
  { -- | Required. Requested features.
    features :: (Core.Maybe [GoogleCloudVisionV1p2beta1Feature]),
    -- | Additional context that may accompany the image(s) in the file.
    imageContext :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageContext),
    -- | Required. Information about the input file.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1InputConfig),
    -- | Required. The desired output location and metadata (e.g. format).
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest ::
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
newGoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
    { features =
        Core.Nothing,
      imageContext = Core.Nothing,
      inputConfig = Core.Nothing,
      outputConfig = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
            Core.<$> (o Core..:? "features")
            Core.<*> (o Core..:? "imageContext")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest
  where
  toJSON GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("features" Core..=) Core.<$> features,
            ("imageContext" Core..=) Core.<$> imageContext,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("outputConfig" Core..=) Core.<$> outputConfig
          ]
      )

-- | The response for a single offline file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse = GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
  { -- | The output location and metadata from AsyncAnnotateFileRequest.
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse ::
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
newGoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
    { outputConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse
  where
  toJSON GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Multiple async file annotation requests are batched into a single service call.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest = GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
  { -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
    labels ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
      ),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Individual async file annotation requests for this batch.
    requests :: (Core.Maybe [GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest ::
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    { labels =
        Core.Nothing,
      parent = Core.Nothing,
      requests = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "requests")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
  where
  toJSON GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("parent" Core..=) Core.<$> parent,
            ("requests" Core..=) Core.<$> requests
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels = GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
  additional =
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels
  where
  toJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest_Labels {..} =
      Core.toJSON additional

-- | Response to an async batch file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse = GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
  { -- | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p2beta1AsyncAnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse
  where
  toJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesResponse {..} =
      Core.object
        (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Request for async image annotation for a list of images.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest = GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
  { -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
    labels ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
      ),
    -- | Required. The desired output location and metadata (e.g. format).
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p2beta1OutputConfig),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Individual image annotation requests for this batch.
    requests :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateImageRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest ::
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    { labels =
        Core.Nothing,
      outputConfig = Core.Nothing,
      parent = Core.Nothing,
      requests = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "outputConfig")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "requests")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
  where
  toJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("labels" Core..=) Core.<$> labels,
              ("outputConfig" Core..=) Core.<$> outputConfig,
              ("parent" Core..=) Core.<$> parent,
              ("requests" Core..=) Core.<$> requests
            ]
        )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels' smart constructor.
newtype GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels = GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
newGoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
  additional =
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels"
      ( \o ->
          GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels
  where
  toJSON
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest_Labels {..} =
      Core.toJSON additional

-- | A list of requests to annotate files using the BatchAnnotateFiles API.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest = GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
  { -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
    labels ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
      ),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. The list of file annotation requests. Right now we support only one AnnotateFileRequest in BatchAnnotateFilesRequest.
    requests :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateFileRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest ::
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    { labels =
        Core.Nothing,
      parent = Core.Nothing,
      requests = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "requests")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
  where
  toJSON GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("parent" Core..=) Core.<$> parent,
            ("requests" Core..=) Core.<$> requests
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels = GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
  additional =
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels
  where
  toJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest_Labels {..} =
      Core.toJSON additional

-- | A list of file annotation responses.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse = GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
  { -- | The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
newGoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
  where
  toJSON GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Multiple image annotation requests are batched into a single service call.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest' smart constructor.
data GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest = GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
  { -- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
    labels ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
      ),
    -- | Optional. Target project and location to make a call. Format: @projects\/{project-id}\/locations\/{location-id}@. If no parent is specified, a region will be chosen automatically. Supported location-ids: @us@: USA country only, @asia@: East asia areas, like Japan, Taiwan, @eu@: The European Union. Example: @projects\/project-A\/locations\/eu@.
    parent :: (Core.Maybe Core.Text),
    -- | Required. Individual image annotation requests for this batch.
    requests :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateImageRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest ::
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    { labels =
        Core.Nothing,
      parent = Core.Nothing,
      requests = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "requests")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
  where
  toJSON GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("parent" Core..=) Core.<$> parent,
            ("requests" Core..=) Core.<$> requests
          ]
      )

-- | Optional. The labels with user-defined metadata for the request. Label keys and values can be no longer than 63 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels = GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
  additional =
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
      { additional =
          additional
      }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels
  where
  toJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest_Labels {..} =
      Core.toJSON additional

-- | Response to a batch image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse' smart constructor.
newtype GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse = GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
  { -- | Individual responses to image annotation requests within the batch.
    responses :: (Core.Maybe [GoogleCloudVisionV1p2beta1AnnotateImageResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse ::
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
newGoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse =
  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse"
      ( \o ->
          GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
  where
  toJSON GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Logical element on the page.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Block' smart constructor.
data GoogleCloudVisionV1p2beta1Block = GoogleCloudVisionV1p2beta1Block
  { -- | Detected block type (text, image etc) for this block.
    blockType :: (Core.Maybe GoogleCloudVisionV1p2beta1Block_BlockType),
    -- | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Confidence of the OCR results on the block. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | List of paragraphs in this block (if this blocks is of type text).
    paragraphs :: (Core.Maybe [GoogleCloudVisionV1p2beta1Paragraph]),
    -- | Additional information detected for the block.
    property :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Block' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Block ::
  GoogleCloudVisionV1p2beta1Block
newGoogleCloudVisionV1p2beta1Block =
  GoogleCloudVisionV1p2beta1Block
    { blockType = Core.Nothing,
      boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      paragraphs = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Block where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Block"
      ( \o ->
          GoogleCloudVisionV1p2beta1Block
            Core.<$> (o Core..:? "blockType")
            Core.<*> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Block where
  toJSON GoogleCloudVisionV1p2beta1Block {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockType" Core..=) Core.<$> blockType,
            ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("paragraphs" Core..=) Core.<$> paragraphs,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p2beta1BoundingPoly = GoogleCloudVisionV1p2beta1BoundingPoly
  { -- | The bounding polygon normalized vertices.
    normalizedVertices :: (Core.Maybe [GoogleCloudVisionV1p2beta1NormalizedVertex]),
    -- | The bounding polygon vertices.
    vertices :: (Core.Maybe [GoogleCloudVisionV1p2beta1Vertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1BoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1BoundingPoly ::
  GoogleCloudVisionV1p2beta1BoundingPoly
newGoogleCloudVisionV1p2beta1BoundingPoly =
  GoogleCloudVisionV1p2beta1BoundingPoly
    { normalizedVertices =
        Core.Nothing,
      vertices = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1BoundingPoly where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1BoundingPoly"
      ( \o ->
          GoogleCloudVisionV1p2beta1BoundingPoly
            Core.<$> (o Core..:? "normalizedVertices")
            Core.<*> (o Core..:? "vertices")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1BoundingPoly where
  toJSON GoogleCloudVisionV1p2beta1BoundingPoly {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedVertices" Core..=) Core.<$> normalizedVertices,
            ("vertices" Core..=) Core.<$> vertices
          ]
      )

-- | Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p2beta1ColorInfo = GoogleCloudVisionV1p2beta1ColorInfo
  { -- | RGB components of the color.
    color :: (Core.Maybe Color),
    -- | The fraction of pixels the color occupies in the image. Value in range [0, 1].
    pixelFraction :: (Core.Maybe Core.Double),
    -- | Image-specific score for this color. Value in range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ColorInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ColorInfo ::
  GoogleCloudVisionV1p2beta1ColorInfo
newGoogleCloudVisionV1p2beta1ColorInfo =
  GoogleCloudVisionV1p2beta1ColorInfo
    { color = Core.Nothing,
      pixelFraction = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1ColorInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ColorInfo"
      ( \o ->
          GoogleCloudVisionV1p2beta1ColorInfo
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "pixelFraction")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ColorInfo where
  toJSON GoogleCloudVisionV1p2beta1ColorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("pixelFraction" Core..=) Core.<$> pixelFraction,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Single crop hint that is used to generate a new crop when serving an image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1CropHint' smart constructor.
data GoogleCloudVisionV1p2beta1CropHint = GoogleCloudVisionV1p2beta1CropHint
  { -- | The bounding polygon for the crop region. The coordinates of the bounding box are in the original image\'s scale.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Confidence of this being a salient region. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Fraction of importance of this salient region with respect to the original image.
    importanceFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHint' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1CropHint ::
  GoogleCloudVisionV1p2beta1CropHint
newGoogleCloudVisionV1p2beta1CropHint =
  GoogleCloudVisionV1p2beta1CropHint
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      importanceFraction = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1CropHint where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1CropHint"
      ( \o ->
          GoogleCloudVisionV1p2beta1CropHint
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "importanceFraction")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1CropHint where
  toJSON GoogleCloudVisionV1p2beta1CropHint {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("importanceFraction" Core..=) Core.<$> importanceFraction
          ]
      )

-- | Set of crop hints that are used to generate new crops when serving images.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p2beta1CropHintsAnnotation = GoogleCloudVisionV1p2beta1CropHintsAnnotation
  { -- | Crop hint results.
    cropHints :: (Core.Maybe [GoogleCloudVisionV1p2beta1CropHint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHintsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1CropHintsAnnotation ::
  GoogleCloudVisionV1p2beta1CropHintsAnnotation
newGoogleCloudVisionV1p2beta1CropHintsAnnotation =
  GoogleCloudVisionV1p2beta1CropHintsAnnotation
    { cropHints =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1CropHintsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1CropHintsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1CropHintsAnnotation
            Core.<$> (o Core..:? "cropHints")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1CropHintsAnnotation where
  toJSON GoogleCloudVisionV1p2beta1CropHintsAnnotation {..} =
    Core.object
      (Core.catMaybes [("cropHints" Core..=) Core.<$> cropHints])

-- | Parameters for crop hints annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1CropHintsParams' smart constructor.
newtype GoogleCloudVisionV1p2beta1CropHintsParams = GoogleCloudVisionV1p2beta1CropHintsParams
  { -- | Aspect ratios in floats, representing the ratio of the width to the height of the image. For example, if the desired aspect ratio is 4\/3, the corresponding float value should be 1.33333. If not specified, the best possible crop is returned. The number of provided aspect ratios is limited to a maximum of 16; any aspect ratios provided after the 16th are ignored.
    aspectRatios :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1CropHintsParams' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1CropHintsParams ::
  GoogleCloudVisionV1p2beta1CropHintsParams
newGoogleCloudVisionV1p2beta1CropHintsParams =
  GoogleCloudVisionV1p2beta1CropHintsParams
    { aspectRatios =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1CropHintsParams where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1CropHintsParams"
      ( \o ->
          GoogleCloudVisionV1p2beta1CropHintsParams
            Core.<$> (o Core..:? "aspectRatios")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1CropHintsParams where
  toJSON GoogleCloudVisionV1p2beta1CropHintsParams {..} =
    Core.object
      (Core.catMaybes [("aspectRatios" Core..=) Core.<$> aspectRatios])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p2beta1DominantColorsAnnotation = GoogleCloudVisionV1p2beta1DominantColorsAnnotation
  { -- | RGB color values with their score and pixel fraction.
    colors :: (Core.Maybe [GoogleCloudVisionV1p2beta1ColorInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1DominantColorsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1DominantColorsAnnotation ::
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation
newGoogleCloudVisionV1p2beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation
    { colors =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1DominantColorsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1DominantColorsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1DominantColorsAnnotation
            Core.<$> (o Core..:? "colors")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1DominantColorsAnnotation
  where
  toJSON GoogleCloudVisionV1p2beta1DominantColorsAnnotation {..} =
    Core.object (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | Set of detected entity features.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1EntityAnnotation = GoogleCloudVisionV1p2beta1EntityAnnotation
  { -- | Image region to which this entity belongs. Not produced for @LABEL_DETECTION@ features.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | __Deprecated. Use @score@ instead.__ The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Entity textual description, expressed in its @locale@ language.
    description :: (Core.Maybe Core.Text),
    -- | The language code for the locale in which the entity textual @description@ is expressed.
    locale :: (Core.Maybe Core.Text),
    -- | The location information for the detected entity. Multiple @LocationInfo@ elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.
    locations :: (Core.Maybe [GoogleCloudVisionV1p2beta1LocationInfo]),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    mid :: (Core.Maybe Core.Text),
    -- | Some entities may have optional user-supplied @Property@ (name\/value) fields, such a score or string that qualifies the entity.
    properties :: (Core.Maybe [GoogleCloudVisionV1p2beta1Property]),
    -- | Overall score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double),
    -- | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].
    topicality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1EntityAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1EntityAnnotation ::
  GoogleCloudVisionV1p2beta1EntityAnnotation
newGoogleCloudVisionV1p2beta1EntityAnnotation =
  GoogleCloudVisionV1p2beta1EntityAnnotation
    { boundingPoly =
        Core.Nothing,
      confidence = Core.Nothing,
      description = Core.Nothing,
      locale = Core.Nothing,
      locations = Core.Nothing,
      mid = Core.Nothing,
      properties = Core.Nothing,
      score = Core.Nothing,
      topicality = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1EntityAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1EntityAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1EntityAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "topicality")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1EntityAnnotation where
  toJSON GoogleCloudVisionV1p2beta1EntityAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("description" Core..=) Core.<$> description,
            ("locale" Core..=) Core.<$> locale,
            ("locations" Core..=) Core.<$> locations,
            ("mid" Core..=) Core.<$> mid,
            ("properties" Core..=) Core.<$> properties,
            ("score" Core..=) Core.<$> score,
            ("topicality" Core..=) Core.<$> topicality
          ]
      )

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1FaceAnnotation = GoogleCloudVisionV1p2beta1FaceAnnotation
  { -- | Anger likelihood.
    angerLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
      ),
    -- | Blurred likelihood.
    blurredLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
      ),
    -- | The bounding polygon around the face. The coordinates of the bounding box are in the original image\'s scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and\/or y coordinates may not be generated in the @BoundingPoly@ (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Detection confidence. Range [0, 1].
    detectionConfidence :: (Core.Maybe Core.Double),
    -- | The @fd_bounding_poly@ bounding polygon is tighter than the @boundingPoly@, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
    fdBoundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Headwear likelihood.
    headwearLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
      ),
    -- | Joy likelihood.
    joyLikelihood :: (Core.Maybe GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood),
    -- | Face landmarking confidence. Range [0, 1].
    landmarkingConfidence :: (Core.Maybe Core.Double),
    -- | Detected face landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVisionV1p2beta1FaceAnnotationLandmark]),
    -- | Yaw angle, which indicates the leftward\/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
    panAngle :: (Core.Maybe Core.Double),
    -- | Roll angle, which indicates the amount of clockwise\/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
    rollAngle :: (Core.Maybe Core.Double),
    -- | Sorrow likelihood.
    sorrowLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
      ),
    -- | Surprise likelihood.
    surpriseLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
      ),
    -- | Pitch angle, which indicates the upwards\/downwards angle that the face is pointing relative to the image\'s horizontal plane. Range [-180,180].
    tiltAngle :: (Core.Maybe Core.Double),
    -- | Under-exposed likelihood.
    underExposedLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1FaceAnnotation ::
  GoogleCloudVisionV1p2beta1FaceAnnotation
newGoogleCloudVisionV1p2beta1FaceAnnotation =
  GoogleCloudVisionV1p2beta1FaceAnnotation
    { angerLikelihood =
        Core.Nothing,
      blurredLikelihood = Core.Nothing,
      boundingPoly = Core.Nothing,
      detectionConfidence = Core.Nothing,
      fdBoundingPoly = Core.Nothing,
      headwearLikelihood = Core.Nothing,
      joyLikelihood = Core.Nothing,
      landmarkingConfidence = Core.Nothing,
      landmarks = Core.Nothing,
      panAngle = Core.Nothing,
      rollAngle = Core.Nothing,
      sorrowLikelihood = Core.Nothing,
      surpriseLikelihood = Core.Nothing,
      tiltAngle = Core.Nothing,
      underExposedLikelihood = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1FaceAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1FaceAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1FaceAnnotation
            Core.<$> (o Core..:? "angerLikelihood")
            Core.<*> (o Core..:? "blurredLikelihood")
            Core.<*> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "detectionConfidence")
            Core.<*> (o Core..:? "fdBoundingPoly")
            Core.<*> (o Core..:? "headwearLikelihood")
            Core.<*> (o Core..:? "joyLikelihood")
            Core.<*> (o Core..:? "landmarkingConfidence")
            Core.<*> (o Core..:? "landmarks")
            Core.<*> (o Core..:? "panAngle")
            Core.<*> (o Core..:? "rollAngle")
            Core.<*> (o Core..:? "sorrowLikelihood")
            Core.<*> (o Core..:? "surpriseLikelihood")
            Core.<*> (o Core..:? "tiltAngle")
            Core.<*> (o Core..:? "underExposedLikelihood")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1FaceAnnotation where
  toJSON GoogleCloudVisionV1p2beta1FaceAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angerLikelihood" Core..=) Core.<$> angerLikelihood,
            ("blurredLikelihood" Core..=) Core.<$> blurredLikelihood,
            ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("detectionConfidence" Core..=) Core.<$> detectionConfidence,
            ("fdBoundingPoly" Core..=) Core.<$> fdBoundingPoly,
            ("headwearLikelihood" Core..=) Core.<$> headwearLikelihood,
            ("joyLikelihood" Core..=) Core.<$> joyLikelihood,
            ("landmarkingConfidence" Core..=) Core.<$> landmarkingConfidence,
            ("landmarks" Core..=) Core.<$> landmarks,
            ("panAngle" Core..=) Core.<$> panAngle,
            ("rollAngle" Core..=) Core.<$> rollAngle,
            ("sorrowLikelihood" Core..=) Core.<$> sorrowLikelihood,
            ("surpriseLikelihood" Core..=) Core.<$> surpriseLikelihood,
            ("tiltAngle" Core..=) Core.<$> tiltAngle,
            ("underExposedLikelihood" Core..=)
              Core.<$> underExposedLikelihood
          ]
      )

-- | A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that @0 \<= x \< width@ or @0 \<= y \< height@.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p2beta1FaceAnnotationLandmark = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
  { -- | Face landmark position.
    position :: (Core.Maybe GoogleCloudVisionV1p2beta1Position),
    -- | Face landmark type.
    type' :: (Core.Maybe GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1FaceAnnotationLandmark ::
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
newGoogleCloudVisionV1p2beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
    { position =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1FaceAnnotationLandmark"
      ( \o ->
          GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark
  where
  toJSON GoogleCloudVisionV1p2beta1FaceAnnotationLandmark {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The type of Google Cloud Vision API detection to perform, and the maximum number of results to return for that type. Multiple @Feature@ objects can be specified in the @features@ list.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Feature' smart constructor.
data GoogleCloudVisionV1p2beta1Feature = GoogleCloudVisionV1p2beta1Feature
  { -- | Maximum number of results of this type. Does not apply to @TEXT_DETECTION@, @DOCUMENT_TEXT_DETECTION@, or @CROP_HINTS@.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Model to use for the feature. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\". @DOCUMENT_TEXT_DETECTION@ and @TEXT_DETECTION@ also support \"builtin\/weekly\" for the bleeding edge release updated weekly.
    model :: (Core.Maybe Core.Text),
    -- | The feature type.
    type' :: (Core.Maybe GoogleCloudVisionV1p2beta1Feature_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Feature' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Feature ::
  GoogleCloudVisionV1p2beta1Feature
newGoogleCloudVisionV1p2beta1Feature =
  GoogleCloudVisionV1p2beta1Feature
    { maxResults = Core.Nothing,
      model = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Feature where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Feature"
      ( \o ->
          GoogleCloudVisionV1p2beta1Feature
            Core.<$> (o Core..:? "maxResults")
            Core.<*> (o Core..:? "model")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Feature where
  toJSON GoogleCloudVisionV1p2beta1Feature {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxResults" Core..=) Core.<$> maxResults,
            ("model" Core..=) Core.<$> model,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p2beta1GcsDestination = GoogleCloudVisionV1p2beta1GcsDestination
  { -- | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs:\/\/bucket-name\/here\/filenameprefix The output files will be created in gs:\/\/bucket-name\/here\/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs:\/\/bucket-name\/some\/location\/ The output files will be created in gs:\/\/bucket-name\/some\/location\/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too
    -- large and overflows into multiple sharded files.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1GcsDestination' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1GcsDestination ::
  GoogleCloudVisionV1p2beta1GcsDestination
newGoogleCloudVisionV1p2beta1GcsDestination =
  GoogleCloudVisionV1p2beta1GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p2beta1GcsDestination where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1GcsDestination"
      ( \o ->
          GoogleCloudVisionV1p2beta1GcsDestination
            Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1GcsDestination where
  toJSON GoogleCloudVisionV1p2beta1GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p2beta1GcsSource = GoogleCloudVisionV1p2beta1GcsSource
  { -- | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1GcsSource' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1GcsSource ::
  GoogleCloudVisionV1p2beta1GcsSource
newGoogleCloudVisionV1p2beta1GcsSource =
  GoogleCloudVisionV1p2beta1GcsSource {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p2beta1GcsSource where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1GcsSource"
      ( \o ->
          GoogleCloudVisionV1p2beta1GcsSource Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1GcsSource where
  toJSON GoogleCloudVisionV1p2beta1GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | Client image to perform Google Cloud Vision API tasks over.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Image' smart constructor.
data GoogleCloudVisionV1p2beta1Image = GoogleCloudVisionV1p2beta1Image
  { -- | Image content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateImages requests. It does not work for AsyncBatchAnnotateImages requests.
    content :: (Core.Maybe Core.Base64),
    -- | Google Cloud Storage image location, or publicly-accessible image URL. If both @content@ and @source@ are provided for an image, @content@ takes precedence and is used to perform the image annotation request.
    source :: (Core.Maybe GoogleCloudVisionV1p2beta1ImageSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Image' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Image ::
  GoogleCloudVisionV1p2beta1Image
newGoogleCloudVisionV1p2beta1Image =
  GoogleCloudVisionV1p2beta1Image
    { content = Core.Nothing,
      source = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Image where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Image"
      ( \o ->
          GoogleCloudVisionV1p2beta1Image
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Image where
  toJSON GoogleCloudVisionV1p2beta1Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("source" Core..=) Core.<$> source
          ]
      )

-- | If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p2beta1ImageAnnotationContext = GoogleCloudVisionV1p2beta1ImageAnnotationContext
  { -- | If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.
    pageNumber :: (Core.Maybe Core.Int32),
    -- | The URI of the file used to produce the image.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageAnnotationContext' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ImageAnnotationContext ::
  GoogleCloudVisionV1p2beta1ImageAnnotationContext
newGoogleCloudVisionV1p2beta1ImageAnnotationContext =
  GoogleCloudVisionV1p2beta1ImageAnnotationContext
    { pageNumber =
        Core.Nothing,
      uri = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ImageAnnotationContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ImageAnnotationContext"
      ( \o ->
          GoogleCloudVisionV1p2beta1ImageAnnotationContext
            Core.<$> (o Core..:? "pageNumber")
            Core.<*> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1ImageAnnotationContext
  where
  toJSON GoogleCloudVisionV1p2beta1ImageAnnotationContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageNumber" Core..=) Core.<$> pageNumber,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Image context and\/or feature-specific parameters.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ImageContext' smart constructor.
data GoogleCloudVisionV1p2beta1ImageContext = GoogleCloudVisionV1p2beta1ImageContext
  { -- | Parameters for crop hints annotation request.
    cropHintsParams :: (Core.Maybe GoogleCloudVisionV1p2beta1CropHintsParams),
    -- | List of languages to use for TEXT_DETECTION. In most cases, an empty value yields the best results since it enables automatic language detection. For languages based on the Latin alphabet, setting @language_hints@ is not needed. In rare cases, when the language of the text in the image is known, setting a hint will help get better results (although it will be a significant hindrance if the hint is wrong). Text detection returns an error if one or more of the specified languages is not one of the <https://cloud.google.com/vision/docs/languages supported languages>.
    languageHints :: (Core.Maybe [Core.Text]),
    -- | Not used.
    latLongRect :: (Core.Maybe GoogleCloudVisionV1p2beta1LatLongRect),
    -- | Parameters for product search.
    productSearchParams :: (Core.Maybe GoogleCloudVisionV1p2beta1ProductSearchParams),
    -- | Parameters for text detection and document text detection.
    textDetectionParams :: (Core.Maybe GoogleCloudVisionV1p2beta1TextDetectionParams),
    -- | Parameters for web detection.
    webDetectionParams :: (Core.Maybe GoogleCloudVisionV1p2beta1WebDetectionParams)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageContext' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ImageContext ::
  GoogleCloudVisionV1p2beta1ImageContext
newGoogleCloudVisionV1p2beta1ImageContext =
  GoogleCloudVisionV1p2beta1ImageContext
    { cropHintsParams =
        Core.Nothing,
      languageHints = Core.Nothing,
      latLongRect = Core.Nothing,
      productSearchParams = Core.Nothing,
      textDetectionParams = Core.Nothing,
      webDetectionParams = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1ImageContext where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ImageContext"
      ( \o ->
          GoogleCloudVisionV1p2beta1ImageContext
            Core.<$> (o Core..:? "cropHintsParams")
            Core.<*> (o Core..:? "languageHints")
            Core.<*> (o Core..:? "latLongRect")
            Core.<*> (o Core..:? "productSearchParams")
            Core.<*> (o Core..:? "textDetectionParams")
            Core.<*> (o Core..:? "webDetectionParams")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ImageContext where
  toJSON GoogleCloudVisionV1p2beta1ImageContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("cropHintsParams" Core..=) Core.<$> cropHintsParams,
            ("languageHints" Core..=) Core.<$> languageHints,
            ("latLongRect" Core..=) Core.<$> latLongRect,
            ("productSearchParams" Core..=) Core.<$> productSearchParams,
            ("textDetectionParams" Core..=) Core.<$> textDetectionParams,
            ("webDetectionParams" Core..=) Core.<$> webDetectionParams
          ]
      )

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p2beta1ImageProperties = GoogleCloudVisionV1p2beta1ImageProperties
  { -- | If present, dominant colors completed successfully.
    dominantColors :: (Core.Maybe GoogleCloudVisionV1p2beta1DominantColorsAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageProperties' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ImageProperties ::
  GoogleCloudVisionV1p2beta1ImageProperties
newGoogleCloudVisionV1p2beta1ImageProperties =
  GoogleCloudVisionV1p2beta1ImageProperties
    { dominantColors =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1ImageProperties where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ImageProperties"
      ( \o ->
          GoogleCloudVisionV1p2beta1ImageProperties
            Core.<$> (o Core..:? "dominantColors")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ImageProperties where
  toJSON GoogleCloudVisionV1p2beta1ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [("dominantColors" Core..=) Core.<$> dominantColors]
      )

-- | External image source (Google Cloud Storage or web URL image location).
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ImageSource' smart constructor.
data GoogleCloudVisionV1p2beta1ImageSource = GoogleCloudVisionV1p2beta1ImageSource
  { -- | __Use @image_uri@ instead.__ The Google Cloud Storage URI of the form @gs:\/\/bucket_name\/object_name@. Object versioning is not supported. See <https://cloud.google.com/storage/docs/reference-uris Google Cloud Storage Request URIs> for more info.
    gcsImageUri :: (Core.Maybe Core.Text),
    -- | The URI of the source image. Can be either: 1. A Google Cloud Storage URI of the form @gs:\/\/bucket_name\/object_name@. Object versioning is not supported. See <https://cloud.google.com/storage/docs/reference-uris Google Cloud Storage Request URIs> for more info. 2. A publicly-accessible image HTTP\/HTTPS URL. When fetching images from HTTP\/HTTPS URLs, Google cannot guarantee that the request will be completed. Your request may fail if the specified host denies the request (e.g. due to request throttling or DOS prevention), or if Google throttles requests to the site for abuse prevention. You should not depend on externally-hosted images for production applications. When both @gcs_image_uri@ and @image_uri@ are specified, @image_uri@ takes precedence.
    imageUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ImageSource' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ImageSource ::
  GoogleCloudVisionV1p2beta1ImageSource
newGoogleCloudVisionV1p2beta1ImageSource =
  GoogleCloudVisionV1p2beta1ImageSource
    { gcsImageUri = Core.Nothing,
      imageUri = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1ImageSource where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ImageSource"
      ( \o ->
          GoogleCloudVisionV1p2beta1ImageSource
            Core.<$> (o Core..:? "gcsImageUri")
            Core.<*> (o Core..:? "imageUri")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ImageSource where
  toJSON GoogleCloudVisionV1p2beta1ImageSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("gcsImageUri" Core..=) Core.<$> gcsImageUri,
            ("imageUri" Core..=) Core.<$> imageUri
          ]
      )

-- | The desired input location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p2beta1InputConfig = GoogleCloudVisionV1p2beta1InputConfig
  { -- | File content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.
    content :: (Core.Maybe Core.Base64),
    -- | The Google Cloud Storage location to read the input from.
    gcsSource :: (Core.Maybe GoogleCloudVisionV1p2beta1GcsSource),
    -- | The type of the file. Currently only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not supported.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1InputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1InputConfig ::
  GoogleCloudVisionV1p2beta1InputConfig
newGoogleCloudVisionV1p2beta1InputConfig =
  GoogleCloudVisionV1p2beta1InputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1InputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1InputConfig"
      ( \o ->
          GoogleCloudVisionV1p2beta1InputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1InputConfig where
  toJSON GoogleCloudVisionV1p2beta1InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Rectangle determined by min and max @LatLng@ pairs.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1LatLongRect' smart constructor.
data GoogleCloudVisionV1p2beta1LatLongRect = GoogleCloudVisionV1p2beta1LatLongRect
  { -- | Max lat\/long pair.
    maxLatLng :: (Core.Maybe LatLng),
    -- | Min lat\/long pair.
    minLatLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1LatLongRect' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1LatLongRect ::
  GoogleCloudVisionV1p2beta1LatLongRect
newGoogleCloudVisionV1p2beta1LatLongRect =
  GoogleCloudVisionV1p2beta1LatLongRect
    { maxLatLng = Core.Nothing,
      minLatLng = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1LatLongRect where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1LatLongRect"
      ( \o ->
          GoogleCloudVisionV1p2beta1LatLongRect
            Core.<$> (o Core..:? "maxLatLng")
            Core.<*> (o Core..:? "minLatLng")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1LatLongRect where
  toJSON GoogleCloudVisionV1p2beta1LatLongRect {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxLatLng" Core..=) Core.<$> maxLatLng,
            ("minLatLng" Core..=) Core.<$> minLatLng
          ]
      )

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation = GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
  { -- | Image region to which this object belongs. This must be populated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation ::
  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
newGoogleCloudVisionV1p2beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
    { boundingPoly =
        Core.Nothing,
      languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation
  where
  toJSON GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Detected entity location information.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p2beta1LocationInfo = GoogleCloudVisionV1p2beta1LocationInfo
  { -- | lat\/long location coordinates.
    latLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1LocationInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1LocationInfo ::
  GoogleCloudVisionV1p2beta1LocationInfo
newGoogleCloudVisionV1p2beta1LocationInfo =
  GoogleCloudVisionV1p2beta1LocationInfo {latLng = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p2beta1LocationInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1LocationInfo"
      ( \o ->
          GoogleCloudVisionV1p2beta1LocationInfo
            Core.<$> (o Core..:? "latLng")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1LocationInfo where
  toJSON GoogleCloudVisionV1p2beta1LocationInfo {..} =
    Core.object (Core.catMaybes [("latLng" Core..=) Core.<$> latLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p2beta1NormalizedVertex = GoogleCloudVisionV1p2beta1NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1NormalizedVertex ::
  GoogleCloudVisionV1p2beta1NormalizedVertex
newGoogleCloudVisionV1p2beta1NormalizedVertex =
  GoogleCloudVisionV1p2beta1NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1NormalizedVertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1NormalizedVertex"
      ( \o ->
          GoogleCloudVisionV1p2beta1NormalizedVertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1NormalizedVertex where
  toJSON GoogleCloudVisionV1p2beta1NormalizedVertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p2beta1OperationMetadata = GoogleCloudVisionV1p2beta1OperationMetadata
  { -- | The time when the batch request was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p2beta1OperationMetadata_State),
    -- | The time when the operation result was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1OperationMetadata ::
  GoogleCloudVisionV1p2beta1OperationMetadata
newGoogleCloudVisionV1p2beta1OperationMetadata =
  GoogleCloudVisionV1p2beta1OperationMetadata
    { createTime =
        Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1OperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p2beta1OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1OperationMetadata where
  toJSON GoogleCloudVisionV1p2beta1OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The desired output location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p2beta1OutputConfig = GoogleCloudVisionV1p2beta1OutputConfig
  { -- | The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If @batch_size@ = 20, then 5 json files each containing 20 response protos will be written under the prefix @gcs_destination@.@uri@. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
    batchSize :: (Core.Maybe Core.Int32),
    -- | The Google Cloud Storage location to write the output(s) to.
    gcsDestination :: (Core.Maybe GoogleCloudVisionV1p2beta1GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1OutputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1OutputConfig ::
  GoogleCloudVisionV1p2beta1OutputConfig
newGoogleCloudVisionV1p2beta1OutputConfig =
  GoogleCloudVisionV1p2beta1OutputConfig
    { batchSize = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1OutputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1OutputConfig"
      ( \o ->
          GoogleCloudVisionV1p2beta1OutputConfig
            Core.<$> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1OutputConfig where
  toJSON GoogleCloudVisionV1p2beta1OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.<$> batchSize,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Detected page from OCR.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Page' smart constructor.
data GoogleCloudVisionV1p2beta1Page = GoogleCloudVisionV1p2beta1Page
  { -- | List of blocks of text, images etc on this page.
    blocks :: (Core.Maybe [GoogleCloudVisionV1p2beta1Block]),
    -- | Confidence of the OCR results on the page. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Additional information detected on the page.
    property :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty),
    -- | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Page' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Page ::
  GoogleCloudVisionV1p2beta1Page
newGoogleCloudVisionV1p2beta1Page =
  GoogleCloudVisionV1p2beta1Page
    { blocks = Core.Nothing,
      confidence = Core.Nothing,
      height = Core.Nothing,
      property = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Page where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Page"
      ( \o ->
          GoogleCloudVisionV1p2beta1Page
            Core.<$> (o Core..:? "blocks")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Page where
  toJSON GoogleCloudVisionV1p2beta1Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("blocks" Core..=) Core.<$> blocks,
            ("confidence" Core..=) Core.<$> confidence,
            ("height" Core..=) Core.<$> height,
            ("property" Core..=) Core.<$> property,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p2beta1Paragraph = GoogleCloudVisionV1p2beta1Paragraph
  { -- | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Confidence of the OCR results for the paragraph. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the paragraph.
    property :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty),
    -- | List of all words in this paragraph.
    words :: (Core.Maybe [GoogleCloudVisionV1p2beta1Word])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Paragraph' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Paragraph ::
  GoogleCloudVisionV1p2beta1Paragraph
newGoogleCloudVisionV1p2beta1Paragraph =
  GoogleCloudVisionV1p2beta1Paragraph
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Paragraph where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Paragraph"
      ( \o ->
          GoogleCloudVisionV1p2beta1Paragraph
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Paragraph where
  toJSON GoogleCloudVisionV1p2beta1Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Position' smart constructor.
data GoogleCloudVisionV1p2beta1Position = GoogleCloudVisionV1p2beta1Position
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double),
    -- | Z coordinate (or depth).
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Position' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Position ::
  GoogleCloudVisionV1p2beta1Position
newGoogleCloudVisionV1p2beta1Position =
  GoogleCloudVisionV1p2beta1Position
    { x = Core.Nothing,
      y = Core.Nothing,
      z = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Position where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Position"
      ( \o ->
          GoogleCloudVisionV1p2beta1Position
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Position where
  toJSON GoogleCloudVisionV1p2beta1Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | A Product contains ReferenceImages.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Product' smart constructor.
data GoogleCloudVisionV1p2beta1Product = GoogleCloudVisionV1p2beta1Product
  { -- | User-provided metadata to be stored with this product. Must be at most 4096 characters long.
    description :: (Core.Maybe Core.Text),
    -- | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the product. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID@. This field is ignored when creating a product.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.
    productCategory :: (Core.Maybe Core.Text),
    -- | Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product/labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product/labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
    productLabels :: (Core.Maybe [GoogleCloudVisionV1p2beta1ProductKeyValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Product' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Product ::
  GoogleCloudVisionV1p2beta1Product
newGoogleCloudVisionV1p2beta1Product =
  GoogleCloudVisionV1p2beta1Product
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      productCategory = Core.Nothing,
      productLabels = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Product where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Product"
      ( \o ->
          GoogleCloudVisionV1p2beta1Product
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCategory")
            Core.<*> (o Core..:? "productLabels")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Product where
  toJSON GoogleCloudVisionV1p2beta1Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("productCategory" Core..=) Core.<$> productCategory,
            ("productLabels" Core..=) Core.<$> productLabels
          ]
      )

-- | A product label represented as a key-value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p2beta1ProductKeyValue = GoogleCloudVisionV1p2beta1ProductKeyValue
  { -- | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    key :: (Core.Maybe Core.Text),
    -- | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductKeyValue' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductKeyValue ::
  GoogleCloudVisionV1p2beta1ProductKeyValue
newGoogleCloudVisionV1p2beta1ProductKeyValue =
  GoogleCloudVisionV1p2beta1ProductKeyValue
    { key = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1ProductKeyValue where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductKeyValue"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductKeyValue
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ProductKeyValue where
  toJSON GoogleCloudVisionV1p2beta1ProductKeyValue {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | Parameters for a product search request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductSearchParams' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchParams = GoogleCloudVisionV1p2beta1ProductSearchParams
  { -- | The bounding polygon around the area of interest in the image. If it is not specified, system discretion will be applied.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | The filtering expression. This can be used to restrict search results based on Product labels. We currently support an AND of OR of key-value expressions, where each expression within an OR must have the same key. An \'=\' should be used to connect the key and value. For example, \"(color = red OR color = blue) AND brand = Google\" is acceptable, but \"(color = red OR brand = Google)\" is not acceptable. \"color: red\" is not acceptable because it uses a \':\' instead of an \'=\'.
    filter :: (Core.Maybe Core.Text),
    -- | The list of product categories to search in. Currently, we only consider the first category, and either \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\", or \"general-v1\" should be specified. The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported but will be deprecated. For new products, please use \"homegoods-v2\", \"apparel-v2\", or \"toys-v2\" for better product search accuracy. It is recommended to migrate existing products to these categories as well.
    productCategories :: (Core.Maybe [Core.Text]),
    -- | The resource name of a ProductSet to be searched for similar images. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/productSets\/PRODUCT_SET_ID@.
    productSet :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchParams' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductSearchParams ::
  GoogleCloudVisionV1p2beta1ProductSearchParams
newGoogleCloudVisionV1p2beta1ProductSearchParams =
  GoogleCloudVisionV1p2beta1ProductSearchParams
    { boundingPoly =
        Core.Nothing,
      filter = Core.Nothing,
      productCategories = Core.Nothing,
      productSet = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ProductSearchParams
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductSearchParams"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductSearchParams
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "productCategories")
            Core.<*> (o Core..:? "productSet")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ProductSearchParams where
  toJSON GoogleCloudVisionV1p2beta1ProductSearchParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("filter" Core..=) Core.<$> filter,
            ("productCategories" Core..=) Core.<$> productCategories,
            ("productSet" Core..=) Core.<$> productSet
          ]
      )

-- | Results for a product search request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResults = GoogleCloudVisionV1p2beta1ProductSearchResults
  { -- | Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.
    indexTime :: (Core.Maybe Core.DateTime),
    -- | List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.
    productGroupedResults ::
      ( Core.Maybe
          [GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResults' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductSearchResults ::
  GoogleCloudVisionV1p2beta1ProductSearchResults
newGoogleCloudVisionV1p2beta1ProductSearchResults =
  GoogleCloudVisionV1p2beta1ProductSearchResults
    { indexTime =
        Core.Nothing,
      productGroupedResults = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ProductSearchResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductSearchResults"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductSearchResults
            Core.<$> (o Core..:? "indexTime")
            Core.<*> (o Core..:? "productGroupedResults")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1ProductSearchResults where
  toJSON GoogleCloudVisionV1p2beta1ProductSearchResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexTime" Core..=) Core.<$> indexTime,
            ("productGroupedResults" Core..=) Core.<$> productGroupedResults,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Information about the products similar to a single product in a query image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult = GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
  { -- | The bounding polygon around the product detected in the query image.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | List of generic predictions for the object in the bounding box.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p2beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult ::
  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
newGoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
    { boundingPoly =
        Core.Nothing,
      objectAnnotations = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "objectAnnotations")
            Core.<*> (o Core..:? "results")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult
  where
  toJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult {..} =
      Core.object
        ( Core.catMaybes
            [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
              ("objectAnnotations" Core..=) Core.<$> objectAnnotations,
              ("results" Core..=) Core.<$> results
            ]
        )

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation = GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
  { -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation ::
  GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
newGoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
    { languageCode =
        Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation
  where
  toJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("languageCode" Core..=) Core.<$> languageCode,
              ("mid" Core..=) Core.<$> mid,
              ("name" Core..=) Core.<$> name,
              ("score" Core..=) Core.<$> score
            ]
        )

-- | Information about a product.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p2beta1ProductSearchResultsResult = GoogleCloudVisionV1p2beta1ProductSearchResultsResult
  { -- | The resource name of the image from the product that is the closest match to the query.
    image :: (Core.Maybe Core.Text),
    -- | The Product.
    product :: (Core.Maybe GoogleCloudVisionV1p2beta1Product),
    -- | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1ProductSearchResultsResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1ProductSearchResultsResult ::
  GoogleCloudVisionV1p2beta1ProductSearchResultsResult
newGoogleCloudVisionV1p2beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p2beta1ProductSearchResultsResult
    { image =
        Core.Nothing,
      product = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1ProductSearchResultsResult"
      ( \o ->
          GoogleCloudVisionV1p2beta1ProductSearchResultsResult
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1ProductSearchResultsResult
  where
  toJSON GoogleCloudVisionV1p2beta1ProductSearchResultsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("product" Core..=) Core.<$> product,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | A @Property@ consists of a user-supplied name\/value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Property' smart constructor.
data GoogleCloudVisionV1p2beta1Property = GoogleCloudVisionV1p2beta1Property
  { -- | Name of the property.
    name :: (Core.Maybe Core.Text),
    -- | Value of numeric properties.
    uint64Value :: (Core.Maybe Core.Word64),
    -- | Value of the property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Property' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Property ::
  GoogleCloudVisionV1p2beta1Property
newGoogleCloudVisionV1p2beta1Property =
  GoogleCloudVisionV1p2beta1Property
    { name = Core.Nothing,
      uint64Value = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Property where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Property"
      ( \o ->
          GoogleCloudVisionV1p2beta1Property
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "uint64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Property where
  toJSON GoogleCloudVisionV1p2beta1Property {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("uint64Value" Core..=) Core.. Core.AsText Core.<$> uint64Value,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1SafeSearchAnnotation = GoogleCloudVisionV1p2beta1SafeSearchAnnotation
  { -- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
    adult :: (Core.Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult),
    -- | Likelihood that this is a medical image.
    medical :: (Core.Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical),
    -- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
    racy :: (Core.Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy),
    -- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
    spoof :: (Core.Maybe GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof),
    -- | Likelihood that this image contains violent content. Violent content may include death, serious harm, or injury to individuals or groups of individuals.
    violence ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1SafeSearchAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1SafeSearchAnnotation ::
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation
newGoogleCloudVisionV1p2beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation
    { adult =
        Core.Nothing,
      medical = Core.Nothing,
      racy = Core.Nothing,
      spoof = Core.Nothing,
      violence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1SafeSearchAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1SafeSearchAnnotation
            Core.<$> (o Core..:? "adult")
            Core.<*> (o Core..:? "medical")
            Core.<*> (o Core..:? "racy")
            Core.<*> (o Core..:? "spoof")
            Core.<*> (o Core..:? "violence")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1SafeSearchAnnotation where
  toJSON GoogleCloudVisionV1p2beta1SafeSearchAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("adult" Core..=) Core.<$> adult,
            ("medical" Core..=) Core.<$> medical,
            ("racy" Core..=) Core.<$> racy,
            ("spoof" Core..=) Core.<$> spoof,
            ("violence" Core..=) Core.<$> violence
          ]
      )

-- | A single symbol representation.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Symbol' smart constructor.
data GoogleCloudVisionV1p2beta1Symbol = GoogleCloudVisionV1p2beta1Symbol
  { -- | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Confidence of the OCR results for the symbol. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the symbol.
    property :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty),
    -- | The actual UTF-8 representation of the symbol.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Symbol' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Symbol ::
  GoogleCloudVisionV1p2beta1Symbol
newGoogleCloudVisionV1p2beta1Symbol =
  GoogleCloudVisionV1p2beta1Symbol
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Symbol where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Symbol"
      ( \o ->
          GoogleCloudVisionV1p2beta1Symbol
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Symbol where
  toJSON GoogleCloudVisionV1p2beta1Symbol {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotation = GoogleCloudVisionV1p2beta1TextAnnotation
  { -- | List of pages detected by OCR.
    pages :: (Core.Maybe [GoogleCloudVisionV1p2beta1Page]),
    -- | UTF-8 text detected on the pages.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1TextAnnotation ::
  GoogleCloudVisionV1p2beta1TextAnnotation
newGoogleCloudVisionV1p2beta1TextAnnotation =
  GoogleCloudVisionV1p2beta1TextAnnotation
    { pages = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1TextAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1TextAnnotation"
      ( \o ->
          GoogleCloudVisionV1p2beta1TextAnnotation
            Core.<$> (o Core..:? "pages")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1TextAnnotation where
  toJSON GoogleCloudVisionV1p2beta1TextAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [("pages" Core..=) Core.<$> pages, ("text" Core..=) Core.<$> text]
      )

-- | Detected start or end of a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
  { -- | True if break prepends the element.
    isPrefix :: (Core.Maybe Core.Bool),
    -- | Detected break type.
    type' ::
      ( Core.Maybe
          GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak ::
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
newGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
    { isPrefix =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak"
      ( \o ->
          GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
            Core.<$> (o Core..:? "isPrefix")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak
  where
  toJSON GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("isPrefix" Core..=) Core.<$> isPrefix,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detected language for a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage = GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
  { -- | Confidence of detected language. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage ::
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
newGoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
    { confidence =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage"
      ( \o ->
          GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage
  where
  toJSON GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Additional information detected on the structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p2beta1TextAnnotationTextProperty = GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
  { -- | Detected start or end of a text segment.
    detectedBreak :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak),
    -- | A list of detected languages together with confidence.
    detectedLanguages ::
      ( Core.Maybe
          [GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1TextAnnotationTextProperty ::
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
newGoogleCloudVisionV1p2beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
    { detectedBreak =
        Core.Nothing,
      detectedLanguages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1TextAnnotationTextProperty"
      ( \o ->
          GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
            Core.<$> (o Core..:? "detectedBreak")
            Core.<*> (o Core..:? "detectedLanguages")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1TextAnnotationTextProperty
  where
  toJSON GoogleCloudVisionV1p2beta1TextAnnotationTextProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedBreak" Core..=) Core.<$> detectedBreak,
            ("detectedLanguages" Core..=) Core.<$> detectedLanguages
          ]
      )

-- | Parameters for text detections. This is used to control TEXT/DETECTION and DOCUMENT/TEXT_DETECTION features.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1TextDetectionParams' smart constructor.
data GoogleCloudVisionV1p2beta1TextDetectionParams = GoogleCloudVisionV1p2beta1TextDetectionParams
  { -- | A list of advanced OCR options to further fine-tune OCR behavior. Current valid values are: - @legacy_layout@: a heuristics layout detection algorithm, which serves as an alternative to the current ML-based layout detection algorithm. Customers can choose the best suitable layout algorithm based on their situation.
    advancedOcrOptions :: (Core.Maybe [Core.Text]),
    -- | By default, Cloud Vision API only includes confidence score for DOCUMENT/TEXT/DETECTION result. Set the flag to true to include confidence score for TEXT_DETECTION as well.
    enableTextDetectionConfidenceScore :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1TextDetectionParams' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1TextDetectionParams ::
  GoogleCloudVisionV1p2beta1TextDetectionParams
newGoogleCloudVisionV1p2beta1TextDetectionParams =
  GoogleCloudVisionV1p2beta1TextDetectionParams
    { advancedOcrOptions =
        Core.Nothing,
      enableTextDetectionConfidenceScore = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1TextDetectionParams
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1TextDetectionParams"
      ( \o ->
          GoogleCloudVisionV1p2beta1TextDetectionParams
            Core.<$> (o Core..:? "advancedOcrOptions")
            Core.<*> (o Core..:? "enableTextDetectionConfidenceScore")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1TextDetectionParams where
  toJSON GoogleCloudVisionV1p2beta1TextDetectionParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("advancedOcrOptions" Core..=) Core.<$> advancedOcrOptions,
            ("enableTextDetectionConfidenceScore" Core..=)
              Core.<$> enableTextDetectionConfidenceScore
          ]
      )

-- | A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Vertex' smart constructor.
data GoogleCloudVisionV1p2beta1Vertex = GoogleCloudVisionV1p2beta1Vertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Int32),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Vertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Vertex ::
  GoogleCloudVisionV1p2beta1Vertex
newGoogleCloudVisionV1p2beta1Vertex =
  GoogleCloudVisionV1p2beta1Vertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Vertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Vertex"
      ( \o ->
          GoogleCloudVisionV1p2beta1Vertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Vertex where
  toJSON GoogleCloudVisionV1p2beta1Vertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetection = GoogleCloudVisionV1p2beta1WebDetection
  { -- | The service\'s best guess as to the topic of the request image. Inferred from similar images on the open web.
    bestGuessLabels :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebLabel]),
    -- | Fully matching images from the Internet. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage]),
    -- | Web pages containing the matching images from the Internet.
    pagesWithMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebPage]),
    -- | Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage]),
    -- | The visually similar image results.
    visuallySimilarImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage]),
    -- | Deduced entities from similar images on the Internet.
    webEntities :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebEntity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetection' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetection ::
  GoogleCloudVisionV1p2beta1WebDetection
newGoogleCloudVisionV1p2beta1WebDetection =
  GoogleCloudVisionV1p2beta1WebDetection
    { bestGuessLabels =
        Core.Nothing,
      fullMatchingImages = Core.Nothing,
      pagesWithMatchingImages = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      visuallySimilarImages = Core.Nothing,
      webEntities = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1WebDetection where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetection"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetection
            Core.<$> (o Core..:? "bestGuessLabels")
            Core.<*> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pagesWithMatchingImages")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "visuallySimilarImages")
            Core.<*> (o Core..:? "webEntities")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1WebDetection where
  toJSON GoogleCloudVisionV1p2beta1WebDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestGuessLabels" Core..=) Core.<$> bestGuessLabels,
            ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pagesWithMatchingImages" Core..=)
              Core.<$> pagesWithMatchingImages,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("visuallySimilarImages" Core..=) Core.<$> visuallySimilarImages,
            ("webEntities" Core..=) Core.<$> webEntities
          ]
      )

-- | Parameters for web detection request.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetectionParams' smart constructor.
newtype GoogleCloudVisionV1p2beta1WebDetectionParams = GoogleCloudVisionV1p2beta1WebDetectionParams
  { -- | This field has no effect on results.
    includeGeoResults :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionParams' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetectionParams ::
  GoogleCloudVisionV1p2beta1WebDetectionParams
newGoogleCloudVisionV1p2beta1WebDetectionParams =
  GoogleCloudVisionV1p2beta1WebDetectionParams
    { includeGeoResults =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1WebDetectionParams where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetectionParams"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetectionParams
            Core.<$> (o Core..:? "includeGeoResults")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1WebDetectionParams where
  toJSON GoogleCloudVisionV1p2beta1WebDetectionParams {..} =
    Core.object
      ( Core.catMaybes
          [("includeGeoResults" Core..=) Core.<$> includeGeoResults]
      )

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebEntity = GoogleCloudVisionV1p2beta1WebDetectionWebEntity
  { -- | Canonical description of the entity, in English.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID.
    entityId :: (Core.Maybe Core.Text),
    -- | Overall relevancy score for the entity. Not normalized and not comparable across different image queries.
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebEntity' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetectionWebEntity ::
  GoogleCloudVisionV1p2beta1WebDetectionWebEntity
newGoogleCloudVisionV1p2beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p2beta1WebDetectionWebEntity
    { description =
        Core.Nothing,
      entityId = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1WebDetectionWebEntity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetectionWebEntity"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetectionWebEntity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p2beta1WebDetectionWebEntity
  where
  toJSON GoogleCloudVisionV1p2beta1WebDetectionWebEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Metadata for online images.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebImage = GoogleCloudVisionV1p2beta1WebDetectionWebImage
  { -- | (Deprecated) Overall relevancy score for the image.
    score :: (Core.Maybe Core.Double),
    -- | The result image URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetectionWebImage ::
  GoogleCloudVisionV1p2beta1WebDetectionWebImage
newGoogleCloudVisionV1p2beta1WebDetectionWebImage =
  GoogleCloudVisionV1p2beta1WebDetectionWebImage
    { score =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1WebDetectionWebImage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetectionWebImage"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetectionWebImage
            Core.<$> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1WebDetectionWebImage where
  toJSON GoogleCloudVisionV1p2beta1WebDetectionWebImage {..} =
    Core.object
      ( Core.catMaybes
          [("score" Core..=) Core.<$> score, ("url" Core..=) Core.<$> url]
      )

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebLabel = GoogleCloudVisionV1p2beta1WebDetectionWebLabel
  { -- | Label for extra metadata.
    label :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for @label@, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebLabel' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetectionWebLabel ::
  GoogleCloudVisionV1p2beta1WebDetectionWebLabel
newGoogleCloudVisionV1p2beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p2beta1WebDetectionWebLabel
    { label =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1WebDetectionWebLabel
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetectionWebLabel"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetectionWebLabel
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1WebDetectionWebLabel where
  toJSON GoogleCloudVisionV1p2beta1WebDetectionWebLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Metadata for web pages.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p2beta1WebDetectionWebPage = GoogleCloudVisionV1p2beta1WebDetectionWebPage
  { -- | Fully matching images on the page. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage]),
    -- | Title for the web page, may contain HTML markups.
    pageTitle :: (Core.Maybe Core.Text),
    -- | Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p2beta1WebDetectionWebImage]),
    -- | (Deprecated) Overall relevancy score for the web page.
    score :: (Core.Maybe Core.Double),
    -- | The result web page URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1WebDetectionWebPage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1WebDetectionWebPage ::
  GoogleCloudVisionV1p2beta1WebDetectionWebPage
newGoogleCloudVisionV1p2beta1WebDetectionWebPage =
  GoogleCloudVisionV1p2beta1WebDetectionWebPage
    { fullMatchingImages =
        Core.Nothing,
      pageTitle = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      score = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p2beta1WebDetectionWebPage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1WebDetectionWebPage"
      ( \o ->
          GoogleCloudVisionV1p2beta1WebDetectionWebPage
            Core.<$> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pageTitle")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1WebDetectionWebPage where
  toJSON GoogleCloudVisionV1p2beta1WebDetectionWebPage {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pageTitle" Core..=) Core.<$> pageTitle,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("score" Core..=) Core.<$> score,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A word representation.
--
-- /See:/ 'newGoogleCloudVisionV1p2beta1Word' smart constructor.
data GoogleCloudVisionV1p2beta1Word = GoogleCloudVisionV1p2beta1Word
  { -- | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p2beta1BoundingPoly),
    -- | Confidence of the OCR results for the word. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the word.
    property :: (Core.Maybe GoogleCloudVisionV1p2beta1TextAnnotationTextProperty),
    -- | List of symbols in the word. The order of the symbols follows the natural reading order.
    symbols :: (Core.Maybe [GoogleCloudVisionV1p2beta1Symbol])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p2beta1Word' with the minimum fields required to make a request.
newGoogleCloudVisionV1p2beta1Word ::
  GoogleCloudVisionV1p2beta1Word
newGoogleCloudVisionV1p2beta1Word =
  GoogleCloudVisionV1p2beta1Word
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      symbols = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p2beta1Word where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p2beta1Word"
      ( \o ->
          GoogleCloudVisionV1p2beta1Word
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "symbols")
      )

instance Core.ToJSON GoogleCloudVisionV1p2beta1Word where
  toJSON GoogleCloudVisionV1p2beta1Word {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("symbols" Core..=) Core.<$> symbols
          ]
      )

-- | Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p3beta1AnnotateFileResponse = GoogleCloudVisionV1p3beta1AnnotateFileResponse
  { -- | If set, represents the error message for the failed request. The @responses@ field will not be set in this case.
    error :: (Core.Maybe Status),
    -- | Information about the file for which this response is generated.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p3beta1InputConfig),
    -- | Individual responses to images found within the file. This field will be empty if the @error@ field is set.
    responses :: (Core.Maybe [GoogleCloudVisionV1p3beta1AnnotateImageResponse]),
    -- | This field gives the total number of pages in the file.
    totalPages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1AnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1AnnotateFileResponse ::
  GoogleCloudVisionV1p3beta1AnnotateFileResponse
newGoogleCloudVisionV1p3beta1AnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AnnotateFileResponse
    { error =
        Core.Nothing,
      inputConfig = Core.Nothing,
      responses = Core.Nothing,
      totalPages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1AnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1AnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p3beta1AnnotateFileResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "responses")
            Core.<*> (o Core..:? "totalPages")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1AnnotateFileResponse where
  toJSON GoogleCloudVisionV1p3beta1AnnotateFileResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("responses" Core..=) Core.<$> responses,
            ("totalPages" Core..=) Core.<$> totalPages
          ]
      )

-- | Response to an image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p3beta1AnnotateImageResponse = GoogleCloudVisionV1p3beta1AnnotateImageResponse
  { -- | If present, contextual information is needed to understand where this image comes from.
    context :: (Core.Maybe GoogleCloudVisionV1p3beta1ImageAnnotationContext),
    -- | If present, crop hints have completed successfully.
    cropHintsAnnotation :: (Core.Maybe GoogleCloudVisionV1p3beta1CropHintsAnnotation),
    -- | If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when @error@ is set.
    error :: (Core.Maybe Status),
    -- | If present, face detection has completed successfully.
    faceAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1FaceAnnotation]),
    -- | If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.
    fullTextAnnotation :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotation),
    -- | If present, image properties were extracted successfully.
    imagePropertiesAnnotation :: (Core.Maybe GoogleCloudVisionV1p3beta1ImageProperties),
    -- | If present, label detection has completed successfully.
    labelAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation]),
    -- | If present, landmark detection has completed successfully.
    landmarkAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation]),
    -- | If present, localized object detection has completed successfully. This will be sorted descending by confidence score.
    localizedObjectAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation]),
    -- | If present, logo detection has completed successfully.
    logoAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation]),
    -- | If present, product search has completed successfully.
    productSearchResults :: (Core.Maybe GoogleCloudVisionV1p3beta1ProductSearchResults),
    -- | If present, safe-search annotation has completed successfully.
    safeSearchAnnotation :: (Core.Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation),
    -- | If present, text (OCR) detection has completed successfully.
    textAnnotations :: (Core.Maybe [GoogleCloudVisionV1p3beta1EntityAnnotation]),
    -- | If present, web detection has completed successfully.
    webDetection :: (Core.Maybe GoogleCloudVisionV1p3beta1WebDetection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1AnnotateImageResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1AnnotateImageResponse ::
  GoogleCloudVisionV1p3beta1AnnotateImageResponse
newGoogleCloudVisionV1p3beta1AnnotateImageResponse =
  GoogleCloudVisionV1p3beta1AnnotateImageResponse
    { context =
        Core.Nothing,
      cropHintsAnnotation = Core.Nothing,
      error = Core.Nothing,
      faceAnnotations = Core.Nothing,
      fullTextAnnotation = Core.Nothing,
      imagePropertiesAnnotation = Core.Nothing,
      labelAnnotations = Core.Nothing,
      landmarkAnnotations = Core.Nothing,
      localizedObjectAnnotations = Core.Nothing,
      logoAnnotations = Core.Nothing,
      productSearchResults = Core.Nothing,
      safeSearchAnnotation = Core.Nothing,
      textAnnotations = Core.Nothing,
      webDetection = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1AnnotateImageResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1AnnotateImageResponse"
      ( \o ->
          GoogleCloudVisionV1p3beta1AnnotateImageResponse
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cropHintsAnnotation")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "faceAnnotations")
            Core.<*> (o Core..:? "fullTextAnnotation")
            Core.<*> (o Core..:? "imagePropertiesAnnotation")
            Core.<*> (o Core..:? "labelAnnotations")
            Core.<*> (o Core..:? "landmarkAnnotations")
            Core.<*> (o Core..:? "localizedObjectAnnotations")
            Core.<*> (o Core..:? "logoAnnotations")
            Core.<*> (o Core..:? "productSearchResults")
            Core.<*> (o Core..:? "safeSearchAnnotation")
            Core.<*> (o Core..:? "textAnnotations")
            Core.<*> (o Core..:? "webDetection")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1AnnotateImageResponse
  where
  toJSON GoogleCloudVisionV1p3beta1AnnotateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cropHintsAnnotation" Core..=) Core.<$> cropHintsAnnotation,
            ("error" Core..=) Core.<$> error,
            ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
            ("fullTextAnnotation" Core..=) Core.<$> fullTextAnnotation,
            ("imagePropertiesAnnotation" Core..=)
              Core.<$> imagePropertiesAnnotation,
            ("labelAnnotations" Core..=) Core.<$> labelAnnotations,
            ("landmarkAnnotations" Core..=) Core.<$> landmarkAnnotations,
            ("localizedObjectAnnotations" Core..=)
              Core.<$> localizedObjectAnnotations,
            ("logoAnnotations" Core..=) Core.<$> logoAnnotations,
            ("productSearchResults" Core..=) Core.<$> productSearchResults,
            ("safeSearchAnnotation" Core..=) Core.<$> safeSearchAnnotation,
            ("textAnnotations" Core..=) Core.<$> textAnnotations,
            ("webDetection" Core..=) Core.<$> webDetection
          ]
      )

-- | The response for a single offline file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse = GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
  { -- | The output location and metadata from AsyncAnnotateFileRequest.
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p3beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse ::
  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
newGoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
    { outputConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse
  where
  toJSON GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse = GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
  { -- | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p3beta1AsyncAnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
newGoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse
  where
  toJSON
    GoogleCloudVisionV1p3beta1AsyncBatchAnnotateFilesResponse {..} =
      Core.object
        (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Metadata for the batch operations such as the current state. This is included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1BatchOperationMetadata' smart constructor.
data GoogleCloudVisionV1p3beta1BatchOperationMetadata = GoogleCloudVisionV1p3beta1BatchOperationMetadata
  { -- | The time when the batch request is finished and google.longrunning.Operation.done is set to true.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p3beta1BatchOperationMetadata_State),
    -- | The time when the batch request was submitted to the server.
    submitTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1BatchOperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1BatchOperationMetadata ::
  GoogleCloudVisionV1p3beta1BatchOperationMetadata
newGoogleCloudVisionV1p3beta1BatchOperationMetadata =
  GoogleCloudVisionV1p3beta1BatchOperationMetadata
    { endTime =
        Core.Nothing,
      state = Core.Nothing,
      submitTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1BatchOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1BatchOperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p3beta1BatchOperationMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "submitTime")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1BatchOperationMetadata
  where
  toJSON GoogleCloudVisionV1p3beta1BatchOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("state" Core..=) Core.<$> state,
            ("submitTime" Core..=) Core.<$> submitTime
          ]
      )

-- | Logical element on the page.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Block' smart constructor.
data GoogleCloudVisionV1p3beta1Block = GoogleCloudVisionV1p3beta1Block
  { -- | Detected block type (text, image etc) for this block.
    blockType :: (Core.Maybe GoogleCloudVisionV1p3beta1Block_BlockType),
    -- | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Confidence of the OCR results on the block. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | List of paragraphs in this block (if this blocks is of type text).
    paragraphs :: (Core.Maybe [GoogleCloudVisionV1p3beta1Paragraph]),
    -- | Additional information detected for the block.
    property :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Block' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Block ::
  GoogleCloudVisionV1p3beta1Block
newGoogleCloudVisionV1p3beta1Block =
  GoogleCloudVisionV1p3beta1Block
    { blockType = Core.Nothing,
      boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      paragraphs = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Block where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Block"
      ( \o ->
          GoogleCloudVisionV1p3beta1Block
            Core.<$> (o Core..:? "blockType")
            Core.<*> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Block where
  toJSON GoogleCloudVisionV1p3beta1Block {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockType" Core..=) Core.<$> blockType,
            ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("paragraphs" Core..=) Core.<$> paragraphs,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p3beta1BoundingPoly = GoogleCloudVisionV1p3beta1BoundingPoly
  { -- | The bounding polygon normalized vertices.
    normalizedVertices :: (Core.Maybe [GoogleCloudVisionV1p3beta1NormalizedVertex]),
    -- | The bounding polygon vertices.
    vertices :: (Core.Maybe [GoogleCloudVisionV1p3beta1Vertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1BoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1BoundingPoly ::
  GoogleCloudVisionV1p3beta1BoundingPoly
newGoogleCloudVisionV1p3beta1BoundingPoly =
  GoogleCloudVisionV1p3beta1BoundingPoly
    { normalizedVertices =
        Core.Nothing,
      vertices = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1BoundingPoly where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1BoundingPoly"
      ( \o ->
          GoogleCloudVisionV1p3beta1BoundingPoly
            Core.<$> (o Core..:? "normalizedVertices")
            Core.<*> (o Core..:? "vertices")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1BoundingPoly where
  toJSON GoogleCloudVisionV1p3beta1BoundingPoly {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedVertices" Core..=) Core.<$> normalizedVertices,
            ("vertices" Core..=) Core.<$> vertices
          ]
      )

-- | Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p3beta1ColorInfo = GoogleCloudVisionV1p3beta1ColorInfo
  { -- | RGB components of the color.
    color :: (Core.Maybe Color),
    -- | The fraction of pixels the color occupies in the image. Value in range [0, 1].
    pixelFraction :: (Core.Maybe Core.Double),
    -- | Image-specific score for this color. Value in range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ColorInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ColorInfo ::
  GoogleCloudVisionV1p3beta1ColorInfo
newGoogleCloudVisionV1p3beta1ColorInfo =
  GoogleCloudVisionV1p3beta1ColorInfo
    { color = Core.Nothing,
      pixelFraction = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1ColorInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ColorInfo"
      ( \o ->
          GoogleCloudVisionV1p3beta1ColorInfo
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "pixelFraction")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1ColorInfo where
  toJSON GoogleCloudVisionV1p3beta1ColorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("pixelFraction" Core..=) Core.<$> pixelFraction,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Single crop hint that is used to generate a new crop when serving an image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1CropHint' smart constructor.
data GoogleCloudVisionV1p3beta1CropHint = GoogleCloudVisionV1p3beta1CropHint
  { -- | The bounding polygon for the crop region. The coordinates of the bounding box are in the original image\'s scale.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Confidence of this being a salient region. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Fraction of importance of this salient region with respect to the original image.
    importanceFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1CropHint' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1CropHint ::
  GoogleCloudVisionV1p3beta1CropHint
newGoogleCloudVisionV1p3beta1CropHint =
  GoogleCloudVisionV1p3beta1CropHint
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      importanceFraction = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1CropHint where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1CropHint"
      ( \o ->
          GoogleCloudVisionV1p3beta1CropHint
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "importanceFraction")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1CropHint where
  toJSON GoogleCloudVisionV1p3beta1CropHint {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("importanceFraction" Core..=) Core.<$> importanceFraction
          ]
      )

-- | Set of crop hints that are used to generate new crops when serving images.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p3beta1CropHintsAnnotation = GoogleCloudVisionV1p3beta1CropHintsAnnotation
  { -- | Crop hint results.
    cropHints :: (Core.Maybe [GoogleCloudVisionV1p3beta1CropHint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1CropHintsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1CropHintsAnnotation ::
  GoogleCloudVisionV1p3beta1CropHintsAnnotation
newGoogleCloudVisionV1p3beta1CropHintsAnnotation =
  GoogleCloudVisionV1p3beta1CropHintsAnnotation
    { cropHints =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1CropHintsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1CropHintsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1CropHintsAnnotation
            Core.<$> (o Core..:? "cropHints")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1CropHintsAnnotation where
  toJSON GoogleCloudVisionV1p3beta1CropHintsAnnotation {..} =
    Core.object
      (Core.catMaybes [("cropHints" Core..=) Core.<$> cropHints])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p3beta1DominantColorsAnnotation = GoogleCloudVisionV1p3beta1DominantColorsAnnotation
  { -- | RGB color values with their score and pixel fraction.
    colors :: (Core.Maybe [GoogleCloudVisionV1p3beta1ColorInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1DominantColorsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1DominantColorsAnnotation ::
  GoogleCloudVisionV1p3beta1DominantColorsAnnotation
newGoogleCloudVisionV1p3beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p3beta1DominantColorsAnnotation
    { colors =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1DominantColorsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1DominantColorsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1DominantColorsAnnotation
            Core.<$> (o Core..:? "colors")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1DominantColorsAnnotation
  where
  toJSON GoogleCloudVisionV1p3beta1DominantColorsAnnotation {..} =
    Core.object (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | Set of detected entity features.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1EntityAnnotation = GoogleCloudVisionV1p3beta1EntityAnnotation
  { -- | Image region to which this entity belongs. Not produced for @LABEL_DETECTION@ features.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | __Deprecated. Use @score@ instead.__ The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Entity textual description, expressed in its @locale@ language.
    description :: (Core.Maybe Core.Text),
    -- | The language code for the locale in which the entity textual @description@ is expressed.
    locale :: (Core.Maybe Core.Text),
    -- | The location information for the detected entity. Multiple @LocationInfo@ elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.
    locations :: (Core.Maybe [GoogleCloudVisionV1p3beta1LocationInfo]),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    mid :: (Core.Maybe Core.Text),
    -- | Some entities may have optional user-supplied @Property@ (name\/value) fields, such a score or string that qualifies the entity.
    properties :: (Core.Maybe [GoogleCloudVisionV1p3beta1Property]),
    -- | Overall score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double),
    -- | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].
    topicality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1EntityAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1EntityAnnotation ::
  GoogleCloudVisionV1p3beta1EntityAnnotation
newGoogleCloudVisionV1p3beta1EntityAnnotation =
  GoogleCloudVisionV1p3beta1EntityAnnotation
    { boundingPoly =
        Core.Nothing,
      confidence = Core.Nothing,
      description = Core.Nothing,
      locale = Core.Nothing,
      locations = Core.Nothing,
      mid = Core.Nothing,
      properties = Core.Nothing,
      score = Core.Nothing,
      topicality = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1EntityAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1EntityAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1EntityAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "topicality")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1EntityAnnotation where
  toJSON GoogleCloudVisionV1p3beta1EntityAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("description" Core..=) Core.<$> description,
            ("locale" Core..=) Core.<$> locale,
            ("locations" Core..=) Core.<$> locations,
            ("mid" Core..=) Core.<$> mid,
            ("properties" Core..=) Core.<$> properties,
            ("score" Core..=) Core.<$> score,
            ("topicality" Core..=) Core.<$> topicality
          ]
      )

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1FaceAnnotation = GoogleCloudVisionV1p3beta1FaceAnnotation
  { -- | Anger likelihood.
    angerLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
      ),
    -- | Blurred likelihood.
    blurredLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
      ),
    -- | The bounding polygon around the face. The coordinates of the bounding box are in the original image\'s scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and\/or y coordinates may not be generated in the @BoundingPoly@ (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Detection confidence. Range [0, 1].
    detectionConfidence :: (Core.Maybe Core.Double),
    -- | The @fd_bounding_poly@ bounding polygon is tighter than the @boundingPoly@, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
    fdBoundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Headwear likelihood.
    headwearLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
      ),
    -- | Joy likelihood.
    joyLikelihood :: (Core.Maybe GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood),
    -- | Face landmarking confidence. Range [0, 1].
    landmarkingConfidence :: (Core.Maybe Core.Double),
    -- | Detected face landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVisionV1p3beta1FaceAnnotationLandmark]),
    -- | Yaw angle, which indicates the leftward\/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
    panAngle :: (Core.Maybe Core.Double),
    -- | Roll angle, which indicates the amount of clockwise\/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
    rollAngle :: (Core.Maybe Core.Double),
    -- | Sorrow likelihood.
    sorrowLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
      ),
    -- | Surprise likelihood.
    surpriseLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
      ),
    -- | Pitch angle, which indicates the upwards\/downwards angle that the face is pointing relative to the image\'s horizontal plane. Range [-180,180].
    tiltAngle :: (Core.Maybe Core.Double),
    -- | Under-exposed likelihood.
    underExposedLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1FaceAnnotation ::
  GoogleCloudVisionV1p3beta1FaceAnnotation
newGoogleCloudVisionV1p3beta1FaceAnnotation =
  GoogleCloudVisionV1p3beta1FaceAnnotation
    { angerLikelihood =
        Core.Nothing,
      blurredLikelihood = Core.Nothing,
      boundingPoly = Core.Nothing,
      detectionConfidence = Core.Nothing,
      fdBoundingPoly = Core.Nothing,
      headwearLikelihood = Core.Nothing,
      joyLikelihood = Core.Nothing,
      landmarkingConfidence = Core.Nothing,
      landmarks = Core.Nothing,
      panAngle = Core.Nothing,
      rollAngle = Core.Nothing,
      sorrowLikelihood = Core.Nothing,
      surpriseLikelihood = Core.Nothing,
      tiltAngle = Core.Nothing,
      underExposedLikelihood = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1FaceAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1FaceAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1FaceAnnotation
            Core.<$> (o Core..:? "angerLikelihood")
            Core.<*> (o Core..:? "blurredLikelihood")
            Core.<*> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "detectionConfidence")
            Core.<*> (o Core..:? "fdBoundingPoly")
            Core.<*> (o Core..:? "headwearLikelihood")
            Core.<*> (o Core..:? "joyLikelihood")
            Core.<*> (o Core..:? "landmarkingConfidence")
            Core.<*> (o Core..:? "landmarks")
            Core.<*> (o Core..:? "panAngle")
            Core.<*> (o Core..:? "rollAngle")
            Core.<*> (o Core..:? "sorrowLikelihood")
            Core.<*> (o Core..:? "surpriseLikelihood")
            Core.<*> (o Core..:? "tiltAngle")
            Core.<*> (o Core..:? "underExposedLikelihood")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1FaceAnnotation where
  toJSON GoogleCloudVisionV1p3beta1FaceAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angerLikelihood" Core..=) Core.<$> angerLikelihood,
            ("blurredLikelihood" Core..=) Core.<$> blurredLikelihood,
            ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("detectionConfidence" Core..=) Core.<$> detectionConfidence,
            ("fdBoundingPoly" Core..=) Core.<$> fdBoundingPoly,
            ("headwearLikelihood" Core..=) Core.<$> headwearLikelihood,
            ("joyLikelihood" Core..=) Core.<$> joyLikelihood,
            ("landmarkingConfidence" Core..=) Core.<$> landmarkingConfidence,
            ("landmarks" Core..=) Core.<$> landmarks,
            ("panAngle" Core..=) Core.<$> panAngle,
            ("rollAngle" Core..=) Core.<$> rollAngle,
            ("sorrowLikelihood" Core..=) Core.<$> sorrowLikelihood,
            ("surpriseLikelihood" Core..=) Core.<$> surpriseLikelihood,
            ("tiltAngle" Core..=) Core.<$> tiltAngle,
            ("underExposedLikelihood" Core..=)
              Core.<$> underExposedLikelihood
          ]
      )

-- | A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that @0 \<= x \< width@ or @0 \<= y \< height@.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p3beta1FaceAnnotationLandmark = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
  { -- | Face landmark position.
    position :: (Core.Maybe GoogleCloudVisionV1p3beta1Position),
    -- | Face landmark type.
    type' :: (Core.Maybe GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1FaceAnnotationLandmark ::
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
newGoogleCloudVisionV1p3beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
    { position =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1FaceAnnotationLandmark"
      ( \o ->
          GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark
  where
  toJSON GoogleCloudVisionV1p3beta1FaceAnnotationLandmark {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p3beta1GcsDestination = GoogleCloudVisionV1p3beta1GcsDestination
  { -- | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs:\/\/bucket-name\/here\/filenameprefix The output files will be created in gs:\/\/bucket-name\/here\/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs:\/\/bucket-name\/some\/location\/ The output files will be created in gs:\/\/bucket-name\/some\/location\/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too
    -- large and overflows into multiple sharded files.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1GcsDestination' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1GcsDestination ::
  GoogleCloudVisionV1p3beta1GcsDestination
newGoogleCloudVisionV1p3beta1GcsDestination =
  GoogleCloudVisionV1p3beta1GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p3beta1GcsDestination where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1GcsDestination"
      ( \o ->
          GoogleCloudVisionV1p3beta1GcsDestination
            Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1GcsDestination where
  toJSON GoogleCloudVisionV1p3beta1GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p3beta1GcsSource = GoogleCloudVisionV1p3beta1GcsSource
  { -- | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1GcsSource' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1GcsSource ::
  GoogleCloudVisionV1p3beta1GcsSource
newGoogleCloudVisionV1p3beta1GcsSource =
  GoogleCloudVisionV1p3beta1GcsSource {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p3beta1GcsSource where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1GcsSource"
      ( \o ->
          GoogleCloudVisionV1p3beta1GcsSource Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1GcsSource where
  toJSON GoogleCloudVisionV1p3beta1GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p3beta1ImageAnnotationContext = GoogleCloudVisionV1p3beta1ImageAnnotationContext
  { -- | If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.
    pageNumber :: (Core.Maybe Core.Int32),
    -- | The URI of the file used to produce the image.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImageAnnotationContext' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ImageAnnotationContext ::
  GoogleCloudVisionV1p3beta1ImageAnnotationContext
newGoogleCloudVisionV1p3beta1ImageAnnotationContext =
  GoogleCloudVisionV1p3beta1ImageAnnotationContext
    { pageNumber =
        Core.Nothing,
      uri = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ImageAnnotationContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ImageAnnotationContext"
      ( \o ->
          GoogleCloudVisionV1p3beta1ImageAnnotationContext
            Core.<$> (o Core..:? "pageNumber")
            Core.<*> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1ImageAnnotationContext
  where
  toJSON GoogleCloudVisionV1p3beta1ImageAnnotationContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageNumber" Core..=) Core.<$> pageNumber,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p3beta1ImageProperties = GoogleCloudVisionV1p3beta1ImageProperties
  { -- | If present, dominant colors completed successfully.
    dominantColors :: (Core.Maybe GoogleCloudVisionV1p3beta1DominantColorsAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImageProperties' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ImageProperties ::
  GoogleCloudVisionV1p3beta1ImageProperties
newGoogleCloudVisionV1p3beta1ImageProperties =
  GoogleCloudVisionV1p3beta1ImageProperties
    { dominantColors =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1ImageProperties where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ImageProperties"
      ( \o ->
          GoogleCloudVisionV1p3beta1ImageProperties
            Core.<$> (o Core..:? "dominantColors")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1ImageProperties where
  toJSON GoogleCloudVisionV1p3beta1ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [("dominantColors" Core..=) Core.<$> dominantColors]
      )

-- | Response message for the @ImportProductSets@ method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ImportProductSetsResponse' smart constructor.
data GoogleCloudVisionV1p3beta1ImportProductSetsResponse = GoogleCloudVisionV1p3beta1ImportProductSetsResponse
  { -- | The list of reference_images that are imported successfully.
    referenceImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1ReferenceImage]),
    -- | The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.
    statuses :: (Core.Maybe [Status])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ImportProductSetsResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ImportProductSetsResponse ::
  GoogleCloudVisionV1p3beta1ImportProductSetsResponse
newGoogleCloudVisionV1p3beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p3beta1ImportProductSetsResponse
    { referenceImages =
        Core.Nothing,
      statuses = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ImportProductSetsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ImportProductSetsResponse"
      ( \o ->
          GoogleCloudVisionV1p3beta1ImportProductSetsResponse
            Core.<$> (o Core..:? "referenceImages")
            Core.<*> (o Core..:? "statuses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1ImportProductSetsResponse
  where
  toJSON GoogleCloudVisionV1p3beta1ImportProductSetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("referenceImages" Core..=) Core.<$> referenceImages,
            ("statuses" Core..=) Core.<$> statuses
          ]
      )

-- | The desired input location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p3beta1InputConfig = GoogleCloudVisionV1p3beta1InputConfig
  { -- | File content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.
    content :: (Core.Maybe Core.Base64),
    -- | The Google Cloud Storage location to read the input from.
    gcsSource :: (Core.Maybe GoogleCloudVisionV1p3beta1GcsSource),
    -- | The type of the file. Currently only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not supported.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1InputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1InputConfig ::
  GoogleCloudVisionV1p3beta1InputConfig
newGoogleCloudVisionV1p3beta1InputConfig =
  GoogleCloudVisionV1p3beta1InputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1InputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1InputConfig"
      ( \o ->
          GoogleCloudVisionV1p3beta1InputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1InputConfig where
  toJSON GoogleCloudVisionV1p3beta1InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation = GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
  { -- | Image region to which this object belongs. This must be populated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation ::
  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
newGoogleCloudVisionV1p3beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
    { boundingPoly =
        Core.Nothing,
      languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation
  where
  toJSON GoogleCloudVisionV1p3beta1LocalizedObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Detected entity location information.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p3beta1LocationInfo = GoogleCloudVisionV1p3beta1LocationInfo
  { -- | lat\/long location coordinates.
    latLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1LocationInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1LocationInfo ::
  GoogleCloudVisionV1p3beta1LocationInfo
newGoogleCloudVisionV1p3beta1LocationInfo =
  GoogleCloudVisionV1p3beta1LocationInfo {latLng = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p3beta1LocationInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1LocationInfo"
      ( \o ->
          GoogleCloudVisionV1p3beta1LocationInfo
            Core.<$> (o Core..:? "latLng")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1LocationInfo where
  toJSON GoogleCloudVisionV1p3beta1LocationInfo {..} =
    Core.object (Core.catMaybes [("latLng" Core..=) Core.<$> latLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p3beta1NormalizedVertex = GoogleCloudVisionV1p3beta1NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1NormalizedVertex ::
  GoogleCloudVisionV1p3beta1NormalizedVertex
newGoogleCloudVisionV1p3beta1NormalizedVertex =
  GoogleCloudVisionV1p3beta1NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1NormalizedVertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1NormalizedVertex"
      ( \o ->
          GoogleCloudVisionV1p3beta1NormalizedVertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1NormalizedVertex where
  toJSON GoogleCloudVisionV1p3beta1NormalizedVertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p3beta1OperationMetadata = GoogleCloudVisionV1p3beta1OperationMetadata
  { -- | The time when the batch request was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p3beta1OperationMetadata_State),
    -- | The time when the operation result was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1OperationMetadata ::
  GoogleCloudVisionV1p3beta1OperationMetadata
newGoogleCloudVisionV1p3beta1OperationMetadata =
  GoogleCloudVisionV1p3beta1OperationMetadata
    { createTime =
        Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1OperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p3beta1OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1OperationMetadata where
  toJSON GoogleCloudVisionV1p3beta1OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The desired output location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p3beta1OutputConfig = GoogleCloudVisionV1p3beta1OutputConfig
  { -- | The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If @batch_size@ = 20, then 5 json files each containing 20 response protos will be written under the prefix @gcs_destination@.@uri@. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
    batchSize :: (Core.Maybe Core.Int32),
    -- | The Google Cloud Storage location to write the output(s) to.
    gcsDestination :: (Core.Maybe GoogleCloudVisionV1p3beta1GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1OutputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1OutputConfig ::
  GoogleCloudVisionV1p3beta1OutputConfig
newGoogleCloudVisionV1p3beta1OutputConfig =
  GoogleCloudVisionV1p3beta1OutputConfig
    { batchSize = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1OutputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1OutputConfig"
      ( \o ->
          GoogleCloudVisionV1p3beta1OutputConfig
            Core.<$> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1OutputConfig where
  toJSON GoogleCloudVisionV1p3beta1OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.<$> batchSize,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Detected page from OCR.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Page' smart constructor.
data GoogleCloudVisionV1p3beta1Page = GoogleCloudVisionV1p3beta1Page
  { -- | List of blocks of text, images etc on this page.
    blocks :: (Core.Maybe [GoogleCloudVisionV1p3beta1Block]),
    -- | Confidence of the OCR results on the page. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Additional information detected on the page.
    property :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty),
    -- | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Page' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Page ::
  GoogleCloudVisionV1p3beta1Page
newGoogleCloudVisionV1p3beta1Page =
  GoogleCloudVisionV1p3beta1Page
    { blocks = Core.Nothing,
      confidence = Core.Nothing,
      height = Core.Nothing,
      property = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Page where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Page"
      ( \o ->
          GoogleCloudVisionV1p3beta1Page
            Core.<$> (o Core..:? "blocks")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Page where
  toJSON GoogleCloudVisionV1p3beta1Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("blocks" Core..=) Core.<$> blocks,
            ("confidence" Core..=) Core.<$> confidence,
            ("height" Core..=) Core.<$> height,
            ("property" Core..=) Core.<$> property,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p3beta1Paragraph = GoogleCloudVisionV1p3beta1Paragraph
  { -- | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Confidence of the OCR results for the paragraph. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the paragraph.
    property :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty),
    -- | List of all words in this paragraph.
    words :: (Core.Maybe [GoogleCloudVisionV1p3beta1Word])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Paragraph' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Paragraph ::
  GoogleCloudVisionV1p3beta1Paragraph
newGoogleCloudVisionV1p3beta1Paragraph =
  GoogleCloudVisionV1p3beta1Paragraph
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Paragraph where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Paragraph"
      ( \o ->
          GoogleCloudVisionV1p3beta1Paragraph
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Paragraph where
  toJSON GoogleCloudVisionV1p3beta1Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Position' smart constructor.
data GoogleCloudVisionV1p3beta1Position = GoogleCloudVisionV1p3beta1Position
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double),
    -- | Z coordinate (or depth).
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Position' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Position ::
  GoogleCloudVisionV1p3beta1Position
newGoogleCloudVisionV1p3beta1Position =
  GoogleCloudVisionV1p3beta1Position
    { x = Core.Nothing,
      y = Core.Nothing,
      z = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Position where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Position"
      ( \o ->
          GoogleCloudVisionV1p3beta1Position
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Position where
  toJSON GoogleCloudVisionV1p3beta1Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | A Product contains ReferenceImages.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Product' smart constructor.
data GoogleCloudVisionV1p3beta1Product = GoogleCloudVisionV1p3beta1Product
  { -- | User-provided metadata to be stored with this product. Must be at most 4096 characters long.
    description :: (Core.Maybe Core.Text),
    -- | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the product. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID@. This field is ignored when creating a product.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.
    productCategory :: (Core.Maybe Core.Text),
    -- | Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product/labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product/labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
    productLabels :: (Core.Maybe [GoogleCloudVisionV1p3beta1ProductKeyValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Product' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Product ::
  GoogleCloudVisionV1p3beta1Product
newGoogleCloudVisionV1p3beta1Product =
  GoogleCloudVisionV1p3beta1Product
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      productCategory = Core.Nothing,
      productLabels = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Product where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Product"
      ( \o ->
          GoogleCloudVisionV1p3beta1Product
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCategory")
            Core.<*> (o Core..:? "productLabels")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Product where
  toJSON GoogleCloudVisionV1p3beta1Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("productCategory" Core..=) Core.<$> productCategory,
            ("productLabels" Core..=) Core.<$> productLabels
          ]
      )

-- | A product label represented as a key-value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p3beta1ProductKeyValue = GoogleCloudVisionV1p3beta1ProductKeyValue
  { -- | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    key :: (Core.Maybe Core.Text),
    -- | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductKeyValue' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ProductKeyValue ::
  GoogleCloudVisionV1p3beta1ProductKeyValue
newGoogleCloudVisionV1p3beta1ProductKeyValue =
  GoogleCloudVisionV1p3beta1ProductKeyValue
    { key = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1ProductKeyValue where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ProductKeyValue"
      ( \o ->
          GoogleCloudVisionV1p3beta1ProductKeyValue
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1ProductKeyValue where
  toJSON GoogleCloudVisionV1p3beta1ProductKeyValue {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | Results for a product search request.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResults = GoogleCloudVisionV1p3beta1ProductSearchResults
  { -- | Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.
    indexTime :: (Core.Maybe Core.DateTime),
    -- | List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.
    productGroupedResults ::
      ( Core.Maybe
          [GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResults' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ProductSearchResults ::
  GoogleCloudVisionV1p3beta1ProductSearchResults
newGoogleCloudVisionV1p3beta1ProductSearchResults =
  GoogleCloudVisionV1p3beta1ProductSearchResults
    { indexTime =
        Core.Nothing,
      productGroupedResults = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ProductSearchResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ProductSearchResults"
      ( \o ->
          GoogleCloudVisionV1p3beta1ProductSearchResults
            Core.<$> (o Core..:? "indexTime")
            Core.<*> (o Core..:? "productGroupedResults")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1ProductSearchResults where
  toJSON GoogleCloudVisionV1p3beta1ProductSearchResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexTime" Core..=) Core.<$> indexTime,
            ("productGroupedResults" Core..=) Core.<$> productGroupedResults,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Information about the products similar to a single product in a query image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult = GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
  { -- | The bounding polygon around the product detected in the query image.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | List of generic predictions for the object in the bounding box.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p3beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult ::
  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
newGoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
    { boundingPoly =
        Core.Nothing,
      objectAnnotations = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult"
      ( \o ->
          GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "objectAnnotations")
            Core.<*> (o Core..:? "results")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult
  where
  toJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsGroupedResult {..} =
      Core.object
        ( Core.catMaybes
            [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
              ("objectAnnotations" Core..=) Core.<$> objectAnnotations,
              ("results" Core..=) Core.<$> results
            ]
        )

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation = GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
  { -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation ::
  GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
newGoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
    { languageCode =
        Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation
  where
  toJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsObjectAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("languageCode" Core..=) Core.<$> languageCode,
              ("mid" Core..=) Core.<$> mid,
              ("name" Core..=) Core.<$> name,
              ("score" Core..=) Core.<$> score
            ]
        )

-- | Information about a product.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p3beta1ProductSearchResultsResult = GoogleCloudVisionV1p3beta1ProductSearchResultsResult
  { -- | The resource name of the image from the product that is the closest match to the query.
    image :: (Core.Maybe Core.Text),
    -- | The Product.
    product :: (Core.Maybe GoogleCloudVisionV1p3beta1Product),
    -- | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ProductSearchResultsResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ProductSearchResultsResult ::
  GoogleCloudVisionV1p3beta1ProductSearchResultsResult
newGoogleCloudVisionV1p3beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p3beta1ProductSearchResultsResult
    { image =
        Core.Nothing,
      product = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ProductSearchResultsResult"
      ( \o ->
          GoogleCloudVisionV1p3beta1ProductSearchResultsResult
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1ProductSearchResultsResult
  where
  toJSON GoogleCloudVisionV1p3beta1ProductSearchResultsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("product" Core..=) Core.<$> product,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | A @Property@ consists of a user-supplied name\/value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Property' smart constructor.
data GoogleCloudVisionV1p3beta1Property = GoogleCloudVisionV1p3beta1Property
  { -- | Name of the property.
    name :: (Core.Maybe Core.Text),
    -- | Value of numeric properties.
    uint64Value :: (Core.Maybe Core.Word64),
    -- | Value of the property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Property' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Property ::
  GoogleCloudVisionV1p3beta1Property
newGoogleCloudVisionV1p3beta1Property =
  GoogleCloudVisionV1p3beta1Property
    { name = Core.Nothing,
      uint64Value = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Property where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Property"
      ( \o ->
          GoogleCloudVisionV1p3beta1Property
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "uint64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Property where
  toJSON GoogleCloudVisionV1p3beta1Property {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("uint64Value" Core..=) Core.. Core.AsText Core.<$> uint64Value,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A @ReferenceImage@ represents a product image and its associated metadata, such as bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1ReferenceImage' smart constructor.
data GoogleCloudVisionV1p3beta1ReferenceImage = GoogleCloudVisionV1p3beta1ReferenceImage
  { -- | Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
    boundingPolys :: (Core.Maybe [GoogleCloudVisionV1p3beta1BoundingPoly]),
    -- | The resource name of the reference image. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID@. This field is ignored when creating a reference image.
    name :: (Core.Maybe Core.Text),
    -- | Required. The Google Cloud Storage URI of the reference image. The URI must start with @gs:\/\/@.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1ReferenceImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1ReferenceImage ::
  GoogleCloudVisionV1p3beta1ReferenceImage
newGoogleCloudVisionV1p3beta1ReferenceImage =
  GoogleCloudVisionV1p3beta1ReferenceImage
    { boundingPolys =
        Core.Nothing,
      name = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1ReferenceImage where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1ReferenceImage"
      ( \o ->
          GoogleCloudVisionV1p3beta1ReferenceImage
            Core.<$> (o Core..:? "boundingPolys")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1ReferenceImage where
  toJSON GoogleCloudVisionV1p3beta1ReferenceImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPolys" Core..=) Core.<$> boundingPolys,
            ("name" Core..=) Core.<$> name,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1SafeSearchAnnotation = GoogleCloudVisionV1p3beta1SafeSearchAnnotation
  { -- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
    adult :: (Core.Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult),
    -- | Likelihood that this is a medical image.
    medical :: (Core.Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical),
    -- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
    racy :: (Core.Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy),
    -- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
    spoof :: (Core.Maybe GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof),
    -- | Likelihood that this image contains violent content. Violent content may include death, serious harm, or injury to individuals or groups of individuals.
    violence ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1SafeSearchAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1SafeSearchAnnotation ::
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation
newGoogleCloudVisionV1p3beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation
    { adult =
        Core.Nothing,
      medical = Core.Nothing,
      racy = Core.Nothing,
      spoof = Core.Nothing,
      violence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1SafeSearchAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1SafeSearchAnnotation
            Core.<$> (o Core..:? "adult")
            Core.<*> (o Core..:? "medical")
            Core.<*> (o Core..:? "racy")
            Core.<*> (o Core..:? "spoof")
            Core.<*> (o Core..:? "violence")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1SafeSearchAnnotation where
  toJSON GoogleCloudVisionV1p3beta1SafeSearchAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("adult" Core..=) Core.<$> adult,
            ("medical" Core..=) Core.<$> medical,
            ("racy" Core..=) Core.<$> racy,
            ("spoof" Core..=) Core.<$> spoof,
            ("violence" Core..=) Core.<$> violence
          ]
      )

-- | A single symbol representation.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Symbol' smart constructor.
data GoogleCloudVisionV1p3beta1Symbol = GoogleCloudVisionV1p3beta1Symbol
  { -- | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Confidence of the OCR results for the symbol. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the symbol.
    property :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty),
    -- | The actual UTF-8 representation of the symbol.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Symbol' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Symbol ::
  GoogleCloudVisionV1p3beta1Symbol
newGoogleCloudVisionV1p3beta1Symbol =
  GoogleCloudVisionV1p3beta1Symbol
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Symbol where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Symbol"
      ( \o ->
          GoogleCloudVisionV1p3beta1Symbol
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Symbol where
  toJSON GoogleCloudVisionV1p3beta1Symbol {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotation = GoogleCloudVisionV1p3beta1TextAnnotation
  { -- | List of pages detected by OCR.
    pages :: (Core.Maybe [GoogleCloudVisionV1p3beta1Page]),
    -- | UTF-8 text detected on the pages.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1TextAnnotation ::
  GoogleCloudVisionV1p3beta1TextAnnotation
newGoogleCloudVisionV1p3beta1TextAnnotation =
  GoogleCloudVisionV1p3beta1TextAnnotation
    { pages = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1TextAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1TextAnnotation"
      ( \o ->
          GoogleCloudVisionV1p3beta1TextAnnotation
            Core.<$> (o Core..:? "pages")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1TextAnnotation where
  toJSON GoogleCloudVisionV1p3beta1TextAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [("pages" Core..=) Core.<$> pages, ("text" Core..=) Core.<$> text]
      )

-- | Detected start or end of a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
  { -- | True if break prepends the element.
    isPrefix :: (Core.Maybe Core.Bool),
    -- | Detected break type.
    type' ::
      ( Core.Maybe
          GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak ::
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
newGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
    { isPrefix =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak"
      ( \o ->
          GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
            Core.<$> (o Core..:? "isPrefix")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak
  where
  toJSON GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("isPrefix" Core..=) Core.<$> isPrefix,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detected language for a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage = GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
  { -- | Confidence of detected language. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage ::
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
newGoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
    { confidence =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage"
      ( \o ->
          GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage
  where
  toJSON GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Additional information detected on the structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p3beta1TextAnnotationTextProperty = GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
  { -- | Detected start or end of a text segment.
    detectedBreak :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak),
    -- | A list of detected languages together with confidence.
    detectedLanguages ::
      ( Core.Maybe
          [GoogleCloudVisionV1p3beta1TextAnnotationDetectedLanguage]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1TextAnnotationTextProperty ::
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
newGoogleCloudVisionV1p3beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
    { detectedBreak =
        Core.Nothing,
      detectedLanguages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1TextAnnotationTextProperty"
      ( \o ->
          GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
            Core.<$> (o Core..:? "detectedBreak")
            Core.<*> (o Core..:? "detectedLanguages")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1TextAnnotationTextProperty
  where
  toJSON GoogleCloudVisionV1p3beta1TextAnnotationTextProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedBreak" Core..=) Core.<$> detectedBreak,
            ("detectedLanguages" Core..=) Core.<$> detectedLanguages
          ]
      )

-- | A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Vertex' smart constructor.
data GoogleCloudVisionV1p3beta1Vertex = GoogleCloudVisionV1p3beta1Vertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Int32),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Vertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Vertex ::
  GoogleCloudVisionV1p3beta1Vertex
newGoogleCloudVisionV1p3beta1Vertex =
  GoogleCloudVisionV1p3beta1Vertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Vertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Vertex"
      ( \o ->
          GoogleCloudVisionV1p3beta1Vertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Vertex where
  toJSON GoogleCloudVisionV1p3beta1Vertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetection = GoogleCloudVisionV1p3beta1WebDetection
  { -- | The service\'s best guess as to the topic of the request image. Inferred from similar images on the open web.
    bestGuessLabels :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebLabel]),
    -- | Fully matching images from the Internet. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage]),
    -- | Web pages containing the matching images from the Internet.
    pagesWithMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebPage]),
    -- | Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage]),
    -- | The visually similar image results.
    visuallySimilarImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage]),
    -- | Deduced entities from similar images on the Internet.
    webEntities :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebEntity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetection' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1WebDetection ::
  GoogleCloudVisionV1p3beta1WebDetection
newGoogleCloudVisionV1p3beta1WebDetection =
  GoogleCloudVisionV1p3beta1WebDetection
    { bestGuessLabels =
        Core.Nothing,
      fullMatchingImages = Core.Nothing,
      pagesWithMatchingImages = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      visuallySimilarImages = Core.Nothing,
      webEntities = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1WebDetection where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1WebDetection"
      ( \o ->
          GoogleCloudVisionV1p3beta1WebDetection
            Core.<$> (o Core..:? "bestGuessLabels")
            Core.<*> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pagesWithMatchingImages")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "visuallySimilarImages")
            Core.<*> (o Core..:? "webEntities")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1WebDetection where
  toJSON GoogleCloudVisionV1p3beta1WebDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestGuessLabels" Core..=) Core.<$> bestGuessLabels,
            ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pagesWithMatchingImages" Core..=)
              Core.<$> pagesWithMatchingImages,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("visuallySimilarImages" Core..=) Core.<$> visuallySimilarImages,
            ("webEntities" Core..=) Core.<$> webEntities
          ]
      )

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebEntity = GoogleCloudVisionV1p3beta1WebDetectionWebEntity
  { -- | Canonical description of the entity, in English.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID.
    entityId :: (Core.Maybe Core.Text),
    -- | Overall relevancy score for the entity. Not normalized and not comparable across different image queries.
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebEntity' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1WebDetectionWebEntity ::
  GoogleCloudVisionV1p3beta1WebDetectionWebEntity
newGoogleCloudVisionV1p3beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p3beta1WebDetectionWebEntity
    { description =
        Core.Nothing,
      entityId = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1WebDetectionWebEntity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1WebDetectionWebEntity"
      ( \o ->
          GoogleCloudVisionV1p3beta1WebDetectionWebEntity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p3beta1WebDetectionWebEntity
  where
  toJSON GoogleCloudVisionV1p3beta1WebDetectionWebEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Metadata for online images.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebImage = GoogleCloudVisionV1p3beta1WebDetectionWebImage
  { -- | (Deprecated) Overall relevancy score for the image.
    score :: (Core.Maybe Core.Double),
    -- | The result image URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1WebDetectionWebImage ::
  GoogleCloudVisionV1p3beta1WebDetectionWebImage
newGoogleCloudVisionV1p3beta1WebDetectionWebImage =
  GoogleCloudVisionV1p3beta1WebDetectionWebImage
    { score =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1WebDetectionWebImage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1WebDetectionWebImage"
      ( \o ->
          GoogleCloudVisionV1p3beta1WebDetectionWebImage
            Core.<$> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1WebDetectionWebImage where
  toJSON GoogleCloudVisionV1p3beta1WebDetectionWebImage {..} =
    Core.object
      ( Core.catMaybes
          [("score" Core..=) Core.<$> score, ("url" Core..=) Core.<$> url]
      )

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebLabel = GoogleCloudVisionV1p3beta1WebDetectionWebLabel
  { -- | Label for extra metadata.
    label :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for @label@, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebLabel' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1WebDetectionWebLabel ::
  GoogleCloudVisionV1p3beta1WebDetectionWebLabel
newGoogleCloudVisionV1p3beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p3beta1WebDetectionWebLabel
    { label =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1WebDetectionWebLabel
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1WebDetectionWebLabel"
      ( \o ->
          GoogleCloudVisionV1p3beta1WebDetectionWebLabel
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1WebDetectionWebLabel where
  toJSON GoogleCloudVisionV1p3beta1WebDetectionWebLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Metadata for web pages.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p3beta1WebDetectionWebPage = GoogleCloudVisionV1p3beta1WebDetectionWebPage
  { -- | Fully matching images on the page. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage]),
    -- | Title for the web page, may contain HTML markups.
    pageTitle :: (Core.Maybe Core.Text),
    -- | Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p3beta1WebDetectionWebImage]),
    -- | (Deprecated) Overall relevancy score for the web page.
    score :: (Core.Maybe Core.Double),
    -- | The result web page URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1WebDetectionWebPage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1WebDetectionWebPage ::
  GoogleCloudVisionV1p3beta1WebDetectionWebPage
newGoogleCloudVisionV1p3beta1WebDetectionWebPage =
  GoogleCloudVisionV1p3beta1WebDetectionWebPage
    { fullMatchingImages =
        Core.Nothing,
      pageTitle = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      score = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p3beta1WebDetectionWebPage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1WebDetectionWebPage"
      ( \o ->
          GoogleCloudVisionV1p3beta1WebDetectionWebPage
            Core.<$> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pageTitle")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1WebDetectionWebPage where
  toJSON GoogleCloudVisionV1p3beta1WebDetectionWebPage {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pageTitle" Core..=) Core.<$> pageTitle,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("score" Core..=) Core.<$> score,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A word representation.
--
-- /See:/ 'newGoogleCloudVisionV1p3beta1Word' smart constructor.
data GoogleCloudVisionV1p3beta1Word = GoogleCloudVisionV1p3beta1Word
  { -- | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p3beta1BoundingPoly),
    -- | Confidence of the OCR results for the word. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the word.
    property :: (Core.Maybe GoogleCloudVisionV1p3beta1TextAnnotationTextProperty),
    -- | List of symbols in the word. The order of the symbols follows the natural reading order.
    symbols :: (Core.Maybe [GoogleCloudVisionV1p3beta1Symbol])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p3beta1Word' with the minimum fields required to make a request.
newGoogleCloudVisionV1p3beta1Word ::
  GoogleCloudVisionV1p3beta1Word
newGoogleCloudVisionV1p3beta1Word =
  GoogleCloudVisionV1p3beta1Word
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      symbols = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p3beta1Word where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p3beta1Word"
      ( \o ->
          GoogleCloudVisionV1p3beta1Word
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "symbols")
      )

instance Core.ToJSON GoogleCloudVisionV1p3beta1Word where
  toJSON GoogleCloudVisionV1p3beta1Word {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("symbols" Core..=) Core.<$> symbols
          ]
      )

-- | Response to a single file annotation request. A file may contain one or more images, which individually have their own responses.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1AnnotateFileResponse' smart constructor.
data GoogleCloudVisionV1p4beta1AnnotateFileResponse = GoogleCloudVisionV1p4beta1AnnotateFileResponse
  { -- | If set, represents the error message for the failed request. The @responses@ field will not be set in this case.
    error :: (Core.Maybe Status),
    -- | Information about the file for which this response is generated.
    inputConfig :: (Core.Maybe GoogleCloudVisionV1p4beta1InputConfig),
    -- | Individual responses to images found within the file. This field will be empty if the @error@ field is set.
    responses :: (Core.Maybe [GoogleCloudVisionV1p4beta1AnnotateImageResponse]),
    -- | This field gives the total number of pages in the file.
    totalPages :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1AnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1AnnotateFileResponse ::
  GoogleCloudVisionV1p4beta1AnnotateFileResponse
newGoogleCloudVisionV1p4beta1AnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AnnotateFileResponse
    { error =
        Core.Nothing,
      inputConfig = Core.Nothing,
      responses = Core.Nothing,
      totalPages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1AnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1AnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1AnnotateFileResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "inputConfig")
            Core.<*> (o Core..:? "responses")
            Core.<*> (o Core..:? "totalPages")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1AnnotateFileResponse where
  toJSON GoogleCloudVisionV1p4beta1AnnotateFileResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("inputConfig" Core..=) Core.<$> inputConfig,
            ("responses" Core..=) Core.<$> responses,
            ("totalPages" Core..=) Core.<$> totalPages
          ]
      )

-- | Response to an image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1AnnotateImageResponse' smart constructor.
data GoogleCloudVisionV1p4beta1AnnotateImageResponse = GoogleCloudVisionV1p4beta1AnnotateImageResponse
  { -- | If present, contextual information is needed to understand where this image comes from.
    context :: (Core.Maybe GoogleCloudVisionV1p4beta1ImageAnnotationContext),
    -- | If present, crop hints have completed successfully.
    cropHintsAnnotation :: (Core.Maybe GoogleCloudVisionV1p4beta1CropHintsAnnotation),
    -- | If set, represents the error message for the operation. Note that filled-in image annotations are guaranteed to be correct, even when @error@ is set.
    error :: (Core.Maybe Status),
    -- | If present, face detection has completed successfully.
    faceAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1FaceAnnotation]),
    -- | If present, text (OCR) detection or document (OCR) text detection has completed successfully. This annotation provides the structural hierarchy for the OCR detected text.
    fullTextAnnotation :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotation),
    -- | If present, image properties were extracted successfully.
    imagePropertiesAnnotation :: (Core.Maybe GoogleCloudVisionV1p4beta1ImageProperties),
    -- | If present, label detection has completed successfully.
    labelAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation]),
    -- | If present, landmark detection has completed successfully.
    landmarkAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation]),
    -- | If present, localized object detection has completed successfully. This will be sorted descending by confidence score.
    localizedObjectAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation]),
    -- | If present, logo detection has completed successfully.
    logoAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation]),
    -- | If present, product search has completed successfully.
    productSearchResults :: (Core.Maybe GoogleCloudVisionV1p4beta1ProductSearchResults),
    -- | If present, safe-search annotation has completed successfully.
    safeSearchAnnotation :: (Core.Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation),
    -- | If present, text (OCR) detection has completed successfully.
    textAnnotations :: (Core.Maybe [GoogleCloudVisionV1p4beta1EntityAnnotation]),
    -- | If present, web detection has completed successfully.
    webDetection :: (Core.Maybe GoogleCloudVisionV1p4beta1WebDetection)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1AnnotateImageResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1AnnotateImageResponse ::
  GoogleCloudVisionV1p4beta1AnnotateImageResponse
newGoogleCloudVisionV1p4beta1AnnotateImageResponse =
  GoogleCloudVisionV1p4beta1AnnotateImageResponse
    { context =
        Core.Nothing,
      cropHintsAnnotation = Core.Nothing,
      error = Core.Nothing,
      faceAnnotations = Core.Nothing,
      fullTextAnnotation = Core.Nothing,
      imagePropertiesAnnotation = Core.Nothing,
      labelAnnotations = Core.Nothing,
      landmarkAnnotations = Core.Nothing,
      localizedObjectAnnotations = Core.Nothing,
      logoAnnotations = Core.Nothing,
      productSearchResults = Core.Nothing,
      safeSearchAnnotation = Core.Nothing,
      textAnnotations = Core.Nothing,
      webDetection = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1AnnotateImageResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1AnnotateImageResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1AnnotateImageResponse
            Core.<$> (o Core..:? "context")
            Core.<*> (o Core..:? "cropHintsAnnotation")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "faceAnnotations")
            Core.<*> (o Core..:? "fullTextAnnotation")
            Core.<*> (o Core..:? "imagePropertiesAnnotation")
            Core.<*> (o Core..:? "labelAnnotations")
            Core.<*> (o Core..:? "landmarkAnnotations")
            Core.<*> (o Core..:? "localizedObjectAnnotations")
            Core.<*> (o Core..:? "logoAnnotations")
            Core.<*> (o Core..:? "productSearchResults")
            Core.<*> (o Core..:? "safeSearchAnnotation")
            Core.<*> (o Core..:? "textAnnotations")
            Core.<*> (o Core..:? "webDetection")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1AnnotateImageResponse
  where
  toJSON GoogleCloudVisionV1p4beta1AnnotateImageResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("context" Core..=) Core.<$> context,
            ("cropHintsAnnotation" Core..=) Core.<$> cropHintsAnnotation,
            ("error" Core..=) Core.<$> error,
            ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
            ("fullTextAnnotation" Core..=) Core.<$> fullTextAnnotation,
            ("imagePropertiesAnnotation" Core..=)
              Core.<$> imagePropertiesAnnotation,
            ("labelAnnotations" Core..=) Core.<$> labelAnnotations,
            ("landmarkAnnotations" Core..=) Core.<$> landmarkAnnotations,
            ("localizedObjectAnnotations" Core..=)
              Core.<$> localizedObjectAnnotations,
            ("logoAnnotations" Core..=) Core.<$> logoAnnotations,
            ("productSearchResults" Core..=) Core.<$> productSearchResults,
            ("safeSearchAnnotation" Core..=) Core.<$> safeSearchAnnotation,
            ("textAnnotations" Core..=) Core.<$> textAnnotations,
            ("webDetection" Core..=) Core.<$> webDetection
          ]
      )

-- | The response for a single offline file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse = GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
  { -- | The output location and metadata from AsyncAnnotateFileRequest.
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p4beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse ::
  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
newGoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse =
  GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
    { outputConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse
  where
  toJSON GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse {..} =
    Core.object
      (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | Response to an async batch file annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse = GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
  { -- | The list of file annotation responses, one for each request in AsyncBatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p4beta1AsyncAnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse
  where
  toJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateFilesResponse {..} =
      Core.object
        (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Response to an async batch image annotation request.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse = GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
  { -- | The output location and metadata from AsyncBatchAnnotateImagesRequest.
    outputConfig :: (Core.Maybe GoogleCloudVisionV1p4beta1OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse ::
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
newGoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse =
  GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
    { outputConfig =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
            Core.<$> (o Core..:? "outputConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse
  where
  toJSON
    GoogleCloudVisionV1p4beta1AsyncBatchAnnotateImagesResponse {..} =
      Core.object
        (Core.catMaybes [("outputConfig" Core..=) Core.<$> outputConfig])

-- | A list of file annotation responses.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse' smart constructor.
newtype GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse = GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
  { -- | The list of file annotation responses, each response corresponding to each AnnotateFileRequest in BatchAnnotateFilesRequest.
    responses :: (Core.Maybe [GoogleCloudVisionV1p4beta1AnnotateFileResponse])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse ::
  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
newGoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse =
  GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
    { responses =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
            Core.<$> (o Core..:? "responses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse
  where
  toJSON GoogleCloudVisionV1p4beta1BatchAnnotateFilesResponse {..} =
    Core.object
      (Core.catMaybes [("responses" Core..=) Core.<$> responses])

-- | Metadata for the batch operations such as the current state. This is included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1BatchOperationMetadata' smart constructor.
data GoogleCloudVisionV1p4beta1BatchOperationMetadata = GoogleCloudVisionV1p4beta1BatchOperationMetadata
  { -- | The time when the batch request is finished and google.longrunning.Operation.done is set to true.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p4beta1BatchOperationMetadata_State),
    -- | The time when the batch request was submitted to the server.
    submitTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1BatchOperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1BatchOperationMetadata ::
  GoogleCloudVisionV1p4beta1BatchOperationMetadata
newGoogleCloudVisionV1p4beta1BatchOperationMetadata =
  GoogleCloudVisionV1p4beta1BatchOperationMetadata
    { endTime =
        Core.Nothing,
      state = Core.Nothing,
      submitTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1BatchOperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1BatchOperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p4beta1BatchOperationMetadata
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "submitTime")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1BatchOperationMetadata
  where
  toJSON GoogleCloudVisionV1p4beta1BatchOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("state" Core..=) Core.<$> state,
            ("submitTime" Core..=) Core.<$> submitTime
          ]
      )

-- | Logical element on the page.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Block' smart constructor.
data GoogleCloudVisionV1p4beta1Block = GoogleCloudVisionV1p4beta1Block
  { -- | Detected block type (text, image etc) for this block.
    blockType :: (Core.Maybe GoogleCloudVisionV1p4beta1Block_BlockType),
    -- | The bounding box for the block. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Confidence of the OCR results on the block. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | List of paragraphs in this block (if this blocks is of type text).
    paragraphs :: (Core.Maybe [GoogleCloudVisionV1p4beta1Paragraph]),
    -- | Additional information detected for the block.
    property :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Block' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Block ::
  GoogleCloudVisionV1p4beta1Block
newGoogleCloudVisionV1p4beta1Block =
  GoogleCloudVisionV1p4beta1Block
    { blockType = Core.Nothing,
      boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      paragraphs = Core.Nothing,
      property = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Block where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Block"
      ( \o ->
          GoogleCloudVisionV1p4beta1Block
            Core.<$> (o Core..:? "blockType")
            Core.<*> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "paragraphs")
            Core.<*> (o Core..:? "property")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Block where
  toJSON GoogleCloudVisionV1p4beta1Block {..} =
    Core.object
      ( Core.catMaybes
          [ ("blockType" Core..=) Core.<$> blockType,
            ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("paragraphs" Core..=) Core.<$> paragraphs,
            ("property" Core..=) Core.<$> property
          ]
      )

-- | A bounding polygon for the detected image annotation.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1BoundingPoly' smart constructor.
data GoogleCloudVisionV1p4beta1BoundingPoly = GoogleCloudVisionV1p4beta1BoundingPoly
  { -- | The bounding polygon normalized vertices.
    normalizedVertices :: (Core.Maybe [GoogleCloudVisionV1p4beta1NormalizedVertex]),
    -- | The bounding polygon vertices.
    vertices :: (Core.Maybe [GoogleCloudVisionV1p4beta1Vertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1BoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1BoundingPoly ::
  GoogleCloudVisionV1p4beta1BoundingPoly
newGoogleCloudVisionV1p4beta1BoundingPoly =
  GoogleCloudVisionV1p4beta1BoundingPoly
    { normalizedVertices =
        Core.Nothing,
      vertices = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1BoundingPoly where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1BoundingPoly"
      ( \o ->
          GoogleCloudVisionV1p4beta1BoundingPoly
            Core.<$> (o Core..:? "normalizedVertices")
            Core.<*> (o Core..:? "vertices")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1BoundingPoly where
  toJSON GoogleCloudVisionV1p4beta1BoundingPoly {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedVertices" Core..=) Core.<$> normalizedVertices,
            ("vertices" Core..=) Core.<$> vertices
          ]
      )

-- | A Celebrity is a group of Faces with an identity.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Celebrity' smart constructor.
data GoogleCloudVisionV1p4beta1Celebrity = GoogleCloudVisionV1p4beta1Celebrity
  { -- | The Celebrity\'s description.
    description :: (Core.Maybe Core.Text),
    -- | The Celebrity\'s display name.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the preloaded Celebrity. Has the format @builtin\/{mid}@.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Celebrity' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Celebrity ::
  GoogleCloudVisionV1p4beta1Celebrity
newGoogleCloudVisionV1p4beta1Celebrity =
  GoogleCloudVisionV1p4beta1Celebrity
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Celebrity where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Celebrity"
      ( \o ->
          GoogleCloudVisionV1p4beta1Celebrity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Celebrity where
  toJSON GoogleCloudVisionV1p4beta1Celebrity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Color information consists of RGB channels, score, and the fraction of the image that the color occupies in the image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ColorInfo' smart constructor.
data GoogleCloudVisionV1p4beta1ColorInfo = GoogleCloudVisionV1p4beta1ColorInfo
  { -- | RGB components of the color.
    color :: (Core.Maybe Color),
    -- | The fraction of pixels the color occupies in the image. Value in range [0, 1].
    pixelFraction :: (Core.Maybe Core.Double),
    -- | Image-specific score for this color. Value in range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ColorInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ColorInfo ::
  GoogleCloudVisionV1p4beta1ColorInfo
newGoogleCloudVisionV1p4beta1ColorInfo =
  GoogleCloudVisionV1p4beta1ColorInfo
    { color = Core.Nothing,
      pixelFraction = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1ColorInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ColorInfo"
      ( \o ->
          GoogleCloudVisionV1p4beta1ColorInfo
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "pixelFraction")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1ColorInfo where
  toJSON GoogleCloudVisionV1p4beta1ColorInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("pixelFraction" Core..=) Core.<$> pixelFraction,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Single crop hint that is used to generate a new crop when serving an image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1CropHint' smart constructor.
data GoogleCloudVisionV1p4beta1CropHint = GoogleCloudVisionV1p4beta1CropHint
  { -- | The bounding polygon for the crop region. The coordinates of the bounding box are in the original image\'s scale.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Confidence of this being a salient region. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Fraction of importance of this salient region with respect to the original image.
    importanceFraction :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1CropHint' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1CropHint ::
  GoogleCloudVisionV1p4beta1CropHint
newGoogleCloudVisionV1p4beta1CropHint =
  GoogleCloudVisionV1p4beta1CropHint
    { boundingPoly = Core.Nothing,
      confidence = Core.Nothing,
      importanceFraction = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1CropHint where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1CropHint"
      ( \o ->
          GoogleCloudVisionV1p4beta1CropHint
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "importanceFraction")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1CropHint where
  toJSON GoogleCloudVisionV1p4beta1CropHint {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("importanceFraction" Core..=) Core.<$> importanceFraction
          ]
      )

-- | Set of crop hints that are used to generate new crops when serving images.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1CropHintsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p4beta1CropHintsAnnotation = GoogleCloudVisionV1p4beta1CropHintsAnnotation
  { -- | Crop hint results.
    cropHints :: (Core.Maybe [GoogleCloudVisionV1p4beta1CropHint])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1CropHintsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1CropHintsAnnotation ::
  GoogleCloudVisionV1p4beta1CropHintsAnnotation
newGoogleCloudVisionV1p4beta1CropHintsAnnotation =
  GoogleCloudVisionV1p4beta1CropHintsAnnotation
    { cropHints =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1CropHintsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1CropHintsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1CropHintsAnnotation
            Core.<$> (o Core..:? "cropHints")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1CropHintsAnnotation where
  toJSON GoogleCloudVisionV1p4beta1CropHintsAnnotation {..} =
    Core.object
      (Core.catMaybes [("cropHints" Core..=) Core.<$> cropHints])

-- | Set of dominant colors and their corresponding scores.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1DominantColorsAnnotation' smart constructor.
newtype GoogleCloudVisionV1p4beta1DominantColorsAnnotation = GoogleCloudVisionV1p4beta1DominantColorsAnnotation
  { -- | RGB color values with their score and pixel fraction.
    colors :: (Core.Maybe [GoogleCloudVisionV1p4beta1ColorInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1DominantColorsAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1DominantColorsAnnotation ::
  GoogleCloudVisionV1p4beta1DominantColorsAnnotation
newGoogleCloudVisionV1p4beta1DominantColorsAnnotation =
  GoogleCloudVisionV1p4beta1DominantColorsAnnotation
    { colors =
        Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1DominantColorsAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1DominantColorsAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1DominantColorsAnnotation
            Core.<$> (o Core..:? "colors")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1DominantColorsAnnotation
  where
  toJSON GoogleCloudVisionV1p4beta1DominantColorsAnnotation {..} =
    Core.object (Core.catMaybes [("colors" Core..=) Core.<$> colors])

-- | Set of detected entity features.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1EntityAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1EntityAnnotation = GoogleCloudVisionV1p4beta1EntityAnnotation
  { -- | Image region to which this entity belongs. Not produced for @LABEL_DETECTION@ features.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | __Deprecated. Use @score@ instead.__ The accuracy of the entity detection in an image. For example, for an image in which the \"Eiffel Tower\" entity is detected, this field represents the confidence that there is a tower in the query image. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Entity textual description, expressed in its @locale@ language.
    description :: (Core.Maybe Core.Text),
    -- | The language code for the locale in which the entity textual @description@ is expressed.
    locale :: (Core.Maybe Core.Text),
    -- | The location information for the detected entity. Multiple @LocationInfo@ elements can be present because one location may indicate the location of the scene in the image, and another location may indicate the location of the place where the image was taken. Location information is usually present for landmarks.
    locations :: (Core.Maybe [GoogleCloudVisionV1p4beta1LocationInfo]),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    mid :: (Core.Maybe Core.Text),
    -- | Some entities may have optional user-supplied @Property@ (name\/value) fields, such a score or string that qualifies the entity.
    properties :: (Core.Maybe [GoogleCloudVisionV1p4beta1Property]),
    -- | Overall score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double),
    -- | The relevancy of the ICA (Image Content Annotation) label to the image. For example, the relevancy of \"tower\" is likely higher to an image containing the detected \"Eiffel Tower\" than to an image containing a detected distant towering building, even though the confidence that there is a tower in each image may be the same. Range [0, 1].
    topicality :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1EntityAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1EntityAnnotation ::
  GoogleCloudVisionV1p4beta1EntityAnnotation
newGoogleCloudVisionV1p4beta1EntityAnnotation =
  GoogleCloudVisionV1p4beta1EntityAnnotation
    { boundingPoly =
        Core.Nothing,
      confidence = Core.Nothing,
      description = Core.Nothing,
      locale = Core.Nothing,
      locations = Core.Nothing,
      mid = Core.Nothing,
      properties = Core.Nothing,
      score = Core.Nothing,
      topicality = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1EntityAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1EntityAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1EntityAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "locations")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "topicality")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1EntityAnnotation where
  toJSON GoogleCloudVisionV1p4beta1EntityAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("confidence" Core..=) Core.<$> confidence,
            ("description" Core..=) Core.<$> description,
            ("locale" Core..=) Core.<$> locale,
            ("locations" Core..=) Core.<$> locations,
            ("mid" Core..=) Core.<$> mid,
            ("properties" Core..=) Core.<$> properties,
            ("score" Core..=) Core.<$> score,
            ("topicality" Core..=) Core.<$> topicality
          ]
      )

-- | A face annotation object contains the results of face detection.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1FaceAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1FaceAnnotation = GoogleCloudVisionV1p4beta1FaceAnnotation
  { -- | Anger likelihood.
    angerLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
      ),
    -- | Blurred likelihood.
    blurredLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
      ),
    -- | The bounding polygon around the face. The coordinates of the bounding box are in the original image\'s scale. The bounding box is computed to \"frame\" the face in accordance with human expectations. It is based on the landmarker results. Note that one or more x and\/or y coordinates may not be generated in the @BoundingPoly@ (the polygon will be unbounded) if only a partial face appears in the image to be annotated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Detection confidence. Range [0, 1].
    detectionConfidence :: (Core.Maybe Core.Double),
    -- | The @fd_bounding_poly@ bounding polygon is tighter than the @boundingPoly@, and encloses only the skin part of the face. Typically, it is used to eliminate the face from any image analysis that detects the \"amount of skin\" visible in an image. It is not based on the landmarker results, only on the initial face detection, hence the fd (face detection) prefix.
    fdBoundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Headwear likelihood.
    headwearLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
      ),
    -- | Joy likelihood.
    joyLikelihood :: (Core.Maybe GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood),
    -- | Face landmarking confidence. Range [0, 1].
    landmarkingConfidence :: (Core.Maybe Core.Double),
    -- | Detected face landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVisionV1p4beta1FaceAnnotationLandmark]),
    -- | Yaw angle, which indicates the leftward\/rightward angle that the face is pointing relative to the vertical plane perpendicular to the image. Range [-180,180].
    panAngle :: (Core.Maybe Core.Double),
    -- | Additional recognition information. Only computed if image/context.face/recognition_params is provided, __and__ a match is found to a Celebrity in the input CelebritySet. This field is sorted in order of decreasing confidence values.
    recognitionResult :: (Core.Maybe [GoogleCloudVisionV1p4beta1FaceRecognitionResult]),
    -- | Roll angle, which indicates the amount of clockwise\/anti-clockwise rotation of the face relative to the image vertical about the axis perpendicular to the face. Range [-180,180].
    rollAngle :: (Core.Maybe Core.Double),
    -- | Sorrow likelihood.
    sorrowLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
      ),
    -- | Surprise likelihood.
    surpriseLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
      ),
    -- | Pitch angle, which indicates the upwards\/downwards angle that the face is pointing relative to the image\'s horizontal plane. Range [-180,180].
    tiltAngle :: (Core.Maybe Core.Double),
    -- | Under-exposed likelihood.
    underExposedLikelihood ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1FaceAnnotation ::
  GoogleCloudVisionV1p4beta1FaceAnnotation
newGoogleCloudVisionV1p4beta1FaceAnnotation =
  GoogleCloudVisionV1p4beta1FaceAnnotation
    { angerLikelihood =
        Core.Nothing,
      blurredLikelihood = Core.Nothing,
      boundingPoly = Core.Nothing,
      detectionConfidence = Core.Nothing,
      fdBoundingPoly = Core.Nothing,
      headwearLikelihood = Core.Nothing,
      joyLikelihood = Core.Nothing,
      landmarkingConfidence = Core.Nothing,
      landmarks = Core.Nothing,
      panAngle = Core.Nothing,
      recognitionResult = Core.Nothing,
      rollAngle = Core.Nothing,
      sorrowLikelihood = Core.Nothing,
      surpriseLikelihood = Core.Nothing,
      tiltAngle = Core.Nothing,
      underExposedLikelihood = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1FaceAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1FaceAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1FaceAnnotation
            Core.<$> (o Core..:? "angerLikelihood")
            Core.<*> (o Core..:? "blurredLikelihood")
            Core.<*> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "detectionConfidence")
            Core.<*> (o Core..:? "fdBoundingPoly")
            Core.<*> (o Core..:? "headwearLikelihood")
            Core.<*> (o Core..:? "joyLikelihood")
            Core.<*> (o Core..:? "landmarkingConfidence")
            Core.<*> (o Core..:? "landmarks")
            Core.<*> (o Core..:? "panAngle")
            Core.<*> (o Core..:? "recognitionResult")
            Core.<*> (o Core..:? "rollAngle")
            Core.<*> (o Core..:? "sorrowLikelihood")
            Core.<*> (o Core..:? "surpriseLikelihood")
            Core.<*> (o Core..:? "tiltAngle")
            Core.<*> (o Core..:? "underExposedLikelihood")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1FaceAnnotation where
  toJSON GoogleCloudVisionV1p4beta1FaceAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("angerLikelihood" Core..=) Core.<$> angerLikelihood,
            ("blurredLikelihood" Core..=) Core.<$> blurredLikelihood,
            ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("detectionConfidence" Core..=) Core.<$> detectionConfidence,
            ("fdBoundingPoly" Core..=) Core.<$> fdBoundingPoly,
            ("headwearLikelihood" Core..=) Core.<$> headwearLikelihood,
            ("joyLikelihood" Core..=) Core.<$> joyLikelihood,
            ("landmarkingConfidence" Core..=) Core.<$> landmarkingConfidence,
            ("landmarks" Core..=) Core.<$> landmarks,
            ("panAngle" Core..=) Core.<$> panAngle,
            ("recognitionResult" Core..=) Core.<$> recognitionResult,
            ("rollAngle" Core..=) Core.<$> rollAngle,
            ("sorrowLikelihood" Core..=) Core.<$> sorrowLikelihood,
            ("surpriseLikelihood" Core..=) Core.<$> surpriseLikelihood,
            ("tiltAngle" Core..=) Core.<$> tiltAngle,
            ("underExposedLikelihood" Core..=)
              Core.<$> underExposedLikelihood
          ]
      )

-- | A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that @0 \<= x \< width@ or @0 \<= y \< height@.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1FaceAnnotationLandmark' smart constructor.
data GoogleCloudVisionV1p4beta1FaceAnnotationLandmark = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
  { -- | Face landmark position.
    position :: (Core.Maybe GoogleCloudVisionV1p4beta1Position),
    -- | Face landmark type.
    type' :: (Core.Maybe GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceAnnotationLandmark' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1FaceAnnotationLandmark ::
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
newGoogleCloudVisionV1p4beta1FaceAnnotationLandmark =
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
    { position =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1FaceAnnotationLandmark"
      ( \o ->
          GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark
  where
  toJSON GoogleCloudVisionV1p4beta1FaceAnnotationLandmark {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Information about a face\'s identity.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1FaceRecognitionResult' smart constructor.
data GoogleCloudVisionV1p4beta1FaceRecognitionResult = GoogleCloudVisionV1p4beta1FaceRecognitionResult
  { -- | The Celebrity that this face was matched to.
    celebrity :: (Core.Maybe GoogleCloudVisionV1p4beta1Celebrity),
    -- | Recognition confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1FaceRecognitionResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1FaceRecognitionResult ::
  GoogleCloudVisionV1p4beta1FaceRecognitionResult
newGoogleCloudVisionV1p4beta1FaceRecognitionResult =
  GoogleCloudVisionV1p4beta1FaceRecognitionResult
    { celebrity =
        Core.Nothing,
      confidence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1FaceRecognitionResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1FaceRecognitionResult"
      ( \o ->
          GoogleCloudVisionV1p4beta1FaceRecognitionResult
            Core.<$> (o Core..:? "celebrity")
            Core.<*> (o Core..:? "confidence")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1FaceRecognitionResult
  where
  toJSON GoogleCloudVisionV1p4beta1FaceRecognitionResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("celebrity" Core..=) Core.<$> celebrity,
            ("confidence" Core..=) Core.<$> confidence
          ]
      )

-- | The Google Cloud Storage location where the output will be written to.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1GcsDestination' smart constructor.
newtype GoogleCloudVisionV1p4beta1GcsDestination = GoogleCloudVisionV1p4beta1GcsDestination
  { -- | Google Cloud Storage URI prefix where the results will be stored. Results will be in JSON format and preceded by its corresponding input URI prefix. This field can either represent a gcs file prefix or gcs directory. In either case, the uri should be unique because in order to get all of the output files, you will need to do a wildcard gcs search on the uri prefix you provide. Examples: * File Prefix: gs:\/\/bucket-name\/here\/filenameprefix The output files will be created in gs:\/\/bucket-name\/here\/ and the names of the output files will begin with \"filenameprefix\". * Directory Prefix: gs:\/\/bucket-name\/some\/location\/ The output files will be created in gs:\/\/bucket-name\/some\/location\/ and the names of the output files could be anything because there was no filename prefix specified. If multiple outputs, each response is still AnnotateFileResponse, each of which contains some subset of the full list of AnnotateImageResponse. Multiple outputs can happen if, for example, the output JSON is too
    -- large and overflows into multiple sharded files.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1GcsDestination' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1GcsDestination ::
  GoogleCloudVisionV1p4beta1GcsDestination
newGoogleCloudVisionV1p4beta1GcsDestination =
  GoogleCloudVisionV1p4beta1GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p4beta1GcsDestination where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1GcsDestination"
      ( \o ->
          GoogleCloudVisionV1p4beta1GcsDestination
            Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1GcsDestination where
  toJSON GoogleCloudVisionV1p4beta1GcsDestination {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Google Cloud Storage location where the input will be read from.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1GcsSource' smart constructor.
newtype GoogleCloudVisionV1p4beta1GcsSource = GoogleCloudVisionV1p4beta1GcsSource
  { -- | Google Cloud Storage URI for the input file. This must only be a Google Cloud Storage object. Wildcards are not currently supported.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1GcsSource' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1GcsSource ::
  GoogleCloudVisionV1p4beta1GcsSource
newGoogleCloudVisionV1p4beta1GcsSource =
  GoogleCloudVisionV1p4beta1GcsSource {uri = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p4beta1GcsSource where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1GcsSource"
      ( \o ->
          GoogleCloudVisionV1p4beta1GcsSource Core.<$> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1GcsSource where
  toJSON GoogleCloudVisionV1p4beta1GcsSource {..} =
    Core.object (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ImageAnnotationContext' smart constructor.
data GoogleCloudVisionV1p4beta1ImageAnnotationContext = GoogleCloudVisionV1p4beta1ImageAnnotationContext
  { -- | If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.
    pageNumber :: (Core.Maybe Core.Int32),
    -- | The URI of the file used to produce the image.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImageAnnotationContext' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ImageAnnotationContext ::
  GoogleCloudVisionV1p4beta1ImageAnnotationContext
newGoogleCloudVisionV1p4beta1ImageAnnotationContext =
  GoogleCloudVisionV1p4beta1ImageAnnotationContext
    { pageNumber =
        Core.Nothing,
      uri = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ImageAnnotationContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ImageAnnotationContext"
      ( \o ->
          GoogleCloudVisionV1p4beta1ImageAnnotationContext
            Core.<$> (o Core..:? "pageNumber")
            Core.<*> (o Core..:? "uri")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1ImageAnnotationContext
  where
  toJSON GoogleCloudVisionV1p4beta1ImageAnnotationContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageNumber" Core..=) Core.<$> pageNumber,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ImageProperties' smart constructor.
newtype GoogleCloudVisionV1p4beta1ImageProperties = GoogleCloudVisionV1p4beta1ImageProperties
  { -- | If present, dominant colors completed successfully.
    dominantColors :: (Core.Maybe GoogleCloudVisionV1p4beta1DominantColorsAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImageProperties' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ImageProperties ::
  GoogleCloudVisionV1p4beta1ImageProperties
newGoogleCloudVisionV1p4beta1ImageProperties =
  GoogleCloudVisionV1p4beta1ImageProperties
    { dominantColors =
        Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1ImageProperties where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ImageProperties"
      ( \o ->
          GoogleCloudVisionV1p4beta1ImageProperties
            Core.<$> (o Core..:? "dominantColors")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1ImageProperties where
  toJSON GoogleCloudVisionV1p4beta1ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [("dominantColors" Core..=) Core.<$> dominantColors]
      )

-- | Response message for the @ImportProductSets@ method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ImportProductSetsResponse' smart constructor.
data GoogleCloudVisionV1p4beta1ImportProductSetsResponse = GoogleCloudVisionV1p4beta1ImportProductSetsResponse
  { -- | The list of reference_images that are imported successfully.
    referenceImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1ReferenceImage]),
    -- | The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.
    statuses :: (Core.Maybe [Status])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ImportProductSetsResponse' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ImportProductSetsResponse ::
  GoogleCloudVisionV1p4beta1ImportProductSetsResponse
newGoogleCloudVisionV1p4beta1ImportProductSetsResponse =
  GoogleCloudVisionV1p4beta1ImportProductSetsResponse
    { referenceImages =
        Core.Nothing,
      statuses = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ImportProductSetsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ImportProductSetsResponse"
      ( \o ->
          GoogleCloudVisionV1p4beta1ImportProductSetsResponse
            Core.<$> (o Core..:? "referenceImages")
            Core.<*> (o Core..:? "statuses")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1ImportProductSetsResponse
  where
  toJSON GoogleCloudVisionV1p4beta1ImportProductSetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("referenceImages" Core..=) Core.<$> referenceImages,
            ("statuses" Core..=) Core.<$> statuses
          ]
      )

-- | The desired input location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1InputConfig' smart constructor.
data GoogleCloudVisionV1p4beta1InputConfig = GoogleCloudVisionV1p4beta1InputConfig
  { -- | File content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.
    content :: (Core.Maybe Core.Base64),
    -- | The Google Cloud Storage location to read the input from.
    gcsSource :: (Core.Maybe GoogleCloudVisionV1p4beta1GcsSource),
    -- | The type of the file. Currently only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not supported.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1InputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1InputConfig ::
  GoogleCloudVisionV1p4beta1InputConfig
newGoogleCloudVisionV1p4beta1InputConfig =
  GoogleCloudVisionV1p4beta1InputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1InputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1InputConfig"
      ( \o ->
          GoogleCloudVisionV1p4beta1InputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1InputConfig where
  toJSON GoogleCloudVisionV1p4beta1InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation = GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
  { -- | Image region to which this object belongs. This must be populated.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation ::
  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
newGoogleCloudVisionV1p4beta1LocalizedObjectAnnotation =
  GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
    { boundingPoly =
        Core.Nothing,
      languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation
  where
  toJSON GoogleCloudVisionV1p4beta1LocalizedObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Detected entity location information.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1LocationInfo' smart constructor.
newtype GoogleCloudVisionV1p4beta1LocationInfo = GoogleCloudVisionV1p4beta1LocationInfo
  { -- | lat\/long location coordinates.
    latLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1LocationInfo' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1LocationInfo ::
  GoogleCloudVisionV1p4beta1LocationInfo
newGoogleCloudVisionV1p4beta1LocationInfo =
  GoogleCloudVisionV1p4beta1LocationInfo {latLng = Core.Nothing}

instance Core.FromJSON GoogleCloudVisionV1p4beta1LocationInfo where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1LocationInfo"
      ( \o ->
          GoogleCloudVisionV1p4beta1LocationInfo
            Core.<$> (o Core..:? "latLng")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1LocationInfo where
  toJSON GoogleCloudVisionV1p4beta1LocationInfo {..} =
    Core.object (Core.catMaybes [("latLng" Core..=) Core.<$> latLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1NormalizedVertex' smart constructor.
data GoogleCloudVisionV1p4beta1NormalizedVertex = GoogleCloudVisionV1p4beta1NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1NormalizedVertex ::
  GoogleCloudVisionV1p4beta1NormalizedVertex
newGoogleCloudVisionV1p4beta1NormalizedVertex =
  GoogleCloudVisionV1p4beta1NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1NormalizedVertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1NormalizedVertex"
      ( \o ->
          GoogleCloudVisionV1p4beta1NormalizedVertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1NormalizedVertex where
  toJSON GoogleCloudVisionV1p4beta1NormalizedVertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1OperationMetadata' smart constructor.
data GoogleCloudVisionV1p4beta1OperationMetadata = GoogleCloudVisionV1p4beta1OperationMetadata
  { -- | The time when the batch request was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the batch operation.
    state :: (Core.Maybe GoogleCloudVisionV1p4beta1OperationMetadata_State),
    -- | The time when the operation result was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1OperationMetadata ::
  GoogleCloudVisionV1p4beta1OperationMetadata
newGoogleCloudVisionV1p4beta1OperationMetadata =
  GoogleCloudVisionV1p4beta1OperationMetadata
    { createTime =
        Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1OperationMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1OperationMetadata"
      ( \o ->
          GoogleCloudVisionV1p4beta1OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1OperationMetadata where
  toJSON GoogleCloudVisionV1p4beta1OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The desired output location and metadata.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1OutputConfig' smart constructor.
data GoogleCloudVisionV1p4beta1OutputConfig = GoogleCloudVisionV1p4beta1OutputConfig
  { -- | The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If @batch_size@ = 20, then 5 json files each containing 20 response protos will be written under the prefix @gcs_destination@.@uri@. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
    batchSize :: (Core.Maybe Core.Int32),
    -- | The Google Cloud Storage location to write the output(s) to.
    gcsDestination :: (Core.Maybe GoogleCloudVisionV1p4beta1GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1OutputConfig' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1OutputConfig ::
  GoogleCloudVisionV1p4beta1OutputConfig
newGoogleCloudVisionV1p4beta1OutputConfig =
  GoogleCloudVisionV1p4beta1OutputConfig
    { batchSize = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1OutputConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1OutputConfig"
      ( \o ->
          GoogleCloudVisionV1p4beta1OutputConfig
            Core.<$> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1OutputConfig where
  toJSON GoogleCloudVisionV1p4beta1OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.<$> batchSize,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Detected page from OCR.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Page' smart constructor.
data GoogleCloudVisionV1p4beta1Page = GoogleCloudVisionV1p4beta1Page
  { -- | List of blocks of text, images etc on this page.
    blocks :: (Core.Maybe [GoogleCloudVisionV1p4beta1Block]),
    -- | Confidence of the OCR results on the page. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Additional information detected on the page.
    property :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty),
    -- | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Page' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Page ::
  GoogleCloudVisionV1p4beta1Page
newGoogleCloudVisionV1p4beta1Page =
  GoogleCloudVisionV1p4beta1Page
    { blocks = Core.Nothing,
      confidence = Core.Nothing,
      height = Core.Nothing,
      property = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Page where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Page"
      ( \o ->
          GoogleCloudVisionV1p4beta1Page
            Core.<$> (o Core..:? "blocks")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Page where
  toJSON GoogleCloudVisionV1p4beta1Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("blocks" Core..=) Core.<$> blocks,
            ("confidence" Core..=) Core.<$> confidence,
            ("height" Core..=) Core.<$> height,
            ("property" Core..=) Core.<$> property,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Paragraph' smart constructor.
data GoogleCloudVisionV1p4beta1Paragraph = GoogleCloudVisionV1p4beta1Paragraph
  { -- | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Confidence of the OCR results for the paragraph. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the paragraph.
    property :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty),
    -- | List of all words in this paragraph.
    words :: (Core.Maybe [GoogleCloudVisionV1p4beta1Word])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Paragraph' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Paragraph ::
  GoogleCloudVisionV1p4beta1Paragraph
newGoogleCloudVisionV1p4beta1Paragraph =
  GoogleCloudVisionV1p4beta1Paragraph
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Paragraph where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Paragraph"
      ( \o ->
          GoogleCloudVisionV1p4beta1Paragraph
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Paragraph where
  toJSON GoogleCloudVisionV1p4beta1Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Position' smart constructor.
data GoogleCloudVisionV1p4beta1Position = GoogleCloudVisionV1p4beta1Position
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double),
    -- | Z coordinate (or depth).
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Position' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Position ::
  GoogleCloudVisionV1p4beta1Position
newGoogleCloudVisionV1p4beta1Position =
  GoogleCloudVisionV1p4beta1Position
    { x = Core.Nothing,
      y = Core.Nothing,
      z = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Position where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Position"
      ( \o ->
          GoogleCloudVisionV1p4beta1Position
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Position where
  toJSON GoogleCloudVisionV1p4beta1Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | A Product contains ReferenceImages.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Product' smart constructor.
data GoogleCloudVisionV1p4beta1Product = GoogleCloudVisionV1p4beta1Product
  { -- | User-provided metadata to be stored with this product. Must be at most 4096 characters long.
    description :: (Core.Maybe Core.Text),
    -- | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the product. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID@. This field is ignored when creating a product.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.
    productCategory :: (Core.Maybe Core.Text),
    -- | Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product/labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product/labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
    productLabels :: (Core.Maybe [GoogleCloudVisionV1p4beta1ProductKeyValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Product' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Product ::
  GoogleCloudVisionV1p4beta1Product
newGoogleCloudVisionV1p4beta1Product =
  GoogleCloudVisionV1p4beta1Product
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      productCategory = Core.Nothing,
      productLabels = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Product where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Product"
      ( \o ->
          GoogleCloudVisionV1p4beta1Product
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCategory")
            Core.<*> (o Core..:? "productLabels")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Product where
  toJSON GoogleCloudVisionV1p4beta1Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("productCategory" Core..=) Core.<$> productCategory,
            ("productLabels" Core..=) Core.<$> productLabels
          ]
      )

-- | A product label represented as a key-value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ProductKeyValue' smart constructor.
data GoogleCloudVisionV1p4beta1ProductKeyValue = GoogleCloudVisionV1p4beta1ProductKeyValue
  { -- | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    key :: (Core.Maybe Core.Text),
    -- | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductKeyValue' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ProductKeyValue ::
  GoogleCloudVisionV1p4beta1ProductKeyValue
newGoogleCloudVisionV1p4beta1ProductKeyValue =
  GoogleCloudVisionV1p4beta1ProductKeyValue
    { key = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1ProductKeyValue where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ProductKeyValue"
      ( \o ->
          GoogleCloudVisionV1p4beta1ProductKeyValue
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1ProductKeyValue where
  toJSON GoogleCloudVisionV1p4beta1ProductKeyValue {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | Results for a product search request.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ProductSearchResults' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResults = GoogleCloudVisionV1p4beta1ProductSearchResults
  { -- | Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.
    indexTime :: (Core.Maybe Core.DateTime),
    -- | List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.
    productGroupedResults ::
      ( Core.Maybe
          [GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResults' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ProductSearchResults ::
  GoogleCloudVisionV1p4beta1ProductSearchResults
newGoogleCloudVisionV1p4beta1ProductSearchResults =
  GoogleCloudVisionV1p4beta1ProductSearchResults
    { indexTime =
        Core.Nothing,
      productGroupedResults = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ProductSearchResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ProductSearchResults"
      ( \o ->
          GoogleCloudVisionV1p4beta1ProductSearchResults
            Core.<$> (o Core..:? "indexTime")
            Core.<*> (o Core..:? "productGroupedResults")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1ProductSearchResults where
  toJSON GoogleCloudVisionV1p4beta1ProductSearchResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexTime" Core..=) Core.<$> indexTime,
            ("productGroupedResults" Core..=) Core.<$> productGroupedResults,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | Information about the products similar to a single product in a query image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult = GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
  { -- | The bounding polygon around the product detected in the query image.
    boundingPoly :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | List of generic predictions for the object in the bounding box.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation]
      ),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [GoogleCloudVisionV1p4beta1ProductSearchResultsResult])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult ::
  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
newGoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
    { boundingPoly =
        Core.Nothing,
      objectAnnotations = Core.Nothing,
      results = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult"
      ( \o ->
          GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "objectAnnotations")
            Core.<*> (o Core..:? "results")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult
  where
  toJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsGroupedResult {..} =
      Core.object
        ( Core.catMaybes
            [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
              ("objectAnnotations" Core..=) Core.<$> objectAnnotations,
              ("results" Core..=) Core.<$> results
            ]
        )

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation = GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
  { -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation ::
  GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
newGoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation =
  GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
    { languageCode =
        Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation
  where
  toJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsObjectAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("languageCode" Core..=) Core.<$> languageCode,
              ("mid" Core..=) Core.<$> mid,
              ("name" Core..=) Core.<$> name,
              ("score" Core..=) Core.<$> score
            ]
        )

-- | Information about a product.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ProductSearchResultsResult' smart constructor.
data GoogleCloudVisionV1p4beta1ProductSearchResultsResult = GoogleCloudVisionV1p4beta1ProductSearchResultsResult
  { -- | The resource name of the image from the product that is the closest match to the query.
    image :: (Core.Maybe Core.Text),
    -- | The Product.
    product :: (Core.Maybe GoogleCloudVisionV1p4beta1Product),
    -- | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ProductSearchResultsResult' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ProductSearchResultsResult ::
  GoogleCloudVisionV1p4beta1ProductSearchResultsResult
newGoogleCloudVisionV1p4beta1ProductSearchResultsResult =
  GoogleCloudVisionV1p4beta1ProductSearchResultsResult
    { image =
        Core.Nothing,
      product = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsResult
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ProductSearchResultsResult"
      ( \o ->
          GoogleCloudVisionV1p4beta1ProductSearchResultsResult
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1ProductSearchResultsResult
  where
  toJSON GoogleCloudVisionV1p4beta1ProductSearchResultsResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("product" Core..=) Core.<$> product,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | A @Property@ consists of a user-supplied name\/value pair.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Property' smart constructor.
data GoogleCloudVisionV1p4beta1Property = GoogleCloudVisionV1p4beta1Property
  { -- | Name of the property.
    name :: (Core.Maybe Core.Text),
    -- | Value of numeric properties.
    uint64Value :: (Core.Maybe Core.Word64),
    -- | Value of the property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Property' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Property ::
  GoogleCloudVisionV1p4beta1Property
newGoogleCloudVisionV1p4beta1Property =
  GoogleCloudVisionV1p4beta1Property
    { name = Core.Nothing,
      uint64Value = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Property where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Property"
      ( \o ->
          GoogleCloudVisionV1p4beta1Property
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "uint64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Property where
  toJSON GoogleCloudVisionV1p4beta1Property {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("uint64Value" Core..=) Core.. Core.AsText Core.<$> uint64Value,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A @ReferenceImage@ represents a product image and its associated metadata, such as bounding boxes.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1ReferenceImage' smart constructor.
data GoogleCloudVisionV1p4beta1ReferenceImage = GoogleCloudVisionV1p4beta1ReferenceImage
  { -- | Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
    boundingPolys :: (Core.Maybe [GoogleCloudVisionV1p4beta1BoundingPoly]),
    -- | The resource name of the reference image. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID@. This field is ignored when creating a reference image.
    name :: (Core.Maybe Core.Text),
    -- | Required. The Google Cloud Storage URI of the reference image. The URI must start with @gs:\/\/@.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1ReferenceImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1ReferenceImage ::
  GoogleCloudVisionV1p4beta1ReferenceImage
newGoogleCloudVisionV1p4beta1ReferenceImage =
  GoogleCloudVisionV1p4beta1ReferenceImage
    { boundingPolys =
        Core.Nothing,
      name = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1ReferenceImage where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1ReferenceImage"
      ( \o ->
          GoogleCloudVisionV1p4beta1ReferenceImage
            Core.<$> (o Core..:? "boundingPolys")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1ReferenceImage where
  toJSON GoogleCloudVisionV1p4beta1ReferenceImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPolys" Core..=) Core.<$> boundingPolys,
            ("name" Core..=) Core.<$> name,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1SafeSearchAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1SafeSearchAnnotation = GoogleCloudVisionV1p4beta1SafeSearchAnnotation
  { -- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
    adult :: (Core.Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult),
    -- | Likelihood that this is a medical image.
    medical :: (Core.Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical),
    -- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
    racy :: (Core.Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy),
    -- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
    spoof :: (Core.Maybe GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof),
    -- | Likelihood that this image contains violent content. Violent content may include death, serious harm, or injury to individuals or groups of individuals.
    violence ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1SafeSearchAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1SafeSearchAnnotation ::
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation
newGoogleCloudVisionV1p4beta1SafeSearchAnnotation =
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation
    { adult =
        Core.Nothing,
      medical = Core.Nothing,
      racy = Core.Nothing,
      spoof = Core.Nothing,
      violence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1SafeSearchAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1SafeSearchAnnotation
            Core.<$> (o Core..:? "adult")
            Core.<*> (o Core..:? "medical")
            Core.<*> (o Core..:? "racy")
            Core.<*> (o Core..:? "spoof")
            Core.<*> (o Core..:? "violence")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1SafeSearchAnnotation where
  toJSON GoogleCloudVisionV1p4beta1SafeSearchAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("adult" Core..=) Core.<$> adult,
            ("medical" Core..=) Core.<$> medical,
            ("racy" Core..=) Core.<$> racy,
            ("spoof" Core..=) Core.<$> spoof,
            ("violence" Core..=) Core.<$> violence
          ]
      )

-- | A single symbol representation.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Symbol' smart constructor.
data GoogleCloudVisionV1p4beta1Symbol = GoogleCloudVisionV1p4beta1Symbol
  { -- | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Confidence of the OCR results for the symbol. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the symbol.
    property :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty),
    -- | The actual UTF-8 representation of the symbol.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Symbol' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Symbol ::
  GoogleCloudVisionV1p4beta1Symbol
newGoogleCloudVisionV1p4beta1Symbol =
  GoogleCloudVisionV1p4beta1Symbol
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Symbol where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Symbol"
      ( \o ->
          GoogleCloudVisionV1p4beta1Symbol
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Symbol where
  toJSON GoogleCloudVisionV1p4beta1Symbol {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1TextAnnotation' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotation = GoogleCloudVisionV1p4beta1TextAnnotation
  { -- | List of pages detected by OCR.
    pages :: (Core.Maybe [GoogleCloudVisionV1p4beta1Page]),
    -- | UTF-8 text detected on the pages.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1TextAnnotation ::
  GoogleCloudVisionV1p4beta1TextAnnotation
newGoogleCloudVisionV1p4beta1TextAnnotation =
  GoogleCloudVisionV1p4beta1TextAnnotation
    { pages = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1TextAnnotation where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1TextAnnotation"
      ( \o ->
          GoogleCloudVisionV1p4beta1TextAnnotation
            Core.<$> (o Core..:? "pages")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1TextAnnotation where
  toJSON GoogleCloudVisionV1p4beta1TextAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [("pages" Core..=) Core.<$> pages, ("text" Core..=) Core.<$> text]
      )

-- | Detected start or end of a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
  { -- | True if break prepends the element.
    isPrefix :: (Core.Maybe Core.Bool),
    -- | Detected break type.
    type' ::
      ( Core.Maybe
          GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak ::
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
newGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
    { isPrefix =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak"
      ( \o ->
          GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
            Core.<$> (o Core..:? "isPrefix")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak
  where
  toJSON GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak {..} =
    Core.object
      ( Core.catMaybes
          [ ("isPrefix" Core..=) Core.<$> isPrefix,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Detected language for a structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage = GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
  { -- | Confidence of detected language. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage ::
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
newGoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage =
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
    { confidence =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage"
      ( \o ->
          GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage
  where
  toJSON GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Additional information detected on the structural component.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1TextAnnotationTextProperty' smart constructor.
data GoogleCloudVisionV1p4beta1TextAnnotationTextProperty = GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
  { -- | Detected start or end of a text segment.
    detectedBreak :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak),
    -- | A list of detected languages together with confidence.
    detectedLanguages ::
      ( Core.Maybe
          [GoogleCloudVisionV1p4beta1TextAnnotationDetectedLanguage]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1TextAnnotationTextProperty' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1TextAnnotationTextProperty ::
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
newGoogleCloudVisionV1p4beta1TextAnnotationTextProperty =
  GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
    { detectedBreak =
        Core.Nothing,
      detectedLanguages = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1TextAnnotationTextProperty"
      ( \o ->
          GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
            Core.<$> (o Core..:? "detectedBreak")
            Core.<*> (o Core..:? "detectedLanguages")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1TextAnnotationTextProperty
  where
  toJSON GoogleCloudVisionV1p4beta1TextAnnotationTextProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedBreak" Core..=) Core.<$> detectedBreak,
            ("detectedLanguages" Core..=) Core.<$> detectedLanguages
          ]
      )

-- | A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Vertex' smart constructor.
data GoogleCloudVisionV1p4beta1Vertex = GoogleCloudVisionV1p4beta1Vertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Int32),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Vertex' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Vertex ::
  GoogleCloudVisionV1p4beta1Vertex
newGoogleCloudVisionV1p4beta1Vertex =
  GoogleCloudVisionV1p4beta1Vertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Vertex where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Vertex"
      ( \o ->
          GoogleCloudVisionV1p4beta1Vertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Vertex where
  toJSON GoogleCloudVisionV1p4beta1Vertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1WebDetection' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetection = GoogleCloudVisionV1p4beta1WebDetection
  { -- | The service\'s best guess as to the topic of the request image. Inferred from similar images on the open web.
    bestGuessLabels :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebLabel]),
    -- | Fully matching images from the Internet. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage]),
    -- | Web pages containing the matching images from the Internet.
    pagesWithMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebPage]),
    -- | Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage]),
    -- | The visually similar image results.
    visuallySimilarImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage]),
    -- | Deduced entities from similar images on the Internet.
    webEntities :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebEntity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetection' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1WebDetection ::
  GoogleCloudVisionV1p4beta1WebDetection
newGoogleCloudVisionV1p4beta1WebDetection =
  GoogleCloudVisionV1p4beta1WebDetection
    { bestGuessLabels =
        Core.Nothing,
      fullMatchingImages = Core.Nothing,
      pagesWithMatchingImages = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      visuallySimilarImages = Core.Nothing,
      webEntities = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1WebDetection where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1WebDetection"
      ( \o ->
          GoogleCloudVisionV1p4beta1WebDetection
            Core.<$> (o Core..:? "bestGuessLabels")
            Core.<*> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pagesWithMatchingImages")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "visuallySimilarImages")
            Core.<*> (o Core..:? "webEntities")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1WebDetection where
  toJSON GoogleCloudVisionV1p4beta1WebDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestGuessLabels" Core..=) Core.<$> bestGuessLabels,
            ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pagesWithMatchingImages" Core..=)
              Core.<$> pagesWithMatchingImages,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("visuallySimilarImages" Core..=) Core.<$> visuallySimilarImages,
            ("webEntities" Core..=) Core.<$> webEntities
          ]
      )

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1WebDetectionWebEntity' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebEntity = GoogleCloudVisionV1p4beta1WebDetectionWebEntity
  { -- | Canonical description of the entity, in English.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID.
    entityId :: (Core.Maybe Core.Text),
    -- | Overall relevancy score for the entity. Not normalized and not comparable across different image queries.
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebEntity' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1WebDetectionWebEntity ::
  GoogleCloudVisionV1p4beta1WebDetectionWebEntity
newGoogleCloudVisionV1p4beta1WebDetectionWebEntity =
  GoogleCloudVisionV1p4beta1WebDetectionWebEntity
    { description =
        Core.Nothing,
      entityId = Core.Nothing,
      score = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1WebDetectionWebEntity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1WebDetectionWebEntity"
      ( \o ->
          GoogleCloudVisionV1p4beta1WebDetectionWebEntity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "score")
      )

instance
  Core.ToJSON
    GoogleCloudVisionV1p4beta1WebDetectionWebEntity
  where
  toJSON GoogleCloudVisionV1p4beta1WebDetectionWebEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Metadata for online images.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1WebDetectionWebImage' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebImage = GoogleCloudVisionV1p4beta1WebDetectionWebImage
  { -- | (Deprecated) Overall relevancy score for the image.
    score :: (Core.Maybe Core.Double),
    -- | The result image URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebImage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1WebDetectionWebImage ::
  GoogleCloudVisionV1p4beta1WebDetectionWebImage
newGoogleCloudVisionV1p4beta1WebDetectionWebImage =
  GoogleCloudVisionV1p4beta1WebDetectionWebImage
    { score =
        Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1WebDetectionWebImage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1WebDetectionWebImage"
      ( \o ->
          GoogleCloudVisionV1p4beta1WebDetectionWebImage
            Core.<$> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1WebDetectionWebImage where
  toJSON GoogleCloudVisionV1p4beta1WebDetectionWebImage {..} =
    Core.object
      ( Core.catMaybes
          [("score" Core..=) Core.<$> score, ("url" Core..=) Core.<$> url]
      )

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1WebDetectionWebLabel' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebLabel = GoogleCloudVisionV1p4beta1WebDetectionWebLabel
  { -- | Label for extra metadata.
    label :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for @label@, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebLabel' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1WebDetectionWebLabel ::
  GoogleCloudVisionV1p4beta1WebDetectionWebLabel
newGoogleCloudVisionV1p4beta1WebDetectionWebLabel =
  GoogleCloudVisionV1p4beta1WebDetectionWebLabel
    { label =
        Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1WebDetectionWebLabel
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1WebDetectionWebLabel"
      ( \o ->
          GoogleCloudVisionV1p4beta1WebDetectionWebLabel
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1WebDetectionWebLabel where
  toJSON GoogleCloudVisionV1p4beta1WebDetectionWebLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Metadata for web pages.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1WebDetectionWebPage' smart constructor.
data GoogleCloudVisionV1p4beta1WebDetectionWebPage = GoogleCloudVisionV1p4beta1WebDetectionWebPage
  { -- | Fully matching images on the page. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage]),
    -- | Title for the web page, may contain HTML markups.
    pageTitle :: (Core.Maybe Core.Text),
    -- | Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [GoogleCloudVisionV1p4beta1WebDetectionWebImage]),
    -- | (Deprecated) Overall relevancy score for the web page.
    score :: (Core.Maybe Core.Double),
    -- | The result web page URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1WebDetectionWebPage' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1WebDetectionWebPage ::
  GoogleCloudVisionV1p4beta1WebDetectionWebPage
newGoogleCloudVisionV1p4beta1WebDetectionWebPage =
  GoogleCloudVisionV1p4beta1WebDetectionWebPage
    { fullMatchingImages =
        Core.Nothing,
      pageTitle = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      score = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVisionV1p4beta1WebDetectionWebPage
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1WebDetectionWebPage"
      ( \o ->
          GoogleCloudVisionV1p4beta1WebDetectionWebPage
            Core.<$> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pageTitle")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1WebDetectionWebPage where
  toJSON GoogleCloudVisionV1p4beta1WebDetectionWebPage {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pageTitle" Core..=) Core.<$> pageTitle,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("score" Core..=) Core.<$> score,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A word representation.
--
-- /See:/ 'newGoogleCloudVisionV1p4beta1Word' smart constructor.
data GoogleCloudVisionV1p4beta1Word = GoogleCloudVisionV1p4beta1Word
  { -- | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe GoogleCloudVisionV1p4beta1BoundingPoly),
    -- | Confidence of the OCR results for the word. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the word.
    property :: (Core.Maybe GoogleCloudVisionV1p4beta1TextAnnotationTextProperty),
    -- | List of symbols in the word. The order of the symbols follows the natural reading order.
    symbols :: (Core.Maybe [GoogleCloudVisionV1p4beta1Symbol])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVisionV1p4beta1Word' with the minimum fields required to make a request.
newGoogleCloudVisionV1p4beta1Word ::
  GoogleCloudVisionV1p4beta1Word
newGoogleCloudVisionV1p4beta1Word =
  GoogleCloudVisionV1p4beta1Word
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      symbols = Core.Nothing
    }

instance Core.FromJSON GoogleCloudVisionV1p4beta1Word where
  parseJSON =
    Core.withObject
      "GoogleCloudVisionV1p4beta1Word"
      ( \o ->
          GoogleCloudVisionV1p4beta1Word
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "symbols")
      )

instance Core.ToJSON GoogleCloudVisionV1p4beta1Word where
  toJSON GoogleCloudVisionV1p4beta1Word {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("symbols" Core..=) Core.<$> symbols
          ]
      )

-- | Information about the products similar to a single product in a query image.
--
-- /See:/ 'newGroupedResult' smart constructor.
data GroupedResult = GroupedResult
  { -- | The bounding polygon around the product detected in the query image.
    boundingPoly :: (Core.Maybe BoundingPoly),
    -- | List of generic predictions for the object in the bounding box.
    objectAnnotations :: (Core.Maybe [ObjectAnnotation]),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [Result])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupedResult' with the minimum fields required to make a request.
newGroupedResult ::
  GroupedResult
newGroupedResult =
  GroupedResult
    { boundingPoly = Core.Nothing,
      objectAnnotations = Core.Nothing,
      results = Core.Nothing
    }

instance Core.FromJSON GroupedResult where
  parseJSON =
    Core.withObject
      "GroupedResult"
      ( \o ->
          GroupedResult
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "objectAnnotations")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON GroupedResult where
  toJSON GroupedResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("objectAnnotations" Core..=) Core.<$> objectAnnotations,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | If an image was produced from a file (e.g. a PDF), this message gives information about the source of that image.
--
-- /See:/ 'newImageAnnotationContext' smart constructor.
data ImageAnnotationContext = ImageAnnotationContext
  { -- | If the file was a PDF or TIFF, this field gives the page number within the file used to produce the image.
    pageNumber :: (Core.Maybe Core.Int32),
    -- | The URI of the file used to produce the image.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageAnnotationContext' with the minimum fields required to make a request.
newImageAnnotationContext ::
  ImageAnnotationContext
newImageAnnotationContext =
  ImageAnnotationContext
    { pageNumber = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ImageAnnotationContext where
  parseJSON =
    Core.withObject
      "ImageAnnotationContext"
      ( \o ->
          ImageAnnotationContext
            Core.<$> (o Core..:? "pageNumber")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ImageAnnotationContext where
  toJSON ImageAnnotationContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageNumber" Core..=) Core.<$> pageNumber,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Stores image properties, such as dominant colors.
--
-- /See:/ 'newImageProperties' smart constructor.
newtype ImageProperties = ImageProperties
  { -- | If present, dominant colors completed successfully.
    dominantColors :: (Core.Maybe DominantColorsAnnotation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageProperties' with the minimum fields required to make a request.
newImageProperties ::
  ImageProperties
newImageProperties = ImageProperties {dominantColors = Core.Nothing}

instance Core.FromJSON ImageProperties where
  parseJSON =
    Core.withObject
      "ImageProperties"
      (\o -> ImageProperties Core.<$> (o Core..:? "dominantColors"))

instance Core.ToJSON ImageProperties where
  toJSON ImageProperties {..} =
    Core.object
      ( Core.catMaybes
          [("dominantColors" Core..=) Core.<$> dominantColors]
      )

-- | Response message for the @ImportProductSets@ method. This message is returned by the google.longrunning.Operations.GetOperation method in the returned google.longrunning.Operation.response field.
--
-- /See:/ 'newImportProductSetsResponse' smart constructor.
data ImportProductSetsResponse = ImportProductSetsResponse
  { -- | The list of reference_images that are imported successfully.
    referenceImages :: (Core.Maybe [ReferenceImage]),
    -- | The rpc status for each ImportProductSet request, including both successes and errors. The number of statuses here matches the number of lines in the csv file, and statuses[i] stores the success or failure status of processing the i-th line of the csv, starting from line 0.
    statuses :: (Core.Maybe [Status])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportProductSetsResponse' with the minimum fields required to make a request.
newImportProductSetsResponse ::
  ImportProductSetsResponse
newImportProductSetsResponse =
  ImportProductSetsResponse
    { referenceImages = Core.Nothing,
      statuses = Core.Nothing
    }

instance Core.FromJSON ImportProductSetsResponse where
  parseJSON =
    Core.withObject
      "ImportProductSetsResponse"
      ( \o ->
          ImportProductSetsResponse
            Core.<$> (o Core..:? "referenceImages")
            Core.<*> (o Core..:? "statuses")
      )

instance Core.ToJSON ImportProductSetsResponse where
  toJSON ImportProductSetsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("referenceImages" Core..=) Core.<$> referenceImages,
            ("statuses" Core..=) Core.<$> statuses
          ]
      )

-- | The desired input location and metadata.
--
-- /See:/ 'newInputConfig' smart constructor.
data InputConfig = InputConfig
  { -- | File content, represented as a stream of bytes. Note: As with all @bytes@ fields, protobuffers use a pure binary representation, whereas JSON representations use base64. Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests.
    content :: (Core.Maybe Core.Base64),
    -- | The Google Cloud Storage location to read the input from.
    gcsSource :: (Core.Maybe GcsSource),
    -- | The type of the file. Currently only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\" are supported. Wildcards are not supported.
    mimeType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
newInputConfig ::
  InputConfig
newInputConfig =
  InputConfig
    { content = Core.Nothing,
      gcsSource = Core.Nothing,
      mimeType = Core.Nothing
    }

instance Core.FromJSON InputConfig where
  parseJSON =
    Core.withObject
      "InputConfig"
      ( \o ->
          InputConfig
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsSource")
            Core.<*> (o Core..:? "mimeType")
      )

instance Core.ToJSON InputConfig where
  toJSON InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsSource" Core..=) Core.<$> gcsSource,
            ("mimeType" Core..=) Core.<$> mimeType
          ]
      )

-- | A product label represented as a key-value pair.
--
-- /See:/ 'newKeyValue' smart constructor.
data KeyValue = KeyValue
  { -- | The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    key :: (Core.Maybe Core.Text),
    -- | The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
newKeyValue ::
  KeyValue
newKeyValue = KeyValue {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON KeyValue where
  parseJSON =
    Core.withObject
      "KeyValue"
      ( \o ->
          KeyValue Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON KeyValue where
  toJSON KeyValue {..} =
    Core.object
      ( Core.catMaybes
          [("key" Core..=) Core.<$> key, ("value" Core..=) Core.<$> value]
      )

-- | A face-specific landmark (for example, a face feature). Landmark positions may fall outside the bounds of the image if the face is near one or more edges of the image. Therefore it is NOT guaranteed that @0 \<= x \< width@ or @0 \<= y \< height@.
--
-- /See:/ 'newLandmark' smart constructor.
data Landmark = Landmark
  { -- | Face landmark position.
    position :: (Core.Maybe Position),
    -- | Face landmark type.
    type' :: (Core.Maybe Landmark_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Landmark' with the minimum fields required to make a request.
newLandmark ::
  Landmark
newLandmark =
  Landmark {position = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Landmark where
  parseJSON =
    Core.withObject
      "Landmark"
      ( \o ->
          Landmark
            Core.<$> (o Core..:? "position")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Landmark where
  toJSON Landmark {..} =
    Core.object
      ( Core.catMaybes
          [ ("position" Core..=) Core.<$> position,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An object that represents a latitude\/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
--
-- /See:/ 'newLatLng' smart constructor.
data LatLng = LatLng
  { -- | The latitude in degrees. It must be in the range [-90.0, +90.0].
    latitude :: (Core.Maybe Core.Double),
    -- | The longitude in degrees. It must be in the range [-180.0, +180.0].
    longitude :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LatLng' with the minimum fields required to make a request.
newLatLng ::
  LatLng
newLatLng =
  LatLng {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON LatLng where
  parseJSON =
    Core.withObject
      "LatLng"
      ( \o ->
          LatLng
            Core.<$> (o Core..:? "latitude")
            Core.<*> (o Core..:? "longitude")
      )

instance Core.ToJSON LatLng where
  toJSON LatLng {..} =
    Core.object
      ( Core.catMaybes
          [ ("latitude" Core..=) Core.<$> latitude,
            ("longitude" Core..=) Core.<$> longitude
          ]
      )

-- | Set of detected objects with bounding boxes.
--
-- /See:/ 'newLocalizedObjectAnnotation' smart constructor.
data LocalizedObjectAnnotation = LocalizedObjectAnnotation
  { -- | Image region to which this object belongs. This must be populated.
    boundingPoly :: (Core.Maybe BoundingPoly),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedObjectAnnotation' with the minimum fields required to make a request.
newLocalizedObjectAnnotation ::
  LocalizedObjectAnnotation
newLocalizedObjectAnnotation =
  LocalizedObjectAnnotation
    { boundingPoly = Core.Nothing,
      languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON LocalizedObjectAnnotation where
  parseJSON =
    Core.withObject
      "LocalizedObjectAnnotation"
      ( \o ->
          LocalizedObjectAnnotation
            Core.<$> (o Core..:? "boundingPoly")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON LocalizedObjectAnnotation where
  toJSON LocalizedObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPoly" Core..=) Core.<$> boundingPoly,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Detected entity location information.
--
-- /See:/ 'newLocationInfo' smart constructor.
newtype LocationInfo = LocationInfo
  { -- | lat\/long location coordinates.
    latLng :: (Core.Maybe LatLng)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationInfo' with the minimum fields required to make a request.
newLocationInfo ::
  LocationInfo
newLocationInfo = LocationInfo {latLng = Core.Nothing}

instance Core.FromJSON LocationInfo where
  parseJSON =
    Core.withObject
      "LocationInfo"
      (\o -> LocationInfo Core.<$> (o Core..:? "latLng"))

instance Core.ToJSON LocationInfo where
  toJSON LocationInfo {..} =
    Core.object (Core.catMaybes [("latLng" Core..=) Core.<$> latLng])

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newNormalizedVertex' smart constructor.
data NormalizedVertex = NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NormalizedVertex' with the minimum fields required to make a request.
newNormalizedVertex ::
  NormalizedVertex
newNormalizedVertex =
  NormalizedVertex {x = Core.Nothing, y = Core.Nothing}

instance Core.FromJSON NormalizedVertex where
  parseJSON =
    Core.withObject
      "NormalizedVertex"
      ( \o ->
          NormalizedVertex
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
      )

instance Core.ToJSON NormalizedVertex where
  toJSON NormalizedVertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Prediction for what the object in the bounding box is.
--
-- /See:/ 'newObjectAnnotation' smart constructor.
data ObjectAnnotation = ObjectAnnotation
  { -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text),
    -- | Object ID that should align with EntityAnnotation mid.
    mid :: (Core.Maybe Core.Text),
    -- | Object name, expressed in its @language_code@ language.
    name :: (Core.Maybe Core.Text),
    -- | Score of the result. Range [0, 1].
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObjectAnnotation' with the minimum fields required to make a request.
newObjectAnnotation ::
  ObjectAnnotation
newObjectAnnotation =
  ObjectAnnotation
    { languageCode = Core.Nothing,
      mid = Core.Nothing,
      name = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON ObjectAnnotation where
  parseJSON =
    Core.withObject
      "ObjectAnnotation"
      ( \o ->
          ObjectAnnotation
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "mid")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON ObjectAnnotation where
  toJSON ObjectAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("mid" Core..=) Core.<$> mid,
            ("name" Core..=) Core.<$> name,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | Contains metadata for the BatchAnnotateImages operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | The time when the batch request was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Current state of the batch operation.
    state :: (Core.Maybe OperationMetadata_State),
    -- | The time when the operation result was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { createTime = Core.Nothing,
      state = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("state" Core..=) Core.<$> state,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The desired output location and metadata.
--
-- /See:/ 'newOutputConfig' smart constructor.
data OutputConfig = OutputConfig
  { -- | The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If @batch_size@ = 20, then 5 json files each containing 20 response protos will be written under the prefix @gcs_destination@.@uri@. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
    batchSize :: (Core.Maybe Core.Int32),
    -- | The Google Cloud Storage location to write the output(s) to.
    gcsDestination :: (Core.Maybe GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
newOutputConfig ::
  OutputConfig
newOutputConfig =
  OutputConfig
    { batchSize = Core.Nothing,
      gcsDestination = Core.Nothing
    }

instance Core.FromJSON OutputConfig where
  parseJSON =
    Core.withObject
      "OutputConfig"
      ( \o ->
          OutputConfig
            Core.<$> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON OutputConfig where
  toJSON OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.<$> batchSize,
            ("gcsDestination" Core..=) Core.<$> gcsDestination
          ]
      )

-- | Detected page from OCR.
--
-- /See:/ 'newPage' smart constructor.
data Page = Page
  { -- | List of blocks of text, images etc on this page.
    blocks :: (Core.Maybe [Block]),
    -- | Confidence of the OCR results on the page. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Page height. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    height :: (Core.Maybe Core.Int32),
    -- | Additional information detected on the page.
    property :: (Core.Maybe TextProperty),
    -- | Page width. For PDFs the unit is points. For images (including TIFFs) the unit is pixels.
    width :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Page' with the minimum fields required to make a request.
newPage ::
  Page
newPage =
  Page
    { blocks = Core.Nothing,
      confidence = Core.Nothing,
      height = Core.Nothing,
      property = Core.Nothing,
      width = Core.Nothing
    }

instance Core.FromJSON Page where
  parseJSON =
    Core.withObject
      "Page"
      ( \o ->
          Page
            Core.<$> (o Core..:? "blocks")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "height")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "width")
      )

instance Core.ToJSON Page where
  toJSON Page {..} =
    Core.object
      ( Core.catMaybes
          [ ("blocks" Core..=) Core.<$> blocks,
            ("confidence" Core..=) Core.<$> confidence,
            ("height" Core..=) Core.<$> height,
            ("property" Core..=) Core.<$> property,
            ("width" Core..=) Core.<$> width
          ]
      )

-- | Structural unit of text representing a number of words in certain order.
--
-- /See:/ 'newParagraph' smart constructor.
data Paragraph = Paragraph
  { -- | The bounding box for the paragraph. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe BoundingPoly),
    -- | Confidence of the OCR results for the paragraph. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the paragraph.
    property :: (Core.Maybe TextProperty),
    -- | List of all words in this paragraph.
    words :: (Core.Maybe [Word])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Paragraph' with the minimum fields required to make a request.
newParagraph ::
  Paragraph
newParagraph =
  Paragraph
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      words = Core.Nothing
    }

instance Core.FromJSON Paragraph where
  parseJSON =
    Core.withObject
      "Paragraph"
      ( \o ->
          Paragraph
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "words")
      )

instance Core.ToJSON Paragraph where
  toJSON Paragraph {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("words" Core..=) Core.<$> words
          ]
      )

-- | A 3D position in the image, used primarily for Face detection landmarks. A valid Position must have both x and y coordinates. The position coordinates are in the same scale as the original image.
--
-- /See:/ 'newPosition' smart constructor.
data Position = Position
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double),
    -- | Z coordinate (or depth).
    z :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
newPosition ::
  Position
newPosition =
  Position {x = Core.Nothing, y = Core.Nothing, z = Core.Nothing}

instance Core.FromJSON Position where
  parseJSON =
    Core.withObject
      "Position"
      ( \o ->
          Position
            Core.<$> (o Core..:? "x")
            Core.<*> (o Core..:? "y")
            Core.<*> (o Core..:? "z")
      )

instance Core.ToJSON Position where
  toJSON Position {..} =
    Core.object
      ( Core.catMaybes
          [ ("x" Core..=) Core.<$> x,
            ("y" Core..=) Core.<$> y,
            ("z" Core..=) Core.<$> z
          ]
      )

-- | A Product contains ReferenceImages.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | User-provided metadata to be stored with this product. Must be at most 4096 characters long.
    description :: (Core.Maybe Core.Text),
    -- | The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the product. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID@. This field is ignored when creating a product.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The category for the product identified by the reference image. This should be one of \"homegoods-v2\", \"apparel-v2\", \"toys-v2\", \"packagedgoods-v1\" or \"general-v1\". The legacy categories \"homegoods\", \"apparel\", and \"toys\" are still supported, but these should not be used for new products.
    productCategory :: (Core.Maybe Core.Text),
    -- | Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product/labels. Note that integer values can be provided as strings, e.g. \"1199\". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product/labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
    productLabels :: (Core.Maybe [KeyValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      productCategory = Core.Nothing,
      productLabels = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCategory")
            Core.<*> (o Core..:? "productLabels")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("productCategory" Core..=) Core.<$> productCategory,
            ("productLabels" Core..=) Core.<$> productLabels
          ]
      )

-- | Results for a product search request.
--
-- /See:/ 'newProductSearchResults' smart constructor.
data ProductSearchResults = ProductSearchResults
  { -- | Timestamp of the index which provided these results. Products added to the product set and products removed from the product set after this time are not reflected in the current results.
    indexTime :: (Core.Maybe Core.DateTime),
    -- | List of results grouped by products detected in the query image. Each entry corresponds to one bounding polygon in the query image, and contains the matching products specific to that region. There may be duplicate product matches in the union of all the per-product results.
    productGroupedResults :: (Core.Maybe [GroupedResult]),
    -- | List of results, one for each product match.
    results :: (Core.Maybe [Result])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductSearchResults' with the minimum fields required to make a request.
newProductSearchResults ::
  ProductSearchResults
newProductSearchResults =
  ProductSearchResults
    { indexTime = Core.Nothing,
      productGroupedResults = Core.Nothing,
      results = Core.Nothing
    }

instance Core.FromJSON ProductSearchResults where
  parseJSON =
    Core.withObject
      "ProductSearchResults"
      ( \o ->
          ProductSearchResults
            Core.<$> (o Core..:? "indexTime")
            Core.<*> (o Core..:? "productGroupedResults")
            Core.<*> (o Core..:? "results")
      )

instance Core.ToJSON ProductSearchResults where
  toJSON ProductSearchResults {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexTime" Core..=) Core.<$> indexTime,
            ("productGroupedResults" Core..=) Core.<$> productGroupedResults,
            ("results" Core..=) Core.<$> results
          ]
      )

-- | A @Property@ consists of a user-supplied name\/value pair.
--
-- /See:/ 'newProperty' smart constructor.
data Property = Property
  { -- | Name of the property.
    name :: (Core.Maybe Core.Text),
    -- | Value of numeric properties.
    uint64Value :: (Core.Maybe Core.Word64),
    -- | Value of the property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Property' with the minimum fields required to make a request.
newProperty ::
  Property
newProperty =
  Property
    { name = Core.Nothing,
      uint64Value = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Property where
  parseJSON =
    Core.withObject
      "Property"
      ( \o ->
          Property
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "uint64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Property where
  toJSON Property {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("uint64Value" Core..=) Core.. Core.AsText Core.<$> uint64Value,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A @ReferenceImage@ represents a product image and its associated metadata, such as bounding boxes.
--
-- /See:/ 'newReferenceImage' smart constructor.
data ReferenceImage = ReferenceImage
  { -- | Optional. Bounding polygons around the areas of interest in the reference image. If this field is empty, the system will try to detect regions of interest. At most 10 bounding polygons will be used. The provided shape is converted into a non-rotated rectangle. Once converted, the small edge of the rectangle must be greater than or equal to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
    boundingPolys :: (Core.Maybe [BoundingPoly]),
    -- | The resource name of the reference image. Format is: @projects\/PROJECT_ID\/locations\/LOC_ID\/products\/PRODUCT_ID\/referenceImages\/IMAGE_ID@. This field is ignored when creating a reference image.
    name :: (Core.Maybe Core.Text),
    -- | Required. The Google Cloud Storage URI of the reference image. The URI must start with @gs:\/\/@.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReferenceImage' with the minimum fields required to make a request.
newReferenceImage ::
  ReferenceImage
newReferenceImage =
  ReferenceImage
    { boundingPolys = Core.Nothing,
      name = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON ReferenceImage where
  parseJSON =
    Core.withObject
      "ReferenceImage"
      ( \o ->
          ReferenceImage
            Core.<$> (o Core..:? "boundingPolys")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON ReferenceImage where
  toJSON ReferenceImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingPolys" Core..=) Core.<$> boundingPolys,
            ("name" Core..=) Core.<$> name,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Information about a product.
--
-- /See:/ 'newResult' smart constructor.
data Result = Result
  { -- | The resource name of the image from the product that is the closest match to the query.
    image :: (Core.Maybe Core.Text),
    -- | The Product.
    product :: (Core.Maybe Product),
    -- | A confidence level on the match, ranging from 0 (no confidence) to 1 (full confidence).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Result' with the minimum fields required to make a request.
newResult ::
  Result
newResult =
  Result
    { image = Core.Nothing,
      product = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON Result where
  parseJSON =
    Core.withObject
      "Result"
      ( \o ->
          Result
            Core.<$> (o Core..:? "image")
            Core.<*> (o Core..:? "product")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON Result where
  toJSON Result {..} =
    Core.object
      ( Core.catMaybes
          [ ("image" Core..=) Core.<$> image,
            ("product" Core..=) Core.<$> product,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Set of features pertaining to the image, computed by computer vision methods over safe-search verticals (for example, adult, spoof, medical, violence).
--
-- /See:/ 'newSafeSearchAnnotation' smart constructor.
data SafeSearchAnnotation = SafeSearchAnnotation
  { -- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
    adult :: (Core.Maybe SafeSearchAnnotation_Adult),
    -- | Likelihood that this is a medical image.
    medical :: (Core.Maybe SafeSearchAnnotation_Medical),
    -- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
    racy :: (Core.Maybe SafeSearchAnnotation_Racy),
    -- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
    spoof :: (Core.Maybe SafeSearchAnnotation_Spoof),
    -- | Likelihood that this image contains violent content. Violent content may include death, serious harm, or injury to individuals or groups of individuals.
    violence :: (Core.Maybe SafeSearchAnnotation_Violence)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeSearchAnnotation' with the minimum fields required to make a request.
newSafeSearchAnnotation ::
  SafeSearchAnnotation
newSafeSearchAnnotation =
  SafeSearchAnnotation
    { adult = Core.Nothing,
      medical = Core.Nothing,
      racy = Core.Nothing,
      spoof = Core.Nothing,
      violence = Core.Nothing
    }

instance Core.FromJSON SafeSearchAnnotation where
  parseJSON =
    Core.withObject
      "SafeSearchAnnotation"
      ( \o ->
          SafeSearchAnnotation
            Core.<$> (o Core..:? "adult")
            Core.<*> (o Core..:? "medical")
            Core.<*> (o Core..:? "racy")
            Core.<*> (o Core..:? "spoof")
            Core.<*> (o Core..:? "violence")
      )

instance Core.ToJSON SafeSearchAnnotation where
  toJSON SafeSearchAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [ ("adult" Core..=) Core.<$> adult,
            ("medical" Core..=) Core.<$> medical,
            ("racy" Core..=) Core.<$> racy,
            ("spoof" Core..=) Core.<$> spoof,
            ("violence" Core..=) Core.<$> violence
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | A single symbol representation.
--
-- /See:/ 'newSymbol' smart constructor.
data Symbol = Symbol
  { -- | The bounding box for the symbol. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe BoundingPoly),
    -- | Confidence of the OCR results for the symbol. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the symbol.
    property :: (Core.Maybe TextProperty),
    -- | The actual UTF-8 representation of the symbol.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Symbol' with the minimum fields required to make a request.
newSymbol ::
  Symbol
newSymbol =
  Symbol
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON Symbol where
  parseJSON =
    Core.withObject
      "Symbol"
      ( \o ->
          Symbol
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Symbol where
  toJSON Symbol {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | TextAnnotation contains a structured representation of OCR extracted text. The hierarchy of an OCR extracted text structure is like this: TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol Each structural component, starting from Page, may further have their own properties. Properties describe detected languages, breaks etc.. Please refer to the TextAnnotation.TextProperty message definition below for more detail.
--
-- /See:/ 'newTextAnnotation' smart constructor.
data TextAnnotation = TextAnnotation
  { -- | List of pages detected by OCR.
    pages :: (Core.Maybe [Page]),
    -- | UTF-8 text detected on the pages.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextAnnotation' with the minimum fields required to make a request.
newTextAnnotation ::
  TextAnnotation
newTextAnnotation =
  TextAnnotation {pages = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON TextAnnotation where
  parseJSON =
    Core.withObject
      "TextAnnotation"
      ( \o ->
          TextAnnotation
            Core.<$> (o Core..:? "pages")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON TextAnnotation where
  toJSON TextAnnotation {..} =
    Core.object
      ( Core.catMaybes
          [("pages" Core..=) Core.<$> pages, ("text" Core..=) Core.<$> text]
      )

-- | Additional information detected on the structural component.
--
-- /See:/ 'newTextProperty' smart constructor.
data TextProperty = TextProperty
  { -- | Detected start or end of a text segment.
    detectedBreak :: (Core.Maybe DetectedBreak),
    -- | A list of detected languages together with confidence.
    detectedLanguages :: (Core.Maybe [DetectedLanguage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextProperty' with the minimum fields required to make a request.
newTextProperty ::
  TextProperty
newTextProperty =
  TextProperty
    { detectedBreak = Core.Nothing,
      detectedLanguages = Core.Nothing
    }

instance Core.FromJSON TextProperty where
  parseJSON =
    Core.withObject
      "TextProperty"
      ( \o ->
          TextProperty
            Core.<$> (o Core..:? "detectedBreak")
            Core.<*> (o Core..:? "detectedLanguages")
      )

instance Core.ToJSON TextProperty where
  toJSON TextProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("detectedBreak" Core..=) Core.<$> detectedBreak,
            ("detectedLanguages" Core..=) Core.<$> detectedLanguages
          ]
      )

-- | A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
--
-- /See:/ 'newVertex' smart constructor.
data Vertex = Vertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Int32),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Vertex' with the minimum fields required to make a request.
newVertex ::
  Vertex
newVertex = Vertex {x = Core.Nothing, y = Core.Nothing}

instance Core.FromJSON Vertex where
  parseJSON =
    Core.withObject
      "Vertex"
      (\o -> Vertex Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y"))

instance Core.ToJSON Vertex where
  toJSON Vertex {..} =
    Core.object
      ( Core.catMaybes
          [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
      )

-- | Relevant information for the image from the Internet.
--
-- /See:/ 'newWebDetection' smart constructor.
data WebDetection = WebDetection
  { -- | The service\'s best guess as to the topic of the request image. Inferred from similar images on the open web.
    bestGuessLabels :: (Core.Maybe [WebLabel]),
    -- | Fully matching images from the Internet. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [WebImage]),
    -- | Web pages containing the matching images from the Internet.
    pagesWithMatchingImages :: (Core.Maybe [WebPage]),
    -- | Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [WebImage]),
    -- | The visually similar image results.
    visuallySimilarImages :: (Core.Maybe [WebImage]),
    -- | Deduced entities from similar images on the Internet.
    webEntities :: (Core.Maybe [WebEntity])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebDetection' with the minimum fields required to make a request.
newWebDetection ::
  WebDetection
newWebDetection =
  WebDetection
    { bestGuessLabels = Core.Nothing,
      fullMatchingImages = Core.Nothing,
      pagesWithMatchingImages = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      visuallySimilarImages = Core.Nothing,
      webEntities = Core.Nothing
    }

instance Core.FromJSON WebDetection where
  parseJSON =
    Core.withObject
      "WebDetection"
      ( \o ->
          WebDetection
            Core.<$> (o Core..:? "bestGuessLabels")
            Core.<*> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pagesWithMatchingImages")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "visuallySimilarImages")
            Core.<*> (o Core..:? "webEntities")
      )

instance Core.ToJSON WebDetection where
  toJSON WebDetection {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestGuessLabels" Core..=) Core.<$> bestGuessLabels,
            ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pagesWithMatchingImages" Core..=)
              Core.<$> pagesWithMatchingImages,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("visuallySimilarImages" Core..=) Core.<$> visuallySimilarImages,
            ("webEntities" Core..=) Core.<$> webEntities
          ]
      )

-- | Entity deduced from similar images on the Internet.
--
-- /See:/ 'newWebEntity' smart constructor.
data WebEntity = WebEntity
  { -- | Canonical description of the entity, in English.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID.
    entityId :: (Core.Maybe Core.Text),
    -- | Overall relevancy score for the entity. Not normalized and not comparable across different image queries.
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebEntity' with the minimum fields required to make a request.
newWebEntity ::
  WebEntity
newWebEntity =
  WebEntity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      score = Core.Nothing
    }

instance Core.FromJSON WebEntity where
  parseJSON =
    Core.withObject
      "WebEntity"
      ( \o ->
          WebEntity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON WebEntity where
  toJSON WebEntity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | Metadata for online images.
--
-- /See:/ 'newWebImage' smart constructor.
data WebImage = WebImage
  { -- | (Deprecated) Overall relevancy score for the image.
    score :: (Core.Maybe Core.Double),
    -- | The result image URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebImage' with the minimum fields required to make a request.
newWebImage ::
  WebImage
newWebImage = WebImage {score = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON WebImage where
  parseJSON =
    Core.withObject
      "WebImage"
      ( \o ->
          WebImage Core.<$> (o Core..:? "score") Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON WebImage where
  toJSON WebImage {..} =
    Core.object
      ( Core.catMaybes
          [("score" Core..=) Core.<$> score, ("url" Core..=) Core.<$> url]
      )

-- | Label to provide extra metadata for the web detection.
--
-- /See:/ 'newWebLabel' smart constructor.
data WebLabel = WebLabel
  { -- | Label for extra metadata.
    label :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code for @label@, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebLabel' with the minimum fields required to make a request.
newWebLabel ::
  WebLabel
newWebLabel =
  WebLabel {label = Core.Nothing, languageCode = Core.Nothing}

instance Core.FromJSON WebLabel where
  parseJSON =
    Core.withObject
      "WebLabel"
      ( \o ->
          WebLabel
            Core.<$> (o Core..:? "label")
            Core.<*> (o Core..:? "languageCode")
      )

instance Core.ToJSON WebLabel where
  toJSON WebLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("label" Core..=) Core.<$> label,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Metadata for web pages.
--
-- /See:/ 'newWebPage' smart constructor.
data WebPage = WebPage
  { -- | Fully matching images on the page. Can include resized copies of the query image.
    fullMatchingImages :: (Core.Maybe [WebImage]),
    -- | Title for the web page, may contain HTML markups.
    pageTitle :: (Core.Maybe Core.Text),
    -- | Partial matching images on the page. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops.
    partialMatchingImages :: (Core.Maybe [WebImage]),
    -- | (Deprecated) Overall relevancy score for the web page.
    score :: (Core.Maybe Core.Double),
    -- | The result web page URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebPage' with the minimum fields required to make a request.
newWebPage ::
  WebPage
newWebPage =
  WebPage
    { fullMatchingImages = Core.Nothing,
      pageTitle = Core.Nothing,
      partialMatchingImages = Core.Nothing,
      score = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON WebPage where
  parseJSON =
    Core.withObject
      "WebPage"
      ( \o ->
          WebPage
            Core.<$> (o Core..:? "fullMatchingImages")
            Core.<*> (o Core..:? "pageTitle")
            Core.<*> (o Core..:? "partialMatchingImages")
            Core.<*> (o Core..:? "score")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON WebPage where
  toJSON WebPage {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullMatchingImages" Core..=) Core.<$> fullMatchingImages,
            ("pageTitle" Core..=) Core.<$> pageTitle,
            ("partialMatchingImages" Core..=) Core.<$> partialMatchingImages,
            ("score" Core..=) Core.<$> score,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | A word representation.
--
-- /See:/ 'newWord' smart constructor.
data Word = Word
  { -- | The bounding box for the word. The vertices are in the order of top-left, top-right, bottom-right, bottom-left. When a rotation of the bounding box is detected the rotation is represented as around the top-left corner as defined when the text is read in the \'natural\' orientation. For example: * when the text is horizontal it might look like: 0----1 | | 3----2 * when it\'s rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3).
    boundingBox :: (Core.Maybe BoundingPoly),
    -- | Confidence of the OCR results for the word. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Additional information detected for the word.
    property :: (Core.Maybe TextProperty),
    -- | List of symbols in the word. The order of the symbols follows the natural reading order.
    symbols :: (Core.Maybe [Symbol])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Word' with the minimum fields required to make a request.
newWord ::
  Word
newWord =
  Word
    { boundingBox = Core.Nothing,
      confidence = Core.Nothing,
      property = Core.Nothing,
      symbols = Core.Nothing
    }

instance Core.FromJSON Word where
  parseJSON =
    Core.withObject
      "Word"
      ( \o ->
          Word
            Core.<$> (o Core..:? "boundingBox")
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "property")
            Core.<*> (o Core..:? "symbols")
      )

instance Core.ToJSON Word where
  toJSON Word {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBox" Core..=) Core.<$> boundingBox,
            ("confidence" Core..=) Core.<$> confidence,
            ("property" Core..=) Core.<$> property,
            ("symbols" Core..=) Core.<$> symbols
          ]
      )
