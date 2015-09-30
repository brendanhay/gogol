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

    -- ** CloudresourcemanagerOrganizationsGet
    , module Cloudresourcemanager.Organizations.Get

    -- ** CloudresourcemanagerOrganizationsGetIAMPolicy
    , module Cloudresourcemanager.Organizations.GetIAMPolicy

    -- ** CloudresourcemanagerOrganizationsList
    , module Cloudresourcemanager.Organizations.List

    -- ** CloudresourcemanagerOrganizationsSetIAMPolicy
    , module Cloudresourcemanager.Organizations.SetIAMPolicy

    -- ** CloudresourcemanagerOrganizationsTestIAMPermissions
    , module Cloudresourcemanager.Organizations.TestIAMPermissions

    -- ** CloudresourcemanagerOrganizationsUpdate
    , module Cloudresourcemanager.Organizations.Update

    -- ** CloudresourcemanagerProjectsCreate
    , module Cloudresourcemanager.Projects.Create

    -- ** CloudresourcemanagerProjectsDelete
    , module Cloudresourcemanager.Projects.Delete

    -- ** CloudresourcemanagerProjectsGet
    , module Cloudresourcemanager.Projects.Get

    -- ** CloudresourcemanagerProjectsGetIAMPolicy
    , module Cloudresourcemanager.Projects.GetIAMPolicy

    -- ** CloudresourcemanagerProjectsList
    , module Cloudresourcemanager.Projects.List

    -- ** CloudresourcemanagerProjectsSetIAMPolicy
    , module Cloudresourcemanager.Projects.SetIAMPolicy

    -- ** CloudresourcemanagerProjectsTestIAMPermissions
    , module Cloudresourcemanager.Projects.TestIAMPermissions

    -- ** CloudresourcemanagerProjectsUndelete
    , module Cloudresourcemanager.Projects.Undelete

    -- ** CloudresourcemanagerProjectsUpdate
    , module Cloudresourcemanager.Projects.Update

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
import           Network.Google.Resource.Cloudresourcemanager.Organizations.Get
import           Network.Google.Resource.Cloudresourcemanager.Organizations.GetIAMPolicy
import           Network.Google.Resource.Cloudresourcemanager.Organizations.List
import           Network.Google.Resource.Cloudresourcemanager.Organizations.SetIAMPolicy
import           Network.Google.Resource.Cloudresourcemanager.Organizations.TestIAMPermissions
import           Network.Google.Resource.Cloudresourcemanager.Organizations.Update
import           Network.Google.Resource.Cloudresourcemanager.Projects.Create
import           Network.Google.Resource.Cloudresourcemanager.Projects.Delete
import           Network.Google.Resource.Cloudresourcemanager.Projects.Get
import           Network.Google.Resource.Cloudresourcemanager.Projects.GetIAMPolicy
import           Network.Google.Resource.Cloudresourcemanager.Projects.List
import           Network.Google.Resource.Cloudresourcemanager.Projects.SetIAMPolicy
import           Network.Google.Resource.Cloudresourcemanager.Projects.TestIAMPermissions
import           Network.Google.Resource.Cloudresourcemanager.Projects.Undelete
import           Network.Google.Resource.Cloudresourcemanager.Projects.Update
import           Network.Google.ResourceManager.Types

{- $resources
TODO
-}

type ResourceManagerAPI = Organizations :<|> Projects

resourceManagerAPI :: Proxy ResourceManagerAPI
resourceManagerAPI = Proxy
