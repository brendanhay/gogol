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
-- Creates, reads, and updates metadata for Google Cloud Platform resource
-- containers.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference>
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

    -- ** cloudresourcemanager.folders.create
    , module Network.Google.Resource.CloudResourceManager.Folders.Create

    -- ** cloudresourcemanager.folders.delete
    , module Network.Google.Resource.CloudResourceManager.Folders.Delete

    -- ** cloudresourcemanager.folders.get
    , module Network.Google.Resource.CloudResourceManager.Folders.Get

    -- ** cloudresourcemanager.folders.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Folders.GetIAMPolicy

    -- ** cloudresourcemanager.folders.list
    , module Network.Google.Resource.CloudResourceManager.Folders.List

    -- ** cloudresourcemanager.folders.move
    , module Network.Google.Resource.CloudResourceManager.Folders.Move

    -- ** cloudresourcemanager.folders.patch
    , module Network.Google.Resource.CloudResourceManager.Folders.Patch

    -- ** cloudresourcemanager.folders.search
    , module Network.Google.Resource.CloudResourceManager.Folders.Search

    -- ** cloudresourcemanager.folders.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Folders.SetIAMPolicy

    -- ** cloudresourcemanager.folders.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.Folders.TestIAMPermissions

    -- ** cloudresourcemanager.folders.undelete
    , module Network.Google.Resource.CloudResourceManager.Folders.Undelete

    -- ** cloudresourcemanager.liens.create
    , module Network.Google.Resource.CloudResourceManager.Liens.Create

    -- ** cloudresourcemanager.liens.delete
    , module Network.Google.Resource.CloudResourceManager.Liens.Delete

    -- ** cloudresourcemanager.liens.get
    , module Network.Google.Resource.CloudResourceManager.Liens.Get

    -- ** cloudresourcemanager.liens.list
    , module Network.Google.Resource.CloudResourceManager.Liens.List

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

    -- ** cloudresourcemanager.projects.move
    , module Network.Google.Resource.CloudResourceManager.Projects.Move

    -- ** cloudresourcemanager.projects.patch
    , module Network.Google.Resource.CloudResourceManager.Projects.Patch

    -- ** cloudresourcemanager.projects.search
    , module Network.Google.Resource.CloudResourceManager.Projects.Search

    -- ** cloudresourcemanager.projects.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy

    -- ** cloudresourcemanager.projects.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions

    -- ** cloudresourcemanager.projects.undelete
    , module Network.Google.Resource.CloudResourceManager.Projects.Undelete

    -- ** cloudresourcemanager.tagBindings.create
    , module Network.Google.Resource.CloudResourceManager.TagBindings.Create

    -- ** cloudresourcemanager.tagBindings.delete
    , module Network.Google.Resource.CloudResourceManager.TagBindings.Delete

    -- ** cloudresourcemanager.tagBindings.list
    , module Network.Google.Resource.CloudResourceManager.TagBindings.List

    -- ** cloudresourcemanager.tagKeys.create
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Create

    -- ** cloudresourcemanager.tagKeys.delete
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Delete

    -- ** cloudresourcemanager.tagKeys.get
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Get

    -- ** cloudresourcemanager.tagKeys.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy

    -- ** cloudresourcemanager.tagKeys.list
    , module Network.Google.Resource.CloudResourceManager.TagKeys.List

    -- ** cloudresourcemanager.tagKeys.patch
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Patch

    -- ** cloudresourcemanager.tagKeys.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy

    -- ** cloudresourcemanager.tagKeys.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions

    -- ** cloudresourcemanager.tagValues.create
    , module Network.Google.Resource.CloudResourceManager.TagValues.Create

    -- ** cloudresourcemanager.tagValues.delete
    , module Network.Google.Resource.CloudResourceManager.TagValues.Delete

    -- ** cloudresourcemanager.tagValues.get
    , module Network.Google.Resource.CloudResourceManager.TagValues.Get

    -- ** cloudresourcemanager.tagValues.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy

    -- ** cloudresourcemanager.tagValues.list
    , module Network.Google.Resource.CloudResourceManager.TagValues.List

    -- ** cloudresourcemanager.tagValues.patch
    , module Network.Google.Resource.CloudResourceManager.TagValues.Patch

    -- ** cloudresourcemanager.tagValues.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy

    -- ** cloudresourcemanager.tagValues.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions

    -- * Types

    -- ** UndeleteOrganizationMetadata
    , UndeleteOrganizationMetadata
    , undeleteOrganizationMetadata

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolders

    -- ** CreateProjectMetadata
    , CreateProjectMetadata
    , createProjectMetadata
    , cpmGettable
    , cpmReady
    , cpmCreateTime

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OrganizationState
    , OrganizationState (..)

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** UndeleteFolderRequest
    , UndeleteFolderRequest
    , undeleteFolderRequest

    -- ** DeleteTagValueMetadata
    , DeleteTagValueMetadata
    , deleteTagValueMetadata

    -- ** UpdateTagValueMetadata
    , UpdateTagValueMetadata
    , updateTagValueMetadata

    -- ** Project
    , Project
    , project
    , pParent
    , pEtag
    , pState
    , pUpdateTime
    , pDeleteTime
    , pName
    , pDisplayName
    , pLabels
    , pProjectId
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

    -- ** FolderOperationErrorErrorMessageId
    , FolderOperationErrorErrorMessageId (..)

    -- ** SearchFoldersResponse
    , SearchFoldersResponse
    , searchFoldersResponse
    , sfrNextPageToken
    , sfrFolders

    -- ** ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- ** CreateTagValueMetadata
    , CreateTagValueMetadata
    , createTagValueMetadata

    -- ** ListTagValuesResponse
    , ListTagValuesResponse
    , listTagValuesResponse
    , ltvrNextPageToken
    , ltvrTagValues

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , crmgcrmvfoDestinationParent
    , crmgcrmvfoDisplayName
    , crmgcrmvfoOperationType
    , crmgcrmvfoSourceParent

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SearchProjectsResponse
    , SearchProjectsResponse
    , searchProjectsResponse
    , sprNextPageToken
    , sprProjects

    -- ** FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- ** Folder
    , Folder
    , folder
    , fParent
    , fEtag
    , fState
    , fUpdateTime
    , fDeleteTime
    , fName
    , fDisplayName
    , fCreateTime

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** TagValue
    , TagValue
    , tagValue
    , tvParent
    , tvEtag
    , tvShortName
    , tvUpdateTime
    , tvName
    , tvNamespacedName
    , tvDescription
    , tvCreateTime

    -- ** UndeleteFolderMetadata
    , UndeleteFolderMetadata
    , undeleteFolderMetadata

    -- ** ListLiensResponse
    , ListLiensResponse
    , listLiensResponse
    , llrNextPageToken
    , llrLiens

    -- ** CreateTagKeyMetadata
    , CreateTagKeyMetadata
    , createTagKeyMetadata

    -- ** CreateFolderMetadata
    , CreateFolderMetadata
    , createFolderMetadata
    , cfmParent
    , cfmDisplayName

    -- ** DeleteOrganizationMetadata
    , DeleteOrganizationMetadata
    , deleteOrganizationMetadata

    -- ** DeleteTagBindingMetadata
    , DeleteTagBindingMetadata
    , deleteTagBindingMetadata

    -- ** ListTagKeysResponse
    , ListTagKeysResponse
    , listTagKeysResponse
    , ltkrNextPageToken
    , ltkrTagKeys

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** MoveFolderMetadata
    , MoveFolderMetadata
    , moveFolderMetadata
    , mfmDestinationParent
    , mfmDisplayName
    , mfmSourceParent

    -- ** Xgafv
    , Xgafv (..)

    -- ** UndeleteProjectMetadata
    , UndeleteProjectMetadata
    , undeleteProjectMetadata

    -- ** CreateTagBindingMetadata
    , CreateTagBindingMetadata
    , createTagBindingMetadata

    -- ** ProjectState
    , ProjectState (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** DeleteFolderMetadata
    , DeleteFolderMetadata
    , deleteFolderMetadata

    -- ** UpdateFolderMetadata
    , UpdateFolderMetadata
    , updateFolderMetadata

    -- ** MoveProjectRequest
    , MoveProjectRequest
    , moveProjectRequest
    , mprDestinationParent

    -- ** TagKey
    , TagKey
    , tagKey
    , tkParent
    , tkEtag
    , tkShortName
    , tkUpdateTime
    , tkName
    , tkNamespacedName
    , tkDescription
    , tkCreateTime

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cDestinationParent
    , cDisplayName
    , cOperationType
    , cSourceParent

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
    , polAuditConfigs
    , polEtag
    , polVersion
    , polBindings

    -- ** ProjectLabels
    , ProjectLabels
    , projectLabels
    , plAddtional

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType (..)

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

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** TagBinding
    , TagBinding
    , tagBinding
    , tbParent
    , tbTagValue
    , tbName

    -- ** Organization
    , Organization
    , organization
    , orgEtag
    , orgState
    , orgUpdateTime
    , orgDeleteTime
    , orgName
    , orgDisplayName
    , orgDirectoryCustomerId
    , orgCreateTime

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** UndeleteProjectRequest
    , UndeleteProjectRequest
    , undeleteProjectRequest

    -- ** Lien
    , Lien
    , lien
    , lParent
    , lOrigin
    , lReason
    , lName
    , lRestrictions
    , lCreateTime

    -- ** MoveFolderRequest
    , MoveFolderRequest
    , moveFolderRequest
    , mfrDestinationParent

    -- ** DeleteProjectMetadata
    , DeleteProjectMetadata
    , deleteProjectMetadata

    -- ** UpdateProjectMetadata
    , UpdateProjectMetadata
    , updateProjectMetadata

    -- ** FolderState
    , FolderState (..)

    -- ** MoveProjectMetadata
    , MoveProjectMetadata
    , moveProjectMetadata

    -- ** UpdateTagKeyMetadata
    , UpdateTagKeyMetadata
    , updateTagKeyMetadata

    -- ** DeleteTagKeyMetadata
    , DeleteTagKeyMetadata
    , deleteTagKeyMetadata

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** ListTagBindingsResponse
    , ListTagBindingsResponse
    , listTagBindingsResponse
    , ltbrNextPageToken
    , ltbrTagBindings
    ) where

import Network.Google.Prelude
import Network.Google.Resource.CloudResourceManager.Folders.Create
import Network.Google.Resource.CloudResourceManager.Folders.Delete
import Network.Google.Resource.CloudResourceManager.Folders.Get
import Network.Google.Resource.CloudResourceManager.Folders.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Folders.List
import Network.Google.Resource.CloudResourceManager.Folders.Move
import Network.Google.Resource.CloudResourceManager.Folders.Patch
import Network.Google.Resource.CloudResourceManager.Folders.Search
import Network.Google.Resource.CloudResourceManager.Folders.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Folders.TestIAMPermissions
import Network.Google.Resource.CloudResourceManager.Folders.Undelete
import Network.Google.Resource.CloudResourceManager.Liens.Create
import Network.Google.Resource.CloudResourceManager.Liens.Delete
import Network.Google.Resource.CloudResourceManager.Liens.Get
import Network.Google.Resource.CloudResourceManager.Liens.List
import Network.Google.Resource.CloudResourceManager.Operations.Get
import Network.Google.Resource.CloudResourceManager.Organizations.Get
import Network.Google.Resource.CloudResourceManager.Organizations.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Organizations.Search
import Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Organizations.TestIAMPermissions
import Network.Google.Resource.CloudResourceManager.Projects.Create
import Network.Google.Resource.CloudResourceManager.Projects.Delete
import Network.Google.Resource.CloudResourceManager.Projects.Get
import Network.Google.Resource.CloudResourceManager.Projects.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Projects.List
import Network.Google.Resource.CloudResourceManager.Projects.Move
import Network.Google.Resource.CloudResourceManager.Projects.Patch
import Network.Google.Resource.CloudResourceManager.Projects.Search
import Network.Google.Resource.CloudResourceManager.Projects.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.Projects.TestIAMPermissions
import Network.Google.Resource.CloudResourceManager.Projects.Undelete
import Network.Google.Resource.CloudResourceManager.TagBindings.Create
import Network.Google.Resource.CloudResourceManager.TagBindings.Delete
import Network.Google.Resource.CloudResourceManager.TagBindings.List
import Network.Google.Resource.CloudResourceManager.TagKeys.Create
import Network.Google.Resource.CloudResourceManager.TagKeys.Delete
import Network.Google.Resource.CloudResourceManager.TagKeys.Get
import Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagKeys.List
import Network.Google.Resource.CloudResourceManager.TagKeys.Patch
import Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions
import Network.Google.Resource.CloudResourceManager.TagValues.Create
import Network.Google.Resource.CloudResourceManager.TagValues.Delete
import Network.Google.Resource.CloudResourceManager.TagValues.Get
import Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagValues.List
import Network.Google.Resource.CloudResourceManager.TagValues.Patch
import Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions
import Network.Google.ResourceManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Resource Manager API service.
type ResourceManagerAPI =
     TagValuesListResource :<|>
       TagValuesGetIAMPolicyResource
       :<|> TagValuesPatchResource
       :<|> TagValuesGetResource
       :<|> TagValuesCreateResource
       :<|> TagValuesSetIAMPolicyResource
       :<|> TagValuesTestIAMPermissionsResource
       :<|> TagValuesDeleteResource
       :<|> FoldersListResource
       :<|> FoldersUndeleteResource
       :<|> FoldersGetIAMPolicyResource
       :<|> FoldersPatchResource
       :<|> FoldersGetResource
       :<|> FoldersCreateResource
       :<|> FoldersSetIAMPolicyResource
       :<|> FoldersTestIAMPermissionsResource
       :<|> FoldersSearchResource
       :<|> FoldersDeleteResource
       :<|> FoldersMoveResource
       :<|> TagKeysListResource
       :<|> TagKeysGetIAMPolicyResource
       :<|> TagKeysPatchResource
       :<|> TagKeysGetResource
       :<|> TagKeysCreateResource
       :<|> TagKeysSetIAMPolicyResource
       :<|> TagKeysTestIAMPermissionsResource
       :<|> TagKeysDeleteResource
       :<|> LiensListResource
       :<|> LiensGetResource
       :<|> LiensCreateResource
       :<|> LiensDeleteResource
       :<|> TagBindingsListResource
       :<|> TagBindingsCreateResource
       :<|> TagBindingsDeleteResource
       :<|> OrganizationsGetIAMPolicyResource
       :<|> OrganizationsGetResource
       :<|> OrganizationsSetIAMPolicyResource
       :<|> OrganizationsTestIAMPermissionsResource
       :<|> OrganizationsSearchResource
       :<|> OperationsGetResource
       :<|> ProjectsListResource
       :<|> ProjectsUndeleteResource
       :<|> ProjectsGetIAMPolicyResource
       :<|> ProjectsPatchResource
       :<|> ProjectsGetResource
       :<|> ProjectsCreateResource
       :<|> ProjectsSetIAMPolicyResource
       :<|> ProjectsTestIAMPermissionsResource
       :<|> ProjectsSearchResource
       :<|> ProjectsDeleteResource
       :<|> ProjectsMoveResource
