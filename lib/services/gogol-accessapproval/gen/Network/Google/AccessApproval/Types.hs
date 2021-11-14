{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessApproval.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , ddImplicit
    , ddDismissTime

    -- * Empty
    , Empty
    , empty

    -- * EnrolledServiceEnrollmentLevel
    , EnrolledServiceEnrollmentLevel (..)

    -- * AccessReasonType
    , AccessReasonType (..)

    -- * ResourceProperties
    , ResourceProperties
    , resourceProperties
    , rpExcludesDescendants

    -- * AccessApprovalSettings
    , AccessApprovalSettings
    , accessApprovalSettings
    , aasEnrolledServices
    , aasEnrolledAncestor
    , aasName
    , aasNotificationEmails

    -- * ApprovalRequest
    , ApprovalRequest
    , approvalRequest
    , arRequestedResourceName
    , arRequestedResourceProperties
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

    -- * EnrolledService
    , EnrolledService
    , enrolledService
    , esCloudProduct
    , esEnrollmentLevel

    -- * AccessReason
    , AccessReason
    , accessReason
    , arType
    , arDetail
    ) where

import Network.Google.AccessApproval.Types.Product
import Network.Google.AccessApproval.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Access Approval API. This contains the host and root path used as a starting point for constructing service requests.
accessApprovalService :: ServiceConfig
accessApprovalService
  = defaultService (ServiceId "accessapproval:v1")
      "accessapproval.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
