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
-- Module      : Gogol.Logging.Folders.Locations.LogScopes.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.logScopes.create@.
module Gogol.Logging.Folders.Locations.LogScopes.Create
    (
    -- * Resource
      LoggingFoldersLocationsLogScopesCreateResource

    -- ** Constructing a Request
    , LoggingFoldersLocationsLogScopesCreate (..)
    , newLoggingFoldersLocationsLogScopesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.folders.locations.logScopes.create@ method which the
-- 'LoggingFoldersLocationsLogScopesCreate' request conforms to.
type LoggingFoldersLocationsLogScopesCreateResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "logScopes" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "logScopeId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] LogScope Core.:>
                           Core.Post '[Core.JSON] LogScope

-- | Creates a log scope.
--
-- /See:/ 'newLoggingFoldersLocationsLogScopesCreate' smart constructor.
data LoggingFoldersLocationsLogScopesCreate = LoggingFoldersLocationsLogScopesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. A client-assigned identifier such as \"log-scope\". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
    , logScopeId :: (Core.Maybe Core.Text)
      -- | Required. The parent project in which to create the log scope \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogScope
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsLogScopesCreate' with the minimum fields required to make a request.
newLoggingFoldersLocationsLogScopesCreate 
    ::  Core.Text
       -- ^  Required. The parent project in which to create the log scope \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" For example:\"projects\/my-project\/locations\/global\" See 'parent'.
    -> LogScope
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingFoldersLocationsLogScopesCreate
newLoggingFoldersLocationsLogScopesCreate parent payload =
  LoggingFoldersLocationsLogScopesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , logScopeId = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingFoldersLocationsLogScopesCreate
         where
        type Rs LoggingFoldersLocationsLogScopesCreate =
             LogScope
        type Scopes LoggingFoldersLocationsLogScopesCreate =
             '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingFoldersLocationsLogScopesCreate{..}
          = go parent xgafv accessToken callback logScopeId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingFoldersLocationsLogScopesCreateResource)
                      Core.mempty

