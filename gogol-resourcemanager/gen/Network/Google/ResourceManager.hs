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

    -- ** cloudresourcemanager.operations.get
    , module Network.Google.Resource.CloudResourceManager.Operations.Get

    -- * Types

    -- ** ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolders

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** FolderLifecycleState
    , FolderLifecycleState (..)

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

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** SearchFoldersRequest
    , SearchFoldersRequest
    , searchFoldersRequest
    , sfrQuery
    , sfrPageToken
    , sfrPageSize

    -- ** UndeleteFolderRequest
    , UndeleteFolderRequest
    , undeleteFolderRequest

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

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

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- ** Folder
    , Folder
    , folder
    , fParent
    , fName
    , fDisplayName
    , fLifecycleState
    , fCreateTime

    -- ** FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Xgafv
    , Xgafv (..)

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
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

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

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** MoveFolderRequest
    , MoveFolderRequest
    , moveFolderRequest
    , mfrDestinationParent

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.CloudResourceManager.Folders.Create
import           Network.Google.Resource.CloudResourceManager.Folders.Delete
import           Network.Google.Resource.CloudResourceManager.Folders.Get
import           Network.Google.Resource.CloudResourceManager.Folders.GetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Folders.List
import           Network.Google.Resource.CloudResourceManager.Folders.Move
import           Network.Google.Resource.CloudResourceManager.Folders.Patch
import           Network.Google.Resource.CloudResourceManager.Folders.Search
import           Network.Google.Resource.CloudResourceManager.Folders.SetIAMPolicy
import           Network.Google.Resource.CloudResourceManager.Folders.TestIAMPermissions
import           Network.Google.Resource.CloudResourceManager.Folders.Undelete
import           Network.Google.Resource.CloudResourceManager.Operations.Get
import           Network.Google.ResourceManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Resource Manager API service.
type ResourceManagerAPI =
     FoldersListResource :<|> FoldersUndeleteResource :<|>
       FoldersGetIAMPolicyResource
       :<|> FoldersPatchResource
       :<|> FoldersGetResource
       :<|> FoldersCreateResource
       :<|> FoldersSetIAMPolicyResource
       :<|> FoldersTestIAMPermissionsResource
       :<|> FoldersSearchResource
       :<|> FoldersDeleteResource
       :<|> FoldersMoveResource
       :<|> OperationsGetResource
