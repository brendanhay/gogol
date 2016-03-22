{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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
    , cloudPlatformScope

    -- * LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- * FaceAnnotationUnderExposedLikelihood
    , FaceAnnotationUnderExposedLikelihood (..)

    -- * Feature
    , Feature
    , feature
    , fType
    , fMaxResults

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * Property
    , Property
    , property
    , pValue
    , pName

    -- * Image
    , Image
    , image
    , iContent
    , iSource

    -- * Landmark
    , Landmark
    , landmark
    , lType
    , lPosition

    -- * Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

    -- * FaceAnnotationHeadwearLikelihood
    , FaceAnnotationHeadwearLikelihood (..)

    -- * BoundingPoly
    , BoundingPoly
    , boundingPoly
    , bpVertices

    -- * SafeSearchAnnotationAdult
    , SafeSearchAnnotationAdult (..)

    -- * Vertex
    , Vertex
    , vertex
    , vX
    , vY

    -- * FaceAnnotationAngerLikelihood
    , FaceAnnotationAngerLikelihood (..)

    -- * LocationInfo
    , LocationInfo
    , locationInfo
    , liLatLng

    -- * SafeSearchAnnotationMedical
    , SafeSearchAnnotationMedical (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * BatchAnnotateImagesRequest
    , BatchAnnotateImagesRequest
    , batchAnnotateImagesRequest
    , bairRequests

    -- * ColorInfo
    , ColorInfo
    , colorInfo
    , ciColor
    , ciScore
    , ciPixelFraction

    -- * FaceAnnotationBlurredLikelihood
    , FaceAnnotationBlurredLikelihood (..)

    -- * AnnotateImageResponse
    , AnnotateImageResponse
    , annotateImageResponse
    , airLogoAnnotations
    , airLabelAnnotations
    , airFaceAnnotations
    , airError
    , airSafeSearchAnnotation
    , airLandmarkAnnotations
    , airTextAnnotations
    , airImagePropertiesAnnotation

    -- * ImageProperties
    , ImageProperties
    , imageProperties
    , ipDominantColors

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

    -- * SafeSearchAnnotationViolence
    , SafeSearchAnnotationViolence (..)

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

    -- * FeatureType
    , FeatureType (..)

    -- * AnnotateImageRequest
    , AnnotateImageRequest
    , annotateImageRequest
    , airImage
    , airFeatures
    , airImageContext

    -- * LandmarkType
    , LandmarkType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * ImageSource
    , ImageSource
    , imageSource
    , isGcsImageURI

    -- * SafeSearchAnnotationSpoof
    , SafeSearchAnnotationSpoof (..)

    -- * FaceAnnotationSurpriseLikelihood
    , FaceAnnotationSurpriseLikelihood (..)

    -- * SafeSearchAnnotation
    , SafeSearchAnnotation
    , safeSearchAnnotation
    , ssaSpoof
    , ssaAdult
    , ssaMedical
    , ssaViolence

    -- * FaceAnnotationSorrowLikelihood
    , FaceAnnotationSorrowLikelihood (..)

    -- * FaceAnnotationJoyLikelihood
    , FaceAnnotationJoyLikelihood (..)

    -- * ImageContext
    , ImageContext
    , imageContext
    , icLanguageHints
    , icLatLongRect

    -- * DominantColorsAnnotation
    , DominantColorsAnnotation
    , dominantColorsAnnotation
    , dcaColors

    -- * LatLongRect
    , LatLongRect
    , latLongRect
    , llrMaxLatLng
    , llrMinLatLng

    -- * BatchAnnotateImagesResponse
    , BatchAnnotateImagesResponse
    , batchAnnotateImagesResponse
    , bairResponses

    -- * Position
    , Position
    , position
    , pZ
    , pX
    , pY
    ) where

import           Network.Google.Prelude
import           Network.Google.Vision.Types.Product
import           Network.Google.Vision.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Vision API. This contains the host and root path used as a starting point for constructing service requests.
visionService :: ServiceConfig
visionService
  = defaultService (ServiceId "vision:v1")
      "vision.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
