{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ResourceManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Resource Manager API provides methods for creating,
-- reading, and updating of project metadata.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference>
module Network.Google.ResourceManager
    (
    -- * Service Configuration
      resourceManagerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ResourceManagerAPI

    -- * Resources

    -- ** cloudresourcemanager.organizations.get
    , module Network.Google.Resource.CloudResourceManager.Organizations.Get

    -- ** cloudresourcemanager.organizations.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy

    -- ** cloudresourcemanager.organizations.list
    , module Network.Google.Resource.CloudResourceManager.Organizations.List

    -- ** cloudresourcemanager.organizations.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy

    -- ** cloudresourcemanager.organizations.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions

    -- ** cloudresourcemanager.organizations.update
    , module Network.Google.Resource.CloudResourceManager.Organizations.Update

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

    -- ** Empty
    , Empty
    , empty

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

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

    -- ** Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.CloudResourceManager.Organizations.Get
import           Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Organizations.List
import           Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
import           Network.Google.Resource.CloudResourceManager.Organizations.Update
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
     OrganizationsListResource :<|>
       OrganizationsGetIAMPolicyResource
       :<|> OrganizationsGetResource
       :<|> OrganizationsSetIAMPolicyResource
       :<|> OrganizationsTestIAMPermissionsResource
       :<|> OrganizationsUpdateResource
       :<|> ProjectsListResource
       :<|> ProjectsUndeleteResource
       :<|> ProjectsGetIAMPolicyResource
       :<|> ProjectsGetResource
       :<|> ProjectsCreateResource
       :<|> ProjectsSetIAMPolicyResource
       :<|> ProjectsTestIAMPermissionsResource
       :<|> ProjectsDeleteResource
       :<|> ProjectsUpdateResource
