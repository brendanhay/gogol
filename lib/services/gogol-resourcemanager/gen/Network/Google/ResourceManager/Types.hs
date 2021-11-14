{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * UndeleteOrganizationMetadata
    , UndeleteOrganizationMetadata
    , undeleteOrganizationMetadata

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolders

    -- * CreateProjectMetadata
    , CreateProjectMetadata
    , createProjectMetadata
    , cpmGettable
    , cpmReady
    , cpmCreateTime

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OrganizationState
    , OrganizationState (..)

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * UndeleteFolderRequest
    , UndeleteFolderRequest
    , undeleteFolderRequest

    -- * DeleteTagValueMetadata
    , DeleteTagValueMetadata
    , deleteTagValueMetadata

    -- * UpdateTagValueMetadata
    , UpdateTagValueMetadata
    , updateTagValueMetadata

    -- * Project
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

    -- * SearchFoldersResponse
    , SearchFoldersResponse
    , searchFoldersResponse
    , sfrNextPageToken
    , sfrFolders

    -- * ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- * CreateTagValueMetadata
    , CreateTagValueMetadata
    , createTagValueMetadata

    -- * ListTagValuesResponse
    , ListTagValuesResponse
    , listTagValuesResponse
    , ltvrNextPageToken
    , ltvrTagValues

    -- * CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , crmgcrmvfoDestinationParent
    , crmgcrmvfoDisplayName
    , crmgcrmvfoOperationType
    , crmgcrmvfoSourceParent

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SearchProjectsResponse
    , SearchProjectsResponse
    , searchProjectsResponse
    , sprNextPageToken
    , sprProjects

    -- * FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- * Folder
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

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * TagValue
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

    -- * UndeleteFolderMetadata
    , UndeleteFolderMetadata
    , undeleteFolderMetadata

    -- * ListLiensResponse
    , ListLiensResponse
    , listLiensResponse
    , llrNextPageToken
    , llrLiens

    -- * CreateTagKeyMetadata
    , CreateTagKeyMetadata
    , createTagKeyMetadata

    -- * CreateFolderMetadata
    , CreateFolderMetadata
    , createFolderMetadata
    , cfmParent
    , cfmDisplayName

    -- * DeleteOrganizationMetadata
    , DeleteOrganizationMetadata
    , deleteOrganizationMetadata

    -- * DeleteTagBindingMetadata
    , DeleteTagBindingMetadata
    , deleteTagBindingMetadata

    -- * ListTagKeysResponse
    , ListTagKeysResponse
    , listTagKeysResponse
    , ltkrNextPageToken
    , ltkrTagKeys

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * MoveFolderMetadata
    , MoveFolderMetadata
    , moveFolderMetadata
    , mfmDestinationParent
    , mfmDisplayName
    , mfmSourceParent

    -- * Xgafv
    , Xgafv (..)

    -- * UndeleteProjectMetadata
    , UndeleteProjectMetadata
    , undeleteProjectMetadata

    -- * CreateTagBindingMetadata
    , CreateTagBindingMetadata
    , createTagBindingMetadata

    -- * ProjectState
    , ProjectState (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * DeleteFolderMetadata
    , DeleteFolderMetadata
    , deleteFolderMetadata

    -- * UpdateFolderMetadata
    , UpdateFolderMetadata
    , updateFolderMetadata

    -- * MoveProjectRequest
    , MoveProjectRequest
    , moveProjectRequest
    , mprDestinationParent

    -- * TagKey
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

    -- * CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cDestinationParent
    , cDisplayName
    , cOperationType
    , cSourceParent

    -- * SearchOrganizationsResponse
    , SearchOrganizationsResponse
    , searchOrganizationsResponse
    , sorNextPageToken
    , sorOrganizations

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , polAuditConfigs
    , polEtag
    , polVersion
    , polBindings

    -- * ProjectLabels
    , ProjectLabels
    , projectLabels
    , plAddtional

    -- * CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType (..)

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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * TagBinding
    , TagBinding
    , tagBinding
    , tbParent
    , tbTagValue
    , tbName

    -- * Organization
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

    -- * CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * UndeleteProjectRequest
    , UndeleteProjectRequest
    , undeleteProjectRequest

    -- * Lien
    , Lien
    , lien
    , lParent
    , lOrigin
    , lReason
    , lName
    , lRestrictions
    , lCreateTime

    -- * MoveFolderRequest
    , MoveFolderRequest
    , moveFolderRequest
    , mfrDestinationParent

    -- * DeleteProjectMetadata
    , DeleteProjectMetadata
    , deleteProjectMetadata

    -- * UpdateProjectMetadata
    , UpdateProjectMetadata
    , updateProjectMetadata

    -- * FolderState
    , FolderState (..)

    -- * MoveProjectMetadata
    , MoveProjectMetadata
    , moveProjectMetadata

    -- * UpdateTagKeyMetadata
    , UpdateTagKeyMetadata
    , updateTagKeyMetadata

    -- * DeleteTagKeyMetadata
    , DeleteTagKeyMetadata
    , deleteTagKeyMetadata

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ListTagBindingsResponse
    , ListTagBindingsResponse
    , listTagBindingsResponse
    , ltbrNextPageToken
    , ltbrTagBindings
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types.Product
import Network.Google.ResourceManager.Types.Sum

-- | Default request referring to version 'v3' of the Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerService :: ServiceConfig
resourceManagerService
  = defaultService
      (ServiceId "cloudresourcemanager:v3")
      "cloudresourcemanager.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
