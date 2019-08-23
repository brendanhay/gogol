{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessApproval.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessApproval.Types
    (
    -- * Service Configuration
      accessApprovalService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ListApprovalRequestsResponse
    , ListApprovalRequestsResponse
    , listApprovalRequestsResponse
    , larrNextPageToken
    , larrApprovalRequests

    -- * ApproveDecision
    , ApproveDecision
    , approveDecision
    , adApproveTime
    , adExpireTime

    -- * AccessLocations
    , AccessLocations
    , accessLocations
    , alPrincipalOfficeCountry
    , alPrincipalPhysicalLocationCountry

    -- * DismissDecision
    , DismissDecision
    , dismissDecision
    , ddDismissTime

    -- * AccessReasonType
    , AccessReasonType (..)

    -- * AccessApprovalSettings
    , AccessApprovalSettings
    , accessApprovalSettings
    , aasName
    , aasNotificationEmails

    -- * ApprovalRequest
    , ApprovalRequest
    , approvalRequest
    , arRequestedResourceName
    , arRequestedExpiration
    , arRequestTime
    , arRequestedReason
    , arName
    , arApprove
    , arDismiss
    , arRequestedLocations

    -- * DismissApprovalRequestMessage
    , DismissApprovalRequestMessage
    , dismissApprovalRequestMessage

    -- * Xgafv
    , Xgafv (..)

    -- * ApproveApprovalRequestMessage
    , ApproveApprovalRequestMessage
    , approveApprovalRequestMessage
    , aarmExpireTime

    -- * AccessReason
    , AccessReason
    , accessReason
    , arType
    , arDetail
    ) where

import           Network.Google.AccessApproval.Types.Product
import           Network.Google.AccessApproval.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Access Approval API. This contains the host and root path used as a starting point for constructing service requests.
accessApprovalService :: ServiceConfig
accessApprovalService
  = defaultService (ServiceId "accessapproval:v1beta1")
      "accessapproval.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
