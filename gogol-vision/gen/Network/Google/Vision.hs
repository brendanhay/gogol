{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Vision
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Integrates Google Vision features, including image labeling, face, logo,
-- and landmark detection, optical character recognition (OCR), and
-- detection of explicit content, into applications.
--
-- /See:/ <https://cloud.google.com/vision/ Google Cloud Vision API Reference>
module Network.Google.Vision
    (
    -- * Service Configuration
      visionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , VisionAPI

    -- * Resources

    -- ** vision.images.annotate
    , module Network.Google.Resource.Vision.Images.Annotate

    -- * Types

    -- ** LatLng
    , LatLng
    , latLng
    , llLatitude
    , llLongitude

    -- ** FaceAnnotationUnderExposedLikelihood
    , FaceAnnotationUnderExposedLikelihood (..)

    -- ** Feature
    , Feature
    , feature
    , fType
    , fMaxResults

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** Property
    , Property
    , property
    , pValue
    , pName

    -- ** Image
    , Image
    , image
    , iContent
    , iSource

    -- ** Landmark
    , Landmark
    , landmark
    , lType
    , lPosition

    -- ** Color
    , Color
    , color
    , cRed
    , cAlpha
    , cGreen
    , cBlue

    -- ** FaceAnnotationHeadwearLikelihood
    , FaceAnnotationHeadwearLikelihood (..)

    -- ** BoundingPoly
    , BoundingPoly
    , boundingPoly
    , bpVertices

    -- ** SafeSearchAnnotationAdult
    , SafeSearchAnnotationAdult (..)

    -- ** Vertex
    , Vertex
    , vertex
    , vX
    , vY

    -- ** FaceAnnotationAngerLikelihood
    , FaceAnnotationAngerLikelihood (..)

    -- ** LocationInfo
    , LocationInfo
    , locationInfo
    , liLatLng

    -- ** SafeSearchAnnotationMedical
    , SafeSearchAnnotationMedical (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** BatchAnnotateImagesRequest
    , BatchAnnotateImagesRequest
    , batchAnnotateImagesRequest
    , bairRequests

    -- ** ColorInfo
    , ColorInfo
    , colorInfo
    , ciColor
    , ciScore
    , ciPixelFraction

    -- ** FaceAnnotationBlurredLikelihood
    , FaceAnnotationBlurredLikelihood (..)

    -- ** AnnotateImageResponse
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

    -- ** ImageProperties
    , ImageProperties
    , imageProperties
    , ipDominantColors

    -- ** FaceAnnotation
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

    -- ** SafeSearchAnnotationViolence
    , SafeSearchAnnotationViolence (..)

    -- ** EntityAnnotation
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

    -- ** FeatureType
    , FeatureType (..)

    -- ** AnnotateImageRequest
    , AnnotateImageRequest
    , annotateImageRequest
    , airImage
    , airFeatures
    , airImageContext

    -- ** LandmarkType
    , LandmarkType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** ImageSource
    , ImageSource
    , imageSource
    , isGcsImageURI

    -- ** SafeSearchAnnotationSpoof
    , SafeSearchAnnotationSpoof (..)

    -- ** FaceAnnotationSurpriseLikelihood
    , FaceAnnotationSurpriseLikelihood (..)

    -- ** SafeSearchAnnotation
    , SafeSearchAnnotation
    , safeSearchAnnotation
    , ssaSpoof
    , ssaAdult
    , ssaMedical
    , ssaViolence

    -- ** FaceAnnotationSorrowLikelihood
    , FaceAnnotationSorrowLikelihood (..)

    -- ** FaceAnnotationJoyLikelihood
    , FaceAnnotationJoyLikelihood (..)

    -- ** ImageContext
    , ImageContext
    , imageContext
    , icLanguageHints
    , icLatLongRect

    -- ** DominantColorsAnnotation
    , DominantColorsAnnotation
    , dominantColorsAnnotation
    , dcaColors

    -- ** LatLongRect
    , LatLongRect
    , latLongRect
    , llrMaxLatLng
    , llrMinLatLng

    -- ** BatchAnnotateImagesResponse
    , BatchAnnotateImagesResponse
    , batchAnnotateImagesResponse
    , bairResponses

    -- ** Position
    , Position
    , position
    , pZ
    , pX
    , pY
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Vision.Images.Annotate
import           Network.Google.Vision.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Vision API service.
type VisionAPI = ImagesAnnotateResource
