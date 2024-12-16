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
-- Module      : Gogol.Logging.Folders.Locations.LogScopes.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.logScopes.patch@.
module Gogol.Logging.Folders.Locations.LogScopes.Patch
    (
    -- * Resource
      LoggingFoldersLocationsLogScopesPatchResource

    -- ** Constructing a Request
    , LoggingFoldersLocationsLogScopesPatch (..)
    , newLoggingFoldersLocationsLogScopesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.folders.locations.logScopes.patch@ method which the
-- 'LoggingFoldersLocationsLogScopesPatch' request conforms to.
type LoggingFoldersLocationsLogScopesPatchResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] LogScope Core.:>
                         Core.Patch '[Core.JSON] LogScope

-- | Updates a log scope.
--
-- /See:/ 'newLoggingFoldersLocationsLogScopesPatch' smart constructor.
data LoggingFoldersLocationsLogScopesPatch = LoggingFoldersLocationsLogScopesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:projects\/my-project\/locations\/global\/logScopes\/my-log-scope
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: LogScope
      -- | Optional. Field mask that specifies the fields in log_scope that need an update. A field will be overwritten if, and only if, it is in the update mask. name and output only fields cannot be updated.For a detailed FieldMask definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#google.protobuf.FieldMaskFor example: updateMask=description
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersLocationsLogScopesPatch' with the minimum fields required to make a request.
newLoggingFoldersLocationsLogScopesPatch 
    ::  Core.Text
       -- ^  Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:projects\/my-project\/locations\/global\/logScopes\/my-log-scope See 'name'.
    -> LogScope
       -- ^  Multipart request metadata. See 'payload'.
    -> LoggingFoldersLocationsLogScopesPatch
newLoggingFoldersLocationsLogScopesPatch name payload =
  LoggingFoldersLocationsLogScopesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingFoldersLocationsLogScopesPatch
         where
        type Rs LoggingFoldersLocationsLogScopesPatch =
             LogScope
        type Scopes LoggingFoldersLocationsLogScopesPatch =
             '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingFoldersLocationsLogScopesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingFoldersLocationsLogScopesPatchResource)
                      Core.mempty
