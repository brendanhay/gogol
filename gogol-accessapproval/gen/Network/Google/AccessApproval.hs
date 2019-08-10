{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AccessApproval
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for controlling access to data by Google personnel.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference>
module Network.Google.AccessApproval
    (
    -- * Service Configuration
      accessApprovalService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , AccessApprovalAPI

    -- * Resources

    -- ** accessapproval.folders.approvalRequests.approve
    , module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Approve

    -- ** accessapproval.folders.approvalRequests.dismiss
    , module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Dismiss

    -- ** accessapproval.folders.approvalRequests.get
    , module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Get

    -- ** accessapproval.folders.approvalRequests.list
    , module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.List

    -- ** accessapproval.folders.getAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Folders.GetAccessApprovalSettings

    -- ** accessapproval.folders.updateAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Folders.UpdateAccessApprovalSettings

    -- ** accessapproval.organizations.approvalRequests.approve
    , module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Approve

    -- ** accessapproval.organizations.approvalRequests.dismiss
    , module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Dismiss

    -- ** accessapproval.organizations.approvalRequests.get
    , module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Get

    -- ** accessapproval.organizations.approvalRequests.list
    , module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.List

    -- ** accessapproval.organizations.getAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Organizations.GetAccessApprovalSettings

    -- ** accessapproval.organizations.updateAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Organizations.UpdateAccessApprovalSettings

    -- ** accessapproval.projects.approvalRequests.approve
    , module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Approve

    -- ** accessapproval.projects.approvalRequests.dismiss
    , module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Dismiss

    -- ** accessapproval.projects.approvalRequests.get
    , module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Get

    -- ** accessapproval.projects.approvalRequests.list
    , module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.List

    -- ** accessapproval.projects.getAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Projects.GetAccessApprovalSettings

    -- ** accessapproval.projects.updateAccessApprovalSettings
    , module Network.Google.Resource.AccessApproval.Projects.UpdateAccessApprovalSettings

    -- * Types

    -- ** ListApprovalRequestsResponse
    , ListApprovalRequestsResponse
    , listApprovalRequestsResponse
    , larrNextPageToken
    , larrApprovalRequests

    -- ** ApproveDecision
    , ApproveDecision
    , approveDecision
    , adApproveTime
    , adExpireTime

    -- ** AccessLocations
    , AccessLocations
    , accessLocations
    , alPrincipalOfficeCountry
    , alPrincipalPhysicalLocationCountry

    -- ** DismissDecision
    , DismissDecision
    , dismissDecision
    , ddDismissTime

    -- ** AccessReasonType
    , AccessReasonType (..)

    -- ** AccessApprovalSettings
    , AccessApprovalSettings
    , accessApprovalSettings
    , aasName
    , aasNotificationEmails

    -- ** ApprovalRequest
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

    -- ** DismissApprovalRequestMessage
    , DismissApprovalRequestMessage
    , dismissApprovalRequestMessage

    -- ** Xgafv
    , Xgafv (..)

    -- ** ApproveApprovalRequestMessage
    , ApproveApprovalRequestMessage
    , approveApprovalRequestMessage
    , aarmExpireTime

    -- ** AccessReason
    , AccessReason
    , accessReason
    , arType
    , arDetail
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Approve
import           Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Dismiss
import           Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Get
import           Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.List
import           Network.Google.Resource.AccessApproval.Folders.GetAccessApprovalSettings
import           Network.Google.Resource.AccessApproval.Folders.UpdateAccessApprovalSettings
import           Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Approve
import           Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Dismiss
import           Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Get
import           Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.List
import           Network.Google.Resource.AccessApproval.Organizations.GetAccessApprovalSettings
import           Network.Google.Resource.AccessApproval.Organizations.UpdateAccessApprovalSettings
import           Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Approve
import           Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Dismiss
import           Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Get
import           Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.List
import           Network.Google.Resource.AccessApproval.Projects.GetAccessApprovalSettings
import           Network.Google.Resource.AccessApproval.Projects.UpdateAccessApprovalSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Access Approval API service.
type AccessApprovalAPI =
     FoldersApprovalRequestsListResource :<|>
       FoldersApprovalRequestsGetResource
       :<|> FoldersApprovalRequestsApproveResource
       :<|> FoldersApprovalRequestsDismissResource
       :<|> FoldersUpdateAccessApprovalSettingsResource
       :<|> FoldersGetAccessApprovalSettingsResource
       :<|> OrganizationsApprovalRequestsListResource
       :<|> OrganizationsApprovalRequestsGetResource
       :<|> OrganizationsApprovalRequestsApproveResource
       :<|> OrganizationsApprovalRequestsDismissResource
       :<|>
       OrganizationsUpdateAccessApprovalSettingsResource
       :<|> OrganizationsGetAccessApprovalSettingsResource
       :<|> ProjectsApprovalRequestsListResource
       :<|> ProjectsApprovalRequestsGetResource
       :<|> ProjectsApprovalRequestsApproveResource
       :<|> ProjectsApprovalRequestsDismissResource
       :<|> ProjectsUpdateAccessApprovalSettingsResource
       :<|> ProjectsGetAccessApprovalSettingsResource
