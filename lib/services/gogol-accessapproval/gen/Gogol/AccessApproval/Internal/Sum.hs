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
-- Module      : Gogol.AccessApproval.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AccessApproval.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccessReason_Type
    AccessReason_Type
      (
        AccessReason_Type_TYPEUNSPECIFIED,
        AccessReason_Type_CUSTOMERINITIATEDSUPPORT,
        AccessReason_Type_GOOGLEINITIATEDSERVICE,
        AccessReason_Type_GOOGLEINITIATEDREVIEW,
        AccessReason_Type_THIRDPARTYDATAREQUEST,
        AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT,
        ..
      ),

    -- * EnrolledService_EnrollmentLevel
    EnrolledService_EnrollmentLevel
      (
        EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED,
        EnrolledService_EnrollmentLevel_BLOCKALL,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Type of access justification.
newtype AccessReason_Type = AccessReason_Type { fromAccessReason_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value for proto, shouldn\'t be used.
pattern AccessReason_Type_TYPEUNSPECIFIED :: AccessReason_Type
pattern AccessReason_Type_TYPEUNSPECIFIED = AccessReason_Type "TYPE_UNSPECIFIED"

-- | Customer made a request or raised an issue that required the principal to access customer data. @detail@ is of the form (\"#####\" is the issue ID): * \"Feedback Report: #####\" * \"Case Number: #####\" * \"Case ID: #####\" * \"E-PIN Reference: #####\" * \"Google-#####\" * \"T-#####\"
pattern AccessReason_Type_CUSTOMERINITIATEDSUPPORT :: AccessReason_Type
pattern AccessReason_Type_CUSTOMERINITIATEDSUPPORT = AccessReason_Type "CUSTOMER_INITIATED_SUPPORT"

-- | The principal accessed customer data in order to diagnose or resolve a suspected issue in services. Often this access is used to confirm that customers are not affected by a suspected service issue or to remediate a reversible system issue.
pattern AccessReason_Type_GOOGLEINITIATEDSERVICE :: AccessReason_Type
pattern AccessReason_Type_GOOGLEINITIATEDSERVICE = AccessReason_Type "GOOGLE_INITIATED_SERVICE"

-- | Google initiated service for security, fraud, abuse, or compliance purposes.
pattern AccessReason_Type_GOOGLEINITIATEDREVIEW :: AccessReason_Type
pattern AccessReason_Type_GOOGLEINITIATEDREVIEW = AccessReason_Type "GOOGLE_INITIATED_REVIEW"

-- | The principal was compelled to access customer data in order to respond to a legal third party data request or process, including legal processes from customers themselves.
pattern AccessReason_Type_THIRDPARTYDATAREQUEST :: AccessReason_Type
pattern AccessReason_Type_THIRDPARTYDATAREQUEST = AccessReason_Type "THIRD_PARTY_DATA_REQUEST"

-- | The principal accessed customer data in order to diagnose or resolve a suspected issue in services or a known outage.
pattern AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT :: AccessReason_Type
pattern AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT = AccessReason_Type "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT"

{-# COMPLETE
  AccessReason_Type_TYPEUNSPECIFIED,
  AccessReason_Type_CUSTOMERINITIATEDSUPPORT,
  AccessReason_Type_GOOGLEINITIATEDSERVICE,
  AccessReason_Type_GOOGLEINITIATEDREVIEW,
  AccessReason_Type_THIRDPARTYDATAREQUEST,
  AccessReason_Type_GOOGLERESPONSETOPRODUCTIONALERT,
  AccessReason_Type #-}

-- | The enrollment level of the service.
newtype EnrolledService_EnrollmentLevel = EnrolledService_EnrollmentLevel { fromEnrolledService_EnrollmentLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value for proto, shouldn\'t be used.
pattern EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED :: EnrolledService_EnrollmentLevel
pattern EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED = EnrolledService_EnrollmentLevel "ENROLLMENT_LEVEL_UNSPECIFIED"

-- | Service is enrolled in Access Approval for all requests
pattern EnrolledService_EnrollmentLevel_BLOCKALL :: EnrolledService_EnrollmentLevel
pattern EnrolledService_EnrollmentLevel_BLOCKALL = EnrolledService_EnrollmentLevel "BLOCK_ALL"

{-# COMPLETE
  EnrolledService_EnrollmentLevel_ENROLLMENTLEVELUNSPECIFIED,
  EnrolledService_EnrollmentLevel_BLOCKALL,
  EnrolledService_EnrollmentLevel #-}
