{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
-- Accesses source code repositories hosted by Google. Important: Cloud Source Repositories is scheduled for end of sales starting June 17, 2024. Customers who have enabled the API prior to this date will not be affected and can continue to use Cloud Source Repositories. Organizations or projects who have not previously enabled the API cannot use Cloud Source Repositories after this date. View Cloud Source Repositories documentation for more info.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference>
module Gogol.SourceRepo
    (
    -- * Configuration
      sourceRepoService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , Source'FullControl
    , Source'ReadOnly
    , Source'ReadWrite

    -- * Resources

    -- ** sourcerepo.projects.getConfig
    , SourceRepoProjectsGetConfigResource
    , SourceRepoProjectsGetConfig (..)
    , newSourceRepoProjectsGetConfig

    -- ** sourcerepo.projects.repos.create
    , SourceRepoProjectsReposCreateResource
    , SourceRepoProjectsReposCreate (..)
    , newSourceRepoProjectsReposCreate

    -- ** sourcerepo.projects.repos.delete
    , SourceRepoProjectsReposDeleteResource
    , SourceRepoProjectsReposDelete (..)
    , newSourceRepoProjectsReposDelete

    -- ** sourcerepo.projects.repos.get
    , SourceRepoProjectsReposGetResource
    , SourceRepoProjectsReposGet (..)
    , newSourceRepoProjectsReposGet

    -- ** sourcerepo.projects.repos.getIamPolicy
    , SourceRepoProjectsReposGetIamPolicyResource
    , SourceRepoProjectsReposGetIamPolicy (..)
    , newSourceRepoProjectsReposGetIamPolicy

    -- ** sourcerepo.projects.repos.list
    , SourceRepoProjectsReposListResource
    , SourceRepoProjectsReposList (..)
    , newSourceRepoProjectsReposList

    -- ** sourcerepo.projects.repos.patch
    , SourceRepoProjectsReposPatchResource
    , SourceRepoProjectsReposPatch (..)
    , newSourceRepoProjectsReposPatch

    -- ** sourcerepo.projects.repos.setIamPolicy
    , SourceRepoProjectsReposSetIamPolicyResource
    , SourceRepoProjectsReposSetIamPolicy (..)
    , newSourceRepoProjectsReposSetIamPolicy

    -- ** sourcerepo.projects.repos.sync
    , SourceRepoProjectsReposSyncResource
    , SourceRepoProjectsReposSync (..)
    , newSourceRepoProjectsReposSync

    -- ** sourcerepo.projects.repos.testIamPermissions
    , SourceRepoProjectsReposTestIamPermissionsResource
    , SourceRepoProjectsReposTestIamPermissions (..)
    , newSourceRepoProjectsReposTestIamPermissions

    -- ** sourcerepo.projects.updateConfig
    , SourceRepoProjectsUpdateConfigResource
    , SourceRepoProjectsUpdateConfig (..)
    , newSourceRepoProjectsUpdateConfig

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
