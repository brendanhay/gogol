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
-- Module      : Gogol.AccessApproval
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for controlling access to data by Google personnel.
--
-- /See:/ <https://cloud.google.com/cloud-provider-access-management/access-approval/docs Access Approval API Reference>
module Gogol.AccessApproval
  ( -- * Configuration
    accessApprovalService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** accessapproval.folders.approvalRequests.approve
    AccessApprovalFoldersApprovalRequestsApproveResource,
    AccessApprovalFoldersApprovalRequestsApprove (..),
    newAccessApprovalFoldersApprovalRequestsApprove,

    -- ** accessapproval.folders.approvalRequests.dismiss
    AccessApprovalFoldersApprovalRequestsDismissResource,
    AccessApprovalFoldersApprovalRequestsDismiss (..),
    newAccessApprovalFoldersApprovalRequestsDismiss,

    -- ** accessapproval.folders.approvalRequests.get
    AccessApprovalFoldersApprovalRequestsGetResource,
    AccessApprovalFoldersApprovalRequestsGet (..),
    newAccessApprovalFoldersApprovalRequestsGet,

    -- ** accessapproval.folders.approvalRequests.invalidate
    AccessApprovalFoldersApprovalRequestsInvalidateResource,
    AccessApprovalFoldersApprovalRequestsInvalidate (..),
    newAccessApprovalFoldersApprovalRequestsInvalidate,

    -- ** accessapproval.folders.approvalRequests.list
    AccessApprovalFoldersApprovalRequestsListResource,
    AccessApprovalFoldersApprovalRequestsList (..),
    newAccessApprovalFoldersApprovalRequestsList,

    -- ** accessapproval.folders.deleteAccessApprovalSettings
    AccessApprovalFoldersDeleteAccessApprovalSettingsResource,
    AccessApprovalFoldersDeleteAccessApprovalSettings (..),
    newAccessApprovalFoldersDeleteAccessApprovalSettings,

    -- ** accessapproval.folders.getAccessApprovalSettings
    AccessApprovalFoldersGetAccessApprovalSettingsResource,
    AccessApprovalFoldersGetAccessApprovalSettings (..),
    newAccessApprovalFoldersGetAccessApprovalSettings,

    -- ** accessapproval.folders.getServiceAccount
    AccessApprovalFoldersGetServiceAccountResource,
    AccessApprovalFoldersGetServiceAccount (..),
    newAccessApprovalFoldersGetServiceAccount,

    -- ** accessapproval.folders.updateAccessApprovalSettings
    AccessApprovalFoldersUpdateAccessApprovalSettingsResource,
    AccessApprovalFoldersUpdateAccessApprovalSettings (..),
    newAccessApprovalFoldersUpdateAccessApprovalSettings,

    -- ** accessapproval.organizations.approvalRequests.approve
    AccessApprovalOrganizationsApprovalRequestsApproveResource,
    AccessApprovalOrganizationsApprovalRequestsApprove (..),
    newAccessApprovalOrganizationsApprovalRequestsApprove,

    -- ** accessapproval.organizations.approvalRequests.dismiss
    AccessApprovalOrganizationsApprovalRequestsDismissResource,
    AccessApprovalOrganizationsApprovalRequestsDismiss (..),
    newAccessApprovalOrganizationsApprovalRequestsDismiss,

    -- ** accessapproval.organizations.approvalRequests.get
    AccessApprovalOrganizationsApprovalRequestsGetResource,
    AccessApprovalOrganizationsApprovalRequestsGet (..),
    newAccessApprovalOrganizationsApprovalRequestsGet,

    -- ** accessapproval.organizations.approvalRequests.invalidate
    AccessApprovalOrganizationsApprovalRequestsInvalidateResource,
    AccessApprovalOrganizationsApprovalRequestsInvalidate (..),
    newAccessApprovalOrganizationsApprovalRequestsInvalidate,

    -- ** accessapproval.organizations.approvalRequests.list
    AccessApprovalOrganizationsApprovalRequestsListResource,
    AccessApprovalOrganizationsApprovalRequestsList (..),
    newAccessApprovalOrganizationsApprovalRequestsList,

    -- ** accessapproval.organizations.deleteAccessApprovalSettings
    AccessApprovalOrganizationsDeleteAccessApprovalSettingsResource,
    AccessApprovalOrganizationsDeleteAccessApprovalSettings (..),
    newAccessApprovalOrganizationsDeleteAccessApprovalSettings,

    -- ** accessapproval.organizations.getAccessApprovalSettings
    AccessApprovalOrganizationsGetAccessApprovalSettingsResource,
    AccessApprovalOrganizationsGetAccessApprovalSettings (..),
    newAccessApprovalOrganizationsGetAccessApprovalSettings,

    -- ** accessapproval.organizations.getServiceAccount
    AccessApprovalOrganizationsGetServiceAccountResource,
    AccessApprovalOrganizationsGetServiceAccount (..),
    newAccessApprovalOrganizationsGetServiceAccount,

    -- ** accessapproval.organizations.updateAccessApprovalSettings
    AccessApprovalOrganizationsUpdateAccessApprovalSettingsResource,
    AccessApprovalOrganizationsUpdateAccessApprovalSettings (..),
    newAccessApprovalOrganizationsUpdateAccessApprovalSettings,

    -- ** accessapproval.projects.approvalRequests.approve
    AccessApprovalProjectsApprovalRequestsApproveResource,
    AccessApprovalProjectsApprovalRequestsApprove (..),
    newAccessApprovalProjectsApprovalRequestsApprove,

    -- ** accessapproval.projects.approvalRequests.dismiss
    AccessApprovalProjectsApprovalRequestsDismissResource,
    AccessApprovalProjectsApprovalRequestsDismiss (..),
    newAccessApprovalProjectsApprovalRequestsDismiss,

    -- ** accessapproval.projects.approvalRequests.get
    AccessApprovalProjectsApprovalRequestsGetResource,
    AccessApprovalProjectsApprovalRequestsGet (..),
    newAccessApprovalProjectsApprovalRequestsGet,

    -- ** accessapproval.projects.approvalRequests.invalidate
    AccessApprovalProjectsApprovalRequestsInvalidateResource,
    AccessApprovalProjectsApprovalRequestsInvalidate (..),
    newAccessApprovalProjectsApprovalRequestsInvalidate,

    -- ** accessapproval.projects.approvalRequests.list
    AccessApprovalProjectsApprovalRequestsListResource,
    AccessApprovalProjectsApprovalRequestsList (..),
    newAccessApprovalProjectsApprovalRequestsList,

    -- ** accessapproval.projects.deleteAccessApprovalSettings
    AccessApprovalProjectsDeleteAccessApprovalSettingsResource,
    AccessApprovalProjectsDeleteAccessApprovalSettings (..),
    newAccessApprovalProjectsDeleteAccessApprovalSettings,

    -- ** accessapproval.projects.getAccessApprovalSettings
    AccessApprovalProjectsGetAccessApprovalSettingsResource,
    AccessApprovalProjectsGetAccessApprovalSettings (..),
    newAccessApprovalProjectsGetAccessApprovalSettings,

    -- ** accessapproval.projects.getServiceAccount
    AccessApprovalProjectsGetServiceAccountResource,
    AccessApprovalProjectsGetServiceAccount (..),
    newAccessApprovalProjectsGetServiceAccount,

    -- ** accessapproval.projects.updateAccessApprovalSettings
    AccessApprovalProjectsUpdateAccessApprovalSettingsResource,
    AccessApprovalProjectsUpdateAccessApprovalSettings (..),
    newAccessApprovalProjectsUpdateAccessApprovalSettings,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccessApprovalServiceAccount
    AccessApprovalServiceAccount (..),
    newAccessApprovalServiceAccount,

    -- ** AccessApprovalSettings
    AccessApprovalSettings (..),
    newAccessApprovalSettings,

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
  )
where

import Gogol.AccessApproval.Folders.ApprovalRequests.Approve
import Gogol.AccessApproval.Folders.ApprovalRequests.Dismiss
import Gogol.AccessApproval.Folders.ApprovalRequests.Get
import Gogol.AccessApproval.Folders.ApprovalRequests.Invalidate
import Gogol.AccessApproval.Folders.ApprovalRequests.List
import Gogol.AccessApproval.Folders.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Folders.GetAccessApprovalSettings
import Gogol.AccessApproval.Folders.GetServiceAccount
import Gogol.AccessApproval.Folders.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Organizations.ApprovalRequests.Approve
import Gogol.AccessApproval.Organizations.ApprovalRequests.Dismiss
import Gogol.AccessApproval.Organizations.ApprovalRequests.Get
import Gogol.AccessApproval.Organizations.ApprovalRequests.Invalidate
import Gogol.AccessApproval.Organizations.ApprovalRequests.List
import Gogol.AccessApproval.Organizations.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Organizations.GetAccessApprovalSettings
import Gogol.AccessApproval.Organizations.GetServiceAccount
import Gogol.AccessApproval.Organizations.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Projects.ApprovalRequests.Approve
import Gogol.AccessApproval.Projects.ApprovalRequests.Dismiss
import Gogol.AccessApproval.Projects.ApprovalRequests.Get
import Gogol.AccessApproval.Projects.ApprovalRequests.Invalidate
import Gogol.AccessApproval.Projects.ApprovalRequests.List
import Gogol.AccessApproval.Projects.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Projects.GetAccessApprovalSettings
import Gogol.AccessApproval.Projects.GetServiceAccount
import Gogol.AccessApproval.Projects.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Types
