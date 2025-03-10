{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.AccessApproval.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AccessApproval.Types
  ( -- * Configuration
    accessApprovalService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessApprovalServiceAccount
    AccessApprovalServiceAccount (..),
    newAccessApprovalServiceAccount,

    -- ** AccessApprovalSettings
    AccessApprovalSettings (..),
    newAccessApprovalSettings,

    -- ** AccessApprovalSettings_RequestScopeMaxWidthPreference
    AccessApprovalSettings_RequestScopeMaxWidthPreference (..),

    -- ** AccessLocations
    AccessLocations (..),
    newAccessLocations,

    -- ** AccessReason
    AccessReason (..),
    newAccessReason,

    -- ** AccessReason_Type
    AccessReason_Type (..),

    -- ** ApprovalRequest
    ApprovalRequest (..),
    newApprovalRequest,

    -- ** ApproveApprovalRequestMessage
    ApproveApprovalRequestMessage (..),
    newApproveApprovalRequestMessage,

    -- ** ApproveDecision
    ApproveDecision (..),
    newApproveDecision,

    -- ** AugmentedInfo
    AugmentedInfo (..),
    newAugmentedInfo,

    -- ** DismissApprovalRequestMessage
    DismissApprovalRequestMessage (..),
    newDismissApprovalRequestMessage,

    -- ** DismissDecision
    DismissDecision (..),
    newDismissDecision,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EnrolledService
    EnrolledService (..),
    newEnrolledService,

    -- ** EnrolledService_EnrollmentLevel
    EnrolledService_EnrollmentLevel (..),

    -- ** InvalidateApprovalRequestMessage
    InvalidateApprovalRequestMessage (..),
    newInvalidateApprovalRequestMessage,

    -- ** ListApprovalRequestsResponse
    ListApprovalRequestsResponse (..),
    newListApprovalRequestsResponse,

    -- ** ResourceProperties
    ResourceProperties (..),
    newResourceProperties,

    -- ** SignatureInfo
    SignatureInfo (..),
    newSignatureInfo,

    -- ** SignatureInfo_GoogleKeyAlgorithm
    SignatureInfo_GoogleKeyAlgorithm (..),
  )
where

import Gogol.AccessApproval.Internal.Product
import Gogol.AccessApproval.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Access Approval API. This contains the host and root path used as a starting point for constructing service requests.
accessApprovalService :: Core.ServiceConfig
accessApprovalService =
  Core.defaultService
    (Core.ServiceId "accessapproval:v1")
    "accessapproval.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
