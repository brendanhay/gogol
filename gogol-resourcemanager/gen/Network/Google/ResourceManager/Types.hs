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

    -- * ListFoldersResponse
    , ListFoldersResponse
    , listFoldersResponse
    , lfrNextPageToken
    , lfrFolders

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * FolderLifecycleState
    , FolderLifecycleState (..)

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

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * SearchFoldersRequest
    , SearchFoldersRequest
    , searchFoldersRequest
    , sfrQuery
    , sfrPageToken
    , sfrPageSize

    -- * UndeleteFolderRequest
    , UndeleteFolderRequest
    , undeleteFolderRequest

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

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

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- * Folder
    , Folder
    , folder
    , fParent
    , fName
    , fDisplayName
    , fLifecycleState
    , fCreateTime

    -- * FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

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

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * MoveFolderRequest
    , MoveFolderRequest
    , moveFolderRequest
    , mfrDestinationParent

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types.Product
import           Network.Google.ResourceManager.Types.Sum

-- | Default request referring to version 'v2' of the Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerService :: ServiceConfig
resourceManagerService
  = defaultService
      (ServiceId "cloudresourcemanager:v2")
      "cloudresourcemanager.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
