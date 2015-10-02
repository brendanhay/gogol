{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

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
-- -- | The Google Cloud Resource Manager API provides methods for creating,
-- reading, and updating of project metadata.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference>
module Network.Google.ResourceManager
    (
    -- * API
      ResourceManagerAPI
    , resourceManagerAPI
    , resourceManagerURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudResourceManagerOrganizationsGet
    , module Network.Google.Resource.CloudResourceManager.Organizations.Get

    -- ** CloudResourceManagerOrganizationsGetIAMPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy

    -- ** CloudResourceManagerOrganizationsList
    , module Network.Google.Resource.CloudResourceManager.Organizations.List

    -- ** CloudResourceManagerOrganizationsSetIAMPolicy
    , module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy

    -- ** CloudResourceManagerOrganizationsTestIAMPermissions
    , module Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions

    -- ** CloudResourceManagerOrganizationsUpdate
    , module Network.Google.Resource.CloudResourceManager.Organizations.Update

    -- ** CloudResourceManagerProjectsCreate
    , module Network.Google.Resource.CloudResourceManager.Projects.Create

    -- ** CloudResourceManagerProjectsDelete
    , module Network.Google.Resource.CloudResourceManager.Projects.Delete

    -- ** CloudResourceManagerProjectsGet
    , module Network.Google.Resource.CloudResourceManager.Projects.Get

    -- ** CloudResourceManagerProjectsGetIAMPolicy
    , module Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy

    -- ** CloudResourceManagerProjectsList
    , module Network.Google.Resource.CloudResourceManager.Projects.List

    -- ** CloudResourceManagerProjectsSetIAMPolicy
    , module Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy

    -- ** CloudResourceManagerProjectsTestIAMPermissions
    , module Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions

    -- ** CloudResourceManagerProjectsUndelete
    , module Network.Google.Resource.CloudResourceManager.Projects.Undelete

    -- ** CloudResourceManagerProjectsUpdate
    , module Network.Google.Resource.CloudResourceManager.Projects.Update

    -- * Types

    -- ** ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

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

    -- ** ProjectLabels
    , ProjectLabels
    , projectLabels

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

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

resourceManagerAPI :: Proxy ResourceManagerAPI
resourceManagerAPI = Proxy
