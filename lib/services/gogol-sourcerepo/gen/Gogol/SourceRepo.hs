{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SourceRepo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses source code repositories hosted by Google.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference>
module Gogol.SourceRepo
    (
    -- * Configuration
      sourceRepoService

    -- * OAuth Scopes
    , cloudPlatformScope
    , sourceFull_controlScope
    , sourceRead_OnlyScope
    , sourceRead_writeScope

    -- * Resources

    -- ** sourcerepo.projects.getConfig
    , SourceRepoProjectsGetConfigResource
    , newSourceRepoProjectsGetConfig
    , SourceRepoProjectsGetConfig

    -- ** sourcerepo.projects.repos.create
    , SourceRepoProjectsReposCreateResource
    , newSourceRepoProjectsReposCreate
    , SourceRepoProjectsReposCreate

    -- ** sourcerepo.projects.repos.delete
    , SourceRepoProjectsReposDeleteResource
    , newSourceRepoProjectsReposDelete
    , SourceRepoProjectsReposDelete

    -- ** sourcerepo.projects.repos.get
    , SourceRepoProjectsReposGetResource
    , newSourceRepoProjectsReposGet
    , SourceRepoProjectsReposGet

    -- ** sourcerepo.projects.repos.getIamPolicy
    , SourceRepoProjectsReposGetIamPolicyResource
    , newSourceRepoProjectsReposGetIamPolicy
    , SourceRepoProjectsReposGetIamPolicy

    -- ** sourcerepo.projects.repos.list
    , SourceRepoProjectsReposListResource
    , newSourceRepoProjectsReposList
    , SourceRepoProjectsReposList

    -- ** sourcerepo.projects.repos.patch
    , SourceRepoProjectsReposPatchResource
    , newSourceRepoProjectsReposPatch
    , SourceRepoProjectsReposPatch

    -- ** sourcerepo.projects.repos.setIamPolicy
    , SourceRepoProjectsReposSetIamPolicyResource
    , newSourceRepoProjectsReposSetIamPolicy
    , SourceRepoProjectsReposSetIamPolicy

    -- ** sourcerepo.projects.repos.sync
    , SourceRepoProjectsReposSyncResource
    , newSourceRepoProjectsReposSync
    , SourceRepoProjectsReposSync

    -- ** sourcerepo.projects.repos.testIamPermissions
    , SourceRepoProjectsReposTestIamPermissionsResource
    , newSourceRepoProjectsReposTestIamPermissions
    , SourceRepoProjectsReposTestIamPermissions

    -- ** sourcerepo.projects.updateConfig
    , SourceRepoProjectsUpdateConfigResource
    , newSourceRepoProjectsUpdateConfig
    , SourceRepoProjectsUpdateConfig

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** ListReposResponse
    , ListReposResponse (..)
    , newListReposResponse

    -- ** MirrorConfig
    , MirrorConfig (..)
    , newMirrorConfig

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** ProjectConfig
    , ProjectConfig (..)
    , newProjectConfig

    -- ** ProjectConfig_PubsubConfigs
    , ProjectConfig_PubsubConfigs (..)
    , newProjectConfig_PubsubConfigs

    -- ** PubsubConfig
    , PubsubConfig (..)
    , newPubsubConfig

    -- ** PubsubConfig_MessageFormat
    , PubsubConfig_MessageFormat (..)

    -- ** Repo
    , Repo (..)
    , newRepo

    -- ** Repo_PubsubConfigs
    , Repo_PubsubConfigs (..)
    , newRepo_PubsubConfigs

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** SyncRepoMetadata
    , SyncRepoMetadata (..)
    , newSyncRepoMetadata

    -- ** SyncRepoRequest
    , SyncRepoRequest (..)
    , newSyncRepoRequest

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** UpdateProjectConfigRequest
    , UpdateProjectConfigRequest (..)
    , newUpdateProjectConfigRequest

    -- ** UpdateRepoRequest
    , UpdateRepoRequest (..)
    , newUpdateRepoRequest
    ) where

import Gogol.SourceRepo.Projects.GetConfig
import Gogol.SourceRepo.Projects.Repos.Create
import Gogol.SourceRepo.Projects.Repos.Delete
import Gogol.SourceRepo.Projects.Repos.Get
import Gogol.SourceRepo.Projects.Repos.GetIamPolicy
import Gogol.SourceRepo.Projects.Repos.List
import Gogol.SourceRepo.Projects.Repos.Patch
import Gogol.SourceRepo.Projects.Repos.SetIamPolicy
import Gogol.SourceRepo.Projects.Repos.Sync
import Gogol.SourceRepo.Projects.Repos.TestIamPermissions
import Gogol.SourceRepo.Projects.UpdateConfig
import Gogol.SourceRepo.Types
