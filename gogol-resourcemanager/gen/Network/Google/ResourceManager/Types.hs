{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types
    (
    -- * Service Configuration
      resourceManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * SearchOrganizationsRequest
    , SearchOrganizationsRequest
    , searchOrganizationsRequest
    , sorFilter
    , sorPageToken
    , sorPageSize

    -- * ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- * ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- * OrganizationLifecycleState
    , OrganizationLifecycleState (..)

    -- * Project
    , Project
    , project
    , pParent
    , pProjectNumber
    , pName
    , pLabels
    , pProjectId
    , pLifecycleState
    , pCreateTime

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * FolderOperationErrorErrorMessageId
    , FolderOperationErrorErrorMessageId (..)

    -- * ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- * FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * ProjectLifecycleState
    , ProjectLifecycleState (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * GetAncestryRequest
    , GetAncestryRequest
    , getAncestryRequest

    -- * SearchOrganizationsResponse
    , SearchOrganizationsResponse
    , searchOrganizationsResponse
    , sorNextPageToken
    , sorOrganizations

    -- * GetAncestryResponse
    , GetAncestryResponse
    , getAncestryResponse
    , garAncestor

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * ProjectLabels
    , ProjectLabels
    , projectLabels
    , plAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * FolderOperation
    , FolderOperation
    , folderOperation
    , foDestinationParent
    , foDisplayName
    , foOperationType
    , foSourceParent

    -- * Organization
    , Organization
    , organization
    , orgCreationTime
    , orgOwner
    , orgName
    , orgDisplayName
    , orgLifecycleState

    -- * Ancestor
    , Ancestor
    , ancestor
    , aResourceId

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * UndeleteProjectRequest
    , UndeleteProjectRequest
    , undeleteProjectRequest

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Product
import           Network.Google.ResourceManager.Types.Sum

-- | Default request referring to version 'v1' of the Google Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerService :: ServiceConfig
resourceManagerService
  = defaultService
      (ServiceId "cloudresourcemanager:v1")
      "cloudresourcemanager.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
