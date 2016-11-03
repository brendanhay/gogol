{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ResourceManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Resource Manager API provides methods for creating,
-- reading, and updating project metadata.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference>
module Network.Google.ResourceManager
    (
    -- * Service Configuration
      resourceManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , ResourceManagerAPI

    -- * Resources

    -- ** cloudresourcemanager.operations.get
    , module Network.Google.Resource.CloudResourceManager.Operations.Get

    -- ** cloudresourcemanager.organizations.get
    , module Network.Google.Resource.CloudResourceManager.Organizations.Get

    -- ** cloudresourcemanager.organizations.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy

    -- ** cloudresourcemanager.organizations.search
    , module Network.Google.Resource.CloudResourceManager.Organizations.Search

    -- ** cloudresourcemanager.organizations.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy

    -- ** cloudresourcemanager.organizations.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions

    -- ** cloudresourcemanager.projects.create
    , module Network.Google.Resource.CloudResourceManager.Projects.Create

    -- ** cloudresourcemanager.projects.delete
    , module Network.Google.Resource.CloudResourceManager.Projects.Delete

    -- ** cloudresourcemanager.projects.get
    , module Network.Google.Resource.CloudResourceManager.Projects.Get

    -- ** cloudresourcemanager.projects.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy

    -- ** cloudresourcemanager.projects.list
    , module Network.Google.Resource.CloudResourceManager.Projects.List

    -- ** cloudresourcemanager.projects.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy

    -- ** cloudresourcemanager.projects.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions

    -- ** cloudresourcemanager.projects.undelete
    , module Network.Google.Resource.CloudResourceManager.Projects.Undelete

    -- ** cloudresourcemanager.projects.update
    , module Network.Google.Resource.CloudResourceManager.Projects.Update

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** SearchOrganizationsRequest
    , SearchOrganizationsRequest
    , searchOrganizationsRequest
    , sorFilter
    , sorPageToken
    , sorPageSize

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- ** ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- ** Project
    , Project
    , project
    , pParent
    , pProjectNumber
    , pName
    , pLabels
    , pProjectId
    , pLifecycleState
    , pCreateTime

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** SearchOrganizationsResponse
    , SearchOrganizationsResponse
    , searchOrganizationsResponse
    , sorNextPageToken
    , sorOrganizations

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** ProjectLabels
    , ProjectLabels
    , projectLabels
    , plAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** FolderOperation
    , FolderOperation
    , folderOperation
    , foDestinationParent
    , foDisplayName
    , foOperationType
    , foSourceParent

    -- ** Organization
    , Organization
    , organization
    , orgCreationTime
    , orgOwner
    , orgName
    , orgDisplayName
    , orgLifecycleState

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** UndeleteProjectRequest
    , UndeleteProjectRequest
    , undeleteProjectRequest

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.CloudResourceManager.Operations.Get
import           Network.Google.Resource.CloudResourceManager.Organizations.Get
import           Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Organizations.Search
import           Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
import           Network.Google.Resource.CloudResourceManager.Projects.Create
import           Network.Google.Resource.CloudResourceManager.Projects.Delete
import           Network.Google.Resource.CloudResourceManager.Projects.Get
import           Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Projects.List
import           Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions
import           Network.Google.Resource.CloudResourceManager.Projects.Undelete
import           Network.Google.Resource.CloudResourceManager.Projects.Update
import           Network.Google.ResourceManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Resource Manager API service.
type ResourceManagerAPI =
     OrganizationsGetIAMPolicyResource :<|>
       OrganizationsGetResource
       :<|> OrganizationsSetIAMPolicyResource
       :<|> OrganizationsTestIAMPermissionsResource
       :<|> OrganizationsSearchResource
       :<|> OperationsGetResource
       :<|> ProjectsListResource
       :<|> ProjectsUndeleteResource
       :<|> ProjectsGetIAMPolicyResource
       :<|> ProjectsGetResource
       :<|> ProjectsCreateResource
       :<|> ProjectsSetIAMPolicyResource
       :<|> ProjectsTestIAMPermissionsResource
       :<|> ProjectsDeleteResource
       :<|> ProjectsUpdateResource
