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
-- Module      : Network.Google.Vision.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Vision.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BatchOperationMetadata_State
    BatchOperationMetadata_State
      ( BatchOperationMetadata_State_STATEUNSPECIFIED,
        BatchOperationMetadata_State_Processing,
        BatchOperationMetadata_State_Successful,
        BatchOperationMetadata_State_Failed,
        BatchOperationMetadata_State_Cancelled,
        ..
      ),

    -- * Block_BlockType
    Block_BlockType
      ( Block_BlockType_Unknown,
        Block_BlockType_Text,
        Block_BlockType_Table,
        Block_BlockType_Picture,
        Block_BlockType_Ruler,
        Block_BlockType_Barcode,
        ..
      ),

    -- * DetectedBreak_Type
    DetectedBreak_Type
      ( DetectedBreak_Type_Unknown,
        DetectedBreak_Type_Space,
        DetectedBreak_Type_SURESPACE,
        DetectedBreak_Type_EOLSURESPACE,
        DetectedBreak_Type_Hyphen,
        DetectedBreak_Type_LINEBREAK,
        ..
      ),

    -- * FaceAnnotation_AngerLikelihood
    FaceAnnotation_AngerLikelihood
      ( FaceAnnotation_AngerLikelihood_Unknown,
        FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
        FaceAnnotation_AngerLikelihood_Unlikely,
        FaceAnnotation_AngerLikelihood_Possible,
        FaceAnnotation_AngerLikelihood_Likely,
        FaceAnnotation_AngerLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_BlurredLikelihood
    FaceAnnotation_BlurredLikelihood
      ( FaceAnnotation_BlurredLikelihood_Unknown,
        FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
        FaceAnnotation_BlurredLikelihood_Unlikely,
        FaceAnnotation_BlurredLikelihood_Possible,
        FaceAnnotation_BlurredLikelihood_Likely,
        FaceAnnotation_BlurredLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_HeadwearLikelihood
    FaceAnnotation_HeadwearLikelihood
      ( FaceAnnotation_HeadwearLikelihood_Unknown,
        FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
        FaceAnnotation_HeadwearLikelihood_Unlikely,
        FaceAnnotation_HeadwearLikelihood_Possible,
        FaceAnnotation_HeadwearLikelihood_Likely,
        FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_JoyLikelihood
    FaceAnnotation_JoyLikelihood
      ( FaceAnnotation_JoyLikelihood_Unknown,
        FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
        FaceAnnotation_JoyLikelihood_Unlikely,
        FaceAnnotation_JoyLikelihood_Possible,
        FaceAnnotation_JoyLikelihood_Likely,
        FaceAnnotation_JoyLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_SorrowLikelihood
    FaceAnnotation_SorrowLikelihood
      ( FaceAnnotation_SorrowLikelihood_Unknown,
        FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
        FaceAnnotation_SorrowLikelihood_Unlikely,
        FaceAnnotation_SorrowLikelihood_Possible,
        FaceAnnotation_SorrowLikelihood_Likely,
        FaceAnnotation_SorrowLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_SurpriseLikelihood
    FaceAnnotation_SurpriseLikelihood
      ( FaceAnnotation_SurpriseLikelihood_Unknown,
        FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
        FaceAnnotation_SurpriseLikelihood_Unlikely,
        FaceAnnotation_SurpriseLikelihood_Possible,
        FaceAnnotation_SurpriseLikelihood_Likely,
        FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
        ..
      ),

    -- * FaceAnnotation_UnderExposedLikelihood
    FaceAnnotation_UnderExposedLikelihood
      ( FaceAnnotation_UnderExposedLikelihood_Unknown,
        FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
        FaceAnnotation_UnderExposedLikelihood_Unlikely,
        FaceAnnotation_UnderExposedLikelihood_Possible,
        FaceAnnotation_UnderExposedLikelihood_Likely,
        FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1Block_BlockType
    GoogleCloudVisionV1p1beta1Block_BlockType
      ( GoogleCloudVisionV1p1beta1Block_BlockType_Unknown,
        GoogleCloudVisionV1p1beta1Block_BlockType_Text,
        GoogleCloudVisionV1p1beta1Block_BlockType_Table,
        GoogleCloudVisionV1p1beta1Block_BlockType_Picture,
        GoogleCloudVisionV1p1beta1Block_BlockType_Ruler,
        GoogleCloudVisionV1p1beta1Block_BlockType_Barcode,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
      ( GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
        GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Possible,
        GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Likely,
        GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
      ( GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYE,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYE,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSETIP,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UPPERLIP,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LOWERLIP,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINGNATHION,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
        GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1OperationMetadata_State
    GoogleCloudVisionV1p1beta1OperationMetadata_State
      ( GoogleCloudVisionV1p1beta1OperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p1beta1OperationMetadata_State_Created,
        GoogleCloudVisionV1p1beta1OperationMetadata_State_Running,
        GoogleCloudVisionV1p1beta1OperationMetadata_State_Done,
        GoogleCloudVisionV1p1beta1OperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
      ( GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unknown,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unlikely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Possible,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Likely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
      ( GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unknown,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unlikely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Possible,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Likely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
      ( GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unknown,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unlikely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Possible,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Likely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
      ( GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unknown,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unlikely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Possible,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Likely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
      ( GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unknown,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unlikely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Possible,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Likely,
        GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
      ( GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Unknown,
        GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Space,
        GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_SURESPACE,
        GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
        GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Hyphen,
        GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1Block_BlockType
    GoogleCloudVisionV1p2beta1Block_BlockType
      ( GoogleCloudVisionV1p2beta1Block_BlockType_Unknown,
        GoogleCloudVisionV1p2beta1Block_BlockType_Text,
        GoogleCloudVisionV1p2beta1Block_BlockType_Table,
        GoogleCloudVisionV1p2beta1Block_BlockType_Picture,
        GoogleCloudVisionV1p2beta1Block_BlockType_Ruler,
        GoogleCloudVisionV1p2beta1Block_BlockType_Barcode,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
      ( GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
        GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Possible,
        GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Likely,
        GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
      ( GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYE,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYE,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSETIP,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UPPERLIP,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LOWERLIP,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINGNATHION,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
        GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1Feature_Type
    GoogleCloudVisionV1p2beta1Feature_Type
      ( GoogleCloudVisionV1p2beta1Feature_Type_TYPEUNSPECIFIED,
        GoogleCloudVisionV1p2beta1Feature_Type_FACEDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_LANDMARKDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_LOGODETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_LABELDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_TEXTDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_DOCUMENTTEXTDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_SAFESEARCHDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_IMAGEPROPERTIES,
        GoogleCloudVisionV1p2beta1Feature_Type_CROPHINTS,
        GoogleCloudVisionV1p2beta1Feature_Type_WEBDETECTION,
        GoogleCloudVisionV1p2beta1Feature_Type_PRODUCTSEARCH,
        GoogleCloudVisionV1p2beta1Feature_Type_OBJECTLOCALIZATION,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1OperationMetadata_State
    GoogleCloudVisionV1p2beta1OperationMetadata_State
      ( GoogleCloudVisionV1p2beta1OperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p2beta1OperationMetadata_State_Created,
        GoogleCloudVisionV1p2beta1OperationMetadata_State_Running,
        GoogleCloudVisionV1p2beta1OperationMetadata_State_Done,
        GoogleCloudVisionV1p2beta1OperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
      ( GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unknown,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unlikely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Possible,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Likely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
      ( GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unknown,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unlikely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Possible,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Likely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
      ( GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unknown,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unlikely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Possible,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Likely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
      ( GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unknown,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unlikely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Possible,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Likely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
      ( GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unknown,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unlikely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Possible,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Likely,
        GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
      ( GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Unknown,
        GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Space,
        GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_SURESPACE,
        GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
        GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Hyphen,
        GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
    GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
      ( GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Processing,
        GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Successful,
        GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Failed,
        GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1Block_BlockType
    GoogleCloudVisionV1p3beta1Block_BlockType
      ( GoogleCloudVisionV1p3beta1Block_BlockType_Unknown,
        GoogleCloudVisionV1p3beta1Block_BlockType_Text,
        GoogleCloudVisionV1p3beta1Block_BlockType_Table,
        GoogleCloudVisionV1p3beta1Block_BlockType_Picture,
        GoogleCloudVisionV1p3beta1Block_BlockType_Ruler,
        GoogleCloudVisionV1p3beta1Block_BlockType_Barcode,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
      ( GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
        GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Possible,
        GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Likely,
        GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
      ( GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYE,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYE,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSETIP,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UPPERLIP,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LOWERLIP,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINGNATHION,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
        GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1OperationMetadata_State
    GoogleCloudVisionV1p3beta1OperationMetadata_State
      ( GoogleCloudVisionV1p3beta1OperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p3beta1OperationMetadata_State_Created,
        GoogleCloudVisionV1p3beta1OperationMetadata_State_Running,
        GoogleCloudVisionV1p3beta1OperationMetadata_State_Done,
        GoogleCloudVisionV1p3beta1OperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
      ( GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unknown,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unlikely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Possible,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Likely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
      ( GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unknown,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unlikely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Possible,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Likely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
      ( GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unknown,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unlikely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Possible,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Likely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
      ( GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unknown,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unlikely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Possible,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Likely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
      ( GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unknown,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unlikely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Possible,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Likely,
        GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
      ( GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Unknown,
        GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Space,
        GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_SURESPACE,
        GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
        GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Hyphen,
        GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
    GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
      ( GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Processing,
        GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Successful,
        GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Failed,
        GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1Block_BlockType
    GoogleCloudVisionV1p4beta1Block_BlockType
      ( GoogleCloudVisionV1p4beta1Block_BlockType_Unknown,
        GoogleCloudVisionV1p4beta1Block_BlockType_Text,
        GoogleCloudVisionV1p4beta1Block_BlockType_Table,
        GoogleCloudVisionV1p4beta1Block_BlockType_Picture,
        GoogleCloudVisionV1p4beta1Block_BlockType_Ruler,
        GoogleCloudVisionV1p4beta1Block_BlockType_Barcode,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
    GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
      ( GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
        GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Possible,
        GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Likely,
        GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
    GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
      ( GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYE,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYE,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSETIP,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UPPERLIP,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LOWERLIP,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINGNATHION,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
        GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1OperationMetadata_State
    GoogleCloudVisionV1p4beta1OperationMetadata_State
      ( GoogleCloudVisionV1p4beta1OperationMetadata_State_STATEUNSPECIFIED,
        GoogleCloudVisionV1p4beta1OperationMetadata_State_Created,
        GoogleCloudVisionV1p4beta1OperationMetadata_State_Running,
        GoogleCloudVisionV1p4beta1OperationMetadata_State_Done,
        GoogleCloudVisionV1p4beta1OperationMetadata_State_Cancelled,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
      ( GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unknown,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unlikely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Possible,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Likely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
      ( GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unknown,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unlikely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Possible,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Likely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
      ( GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unknown,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unlikely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Possible,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Likely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
      ( GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unknown,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unlikely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Possible,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Likely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
    GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
      ( GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unknown,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unlikely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Possible,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Likely,
        GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
    GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
      ( GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Unknown,
        GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Space,
        GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_SURESPACE,
        GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
        GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Hyphen,
        GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
        ..
      ),

    -- * Landmark_Type
    Landmark_Type
      ( Landmark_Type_UNKNOWNLANDMARK,
        Landmark_Type_LEFTEYE,
        Landmark_Type_RIGHTEYE,
        Landmark_Type_LEFTOFLEFTEYEBROW,
        Landmark_Type_RIGHTOFLEFTEYEBROW,
        Landmark_Type_LEFTOFRIGHTEYEBROW,
        Landmark_Type_RIGHTOFRIGHTEYEBROW,
        Landmark_Type_MIDPOINTBETWEENEYES,
        Landmark_Type_NOSETIP,
        Landmark_Type_UPPERLIP,
        Landmark_Type_LOWERLIP,
        Landmark_Type_MOUTHLEFT,
        Landmark_Type_MOUTHRIGHT,
        Landmark_Type_MOUTHCENTER,
        Landmark_Type_NOSEBOTTOMRIGHT,
        Landmark_Type_NOSEBOTTOMLEFT,
        Landmark_Type_NOSEBOTTOMCENTER,
        Landmark_Type_LEFTEYETOPBOUNDARY,
        Landmark_Type_LEFTEYERIGHTCORNER,
        Landmark_Type_LEFTEYEBOTTOMBOUNDARY,
        Landmark_Type_LEFTEYELEFTCORNER,
        Landmark_Type_RIGHTEYETOPBOUNDARY,
        Landmark_Type_RIGHTEYERIGHTCORNER,
        Landmark_Type_RIGHTEYEBOTTOMBOUNDARY,
        Landmark_Type_RIGHTEYELEFTCORNER,
        Landmark_Type_LEFTEYEBROWUPPERMIDPOINT,
        Landmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
        Landmark_Type_LEFTEARTRAGION,
        Landmark_Type_RIGHTEARTRAGION,
        Landmark_Type_LEFTEYEPUPIL,
        Landmark_Type_RIGHTEYEPUPIL,
        Landmark_Type_FOREHEADGLABELLA,
        Landmark_Type_CHINGNATHION,
        Landmark_Type_CHINLEFTGONION,
        Landmark_Type_CHINRIGHTGONION,
        Landmark_Type_LEFTCHEEKCENTER,
        Landmark_Type_RIGHTCHEEKCENTER,
        ..
      ),

    -- * OperationMetadata_State
    OperationMetadata_State
      ( OperationMetadata_State_STATEUNSPECIFIED,
        OperationMetadata_State_Created,
        OperationMetadata_State_Running,
        OperationMetadata_State_Done,
        OperationMetadata_State_Cancelled,
        ..
      ),

    -- * SafeSearchAnnotation_Adult
    SafeSearchAnnotation_Adult
      ( SafeSearchAnnotation_Adult_Unknown,
        SafeSearchAnnotation_Adult_VERYUNLIKELY,
        SafeSearchAnnotation_Adult_Unlikely,
        SafeSearchAnnotation_Adult_Possible,
        SafeSearchAnnotation_Adult_Likely,
        SafeSearchAnnotation_Adult_VERYLIKELY,
        ..
      ),

    -- * SafeSearchAnnotation_Medical
    SafeSearchAnnotation_Medical
      ( SafeSearchAnnotation_Medical_Unknown,
        SafeSearchAnnotation_Medical_VERYUNLIKELY,
        SafeSearchAnnotation_Medical_Unlikely,
        SafeSearchAnnotation_Medical_Possible,
        SafeSearchAnnotation_Medical_Likely,
        SafeSearchAnnotation_Medical_VERYLIKELY,
        ..
      ),

    -- * SafeSearchAnnotation_Racy
    SafeSearchAnnotation_Racy
      ( SafeSearchAnnotation_Racy_Unknown,
        SafeSearchAnnotation_Racy_VERYUNLIKELY,
        SafeSearchAnnotation_Racy_Unlikely,
        SafeSearchAnnotation_Racy_Possible,
        SafeSearchAnnotation_Racy_Likely,
        SafeSearchAnnotation_Racy_VERYLIKELY,
        ..
      ),

    -- * SafeSearchAnnotation_Spoof
    SafeSearchAnnotation_Spoof
      ( SafeSearchAnnotation_Spoof_Unknown,
        SafeSearchAnnotation_Spoof_VERYUNLIKELY,
        SafeSearchAnnotation_Spoof_Unlikely,
        SafeSearchAnnotation_Spoof_Possible,
        SafeSearchAnnotation_Spoof_Likely,
        SafeSearchAnnotation_Spoof_VERYLIKELY,
        ..
      ),

    -- * SafeSearchAnnotation_Violence
    SafeSearchAnnotation_Violence
      ( SafeSearchAnnotation_Violence_Unknown,
        SafeSearchAnnotation_Violence_VERYUNLIKELY,
        SafeSearchAnnotation_Violence_Unlikely,
        SafeSearchAnnotation_Violence_Possible,
        SafeSearchAnnotation_Violence_Likely,
        SafeSearchAnnotation_Violence_VERYLIKELY,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The current state of the batch operation.
newtype BatchOperationMetadata_State = BatchOperationMetadata_State {fromBatchOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern BatchOperationMetadata_State_STATEUNSPECIFIED :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_STATEUNSPECIFIED = BatchOperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is actively being processed.
pattern BatchOperationMetadata_State_Processing :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Processing = BatchOperationMetadata_State "PROCESSING"

-- | The request is done and at least one item has been successfully processed.
pattern BatchOperationMetadata_State_Successful :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Successful = BatchOperationMetadata_State "SUCCESSFUL"

-- | The request is done and no item has been successfully processed.
pattern BatchOperationMetadata_State_Failed :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Failed = BatchOperationMetadata_State "FAILED"

-- | The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.
pattern BatchOperationMetadata_State_Cancelled :: BatchOperationMetadata_State
pattern BatchOperationMetadata_State_Cancelled = BatchOperationMetadata_State "CANCELLED"

{-# COMPLETE
  BatchOperationMetadata_State_STATEUNSPECIFIED,
  BatchOperationMetadata_State_Processing,
  BatchOperationMetadata_State_Successful,
  BatchOperationMetadata_State_Failed,
  BatchOperationMetadata_State_Cancelled,
  BatchOperationMetadata_State
  #-}

-- | Detected block type (text, image etc) for this block.
newtype Block_BlockType = Block_BlockType {fromBlock_BlockType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown block type.
pattern Block_BlockType_Unknown :: Block_BlockType
pattern Block_BlockType_Unknown = Block_BlockType "UNKNOWN"

-- | Regular text block.
pattern Block_BlockType_Text :: Block_BlockType
pattern Block_BlockType_Text = Block_BlockType "TEXT"

-- | Table block.
pattern Block_BlockType_Table :: Block_BlockType
pattern Block_BlockType_Table = Block_BlockType "TABLE"

-- | Image block.
pattern Block_BlockType_Picture :: Block_BlockType
pattern Block_BlockType_Picture = Block_BlockType "PICTURE"

-- | Horizontal\/vertical line box.
pattern Block_BlockType_Ruler :: Block_BlockType
pattern Block_BlockType_Ruler = Block_BlockType "RULER"

-- | Barcode block.
pattern Block_BlockType_Barcode :: Block_BlockType
pattern Block_BlockType_Barcode = Block_BlockType "BARCODE"

{-# COMPLETE
  Block_BlockType_Unknown,
  Block_BlockType_Text,
  Block_BlockType_Table,
  Block_BlockType_Picture,
  Block_BlockType_Ruler,
  Block_BlockType_Barcode,
  Block_BlockType
  #-}

-- | Detected break type.
newtype DetectedBreak_Type = DetectedBreak_Type {fromDetectedBreak_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown break label type.
pattern DetectedBreak_Type_Unknown :: DetectedBreak_Type
pattern DetectedBreak_Type_Unknown = DetectedBreak_Type "UNKNOWN"

-- | Regular space.
pattern DetectedBreak_Type_Space :: DetectedBreak_Type
pattern DetectedBreak_Type_Space = DetectedBreak_Type "SPACE"

-- | Sure space (very wide).
pattern DetectedBreak_Type_SURESPACE :: DetectedBreak_Type
pattern DetectedBreak_Type_SURESPACE = DetectedBreak_Type "SURE_SPACE"

-- | Line-wrapping break.
pattern DetectedBreak_Type_EOLSURESPACE :: DetectedBreak_Type
pattern DetectedBreak_Type_EOLSURESPACE = DetectedBreak_Type "EOL_SURE_SPACE"

-- | End-line hyphen that is not present in text; does not co-occur with @SPACE@, @LEADER_SPACE@, or @LINE_BREAK@.
pattern DetectedBreak_Type_Hyphen :: DetectedBreak_Type
pattern DetectedBreak_Type_Hyphen = DetectedBreak_Type "HYPHEN"

-- | Line break that ends a paragraph.
pattern DetectedBreak_Type_LINEBREAK :: DetectedBreak_Type
pattern DetectedBreak_Type_LINEBREAK = DetectedBreak_Type "LINE_BREAK"

{-# COMPLETE
  DetectedBreak_Type_Unknown,
  DetectedBreak_Type_Space,
  DetectedBreak_Type_SURESPACE,
  DetectedBreak_Type_EOLSURESPACE,
  DetectedBreak_Type_Hyphen,
  DetectedBreak_Type_LINEBREAK,
  DetectedBreak_Type
  #-}

-- | Anger likelihood.
newtype FaceAnnotation_AngerLikelihood = FaceAnnotation_AngerLikelihood {fromFaceAnnotation_AngerLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_AngerLikelihood_Unknown :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_Unknown = FaceAnnotation_AngerLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_AngerLikelihood_VERYUNLIKELY :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_VERYUNLIKELY = FaceAnnotation_AngerLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_AngerLikelihood_Unlikely :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_Unlikely = FaceAnnotation_AngerLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_AngerLikelihood_Possible :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_Possible = FaceAnnotation_AngerLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_AngerLikelihood_Likely :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_Likely = FaceAnnotation_AngerLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_AngerLikelihood_VERYLIKELY :: FaceAnnotation_AngerLikelihood
pattern FaceAnnotation_AngerLikelihood_VERYLIKELY = FaceAnnotation_AngerLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_AngerLikelihood_Unknown,
  FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
  FaceAnnotation_AngerLikelihood_Unlikely,
  FaceAnnotation_AngerLikelihood_Possible,
  FaceAnnotation_AngerLikelihood_Likely,
  FaceAnnotation_AngerLikelihood_VERYLIKELY,
  FaceAnnotation_AngerLikelihood
  #-}

-- | Blurred likelihood.
newtype FaceAnnotation_BlurredLikelihood = FaceAnnotation_BlurredLikelihood {fromFaceAnnotation_BlurredLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_BlurredLikelihood_Unknown :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_Unknown = FaceAnnotation_BlurredLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_BlurredLikelihood_VERYUNLIKELY :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_VERYUNLIKELY = FaceAnnotation_BlurredLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_BlurredLikelihood_Unlikely :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_Unlikely = FaceAnnotation_BlurredLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_BlurredLikelihood_Possible :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_Possible = FaceAnnotation_BlurredLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_BlurredLikelihood_Likely :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_Likely = FaceAnnotation_BlurredLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_BlurredLikelihood_VERYLIKELY :: FaceAnnotation_BlurredLikelihood
pattern FaceAnnotation_BlurredLikelihood_VERYLIKELY = FaceAnnotation_BlurredLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_BlurredLikelihood_Unknown,
  FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
  FaceAnnotation_BlurredLikelihood_Unlikely,
  FaceAnnotation_BlurredLikelihood_Possible,
  FaceAnnotation_BlurredLikelihood_Likely,
  FaceAnnotation_BlurredLikelihood_VERYLIKELY,
  FaceAnnotation_BlurredLikelihood
  #-}

-- | Headwear likelihood.
newtype FaceAnnotation_HeadwearLikelihood = FaceAnnotation_HeadwearLikelihood {fromFaceAnnotation_HeadwearLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_HeadwearLikelihood_Unknown :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_Unknown = FaceAnnotation_HeadwearLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY = FaceAnnotation_HeadwearLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_HeadwearLikelihood_Unlikely :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_Unlikely = FaceAnnotation_HeadwearLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_HeadwearLikelihood_Possible :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_Possible = FaceAnnotation_HeadwearLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_HeadwearLikelihood_Likely :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_Likely = FaceAnnotation_HeadwearLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_HeadwearLikelihood_VERYLIKELY :: FaceAnnotation_HeadwearLikelihood
pattern FaceAnnotation_HeadwearLikelihood_VERYLIKELY = FaceAnnotation_HeadwearLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_HeadwearLikelihood_Unknown,
  FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
  FaceAnnotation_HeadwearLikelihood_Unlikely,
  FaceAnnotation_HeadwearLikelihood_Possible,
  FaceAnnotation_HeadwearLikelihood_Likely,
  FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
  FaceAnnotation_HeadwearLikelihood
  #-}

-- | Joy likelihood.
newtype FaceAnnotation_JoyLikelihood = FaceAnnotation_JoyLikelihood {fromFaceAnnotation_JoyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_JoyLikelihood_Unknown :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_Unknown = FaceAnnotation_JoyLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_JoyLikelihood_VERYUNLIKELY :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_VERYUNLIKELY = FaceAnnotation_JoyLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_JoyLikelihood_Unlikely :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_Unlikely = FaceAnnotation_JoyLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_JoyLikelihood_Possible :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_Possible = FaceAnnotation_JoyLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_JoyLikelihood_Likely :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_Likely = FaceAnnotation_JoyLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_JoyLikelihood_VERYLIKELY :: FaceAnnotation_JoyLikelihood
pattern FaceAnnotation_JoyLikelihood_VERYLIKELY = FaceAnnotation_JoyLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_JoyLikelihood_Unknown,
  FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
  FaceAnnotation_JoyLikelihood_Unlikely,
  FaceAnnotation_JoyLikelihood_Possible,
  FaceAnnotation_JoyLikelihood_Likely,
  FaceAnnotation_JoyLikelihood_VERYLIKELY,
  FaceAnnotation_JoyLikelihood
  #-}

-- | Sorrow likelihood.
newtype FaceAnnotation_SorrowLikelihood = FaceAnnotation_SorrowLikelihood {fromFaceAnnotation_SorrowLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_SorrowLikelihood_Unknown :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_Unknown = FaceAnnotation_SorrowLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_SorrowLikelihood_VERYUNLIKELY :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_VERYUNLIKELY = FaceAnnotation_SorrowLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_SorrowLikelihood_Unlikely :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_Unlikely = FaceAnnotation_SorrowLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_SorrowLikelihood_Possible :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_Possible = FaceAnnotation_SorrowLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_SorrowLikelihood_Likely :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_Likely = FaceAnnotation_SorrowLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_SorrowLikelihood_VERYLIKELY :: FaceAnnotation_SorrowLikelihood
pattern FaceAnnotation_SorrowLikelihood_VERYLIKELY = FaceAnnotation_SorrowLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_SorrowLikelihood_Unknown,
  FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
  FaceAnnotation_SorrowLikelihood_Unlikely,
  FaceAnnotation_SorrowLikelihood_Possible,
  FaceAnnotation_SorrowLikelihood_Likely,
  FaceAnnotation_SorrowLikelihood_VERYLIKELY,
  FaceAnnotation_SorrowLikelihood
  #-}

-- | Surprise likelihood.
newtype FaceAnnotation_SurpriseLikelihood = FaceAnnotation_SurpriseLikelihood {fromFaceAnnotation_SurpriseLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_SurpriseLikelihood_Unknown :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_Unknown = FaceAnnotation_SurpriseLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY = FaceAnnotation_SurpriseLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_SurpriseLikelihood_Unlikely :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_Unlikely = FaceAnnotation_SurpriseLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_SurpriseLikelihood_Possible :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_Possible = FaceAnnotation_SurpriseLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_SurpriseLikelihood_Likely :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_Likely = FaceAnnotation_SurpriseLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_SurpriseLikelihood_VERYLIKELY :: FaceAnnotation_SurpriseLikelihood
pattern FaceAnnotation_SurpriseLikelihood_VERYLIKELY = FaceAnnotation_SurpriseLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_SurpriseLikelihood_Unknown,
  FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
  FaceAnnotation_SurpriseLikelihood_Unlikely,
  FaceAnnotation_SurpriseLikelihood_Possible,
  FaceAnnotation_SurpriseLikelihood_Likely,
  FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
  FaceAnnotation_SurpriseLikelihood
  #-}

-- | Under-exposed likelihood.
newtype FaceAnnotation_UnderExposedLikelihood = FaceAnnotation_UnderExposedLikelihood {fromFaceAnnotation_UnderExposedLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern FaceAnnotation_UnderExposedLikelihood_Unknown :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_Unknown = FaceAnnotation_UnderExposedLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY = FaceAnnotation_UnderExposedLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern FaceAnnotation_UnderExposedLikelihood_Unlikely :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_Unlikely = FaceAnnotation_UnderExposedLikelihood "UNLIKELY"

-- | It is possible.
pattern FaceAnnotation_UnderExposedLikelihood_Possible :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_Possible = FaceAnnotation_UnderExposedLikelihood "POSSIBLE"

-- | It is likely.
pattern FaceAnnotation_UnderExposedLikelihood_Likely :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_Likely = FaceAnnotation_UnderExposedLikelihood "LIKELY"

-- | It is very likely.
pattern FaceAnnotation_UnderExposedLikelihood_VERYLIKELY :: FaceAnnotation_UnderExposedLikelihood
pattern FaceAnnotation_UnderExposedLikelihood_VERYLIKELY = FaceAnnotation_UnderExposedLikelihood "VERY_LIKELY"

{-# COMPLETE
  FaceAnnotation_UnderExposedLikelihood_Unknown,
  FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
  FaceAnnotation_UnderExposedLikelihood_Unlikely,
  FaceAnnotation_UnderExposedLikelihood_Possible,
  FaceAnnotation_UnderExposedLikelihood_Likely,
  FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
  FaceAnnotation_UnderExposedLikelihood
  #-}

-- | Detected block type (text, image etc) for this block.
newtype GoogleCloudVisionV1p1beta1Block_BlockType = GoogleCloudVisionV1p1beta1Block_BlockType {fromGoogleCloudVisionV1p1beta1Block_BlockType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown block type.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Unknown :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Unknown = GoogleCloudVisionV1p1beta1Block_BlockType "UNKNOWN"

-- | Regular text block.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Text :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Text = GoogleCloudVisionV1p1beta1Block_BlockType "TEXT"

-- | Table block.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Table :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Table = GoogleCloudVisionV1p1beta1Block_BlockType "TABLE"

-- | Image block.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Picture :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Picture = GoogleCloudVisionV1p1beta1Block_BlockType "PICTURE"

-- | Horizontal\/vertical line box.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Ruler :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Ruler = GoogleCloudVisionV1p1beta1Block_BlockType "RULER"

-- | Barcode block.
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Barcode :: GoogleCloudVisionV1p1beta1Block_BlockType
pattern GoogleCloudVisionV1p1beta1Block_BlockType_Barcode = GoogleCloudVisionV1p1beta1Block_BlockType "BARCODE"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1Block_BlockType_Unknown,
  GoogleCloudVisionV1p1beta1Block_BlockType_Text,
  GoogleCloudVisionV1p1beta1Block_BlockType_Table,
  GoogleCloudVisionV1p1beta1Block_BlockType_Picture,
  GoogleCloudVisionV1p1beta1Block_BlockType_Ruler,
  GoogleCloudVisionV1p1beta1Block_BlockType_Barcode,
  GoogleCloudVisionV1p1beta1Block_BlockType
  #-}

-- | Anger likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_AngerLikelihood
  #-}

-- | Blurred likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_BlurredLikelihood
  #-}

-- | Headwear likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_HeadwearLikelihood
  #-}

-- | Joy likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_JoyLikelihood
  #-}

-- | Sorrow likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SorrowLikelihood
  #-}

-- | Surprise likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_SurpriseLikelihood
  #-}

-- | Under-exposed likelihood.
newtype GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood {fromGoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unknown :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unknown = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unlikely :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unlikely = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Possible :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Possible = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Likely :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Likely = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY :: GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY = GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Possible,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_Likely,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p1beta1FaceAnnotation_UnderExposedLikelihood
  #-}

-- | Face landmark type.
newtype GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type {fromGoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown face landmark detected. Should not be filled.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "UNKNOWN_LANDMARK"

-- | Left eye.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYE :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYE = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE"

-- | Right eye.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYE :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYE = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE"

-- | Left of left eyebrow.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_OF_LEFT_EYEBROW"

-- | Right of left eyebrow.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_OF_LEFT_EYEBROW"

-- | Left of right eyebrow.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_OF_RIGHT_EYEBROW"

-- | Right of right eyebrow.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_OF_RIGHT_EYEBROW"

-- | Midpoint between eyes.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "MIDPOINT_BETWEEN_EYES"

-- | Nose tip.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSETIP :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSETIP = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "NOSE_TIP"

-- | Upper lip.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UPPERLIP :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UPPERLIP = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "UPPER_LIP"

-- | Lower lip.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LOWERLIP :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LOWERLIP = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LOWER_LIP"

-- | Mouth left.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHLEFT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHLEFT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "MOUTH_LEFT"

-- | Mouth right.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHRIGHT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHRIGHT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "MOUTH_RIGHT"

-- | Mouth center.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHCENTER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHCENTER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "MOUTH_CENTER"

-- | Nose, bottom right.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_RIGHT"

-- | Nose, bottom left.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_LEFT"

-- | Nose, bottom center.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_CENTER"

-- | Left eye, top boundary.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE_TOP_BOUNDARY"

-- | Left eye, right corner.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE_RIGHT_CORNER"

-- | Left eye, bottom boundary.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE_BOTTOM_BOUNDARY"

-- | Left eye, left corner.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE_LEFT_CORNER"

-- | Right eye, top boundary.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE_TOP_BOUNDARY"

-- | Right eye, right corner.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE_RIGHT_CORNER"

-- | Right eye, bottom boundary.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE_BOTTOM_BOUNDARY"

-- | Right eye, left corner.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE_LEFT_CORNER"

-- | Left eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYEBROW_UPPER_MIDPOINT"

-- | Right eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYEBROW_UPPER_MIDPOINT"

-- | Left ear tragion.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EAR_TRAGION"

-- | Right ear tragion.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EAR_TRAGION"

-- | Left eye pupil.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_EYE_PUPIL"

-- | Right eye pupil.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_EYE_PUPIL"

-- | Forehead glabella.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "FOREHEAD_GLABELLA"

-- | Chin gnathion.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINGNATHION :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINGNATHION = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "CHIN_GNATHION"

-- | Chin left gonion.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINLEFTGONION :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINLEFTGONION = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "CHIN_LEFT_GONION"

-- | Chin right gonion.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "CHIN_RIGHT_GONION"

-- | Left cheek center.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "LEFT_CHEEK_CENTER"

-- | Right cheek center.
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER :: GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER = GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type "RIGHT_CHEEK_CENTER"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYE,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYE,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSETIP,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_UPPERLIP,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LOWERLIP,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINGNATHION,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
  GoogleCloudVisionV1p1beta1FaceAnnotationLandmark_Type
  #-}

-- | Current state of the batch operation.
newtype GoogleCloudVisionV1p1beta1OperationMetadata_State = GoogleCloudVisionV1p1beta1OperationMetadata_State {fromGoogleCloudVisionV1p1beta1OperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p1beta1OperationMetadata_State
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p1beta1OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is received.
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Created :: GoogleCloudVisionV1p1beta1OperationMetadata_State
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Created = GoogleCloudVisionV1p1beta1OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Running :: GoogleCloudVisionV1p1beta1OperationMetadata_State
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Running = GoogleCloudVisionV1p1beta1OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Done :: GoogleCloudVisionV1p1beta1OperationMetadata_State
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Done = GoogleCloudVisionV1p1beta1OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Cancelled :: GoogleCloudVisionV1p1beta1OperationMetadata_State
pattern GoogleCloudVisionV1p1beta1OperationMetadata_State_Cancelled = GoogleCloudVisionV1p1beta1OperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1OperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p1beta1OperationMetadata_State_Created,
  GoogleCloudVisionV1p1beta1OperationMetadata_State_Running,
  GoogleCloudVisionV1p1beta1OperationMetadata_State_Done,
  GoogleCloudVisionV1p1beta1OperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p1beta1OperationMetadata_State
  #-}

-- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
newtype GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult {fromGoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unknown :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unknown = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYUNLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unlikely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unlikely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Possible :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Possible = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Likely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Likely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unknown,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Unlikely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Possible,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_Likely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult_VERYLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Adult
  #-}

-- | Likelihood that this is a medical image.
newtype GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical {fromGoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unknown :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unknown = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYUNLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unlikely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unlikely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Possible :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Possible = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Likely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Likely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unknown,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Unlikely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Possible,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_Likely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical_VERYLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Medical
  #-}

-- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
newtype GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy {fromGoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unknown :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unknown = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYUNLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unlikely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unlikely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Possible :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Possible = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Likely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Likely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unknown,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Unlikely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Possible,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_Likely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy_VERYLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Racy
  #-}

-- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
newtype GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof {fromGoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unknown :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unknown = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unlikely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unlikely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Possible :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Possible = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Likely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Likely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unknown,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Unlikely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Possible,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_Likely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Spoof
  #-}

-- | Likelihood that this image contains violent content.
newtype GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence {fromGoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unknown :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unknown = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYUNLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYUNLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unlikely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unlikely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Possible :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Possible = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Likely :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Likely = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYLIKELY :: GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYLIKELY = GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unknown,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Unlikely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Possible,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_Likely,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence_VERYLIKELY,
  GoogleCloudVisionV1p1beta1SafeSearchAnnotation_Violence
  #-}

-- | Detected break type.
newtype GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type {fromGoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown break label type.
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Unknown :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Unknown = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "UNKNOWN"

-- | Regular space.
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Space :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Space = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "SPACE"

-- | Sure space (very wide).
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_SURESPACE :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_SURESPACE = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "SURE_SPACE"

-- | Line-wrapping break.
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "EOL_SURE_SPACE"

-- | End-line hyphen that is not present in text; does not co-occur with @SPACE@, @LEADER_SPACE@, or @LINE_BREAK@.
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Hyphen :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Hyphen = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "HYPHEN"

-- | Line break that ends a paragraph.
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_LINEBREAK :: GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_LINEBREAK = GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type "LINE_BREAK"

{-# COMPLETE
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Unknown,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Space,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_SURESPACE,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_Hyphen,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
  GoogleCloudVisionV1p1beta1TextAnnotationDetectedBreak_Type
  #-}

-- | Detected block type (text, image etc) for this block.
newtype GoogleCloudVisionV1p2beta1Block_BlockType = GoogleCloudVisionV1p2beta1Block_BlockType {fromGoogleCloudVisionV1p2beta1Block_BlockType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown block type.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Unknown :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Unknown = GoogleCloudVisionV1p2beta1Block_BlockType "UNKNOWN"

-- | Regular text block.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Text :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Text = GoogleCloudVisionV1p2beta1Block_BlockType "TEXT"

-- | Table block.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Table :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Table = GoogleCloudVisionV1p2beta1Block_BlockType "TABLE"

-- | Image block.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Picture :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Picture = GoogleCloudVisionV1p2beta1Block_BlockType "PICTURE"

-- | Horizontal\/vertical line box.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Ruler :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Ruler = GoogleCloudVisionV1p2beta1Block_BlockType "RULER"

-- | Barcode block.
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Barcode :: GoogleCloudVisionV1p2beta1Block_BlockType
pattern GoogleCloudVisionV1p2beta1Block_BlockType_Barcode = GoogleCloudVisionV1p2beta1Block_BlockType "BARCODE"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1Block_BlockType_Unknown,
  GoogleCloudVisionV1p2beta1Block_BlockType_Text,
  GoogleCloudVisionV1p2beta1Block_BlockType_Table,
  GoogleCloudVisionV1p2beta1Block_BlockType_Picture,
  GoogleCloudVisionV1p2beta1Block_BlockType_Ruler,
  GoogleCloudVisionV1p2beta1Block_BlockType_Barcode,
  GoogleCloudVisionV1p2beta1Block_BlockType
  #-}

-- | Anger likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_AngerLikelihood
  #-}

-- | Blurred likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_BlurredLikelihood
  #-}

-- | Headwear likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_HeadwearLikelihood
  #-}

-- | Joy likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_JoyLikelihood
  #-}

-- | Sorrow likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SorrowLikelihood
  #-}

-- | Surprise likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_SurpriseLikelihood
  #-}

-- | Under-exposed likelihood.
newtype GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood {fromGoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unknown :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unknown = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unlikely :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unlikely = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Possible :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Possible = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Likely :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Likely = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY :: GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY = GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Possible,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_Likely,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p2beta1FaceAnnotation_UnderExposedLikelihood
  #-}

-- | Face landmark type.
newtype GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type {fromGoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown face landmark detected. Should not be filled.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "UNKNOWN_LANDMARK"

-- | Left eye.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYE :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYE = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE"

-- | Right eye.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYE :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYE = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE"

-- | Left of left eyebrow.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_OF_LEFT_EYEBROW"

-- | Right of left eyebrow.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_OF_LEFT_EYEBROW"

-- | Left of right eyebrow.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_OF_RIGHT_EYEBROW"

-- | Right of right eyebrow.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_OF_RIGHT_EYEBROW"

-- | Midpoint between eyes.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "MIDPOINT_BETWEEN_EYES"

-- | Nose tip.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSETIP :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSETIP = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "NOSE_TIP"

-- | Upper lip.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UPPERLIP :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UPPERLIP = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "UPPER_LIP"

-- | Lower lip.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LOWERLIP :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LOWERLIP = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LOWER_LIP"

-- | Mouth left.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHLEFT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHLEFT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "MOUTH_LEFT"

-- | Mouth right.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHRIGHT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHRIGHT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "MOUTH_RIGHT"

-- | Mouth center.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHCENTER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHCENTER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "MOUTH_CENTER"

-- | Nose, bottom right.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_RIGHT"

-- | Nose, bottom left.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_LEFT"

-- | Nose, bottom center.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_CENTER"

-- | Left eye, top boundary.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE_TOP_BOUNDARY"

-- | Left eye, right corner.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE_RIGHT_CORNER"

-- | Left eye, bottom boundary.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE_BOTTOM_BOUNDARY"

-- | Left eye, left corner.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE_LEFT_CORNER"

-- | Right eye, top boundary.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE_TOP_BOUNDARY"

-- | Right eye, right corner.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE_RIGHT_CORNER"

-- | Right eye, bottom boundary.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE_BOTTOM_BOUNDARY"

-- | Right eye, left corner.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE_LEFT_CORNER"

-- | Left eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYEBROW_UPPER_MIDPOINT"

-- | Right eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYEBROW_UPPER_MIDPOINT"

-- | Left ear tragion.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EAR_TRAGION"

-- | Right ear tragion.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EAR_TRAGION"

-- | Left eye pupil.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_EYE_PUPIL"

-- | Right eye pupil.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_EYE_PUPIL"

-- | Forehead glabella.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "FOREHEAD_GLABELLA"

-- | Chin gnathion.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINGNATHION :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINGNATHION = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "CHIN_GNATHION"

-- | Chin left gonion.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINLEFTGONION :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINLEFTGONION = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "CHIN_LEFT_GONION"

-- | Chin right gonion.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "CHIN_RIGHT_GONION"

-- | Left cheek center.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "LEFT_CHEEK_CENTER"

-- | Right cheek center.
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER :: GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER = GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type "RIGHT_CHEEK_CENTER"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYE,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYE,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSETIP,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_UPPERLIP,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LOWERLIP,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINGNATHION,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark_Type
  #-}

-- | The feature type.
newtype GoogleCloudVisionV1p2beta1Feature_Type = GoogleCloudVisionV1p2beta1Feature_Type {fromGoogleCloudVisionV1p2beta1Feature_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified feature type.
pattern GoogleCloudVisionV1p2beta1Feature_Type_TYPEUNSPECIFIED :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_TYPEUNSPECIFIED = GoogleCloudVisionV1p2beta1Feature_Type "TYPE_UNSPECIFIED"

-- | Run face detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_FACEDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_FACEDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "FACE_DETECTION"

-- | Run landmark detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_LANDMARKDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_LANDMARKDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "LANDMARK_DETECTION"

-- | Run logo detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_LOGODETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_LOGODETECTION = GoogleCloudVisionV1p2beta1Feature_Type "LOGO_DETECTION"

-- | Run label detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_LABELDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_LABELDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "LABEL_DETECTION"

-- | Run text detection \/ optical character recognition (OCR). Text detection is optimized for areas of text within a larger image; if the image is a document, use @DOCUMENT_TEXT_DETECTION@ instead.
pattern GoogleCloudVisionV1p2beta1Feature_Type_TEXTDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_TEXTDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "TEXT_DETECTION"

-- | Run dense text document OCR. Takes precedence when both @DOCUMENT_TEXT_DETECTION@ and @TEXT_DETECTION@ are present.
pattern GoogleCloudVisionV1p2beta1Feature_Type_DOCUMENTTEXTDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_DOCUMENTTEXTDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "DOCUMENT_TEXT_DETECTION"

-- | Run Safe Search to detect potentially unsafe or undesirable content.
pattern GoogleCloudVisionV1p2beta1Feature_Type_SAFESEARCHDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_SAFESEARCHDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "SAFE_SEARCH_DETECTION"

-- | Compute a set of image properties, such as the image\'s dominant colors.
pattern GoogleCloudVisionV1p2beta1Feature_Type_IMAGEPROPERTIES :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_IMAGEPROPERTIES = GoogleCloudVisionV1p2beta1Feature_Type "IMAGE_PROPERTIES"

-- | Run crop hints.
pattern GoogleCloudVisionV1p2beta1Feature_Type_CROPHINTS :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_CROPHINTS = GoogleCloudVisionV1p2beta1Feature_Type "CROP_HINTS"

-- | Run web detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_WEBDETECTION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_WEBDETECTION = GoogleCloudVisionV1p2beta1Feature_Type "WEB_DETECTION"

-- | Run Product Search.
pattern GoogleCloudVisionV1p2beta1Feature_Type_PRODUCTSEARCH :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_PRODUCTSEARCH = GoogleCloudVisionV1p2beta1Feature_Type "PRODUCT_SEARCH"

-- | Run localizer for object detection.
pattern GoogleCloudVisionV1p2beta1Feature_Type_OBJECTLOCALIZATION :: GoogleCloudVisionV1p2beta1Feature_Type
pattern GoogleCloudVisionV1p2beta1Feature_Type_OBJECTLOCALIZATION = GoogleCloudVisionV1p2beta1Feature_Type "OBJECT_LOCALIZATION"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1Feature_Type_TYPEUNSPECIFIED,
  GoogleCloudVisionV1p2beta1Feature_Type_FACEDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_LANDMARKDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_LOGODETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_LABELDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_TEXTDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_DOCUMENTTEXTDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_SAFESEARCHDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_IMAGEPROPERTIES,
  GoogleCloudVisionV1p2beta1Feature_Type_CROPHINTS,
  GoogleCloudVisionV1p2beta1Feature_Type_WEBDETECTION,
  GoogleCloudVisionV1p2beta1Feature_Type_PRODUCTSEARCH,
  GoogleCloudVisionV1p2beta1Feature_Type_OBJECTLOCALIZATION,
  GoogleCloudVisionV1p2beta1Feature_Type
  #-}

-- | Current state of the batch operation.
newtype GoogleCloudVisionV1p2beta1OperationMetadata_State = GoogleCloudVisionV1p2beta1OperationMetadata_State {fromGoogleCloudVisionV1p2beta1OperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p2beta1OperationMetadata_State
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p2beta1OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is received.
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Created :: GoogleCloudVisionV1p2beta1OperationMetadata_State
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Created = GoogleCloudVisionV1p2beta1OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Running :: GoogleCloudVisionV1p2beta1OperationMetadata_State
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Running = GoogleCloudVisionV1p2beta1OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Done :: GoogleCloudVisionV1p2beta1OperationMetadata_State
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Done = GoogleCloudVisionV1p2beta1OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Cancelled :: GoogleCloudVisionV1p2beta1OperationMetadata_State
pattern GoogleCloudVisionV1p2beta1OperationMetadata_State_Cancelled = GoogleCloudVisionV1p2beta1OperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1OperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p2beta1OperationMetadata_State_Created,
  GoogleCloudVisionV1p2beta1OperationMetadata_State_Running,
  GoogleCloudVisionV1p2beta1OperationMetadata_State_Done,
  GoogleCloudVisionV1p2beta1OperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p2beta1OperationMetadata_State
  #-}

-- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
newtype GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult {fromGoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unknown :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unknown = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYUNLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unlikely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unlikely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Possible :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Possible = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Likely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Likely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unknown,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Unlikely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Possible,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_Likely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult_VERYLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Adult
  #-}

-- | Likelihood that this is a medical image.
newtype GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical {fromGoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unknown :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unknown = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYUNLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unlikely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unlikely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Possible :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Possible = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Likely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Likely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unknown,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Unlikely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Possible,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_Likely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical_VERYLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Medical
  #-}

-- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
newtype GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy {fromGoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unknown :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unknown = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYUNLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unlikely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unlikely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Possible :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Possible = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Likely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Likely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unknown,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Unlikely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Possible,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_Likely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy_VERYLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Racy
  #-}

-- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
newtype GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof {fromGoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unknown :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unknown = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unlikely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unlikely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Possible :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Possible = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Likely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Likely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unknown,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Unlikely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Possible,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_Likely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Spoof
  #-}

-- | Likelihood that this image contains violent content.
newtype GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence {fromGoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unknown :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unknown = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYUNLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYUNLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unlikely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unlikely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Possible :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Possible = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Likely :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Likely = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYLIKELY :: GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYLIKELY = GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unknown,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Unlikely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Possible,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_Likely,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence_VERYLIKELY,
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation_Violence
  #-}

-- | Detected break type.
newtype GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type {fromGoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown break label type.
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Unknown :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Unknown = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "UNKNOWN"

-- | Regular space.
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Space :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Space = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "SPACE"

-- | Sure space (very wide).
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_SURESPACE :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_SURESPACE = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "SURE_SPACE"

-- | Line-wrapping break.
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "EOL_SURE_SPACE"

-- | End-line hyphen that is not present in text; does not co-occur with @SPACE@, @LEADER_SPACE@, or @LINE_BREAK@.
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Hyphen :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Hyphen = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "HYPHEN"

-- | Line break that ends a paragraph.
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_LINEBREAK :: GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_LINEBREAK = GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type "LINE_BREAK"

{-# COMPLETE
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Unknown,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Space,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_SURESPACE,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_Hyphen,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak_Type
  #-}

-- | The current state of the batch operation.
newtype GoogleCloudVisionV1p3beta1BatchOperationMetadata_State = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State {fromGoogleCloudVisionV1p3beta1BatchOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Processing :: GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Processing = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State "PROCESSING"

-- | The request is done and at least one item has been successfully processed.
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Successful :: GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Successful = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State "SUCCESSFUL"

-- | The request is done and no item has been successfully processed.
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Failed :: GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Failed = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State "FAILED"

-- | The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Cancelled :: GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Cancelled = GoogleCloudVisionV1p3beta1BatchOperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Processing,
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Successful,
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Failed,
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p3beta1BatchOperationMetadata_State
  #-}

-- | Detected block type (text, image etc) for this block.
newtype GoogleCloudVisionV1p3beta1Block_BlockType = GoogleCloudVisionV1p3beta1Block_BlockType {fromGoogleCloudVisionV1p3beta1Block_BlockType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown block type.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Unknown :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Unknown = GoogleCloudVisionV1p3beta1Block_BlockType "UNKNOWN"

-- | Regular text block.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Text :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Text = GoogleCloudVisionV1p3beta1Block_BlockType "TEXT"

-- | Table block.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Table :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Table = GoogleCloudVisionV1p3beta1Block_BlockType "TABLE"

-- | Image block.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Picture :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Picture = GoogleCloudVisionV1p3beta1Block_BlockType "PICTURE"

-- | Horizontal\/vertical line box.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Ruler :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Ruler = GoogleCloudVisionV1p3beta1Block_BlockType "RULER"

-- | Barcode block.
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Barcode :: GoogleCloudVisionV1p3beta1Block_BlockType
pattern GoogleCloudVisionV1p3beta1Block_BlockType_Barcode = GoogleCloudVisionV1p3beta1Block_BlockType "BARCODE"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1Block_BlockType_Unknown,
  GoogleCloudVisionV1p3beta1Block_BlockType_Text,
  GoogleCloudVisionV1p3beta1Block_BlockType_Table,
  GoogleCloudVisionV1p3beta1Block_BlockType_Picture,
  GoogleCloudVisionV1p3beta1Block_BlockType_Ruler,
  GoogleCloudVisionV1p3beta1Block_BlockType_Barcode,
  GoogleCloudVisionV1p3beta1Block_BlockType
  #-}

-- | Anger likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_AngerLikelihood
  #-}

-- | Blurred likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_BlurredLikelihood
  #-}

-- | Headwear likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_HeadwearLikelihood
  #-}

-- | Joy likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_JoyLikelihood
  #-}

-- | Sorrow likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SorrowLikelihood
  #-}

-- | Surprise likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_SurpriseLikelihood
  #-}

-- | Under-exposed likelihood.
newtype GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood {fromGoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unknown :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unknown = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unlikely :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unlikely = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Possible :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Possible = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Likely :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Likely = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY :: GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY = GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Possible,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_Likely,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p3beta1FaceAnnotation_UnderExposedLikelihood
  #-}

-- | Face landmark type.
newtype GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type {fromGoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown face landmark detected. Should not be filled.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "UNKNOWN_LANDMARK"

-- | Left eye.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYE :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYE = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE"

-- | Right eye.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYE :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYE = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE"

-- | Left of left eyebrow.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_OF_LEFT_EYEBROW"

-- | Right of left eyebrow.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_OF_LEFT_EYEBROW"

-- | Left of right eyebrow.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_OF_RIGHT_EYEBROW"

-- | Right of right eyebrow.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_OF_RIGHT_EYEBROW"

-- | Midpoint between eyes.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "MIDPOINT_BETWEEN_EYES"

-- | Nose tip.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSETIP :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSETIP = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "NOSE_TIP"

-- | Upper lip.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UPPERLIP :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UPPERLIP = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "UPPER_LIP"

-- | Lower lip.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LOWERLIP :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LOWERLIP = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LOWER_LIP"

-- | Mouth left.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHLEFT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHLEFT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "MOUTH_LEFT"

-- | Mouth right.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHRIGHT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHRIGHT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "MOUTH_RIGHT"

-- | Mouth center.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHCENTER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHCENTER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "MOUTH_CENTER"

-- | Nose, bottom right.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_RIGHT"

-- | Nose, bottom left.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_LEFT"

-- | Nose, bottom center.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_CENTER"

-- | Left eye, top boundary.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE_TOP_BOUNDARY"

-- | Left eye, right corner.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE_RIGHT_CORNER"

-- | Left eye, bottom boundary.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE_BOTTOM_BOUNDARY"

-- | Left eye, left corner.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE_LEFT_CORNER"

-- | Right eye, top boundary.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE_TOP_BOUNDARY"

-- | Right eye, right corner.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE_RIGHT_CORNER"

-- | Right eye, bottom boundary.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE_BOTTOM_BOUNDARY"

-- | Right eye, left corner.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE_LEFT_CORNER"

-- | Left eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYEBROW_UPPER_MIDPOINT"

-- | Right eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYEBROW_UPPER_MIDPOINT"

-- | Left ear tragion.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EAR_TRAGION"

-- | Right ear tragion.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EAR_TRAGION"

-- | Left eye pupil.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_EYE_PUPIL"

-- | Right eye pupil.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_EYE_PUPIL"

-- | Forehead glabella.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "FOREHEAD_GLABELLA"

-- | Chin gnathion.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINGNATHION :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINGNATHION = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "CHIN_GNATHION"

-- | Chin left gonion.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINLEFTGONION :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINLEFTGONION = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "CHIN_LEFT_GONION"

-- | Chin right gonion.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "CHIN_RIGHT_GONION"

-- | Left cheek center.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "LEFT_CHEEK_CENTER"

-- | Right cheek center.
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER :: GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER = GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type "RIGHT_CHEEK_CENTER"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYE,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYE,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSETIP,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_UPPERLIP,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LOWERLIP,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINGNATHION,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
  GoogleCloudVisionV1p3beta1FaceAnnotationLandmark_Type
  #-}

-- | Current state of the batch operation.
newtype GoogleCloudVisionV1p3beta1OperationMetadata_State = GoogleCloudVisionV1p3beta1OperationMetadata_State {fromGoogleCloudVisionV1p3beta1OperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p3beta1OperationMetadata_State
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p3beta1OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is received.
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Created :: GoogleCloudVisionV1p3beta1OperationMetadata_State
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Created = GoogleCloudVisionV1p3beta1OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Running :: GoogleCloudVisionV1p3beta1OperationMetadata_State
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Running = GoogleCloudVisionV1p3beta1OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Done :: GoogleCloudVisionV1p3beta1OperationMetadata_State
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Done = GoogleCloudVisionV1p3beta1OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Cancelled :: GoogleCloudVisionV1p3beta1OperationMetadata_State
pattern GoogleCloudVisionV1p3beta1OperationMetadata_State_Cancelled = GoogleCloudVisionV1p3beta1OperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1OperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p3beta1OperationMetadata_State_Created,
  GoogleCloudVisionV1p3beta1OperationMetadata_State_Running,
  GoogleCloudVisionV1p3beta1OperationMetadata_State_Done,
  GoogleCloudVisionV1p3beta1OperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p3beta1OperationMetadata_State
  #-}

-- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
newtype GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult {fromGoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unknown :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unknown = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYUNLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unlikely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unlikely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Possible :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Possible = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Likely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Likely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unknown,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Unlikely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Possible,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_Likely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult_VERYLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Adult
  #-}

-- | Likelihood that this is a medical image.
newtype GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical {fromGoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unknown :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unknown = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYUNLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unlikely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unlikely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Possible :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Possible = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Likely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Likely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unknown,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Unlikely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Possible,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_Likely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical_VERYLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Medical
  #-}

-- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
newtype GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy {fromGoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unknown :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unknown = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYUNLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unlikely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unlikely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Possible :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Possible = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Likely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Likely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unknown,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Unlikely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Possible,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_Likely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy_VERYLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Racy
  #-}

-- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
newtype GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof {fromGoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unknown :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unknown = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unlikely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unlikely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Possible :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Possible = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Likely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Likely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unknown,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Unlikely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Possible,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_Likely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Spoof
  #-}

-- | Likelihood that this image contains violent content.
newtype GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence {fromGoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unknown :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unknown = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYUNLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYUNLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unlikely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unlikely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Possible :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Possible = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Likely :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Likely = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYLIKELY :: GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYLIKELY = GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unknown,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Unlikely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Possible,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_Likely,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence_VERYLIKELY,
  GoogleCloudVisionV1p3beta1SafeSearchAnnotation_Violence
  #-}

-- | Detected break type.
newtype GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type {fromGoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown break label type.
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Unknown :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Unknown = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "UNKNOWN"

-- | Regular space.
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Space :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Space = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "SPACE"

-- | Sure space (very wide).
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_SURESPACE :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_SURESPACE = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "SURE_SPACE"

-- | Line-wrapping break.
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "EOL_SURE_SPACE"

-- | End-line hyphen that is not present in text; does not co-occur with @SPACE@, @LEADER_SPACE@, or @LINE_BREAK@.
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Hyphen :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Hyphen = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "HYPHEN"

-- | Line break that ends a paragraph.
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_LINEBREAK :: GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_LINEBREAK = GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type "LINE_BREAK"

{-# COMPLETE
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Unknown,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Space,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_SURESPACE,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_Hyphen,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
  GoogleCloudVisionV1p3beta1TextAnnotationDetectedBreak_Type
  #-}

-- | The current state of the batch operation.
newtype GoogleCloudVisionV1p4beta1BatchOperationMetadata_State = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State {fromGoogleCloudVisionV1p4beta1BatchOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Processing :: GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Processing = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State "PROCESSING"

-- | The request is done and at least one item has been successfully processed.
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Successful :: GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Successful = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State "SUCCESSFUL"

-- | The request is done and no item has been successfully processed.
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Failed :: GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Failed = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State "FAILED"

-- | The request is done after the longrunning.Operations.CancelOperation has been called by the user. Any records that were processed before the cancel command are output as specified in the request.
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Cancelled :: GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
pattern GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Cancelled = GoogleCloudVisionV1p4beta1BatchOperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Processing,
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Successful,
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Failed,
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p4beta1BatchOperationMetadata_State
  #-}

-- | Detected block type (text, image etc) for this block.
newtype GoogleCloudVisionV1p4beta1Block_BlockType = GoogleCloudVisionV1p4beta1Block_BlockType {fromGoogleCloudVisionV1p4beta1Block_BlockType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown block type.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Unknown :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Unknown = GoogleCloudVisionV1p4beta1Block_BlockType "UNKNOWN"

-- | Regular text block.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Text :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Text = GoogleCloudVisionV1p4beta1Block_BlockType "TEXT"

-- | Table block.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Table :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Table = GoogleCloudVisionV1p4beta1Block_BlockType "TABLE"

-- | Image block.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Picture :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Picture = GoogleCloudVisionV1p4beta1Block_BlockType "PICTURE"

-- | Horizontal\/vertical line box.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Ruler :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Ruler = GoogleCloudVisionV1p4beta1Block_BlockType "RULER"

-- | Barcode block.
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Barcode :: GoogleCloudVisionV1p4beta1Block_BlockType
pattern GoogleCloudVisionV1p4beta1Block_BlockType_Barcode = GoogleCloudVisionV1p4beta1Block_BlockType "BARCODE"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1Block_BlockType_Unknown,
  GoogleCloudVisionV1p4beta1Block_BlockType_Text,
  GoogleCloudVisionV1p4beta1Block_BlockType_Table,
  GoogleCloudVisionV1p4beta1Block_BlockType_Picture,
  GoogleCloudVisionV1p4beta1Block_BlockType_Ruler,
  GoogleCloudVisionV1p4beta1Block_BlockType_Barcode,
  GoogleCloudVisionV1p4beta1Block_BlockType
  #-}

-- | Anger likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_AngerLikelihood
  #-}

-- | Blurred likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_BlurredLikelihood
  #-}

-- | Headwear likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_HeadwearLikelihood
  #-}

-- | Joy likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_JoyLikelihood
  #-}

-- | Sorrow likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SorrowLikelihood
  #-}

-- | Surprise likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_SurpriseLikelihood
  #-}

-- | Under-exposed likelihood.
newtype GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood {fromGoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unknown :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unknown = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unlikely :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unlikely = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Possible :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Possible = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Likely :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Likely = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY :: GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
pattern GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY = GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unknown,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Unlikely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Possible,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_Likely,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood_VERYLIKELY,
  GoogleCloudVisionV1p4beta1FaceAnnotation_UnderExposedLikelihood
  #-}

-- | Face landmark type.
newtype GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type {fromGoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown face landmark detected. Should not be filled.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "UNKNOWN_LANDMARK"

-- | Left eye.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYE :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYE = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE"

-- | Right eye.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYE :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYE = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE"

-- | Left of left eyebrow.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_OF_LEFT_EYEBROW"

-- | Right of left eyebrow.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_OF_LEFT_EYEBROW"

-- | Left of right eyebrow.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_OF_RIGHT_EYEBROW"

-- | Right of right eyebrow.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_OF_RIGHT_EYEBROW"

-- | Midpoint between eyes.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "MIDPOINT_BETWEEN_EYES"

-- | Nose tip.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSETIP :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSETIP = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "NOSE_TIP"

-- | Upper lip.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UPPERLIP :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UPPERLIP = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "UPPER_LIP"

-- | Lower lip.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LOWERLIP :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LOWERLIP = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LOWER_LIP"

-- | Mouth left.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHLEFT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHLEFT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "MOUTH_LEFT"

-- | Mouth right.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHRIGHT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHRIGHT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "MOUTH_RIGHT"

-- | Mouth center.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHCENTER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHCENTER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "MOUTH_CENTER"

-- | Nose, bottom right.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_RIGHT"

-- | Nose, bottom left.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_LEFT"

-- | Nose, bottom center.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "NOSE_BOTTOM_CENTER"

-- | Left eye, top boundary.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE_TOP_BOUNDARY"

-- | Left eye, right corner.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE_RIGHT_CORNER"

-- | Left eye, bottom boundary.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE_BOTTOM_BOUNDARY"

-- | Left eye, left corner.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE_LEFT_CORNER"

-- | Right eye, top boundary.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE_TOP_BOUNDARY"

-- | Right eye, right corner.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE_RIGHT_CORNER"

-- | Right eye, bottom boundary.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE_BOTTOM_BOUNDARY"

-- | Right eye, left corner.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE_LEFT_CORNER"

-- | Left eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYEBROW_UPPER_MIDPOINT"

-- | Right eyebrow, upper midpoint.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYEBROW_UPPER_MIDPOINT"

-- | Left ear tragion.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EAR_TRAGION"

-- | Right ear tragion.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EAR_TRAGION"

-- | Left eye pupil.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_EYE_PUPIL"

-- | Right eye pupil.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_EYE_PUPIL"

-- | Forehead glabella.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "FOREHEAD_GLABELLA"

-- | Chin gnathion.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINGNATHION :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINGNATHION = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "CHIN_GNATHION"

-- | Chin left gonion.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINLEFTGONION :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINLEFTGONION = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "CHIN_LEFT_GONION"

-- | Chin right gonion.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "CHIN_RIGHT_GONION"

-- | Left cheek center.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "LEFT_CHEEK_CENTER"

-- | Right cheek center.
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER :: GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
pattern GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER = GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type "RIGHT_CHEEK_CENTER"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UNKNOWNLANDMARK,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYE,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYE,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFLEFTEYEBROW,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFLEFTEYEBROW,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTOFRIGHTEYEBROW,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MIDPOINTBETWEENEYES,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSETIP,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_UPPERLIP,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LOWERLIP,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHLEFT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHRIGHT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_MOUTHCENTER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMRIGHT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMLEFT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_NOSEBOTTOMCENTER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYETOPBOUNDARY,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYERIGHTCORNER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYELEFTCORNER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYETOPBOUNDARY,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYERIGHTCORNER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBOTTOMBOUNDARY,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYELEFTCORNER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEARTRAGION,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEARTRAGION,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTEYEPUPIL,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTEYEPUPIL,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_FOREHEADGLABELLA,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINGNATHION,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINLEFTGONION,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_CHINRIGHTGONION,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_LEFTCHEEKCENTER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type_RIGHTCHEEKCENTER,
  GoogleCloudVisionV1p4beta1FaceAnnotationLandmark_Type
  #-}

-- | Current state of the batch operation.
newtype GoogleCloudVisionV1p4beta1OperationMetadata_State = GoogleCloudVisionV1p4beta1OperationMetadata_State {fromGoogleCloudVisionV1p4beta1OperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_STATEUNSPECIFIED :: GoogleCloudVisionV1p4beta1OperationMetadata_State
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_STATEUNSPECIFIED = GoogleCloudVisionV1p4beta1OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is received.
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Created :: GoogleCloudVisionV1p4beta1OperationMetadata_State
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Created = GoogleCloudVisionV1p4beta1OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Running :: GoogleCloudVisionV1p4beta1OperationMetadata_State
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Running = GoogleCloudVisionV1p4beta1OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Done :: GoogleCloudVisionV1p4beta1OperationMetadata_State
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Done = GoogleCloudVisionV1p4beta1OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Cancelled :: GoogleCloudVisionV1p4beta1OperationMetadata_State
pattern GoogleCloudVisionV1p4beta1OperationMetadata_State_Cancelled = GoogleCloudVisionV1p4beta1OperationMetadata_State "CANCELLED"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1OperationMetadata_State_STATEUNSPECIFIED,
  GoogleCloudVisionV1p4beta1OperationMetadata_State_Created,
  GoogleCloudVisionV1p4beta1OperationMetadata_State_Running,
  GoogleCloudVisionV1p4beta1OperationMetadata_State_Done,
  GoogleCloudVisionV1p4beta1OperationMetadata_State_Cancelled,
  GoogleCloudVisionV1p4beta1OperationMetadata_State
  #-}

-- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
newtype GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult {fromGoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unknown :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unknown = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYUNLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unlikely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unlikely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Possible :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Possible = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Likely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Likely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unknown,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Unlikely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Possible,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_Likely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult_VERYLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Adult
  #-}

-- | Likelihood that this is a medical image.
newtype GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical {fromGoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unknown :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unknown = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYUNLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unlikely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unlikely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Possible :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Possible = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Likely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Likely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unknown,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Unlikely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Possible,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_Likely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical_VERYLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Medical
  #-}

-- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
newtype GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy {fromGoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unknown :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unknown = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYUNLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unlikely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unlikely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Possible :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Possible = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Likely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Likely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unknown,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Unlikely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Possible,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_Likely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy_VERYLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Racy
  #-}

-- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
newtype GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof {fromGoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unknown :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unknown = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unlikely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unlikely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Possible :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Possible = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Likely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Likely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unknown,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Unlikely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Possible,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_Likely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof_VERYLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Spoof
  #-}

-- | Likelihood that this image contains violent content.
newtype GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence {fromGoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unknown :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unknown = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "UNKNOWN"

-- | It is very unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYUNLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYUNLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "VERY_UNLIKELY"

-- | It is unlikely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unlikely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unlikely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "UNLIKELY"

-- | It is possible.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Possible :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Possible = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "POSSIBLE"

-- | It is likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Likely :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Likely = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "LIKELY"

-- | It is very likely.
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYLIKELY :: GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
pattern GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYLIKELY = GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unknown,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYUNLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Unlikely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Possible,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_Likely,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence_VERYLIKELY,
  GoogleCloudVisionV1p4beta1SafeSearchAnnotation_Violence
  #-}

-- | Detected break type.
newtype GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type {fromGoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown break label type.
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Unknown :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Unknown = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "UNKNOWN"

-- | Regular space.
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Space :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Space = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "SPACE"

-- | Sure space (very wide).
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_SURESPACE :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_SURESPACE = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "SURE_SPACE"

-- | Line-wrapping break.
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "EOL_SURE_SPACE"

-- | End-line hyphen that is not present in text; does not co-occur with @SPACE@, @LEADER_SPACE@, or @LINE_BREAK@.
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Hyphen :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Hyphen = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "HYPHEN"

-- | Line break that ends a paragraph.
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_LINEBREAK :: GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
pattern GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_LINEBREAK = GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type "LINE_BREAK"

{-# COMPLETE
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Unknown,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Space,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_SURESPACE,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_EOLSURESPACE,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_Hyphen,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type_LINEBREAK,
  GoogleCloudVisionV1p4beta1TextAnnotationDetectedBreak_Type
  #-}

-- | Face landmark type.
newtype Landmark_Type = Landmark_Type {fromLandmark_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown face landmark detected. Should not be filled.
pattern Landmark_Type_UNKNOWNLANDMARK :: Landmark_Type
pattern Landmark_Type_UNKNOWNLANDMARK = Landmark_Type "UNKNOWN_LANDMARK"

-- | Left eye.
pattern Landmark_Type_LEFTEYE :: Landmark_Type
pattern Landmark_Type_LEFTEYE = Landmark_Type "LEFT_EYE"

-- | Right eye.
pattern Landmark_Type_RIGHTEYE :: Landmark_Type
pattern Landmark_Type_RIGHTEYE = Landmark_Type "RIGHT_EYE"

-- | Left of left eyebrow.
pattern Landmark_Type_LEFTOFLEFTEYEBROW :: Landmark_Type
pattern Landmark_Type_LEFTOFLEFTEYEBROW = Landmark_Type "LEFT_OF_LEFT_EYEBROW"

-- | Right of left eyebrow.
pattern Landmark_Type_RIGHTOFLEFTEYEBROW :: Landmark_Type
pattern Landmark_Type_RIGHTOFLEFTEYEBROW = Landmark_Type "RIGHT_OF_LEFT_EYEBROW"

-- | Left of right eyebrow.
pattern Landmark_Type_LEFTOFRIGHTEYEBROW :: Landmark_Type
pattern Landmark_Type_LEFTOFRIGHTEYEBROW = Landmark_Type "LEFT_OF_RIGHT_EYEBROW"

-- | Right of right eyebrow.
pattern Landmark_Type_RIGHTOFRIGHTEYEBROW :: Landmark_Type
pattern Landmark_Type_RIGHTOFRIGHTEYEBROW = Landmark_Type "RIGHT_OF_RIGHT_EYEBROW"

-- | Midpoint between eyes.
pattern Landmark_Type_MIDPOINTBETWEENEYES :: Landmark_Type
pattern Landmark_Type_MIDPOINTBETWEENEYES = Landmark_Type "MIDPOINT_BETWEEN_EYES"

-- | Nose tip.
pattern Landmark_Type_NOSETIP :: Landmark_Type
pattern Landmark_Type_NOSETIP = Landmark_Type "NOSE_TIP"

-- | Upper lip.
pattern Landmark_Type_UPPERLIP :: Landmark_Type
pattern Landmark_Type_UPPERLIP = Landmark_Type "UPPER_LIP"

-- | Lower lip.
pattern Landmark_Type_LOWERLIP :: Landmark_Type
pattern Landmark_Type_LOWERLIP = Landmark_Type "LOWER_LIP"

-- | Mouth left.
pattern Landmark_Type_MOUTHLEFT :: Landmark_Type
pattern Landmark_Type_MOUTHLEFT = Landmark_Type "MOUTH_LEFT"

-- | Mouth right.
pattern Landmark_Type_MOUTHRIGHT :: Landmark_Type
pattern Landmark_Type_MOUTHRIGHT = Landmark_Type "MOUTH_RIGHT"

-- | Mouth center.
pattern Landmark_Type_MOUTHCENTER :: Landmark_Type
pattern Landmark_Type_MOUTHCENTER = Landmark_Type "MOUTH_CENTER"

-- | Nose, bottom right.
pattern Landmark_Type_NOSEBOTTOMRIGHT :: Landmark_Type
pattern Landmark_Type_NOSEBOTTOMRIGHT = Landmark_Type "NOSE_BOTTOM_RIGHT"

-- | Nose, bottom left.
pattern Landmark_Type_NOSEBOTTOMLEFT :: Landmark_Type
pattern Landmark_Type_NOSEBOTTOMLEFT = Landmark_Type "NOSE_BOTTOM_LEFT"

-- | Nose, bottom center.
pattern Landmark_Type_NOSEBOTTOMCENTER :: Landmark_Type
pattern Landmark_Type_NOSEBOTTOMCENTER = Landmark_Type "NOSE_BOTTOM_CENTER"

-- | Left eye, top boundary.
pattern Landmark_Type_LEFTEYETOPBOUNDARY :: Landmark_Type
pattern Landmark_Type_LEFTEYETOPBOUNDARY = Landmark_Type "LEFT_EYE_TOP_BOUNDARY"

-- | Left eye, right corner.
pattern Landmark_Type_LEFTEYERIGHTCORNER :: Landmark_Type
pattern Landmark_Type_LEFTEYERIGHTCORNER = Landmark_Type "LEFT_EYE_RIGHT_CORNER"

-- | Left eye, bottom boundary.
pattern Landmark_Type_LEFTEYEBOTTOMBOUNDARY :: Landmark_Type
pattern Landmark_Type_LEFTEYEBOTTOMBOUNDARY = Landmark_Type "LEFT_EYE_BOTTOM_BOUNDARY"

-- | Left eye, left corner.
pattern Landmark_Type_LEFTEYELEFTCORNER :: Landmark_Type
pattern Landmark_Type_LEFTEYELEFTCORNER = Landmark_Type "LEFT_EYE_LEFT_CORNER"

-- | Right eye, top boundary.
pattern Landmark_Type_RIGHTEYETOPBOUNDARY :: Landmark_Type
pattern Landmark_Type_RIGHTEYETOPBOUNDARY = Landmark_Type "RIGHT_EYE_TOP_BOUNDARY"

-- | Right eye, right corner.
pattern Landmark_Type_RIGHTEYERIGHTCORNER :: Landmark_Type
pattern Landmark_Type_RIGHTEYERIGHTCORNER = Landmark_Type "RIGHT_EYE_RIGHT_CORNER"

-- | Right eye, bottom boundary.
pattern Landmark_Type_RIGHTEYEBOTTOMBOUNDARY :: Landmark_Type
pattern Landmark_Type_RIGHTEYEBOTTOMBOUNDARY = Landmark_Type "RIGHT_EYE_BOTTOM_BOUNDARY"

-- | Right eye, left corner.
pattern Landmark_Type_RIGHTEYELEFTCORNER :: Landmark_Type
pattern Landmark_Type_RIGHTEYELEFTCORNER = Landmark_Type "RIGHT_EYE_LEFT_CORNER"

-- | Left eyebrow, upper midpoint.
pattern Landmark_Type_LEFTEYEBROWUPPERMIDPOINT :: Landmark_Type
pattern Landmark_Type_LEFTEYEBROWUPPERMIDPOINT = Landmark_Type "LEFT_EYEBROW_UPPER_MIDPOINT"

-- | Right eyebrow, upper midpoint.
pattern Landmark_Type_RIGHTEYEBROWUPPERMIDPOINT :: Landmark_Type
pattern Landmark_Type_RIGHTEYEBROWUPPERMIDPOINT = Landmark_Type "RIGHT_EYEBROW_UPPER_MIDPOINT"

-- | Left ear tragion.
pattern Landmark_Type_LEFTEARTRAGION :: Landmark_Type
pattern Landmark_Type_LEFTEARTRAGION = Landmark_Type "LEFT_EAR_TRAGION"

-- | Right ear tragion.
pattern Landmark_Type_RIGHTEARTRAGION :: Landmark_Type
pattern Landmark_Type_RIGHTEARTRAGION = Landmark_Type "RIGHT_EAR_TRAGION"

-- | Left eye pupil.
pattern Landmark_Type_LEFTEYEPUPIL :: Landmark_Type
pattern Landmark_Type_LEFTEYEPUPIL = Landmark_Type "LEFT_EYE_PUPIL"

-- | Right eye pupil.
pattern Landmark_Type_RIGHTEYEPUPIL :: Landmark_Type
pattern Landmark_Type_RIGHTEYEPUPIL = Landmark_Type "RIGHT_EYE_PUPIL"

-- | Forehead glabella.
pattern Landmark_Type_FOREHEADGLABELLA :: Landmark_Type
pattern Landmark_Type_FOREHEADGLABELLA = Landmark_Type "FOREHEAD_GLABELLA"

-- | Chin gnathion.
pattern Landmark_Type_CHINGNATHION :: Landmark_Type
pattern Landmark_Type_CHINGNATHION = Landmark_Type "CHIN_GNATHION"

-- | Chin left gonion.
pattern Landmark_Type_CHINLEFTGONION :: Landmark_Type
pattern Landmark_Type_CHINLEFTGONION = Landmark_Type "CHIN_LEFT_GONION"

-- | Chin right gonion.
pattern Landmark_Type_CHINRIGHTGONION :: Landmark_Type
pattern Landmark_Type_CHINRIGHTGONION = Landmark_Type "CHIN_RIGHT_GONION"

-- | Left cheek center.
pattern Landmark_Type_LEFTCHEEKCENTER :: Landmark_Type
pattern Landmark_Type_LEFTCHEEKCENTER = Landmark_Type "LEFT_CHEEK_CENTER"

-- | Right cheek center.
pattern Landmark_Type_RIGHTCHEEKCENTER :: Landmark_Type
pattern Landmark_Type_RIGHTCHEEKCENTER = Landmark_Type "RIGHT_CHEEK_CENTER"

{-# COMPLETE
  Landmark_Type_UNKNOWNLANDMARK,
  Landmark_Type_LEFTEYE,
  Landmark_Type_RIGHTEYE,
  Landmark_Type_LEFTOFLEFTEYEBROW,
  Landmark_Type_RIGHTOFLEFTEYEBROW,
  Landmark_Type_LEFTOFRIGHTEYEBROW,
  Landmark_Type_RIGHTOFRIGHTEYEBROW,
  Landmark_Type_MIDPOINTBETWEENEYES,
  Landmark_Type_NOSETIP,
  Landmark_Type_UPPERLIP,
  Landmark_Type_LOWERLIP,
  Landmark_Type_MOUTHLEFT,
  Landmark_Type_MOUTHRIGHT,
  Landmark_Type_MOUTHCENTER,
  Landmark_Type_NOSEBOTTOMRIGHT,
  Landmark_Type_NOSEBOTTOMLEFT,
  Landmark_Type_NOSEBOTTOMCENTER,
  Landmark_Type_LEFTEYETOPBOUNDARY,
  Landmark_Type_LEFTEYERIGHTCORNER,
  Landmark_Type_LEFTEYEBOTTOMBOUNDARY,
  Landmark_Type_LEFTEYELEFTCORNER,
  Landmark_Type_RIGHTEYETOPBOUNDARY,
  Landmark_Type_RIGHTEYERIGHTCORNER,
  Landmark_Type_RIGHTEYEBOTTOMBOUNDARY,
  Landmark_Type_RIGHTEYELEFTCORNER,
  Landmark_Type_LEFTEYEBROWUPPERMIDPOINT,
  Landmark_Type_RIGHTEYEBROWUPPERMIDPOINT,
  Landmark_Type_LEFTEARTRAGION,
  Landmark_Type_RIGHTEARTRAGION,
  Landmark_Type_LEFTEYEPUPIL,
  Landmark_Type_RIGHTEYEPUPIL,
  Landmark_Type_FOREHEADGLABELLA,
  Landmark_Type_CHINGNATHION,
  Landmark_Type_CHINLEFTGONION,
  Landmark_Type_CHINRIGHTGONION,
  Landmark_Type_LEFTCHEEKCENTER,
  Landmark_Type_RIGHTCHEEKCENTER,
  Landmark_Type
  #-}

-- | Current state of the batch operation.
newtype OperationMetadata_State = OperationMetadata_State {fromOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Invalid.
pattern OperationMetadata_State_STATEUNSPECIFIED :: OperationMetadata_State
pattern OperationMetadata_State_STATEUNSPECIFIED = OperationMetadata_State "STATE_UNSPECIFIED"

-- | Request is received.
pattern OperationMetadata_State_Created :: OperationMetadata_State
pattern OperationMetadata_State_Created = OperationMetadata_State "CREATED"

-- | Request is actively being processed.
pattern OperationMetadata_State_Running :: OperationMetadata_State
pattern OperationMetadata_State_Running = OperationMetadata_State "RUNNING"

-- | The batch processing is done.
pattern OperationMetadata_State_Done :: OperationMetadata_State
pattern OperationMetadata_State_Done = OperationMetadata_State "DONE"

-- | The batch processing was cancelled.
pattern OperationMetadata_State_Cancelled :: OperationMetadata_State
pattern OperationMetadata_State_Cancelled = OperationMetadata_State "CANCELLED"

{-# COMPLETE
  OperationMetadata_State_STATEUNSPECIFIED,
  OperationMetadata_State_Created,
  OperationMetadata_State_Running,
  OperationMetadata_State_Done,
  OperationMetadata_State_Cancelled,
  OperationMetadata_State
  #-}

-- | Represents the adult content likelihood for the image. Adult content may contain elements such as nudity, pornographic images or cartoons, or sexual activities.
newtype SafeSearchAnnotation_Adult = SafeSearchAnnotation_Adult {fromSafeSearchAnnotation_Adult :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern SafeSearchAnnotation_Adult_Unknown :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_Unknown = SafeSearchAnnotation_Adult "UNKNOWN"

-- | It is very unlikely.
pattern SafeSearchAnnotation_Adult_VERYUNLIKELY :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_VERYUNLIKELY = SafeSearchAnnotation_Adult "VERY_UNLIKELY"

-- | It is unlikely.
pattern SafeSearchAnnotation_Adult_Unlikely :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_Unlikely = SafeSearchAnnotation_Adult "UNLIKELY"

-- | It is possible.
pattern SafeSearchAnnotation_Adult_Possible :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_Possible = SafeSearchAnnotation_Adult "POSSIBLE"

-- | It is likely.
pattern SafeSearchAnnotation_Adult_Likely :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_Likely = SafeSearchAnnotation_Adult "LIKELY"

-- | It is very likely.
pattern SafeSearchAnnotation_Adult_VERYLIKELY :: SafeSearchAnnotation_Adult
pattern SafeSearchAnnotation_Adult_VERYLIKELY = SafeSearchAnnotation_Adult "VERY_LIKELY"

{-# COMPLETE
  SafeSearchAnnotation_Adult_Unknown,
  SafeSearchAnnotation_Adult_VERYUNLIKELY,
  SafeSearchAnnotation_Adult_Unlikely,
  SafeSearchAnnotation_Adult_Possible,
  SafeSearchAnnotation_Adult_Likely,
  SafeSearchAnnotation_Adult_VERYLIKELY,
  SafeSearchAnnotation_Adult
  #-}

-- | Likelihood that this is a medical image.
newtype SafeSearchAnnotation_Medical = SafeSearchAnnotation_Medical {fromSafeSearchAnnotation_Medical :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern SafeSearchAnnotation_Medical_Unknown :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_Unknown = SafeSearchAnnotation_Medical "UNKNOWN"

-- | It is very unlikely.
pattern SafeSearchAnnotation_Medical_VERYUNLIKELY :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_VERYUNLIKELY = SafeSearchAnnotation_Medical "VERY_UNLIKELY"

-- | It is unlikely.
pattern SafeSearchAnnotation_Medical_Unlikely :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_Unlikely = SafeSearchAnnotation_Medical "UNLIKELY"

-- | It is possible.
pattern SafeSearchAnnotation_Medical_Possible :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_Possible = SafeSearchAnnotation_Medical "POSSIBLE"

-- | It is likely.
pattern SafeSearchAnnotation_Medical_Likely :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_Likely = SafeSearchAnnotation_Medical "LIKELY"

-- | It is very likely.
pattern SafeSearchAnnotation_Medical_VERYLIKELY :: SafeSearchAnnotation_Medical
pattern SafeSearchAnnotation_Medical_VERYLIKELY = SafeSearchAnnotation_Medical "VERY_LIKELY"

{-# COMPLETE
  SafeSearchAnnotation_Medical_Unknown,
  SafeSearchAnnotation_Medical_VERYUNLIKELY,
  SafeSearchAnnotation_Medical_Unlikely,
  SafeSearchAnnotation_Medical_Possible,
  SafeSearchAnnotation_Medical_Likely,
  SafeSearchAnnotation_Medical_VERYLIKELY,
  SafeSearchAnnotation_Medical
  #-}

-- | Likelihood that the request image contains racy content. Racy content may include (but is not limited to) skimpy or sheer clothing, strategically covered nudity, lewd or provocative poses, or close-ups of sensitive body areas.
newtype SafeSearchAnnotation_Racy = SafeSearchAnnotation_Racy {fromSafeSearchAnnotation_Racy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern SafeSearchAnnotation_Racy_Unknown :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_Unknown = SafeSearchAnnotation_Racy "UNKNOWN"

-- | It is very unlikely.
pattern SafeSearchAnnotation_Racy_VERYUNLIKELY :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_VERYUNLIKELY = SafeSearchAnnotation_Racy "VERY_UNLIKELY"

-- | It is unlikely.
pattern SafeSearchAnnotation_Racy_Unlikely :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_Unlikely = SafeSearchAnnotation_Racy "UNLIKELY"

-- | It is possible.
pattern SafeSearchAnnotation_Racy_Possible :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_Possible = SafeSearchAnnotation_Racy "POSSIBLE"

-- | It is likely.
pattern SafeSearchAnnotation_Racy_Likely :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_Likely = SafeSearchAnnotation_Racy "LIKELY"

-- | It is very likely.
pattern SafeSearchAnnotation_Racy_VERYLIKELY :: SafeSearchAnnotation_Racy
pattern SafeSearchAnnotation_Racy_VERYLIKELY = SafeSearchAnnotation_Racy "VERY_LIKELY"

{-# COMPLETE
  SafeSearchAnnotation_Racy_Unknown,
  SafeSearchAnnotation_Racy_VERYUNLIKELY,
  SafeSearchAnnotation_Racy_Unlikely,
  SafeSearchAnnotation_Racy_Possible,
  SafeSearchAnnotation_Racy_Likely,
  SafeSearchAnnotation_Racy_VERYLIKELY,
  SafeSearchAnnotation_Racy
  #-}

-- | Spoof likelihood. The likelihood that an modification was made to the image\'s canonical version to make it appear funny or offensive.
newtype SafeSearchAnnotation_Spoof = SafeSearchAnnotation_Spoof {fromSafeSearchAnnotation_Spoof :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern SafeSearchAnnotation_Spoof_Unknown :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_Unknown = SafeSearchAnnotation_Spoof "UNKNOWN"

-- | It is very unlikely.
pattern SafeSearchAnnotation_Spoof_VERYUNLIKELY :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_VERYUNLIKELY = SafeSearchAnnotation_Spoof "VERY_UNLIKELY"

-- | It is unlikely.
pattern SafeSearchAnnotation_Spoof_Unlikely :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_Unlikely = SafeSearchAnnotation_Spoof "UNLIKELY"

-- | It is possible.
pattern SafeSearchAnnotation_Spoof_Possible :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_Possible = SafeSearchAnnotation_Spoof "POSSIBLE"

-- | It is likely.
pattern SafeSearchAnnotation_Spoof_Likely :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_Likely = SafeSearchAnnotation_Spoof "LIKELY"

-- | It is very likely.
pattern SafeSearchAnnotation_Spoof_VERYLIKELY :: SafeSearchAnnotation_Spoof
pattern SafeSearchAnnotation_Spoof_VERYLIKELY = SafeSearchAnnotation_Spoof "VERY_LIKELY"

{-# COMPLETE
  SafeSearchAnnotation_Spoof_Unknown,
  SafeSearchAnnotation_Spoof_VERYUNLIKELY,
  SafeSearchAnnotation_Spoof_Unlikely,
  SafeSearchAnnotation_Spoof_Possible,
  SafeSearchAnnotation_Spoof_Likely,
  SafeSearchAnnotation_Spoof_VERYLIKELY,
  SafeSearchAnnotation_Spoof
  #-}

-- | Likelihood that this image contains violent content.
newtype SafeSearchAnnotation_Violence = SafeSearchAnnotation_Violence {fromSafeSearchAnnotation_Violence :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown likelihood.
pattern SafeSearchAnnotation_Violence_Unknown :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_Unknown = SafeSearchAnnotation_Violence "UNKNOWN"

-- | It is very unlikely.
pattern SafeSearchAnnotation_Violence_VERYUNLIKELY :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_VERYUNLIKELY = SafeSearchAnnotation_Violence "VERY_UNLIKELY"

-- | It is unlikely.
pattern SafeSearchAnnotation_Violence_Unlikely :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_Unlikely = SafeSearchAnnotation_Violence "UNLIKELY"

-- | It is possible.
pattern SafeSearchAnnotation_Violence_Possible :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_Possible = SafeSearchAnnotation_Violence "POSSIBLE"

-- | It is likely.
pattern SafeSearchAnnotation_Violence_Likely :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_Likely = SafeSearchAnnotation_Violence "LIKELY"

-- | It is very likely.
pattern SafeSearchAnnotation_Violence_VERYLIKELY :: SafeSearchAnnotation_Violence
pattern SafeSearchAnnotation_Violence_VERYLIKELY = SafeSearchAnnotation_Violence "VERY_LIKELY"

{-# COMPLETE
  SafeSearchAnnotation_Violence_Unknown,
  SafeSearchAnnotation_Violence_VERYUNLIKELY,
  SafeSearchAnnotation_Violence_Unlikely,
  SafeSearchAnnotation_Violence_Possible,
  SafeSearchAnnotation_Violence_Likely,
  SafeSearchAnnotation_Violence_VERYLIKELY,
  SafeSearchAnnotation_Violence
  #-}
