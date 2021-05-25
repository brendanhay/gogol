{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SourceRepo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses source code repositories hosted by Google.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference>
module Network.Google.SourceRepo
    (
    -- * Service Configuration
      sourceRepoService

    -- * OAuth Scopes
    , sourceReadOnlyScope
    , sourceFullControlScope
    , cloudPlatformScope
    , sourceReadWriteScope

    -- * API Declaration
    , SourceRepoAPI

    -- * Resources

    -- ** sourcerepo.projects.getConfig
    , module Network.Google.Resource.SourceRepo.Projects.GetConfig

    -- ** sourcerepo.projects.repos.create
    , module Network.Google.Resource.SourceRepo.Projects.Repos.Create

    -- ** sourcerepo.projects.repos.delete
    , module Network.Google.Resource.SourceRepo.Projects.Repos.Delete

    -- ** sourcerepo.projects.repos.get
    , module Network.Google.Resource.SourceRepo.Projects.Repos.Get

    -- ** sourcerepo.projects.repos.getIamPolicy
    , module Network.Google.Resource.SourceRepo.Projects.Repos.GetIAMPolicy

    -- ** sourcerepo.projects.repos.list
    , module Network.Google.Resource.SourceRepo.Projects.Repos.List

    -- ** sourcerepo.projects.repos.patch
    , module Network.Google.Resource.SourceRepo.Projects.Repos.Patch

    -- ** sourcerepo.projects.repos.setIamPolicy
    , module Network.Google.Resource.SourceRepo.Projects.Repos.SetIAMPolicy

    -- ** sourcerepo.projects.repos.sync
    , module Network.Google.Resource.SourceRepo.Projects.Repos.Sync

    -- ** sourcerepo.projects.repos.testIamPermissions
    , module Network.Google.Resource.SourceRepo.Projects.Repos.TestIAMPermissions

    -- ** sourcerepo.projects.updateConfig
    , module Network.Google.Resource.SourceRepo.Projects.UpdateConfig

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** ProjectConfig
    , ProjectConfig
    , projectConfig
    , pcPubsubConfigs
    , pcEnablePrivateKeyCheck
    , pcName

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListReposResponse
    , ListReposResponse
    , listReposResponse
    , lrrNextPageToken
    , lrrRepos

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

    -- ** UpdateRepoRequest
    , UpdateRepoRequest
    , updateRepoRequest
    , urrUpdateMask
    , urrRepo

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** PubsubConfig
    , PubsubConfig
    , pubsubConfig
    , pcTopic
    , pcServiceAccountEmail
    , pcMessageFormat

    -- ** PubsubConfigMessageFormat
    , PubsubConfigMessageFormat (..)

    -- ** UpdateProjectConfigRequest
    , UpdateProjectConfigRequest
    , updateProjectConfigRequest
    , upcrProjectConfig
    , upcrUpdateMask

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** SyncRepoMetadata
    , SyncRepoMetadata
    , syncRepoMetadata
    , srmStartTime
    , srmUpdateTime
    , srmName
    , srmStatusMessage

    -- ** RepoPubsubConfigs
    , RepoPubsubConfigs
    , repoPubsubConfigs
    , rpcAddtional

    -- ** ProjectConfigPubsubConfigs
    , ProjectConfigPubsubConfigs
    , projectConfigPubsubConfigs
    , pcpcAddtional

    -- ** Repo
    , Repo
    , repo
    , rPubsubConfigs
    , rSize
    , rURL
    , rName
    , rMirrorConfig

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

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** MirrorConfig
    , MirrorConfig
    , mirrorConfig
    , mcURL
    , mcDeployKeyId
    , mcWebhookId

    -- ** SyncRepoRequest
    , SyncRepoRequest
    , syncRepoRequest

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.Resource.SourceRepo.Projects.GetConfig
import Network.Google.Resource.SourceRepo.Projects.Repos.Create
import Network.Google.Resource.SourceRepo.Projects.Repos.Delete
import Network.Google.Resource.SourceRepo.Projects.Repos.Get
import Network.Google.Resource.SourceRepo.Projects.Repos.GetIAMPolicy
import Network.Google.Resource.SourceRepo.Projects.Repos.List
import Network.Google.Resource.SourceRepo.Projects.Repos.Patch
import Network.Google.Resource.SourceRepo.Projects.Repos.SetIAMPolicy
import Network.Google.Resource.SourceRepo.Projects.Repos.Sync
import Network.Google.Resource.SourceRepo.Projects.Repos.TestIAMPermissions
import Network.Google.Resource.SourceRepo.Projects.UpdateConfig
import Network.Google.SourceRepo.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Source Repositories API service.
type SourceRepoAPI =
     ProjectsReposListResource :<|>
       ProjectsReposGetIAMPolicyResource
       :<|> ProjectsReposPatchResource
       :<|> ProjectsReposGetResource
       :<|> ProjectsReposCreateResource
       :<|> ProjectsReposSetIAMPolicyResource
       :<|> ProjectsReposSyncResource
       :<|> ProjectsReposTestIAMPermissionsResource
       :<|> ProjectsReposDeleteResource
       :<|> ProjectsGetConfigResource
       :<|> ProjectsUpdateConfigResource
