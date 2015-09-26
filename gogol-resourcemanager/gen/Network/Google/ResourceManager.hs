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
    -- * Resources
      ResourceManager
    , OrganizationsAPI
    , OrganizationsList
    , OrganizationsGetIamPolicy
    , OrganizationsGet
    , OrganizationsSetIamPolicy
    , OrganizationsTestIamPermissions
    , OrganizationsUpdate
    , ProjectsAPI
    , ProjectsList
    , ProjectsUndelete
    , ProjectsGetIamPolicy
    , ProjectsGet
    , ProjectsCreate
    , ProjectsSetIamPolicy
    , ProjectsTestIamPermissions
    , ProjectsDelete
    , ProjectsUpdate

    -- * Types

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole

    -- ** Empty
    , Empty
    , empty

    -- ** GetIamPolicyRequest
    , GetIamPolicyRequest
    , getIamPolicyRequest

    -- ** ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations

    -- ** ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- ** Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

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

    -- ** ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

{- $resources
TODO
-}

type ResourceManager =
     OrganizationsAPI :<|> ProjectsAPI

type OrganizationsAPI =
     OrganizationsList :<|> OrganizationsGetIamPolicy :<|>
       OrganizationsGet
       :<|> OrganizationsSetIamPolicy
       :<|> OrganizationsTestIamPermissions
       :<|> OrganizationsUpdate

-- | Query Organization resources.
type OrganizationsList =
     "v1beta1" :> "organizations" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets the access control policy for a Organization resource. May be empty
-- if no such policy or resource exists.
type OrganizationsGetIamPolicy =
     "v1beta1" :> "organizations" :>
       "{resource}:getIamPolicy"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Fetches an Organization resource by id.
type OrganizationsGet =
     "v1beta1" :> "organizations" :>
       Capture "organizationId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
type OrganizationsSetIamPolicy =
     "v1beta1" :> "organizations" :>
       "{resource}:setIamPolicy"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Returns permissions that a caller has on the specified Organization.
type OrganizationsTestIamPermissions =
     "v1beta1" :> "organizations" :>
       "{resource}:testIamPermissions"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates an Organization resource.
type OrganizationsUpdate =
     "v1beta1" :> "organizations" :>
       Capture "organizationId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type ProjectsAPI =
     ProjectsList :<|> ProjectsUndelete :<|>
       ProjectsGetIamPolicy
       :<|> ProjectsGet
       :<|> ProjectsCreate
       :<|> ProjectsSetIamPolicy
       :<|> ProjectsTestIamPermissions
       :<|> ProjectsDelete
       :<|> ProjectsUpdate

-- | Lists projects that are visible to the user and satisfy the specified
-- filter. This method returns projects in an unspecified order. New
-- projects do not necessarily appear at the end of the list.
type ProjectsList =
     "v1beta1" :> "projects" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
type ProjectsUndelete =
     "v1beta1" :> "projects" :> "{projectId}:undelete" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Returns the IAM access control policy for specified project.
type ProjectsGetIamPolicy =
     "v1beta1" :> "projects" :> "{resource}:getIamPolicy"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Retrieves the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). The caller must have read permissions for
-- this project.
type ProjectsGet =
     "v1beta1" :> "projects" :> Capture "projectId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a project resource. Initially, the project resource is owned by
-- its creator exclusively. The creator can later grant permission to
-- others to read or update the project. Several APIs are activated
-- automatically for the project, including Google Cloud Storage.
type ProjectsCreate =
     "v1beta1" :> "projects" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Sets the IAM access control policy for the specified project. We do not
-- currently support \'domain:\' prefixed members in a Binding of a Policy.
-- Calling this method requires enabling the App Engine Admin API.
type ProjectsSetIamPolicy =
     "v1beta1" :> "projects" :> "{resource}:setIamPolicy"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Tests the specified permissions against the IAM access control policy
-- for the specified project.
type ProjectsTestIamPermissions =
     "v1beta1" :> "projects" :>
       "{resource}:testIamPermissions"
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Marks the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`) for deletion. This method will only affect
-- the project if the following criteria are met: + The project does not
-- have a billing account associated with it. + The project has a lifecycle
-- state of
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE].
-- This method changes the project\'s lifecycle state from
-- [ACTIVE][google.cloudresourcemanager.projects.v1beta1.LifecycleState.ACTIVE]
-- to [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- The deletion starts at an unspecified time, at which point the lifecycle
-- state changes to [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS].
-- Until the deletion completes, you can check the lifecycle state checked
-- by retrieving the project with [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject],
-- and the project remains visible to [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects].
-- However, you cannot update the project. After the deletion completes,
-- the project is not retrievable by the [GetProject]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.GetProject]
-- and [ListProjects]
-- [google.cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects]
-- methods. The caller must have modify permissions for this project.
type ProjectsDelete =
     "v1beta1" :> "projects" :> Capture "projectId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
type ProjectsUpdate =
     "v1beta1" :> "projects" :> Capture "projectId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text
