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
    -- * REST Resources

    -- ** Google Cloud Resource Manager API
      ResourceManager
    , resourceManager
    , resourceManagerURL

    -- ** cloudresourcemanager.organizations.get
    , module Network.Google.API.Cloudresourcemanager.Organizations.Get

    -- ** cloudresourcemanager.organizations.getIamPolicy
    , module Network.Google.API.Cloudresourcemanager.Organizations.GetIAMPolicy

    -- ** cloudresourcemanager.organizations.list
    , module Network.Google.API.Cloudresourcemanager.Organizations.List

    -- ** cloudresourcemanager.organizations.setIamPolicy
    , module Network.Google.API.Cloudresourcemanager.Organizations.SetIAMPolicy

    -- ** cloudresourcemanager.organizations.testIamPermissions
    , module Network.Google.API.Cloudresourcemanager.Organizations.TestIAMPermissions

    -- ** cloudresourcemanager.organizations.update
    , module Network.Google.API.Cloudresourcemanager.Organizations.Update

    -- ** cloudresourcemanager.projects.create
    , module Network.Google.API.Cloudresourcemanager.Projects.Create

    -- ** cloudresourcemanager.projects.delete
    , module Network.Google.API.Cloudresourcemanager.Projects.Delete

    -- ** cloudresourcemanager.projects.get
    , module Network.Google.API.Cloudresourcemanager.Projects.Get

    -- ** cloudresourcemanager.projects.getIamPolicy
    , module Network.Google.API.Cloudresourcemanager.Projects.GetIAMPolicy

    -- ** cloudresourcemanager.projects.list
    , module Network.Google.API.Cloudresourcemanager.Projects.List

    -- ** cloudresourcemanager.projects.setIamPolicy
    , module Network.Google.API.Cloudresourcemanager.Projects.SetIAMPolicy

    -- ** cloudresourcemanager.projects.testIamPermissions
    , module Network.Google.API.Cloudresourcemanager.Projects.TestIAMPermissions

    -- ** cloudresourcemanager.projects.undelete
    , module Network.Google.API.Cloudresourcemanager.Projects.Undelete

    -- ** cloudresourcemanager.projects.update
    , module Network.Google.API.Cloudresourcemanager.Projects.Update

    -- * Types

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest
    , getIamPolicyRequest

    -- ** OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions

    -- ** Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- ** ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

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

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- ** Empty
    , Empty
    , empty

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

    -- ** ProjectLabels
    , ProjectLabels
    , projectLabels
    ) where

import           Network.Google.API.Cloudresourcemanager.Organizations.Get
import           Network.Google.API.Cloudresourcemanager.Organizations.GetIAMPolicy
import           Network.Google.API.Cloudresourcemanager.Organizations.List
import           Network.Google.API.Cloudresourcemanager.Organizations.SetIAMPolicy
import           Network.Google.API.Cloudresourcemanager.Organizations.TestIAMPermissions
import           Network.Google.API.Cloudresourcemanager.Organizations.Update
import           Network.Google.API.Cloudresourcemanager.Projects.Create
import           Network.Google.API.Cloudresourcemanager.Projects.Delete
import           Network.Google.API.Cloudresourcemanager.Projects.Get
import           Network.Google.API.Cloudresourcemanager.Projects.GetIAMPolicy
import           Network.Google.API.Cloudresourcemanager.Projects.List
import           Network.Google.API.Cloudresourcemanager.Projects.SetIAMPolicy
import           Network.Google.API.Cloudresourcemanager.Projects.TestIAMPermissions
import           Network.Google.API.Cloudresourcemanager.Projects.Undelete
import           Network.Google.API.Cloudresourcemanager.Projects.Update
import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

{- $resources
TODO
-}

type ResourceManager =
     OrganizationsListAPI :<|> ProjectsGetIAMPolicyAPI
       :<|> OrganizationsUpdateAPI
       :<|> ProjectsListAPI
       :<|> ProjectsGetAPI
       :<|> ProjectsTestIAMPermissionsAPI
       :<|> OrganizationsGetIAMPolicyAPI
       :<|> ProjectsDeleteAPI
       :<|> ProjectsCreateAPI
       :<|> ProjectsUndeleteAPI
       :<|> OrganizationsTestIAMPermissionsAPI
       :<|> OrganizationsSetIAMPolicyAPI
       :<|> OrganizationsGetAPI
       :<|> ProjectsSetIAMPolicyAPI
       :<|> ProjectsUpdateAPI

resourceManager :: Proxy ResourceManager
resourceManager = Proxy
