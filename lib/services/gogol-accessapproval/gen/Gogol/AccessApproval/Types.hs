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
-- Module      : Gogol.AccessApproval.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AccessApproval.Types
    (
    -- * Configuration
      accessApprovalService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AccessApprovalServiceAccount
    , AccessApprovalServiceAccount (..)
    , newAccessApprovalServiceAccount

    -- ** AccessApprovalSettings
    , AccessApprovalSettings (..)
    , newAccessApprovalSettings

    -- ** AccessLocations
    , AccessLocations (..)
    , newAccessLocations

    -- ** AccessReason
    , AccessReason (..)
    , newAccessReason

    -- ** AccessReason_Type
    , AccessReason_Type (..)

    -- ** ApprovalRequest
    , ApprovalRequest (..)
    , newApprovalRequest

    -- ** ApproveApprovalRequestMessage
    , ApproveApprovalRequestMessage (..)
    , newApproveApprovalRequestMessage

    -- ** ApproveDecision
    , ApproveDecision (..)
    , newApproveDecision

    -- ** DismissApprovalRequestMessage
    , DismissApprovalRequestMessage (..)
    , newDismissApprovalRequestMessage

    -- ** DismissDecision
    , DismissDecision (..)
    , newDismissDecision

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** EnrolledService
    , EnrolledService (..)
    , newEnrolledService

    -- ** EnrolledService_EnrollmentLevel
    , EnrolledService_EnrollmentLevel (..)

    -- ** ListApprovalRequestsResponse
    , ListApprovalRequestsResponse (..)
    , newListApprovalRequestsResponse

    -- ** ResourceProperties
    , ResourceProperties (..)
    , newResourceProperties

    -- ** SignatureInfo
    , SignatureInfo (..)
    , newSignatureInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessApproval.Internal.Product
import Gogol.AccessApproval.Internal.Sum

-- | Default request referring to version @v1@ of the Access Approval API. This contains the host and root path used as a starting point for constructing service requests.
accessApprovalService :: Core.ServiceConfig
accessApprovalService
  = Core.defaultService
      (Core.ServiceId "accessapproval:v1")
      "accessapproval.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
