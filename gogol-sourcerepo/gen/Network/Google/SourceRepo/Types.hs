{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SourceRepo.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SourceRepo.Types
    (
    -- * Service Configuration
      sourceRepoService

    -- * OAuth Scopes
    , sourceReadOnlyScope
    , sourceFullControlScope
    , cloudPlatformScope
    , sourceReadWriteScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * ProjectConfig
    , ProjectConfig
    , projectConfig
    , pcPubsubConfigs
    , pcEnablePrivateKeyCheck
    , pcName

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListReposResponse
    , ListReposResponse
    , listReposResponse
    , lrrNextPageToken
    , lrrRepos

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

    -- * UpdateRepoRequest
    , UpdateRepoRequest
    , updateRepoRequest
    , urrUpdateMask
    , urrRepo

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * PubsubConfig
    , PubsubConfig
    , pubsubConfig
    , pcTopic
    , pcServiceAccountEmail
    , pcMessageFormat

    -- * PubsubConfigMessageFormat
    , PubsubConfigMessageFormat (..)

    -- * UpdateProjectConfigRequest
    , UpdateProjectConfigRequest
    , updateProjectConfigRequest
    , upcrProjectConfig
    , upcrUpdateMask

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * SyncRepoMetadata
    , SyncRepoMetadata
    , syncRepoMetadata
    , srmStartTime
    , srmUpdateTime
    , srmName
    , srmStatusMessage

    -- * RepoPubsubConfigs
    , RepoPubsubConfigs
    , repoPubsubConfigs
    , rpcAddtional

    -- * ProjectConfigPubsubConfigs
    , ProjectConfigPubsubConfigs
    , projectConfigPubsubConfigs
    , pcpcAddtional

    -- * Repo
    , Repo
    , repo
    , rPubsubConfigs
    , rSize
    , rURL
    , rName
    , rMirrorConfig

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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * MirrorConfig
    , MirrorConfig
    , mirrorConfig
    , mcURL
    , mcDeployKeyId
    , mcWebhookId

    -- * SyncRepoRequest
    , SyncRepoRequest
    , syncRepoRequest

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types.Product
import Network.Google.SourceRepo.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Source Repositories API. This contains the host and root path used as a starting point for constructing service requests.
sourceRepoService :: ServiceConfig
sourceRepoService
  = defaultService (ServiceId "sourcerepo:v1")
      "sourcerepo.googleapis.com"

-- | View the contents of your source code repositories
sourceReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/source.read_only"]
sourceReadOnlyScope = Proxy

-- | Manage your source code repositories
sourceFullControlScope :: Proxy '["https://www.googleapis.com/auth/source.full_control"]
sourceFullControlScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | Manage the contents of your source code repositories
sourceReadWriteScope :: Proxy '["https://www.googleapis.com/auth/source.read_write"]
sourceReadWriteScope = Proxy
