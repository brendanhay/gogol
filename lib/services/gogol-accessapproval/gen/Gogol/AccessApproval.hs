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
    newAccessApprovalFoldersApprovalRequestsApprove,
    AccessApprovalFoldersApprovalRequestsApprove,

    -- ** accessapproval.folders.approvalRequests.dismiss
    AccessApprovalFoldersApprovalRequestsDismissResource,
    newAccessApprovalFoldersApprovalRequestsDismiss,
    AccessApprovalFoldersApprovalRequestsDismiss,

    -- ** accessapproval.folders.approvalRequests.get
    AccessApprovalFoldersApprovalRequestsGetResource,
    newAccessApprovalFoldersApprovalRequestsGet,
    AccessApprovalFoldersApprovalRequestsGet,

    -- ** accessapproval.folders.approvalRequests.list
    AccessApprovalFoldersApprovalRequestsListResource,
    newAccessApprovalFoldersApprovalRequestsList,
    AccessApprovalFoldersApprovalRequestsList,

    -- ** accessapproval.folders.deleteAccessApprovalSettings
    AccessApprovalFoldersDeleteAccessApprovalSettingsResource,
    newAccessApprovalFoldersDeleteAccessApprovalSettings,
    AccessApprovalFoldersDeleteAccessApprovalSettings,

    -- ** accessapproval.folders.getAccessApprovalSettings
    AccessApprovalFoldersGetAccessApprovalSettingsResource,
    newAccessApprovalFoldersGetAccessApprovalSettings,
    AccessApprovalFoldersGetAccessApprovalSettings,

    -- ** accessapproval.folders.getServiceAccount
    AccessApprovalFoldersGetServiceAccountResource,
    newAccessApprovalFoldersGetServiceAccount,
    AccessApprovalFoldersGetServiceAccount,

    -- ** accessapproval.folders.updateAccessApprovalSettings
    AccessApprovalFoldersUpdateAccessApprovalSettingsResource,
    newAccessApprovalFoldersUpdateAccessApprovalSettings,
    AccessApprovalFoldersUpdateAccessApprovalSettings,

    -- ** accessapproval.organizations.approvalRequests.approve
    AccessApprovalOrganizationsApprovalRequestsApproveResource,
    newAccessApprovalOrganizationsApprovalRequestsApprove,
    AccessApprovalOrganizationsApprovalRequestsApprove,

    -- ** accessapproval.organizations.approvalRequests.dismiss
    AccessApprovalOrganizationsApprovalRequestsDismissResource,
    newAccessApprovalOrganizationsApprovalRequestsDismiss,
    AccessApprovalOrganizationsApprovalRequestsDismiss,

    -- ** accessapproval.organizations.approvalRequests.get
    AccessApprovalOrganizationsApprovalRequestsGetResource,
    newAccessApprovalOrganizationsApprovalRequestsGet,
    AccessApprovalOrganizationsApprovalRequestsGet,

    -- ** accessapproval.organizations.approvalRequests.list
    AccessApprovalOrganizationsApprovalRequestsListResource,
    newAccessApprovalOrganizationsApprovalRequestsList,
    AccessApprovalOrganizationsApprovalRequestsList,

    -- ** accessapproval.organizations.deleteAccessApprovalSettings
    AccessApprovalOrganizationsDeleteAccessApprovalSettingsResource,
    newAccessApprovalOrganizationsDeleteAccessApprovalSettings,
    AccessApprovalOrganizationsDeleteAccessApprovalSettings,

    -- ** accessapproval.organizations.getAccessApprovalSettings
    AccessApprovalOrganizationsGetAccessApprovalSettingsResource,
    newAccessApprovalOrganizationsGetAccessApprovalSettings,
    AccessApprovalOrganizationsGetAccessApprovalSettings,

    -- ** accessapproval.organizations.getServiceAccount
    AccessApprovalOrganizationsGetServiceAccountResource,
    newAccessApprovalOrganizationsGetServiceAccount,
    AccessApprovalOrganizationsGetServiceAccount,

    -- ** accessapproval.organizations.updateAccessApprovalSettings
    AccessApprovalOrganizationsUpdateAccessApprovalSettingsResource,
    newAccessApprovalOrganizationsUpdateAccessApprovalSettings,
    AccessApprovalOrganizationsUpdateAccessApprovalSettings,

    -- ** accessapproval.projects.approvalRequests.approve
    AccessApprovalProjectsApprovalRequestsApproveResource,
    newAccessApprovalProjectsApprovalRequestsApprove,
    AccessApprovalProjectsApprovalRequestsApprove,

    -- ** accessapproval.projects.approvalRequests.dismiss
    AccessApprovalProjectsApprovalRequestsDismissResource,
    newAccessApprovalProjectsApprovalRequestsDismiss,
    AccessApprovalProjectsApprovalRequestsDismiss,

    -- ** accessapproval.projects.approvalRequests.get
    AccessApprovalProjectsApprovalRequestsGetResource,
    newAccessApprovalProjectsApprovalRequestsGet,
    AccessApprovalProjectsApprovalRequestsGet,

    -- ** accessapproval.projects.approvalRequests.list
    AccessApprovalProjectsApprovalRequestsListResource,
    newAccessApprovalProjectsApprovalRequestsList,
    AccessApprovalProjectsApprovalRequestsList,

    -- ** accessapproval.projects.deleteAccessApprovalSettings
    AccessApprovalProjectsDeleteAccessApprovalSettingsResource,
    newAccessApprovalProjectsDeleteAccessApprovalSettings,
    AccessApprovalProjectsDeleteAccessApprovalSettings,

    -- ** accessapproval.projects.getAccessApprovalSettings
    AccessApprovalProjectsGetAccessApprovalSettingsResource,
    newAccessApprovalProjectsGetAccessApprovalSettings,
    AccessApprovalProjectsGetAccessApprovalSettings,

    -- ** accessapproval.projects.getServiceAccount
    AccessApprovalProjectsGetServiceAccountResource,
    newAccessApprovalProjectsGetServiceAccount,
    AccessApprovalProjectsGetServiceAccount,

    -- ** accessapproval.projects.updateAccessApprovalSettings
    AccessApprovalProjectsUpdateAccessApprovalSettingsResource,
    newAccessApprovalProjectsUpdateAccessApprovalSettings,
    AccessApprovalProjectsUpdateAccessApprovalSettings,

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
import Gogol.AccessApproval.Folders.ApprovalRequests.List
import Gogol.AccessApproval.Folders.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Folders.GetAccessApprovalSettings
import Gogol.AccessApproval.Folders.GetServiceAccount
import Gogol.AccessApproval.Folders.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Organizations.ApprovalRequests.Approve
import Gogol.AccessApproval.Organizations.ApprovalRequests.Dismiss
import Gogol.AccessApproval.Organizations.ApprovalRequests.Get
import Gogol.AccessApproval.Organizations.ApprovalRequests.List
import Gogol.AccessApproval.Organizations.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Organizations.GetAccessApprovalSettings
import Gogol.AccessApproval.Organizations.GetServiceAccount
import Gogol.AccessApproval.Organizations.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Projects.ApprovalRequests.Approve
import Gogol.AccessApproval.Projects.ApprovalRequests.Dismiss
import Gogol.AccessApproval.Projects.ApprovalRequests.Get
import Gogol.AccessApproval.Projects.ApprovalRequests.List
import Gogol.AccessApproval.Projects.DeleteAccessApprovalSettings
import Gogol.AccessApproval.Projects.GetAccessApprovalSettings
import Gogol.AccessApproval.Projects.GetServiceAccount
import Gogol.AccessApproval.Projects.UpdateAccessApprovalSettings
import Gogol.AccessApproval.Types
