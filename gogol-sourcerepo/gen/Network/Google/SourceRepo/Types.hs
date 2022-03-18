{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.SourceRepo.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.SourceRepo.Types
  ( -- * Configuration
    sourceRepoService,

    -- * OAuth Scopes
    cloudPlatformScope,
    sourceFull_controlScope,
    sourceRead_OnlyScope,
    sourceRead_writeScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.SourceRepo.Internal.Product
import Network.Google.SourceRepo.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Source Repositories API. This contains the host and root path used as a starting point for constructing service requests.
sourceRepoService :: Core.ServiceConfig
sourceRepoService =
  Core.defaultService
    (Core.ServiceId "sourcerepo:v1")
    "sourcerepo.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | Manage your source code repositories
sourceFull_controlScope :: Core.Proxy '["https://www.googleapis.com/auth/source.full_control"]
sourceFull_controlScope = Core.Proxy

-- | View the contents of your source code repositories
sourceRead_OnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/source.read_only"]
sourceRead_OnlyScope = Core.Proxy

-- | Manage the contents of your source code repositories
sourceRead_writeScope :: Core.Proxy '["https://www.googleapis.com/auth/source.read_write"]
sourceRead_writeScope = Core.Proxy
