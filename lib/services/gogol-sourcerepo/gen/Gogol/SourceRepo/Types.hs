{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SourceRepo.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SourceRepo.Types
  ( -- * Configuration
    sourceRepoService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Source'FullControl,
    Source'ReadOnly,
    Source'ReadWrite,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ListReposResponse
    ListReposResponse (..),
    newListReposResponse,

    -- ** MirrorConfig
    MirrorConfig (..),
    newMirrorConfig,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** ProjectConfig
    ProjectConfig (..),
    newProjectConfig,

    -- ** ProjectConfig_PubsubConfigs
    ProjectConfig_PubsubConfigs (..),
    newProjectConfig_PubsubConfigs,

    -- ** PubsubConfig
    PubsubConfig (..),
    newPubsubConfig,

    -- ** PubsubConfig_MessageFormat
    PubsubConfig_MessageFormat (..),

    -- ** Repo
    Repo (..),
    newRepo,

    -- ** Repo_PubsubConfigs
    Repo_PubsubConfigs (..),
    newRepo_PubsubConfigs,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SyncRepoMetadata
    SyncRepoMetadata (..),
    newSyncRepoMetadata,

    -- ** SyncRepoRequest
    SyncRepoRequest (..),
    newSyncRepoRequest,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** UpdateProjectConfigRequest
    UpdateProjectConfigRequest (..),
    newUpdateProjectConfigRequest,

    -- ** UpdateRepoRequest
    UpdateRepoRequest (..),
    newUpdateRepoRequest,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Internal.Product
import Gogol.SourceRepo.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Source Repositories API. This contains the host and root path used as a starting point for constructing service requests.
sourceRepoService :: Core.ServiceConfig
sourceRepoService =
  Core.defaultService
    (Core.ServiceId "sourcerepo:v1")
    "sourcerepo.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Manage your source code repositories
type Source'FullControl =
  "https://www.googleapis.com/auth/source.full_control"

-- | View the contents of your source code repositories
type Source'ReadOnly =
  "https://www.googleapis.com/auth/source.read_only"

-- | Manage the contents of your source code repositories
type Source'ReadWrite =
  "https://www.googleapis.com/auth/source.read_write"
