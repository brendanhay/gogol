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
-- Module      : Gogol.Logging.Entries.Tail
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streaming read of log entries as they are ingested. Until the stream is terminated, it will continue reading logs.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.entries.tail@.
module Gogol.Logging.Entries.Tail
  ( -- * Resource
    LoggingEntriesTailResource,

    -- ** Constructing a Request
    LoggingEntriesTail (..),
    newLoggingEntriesTail,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.entries.tail@ method which the
-- 'LoggingEntriesTail' request conforms to.
type LoggingEntriesTailResource =
  "v2"
    Core.:> "entries:tail"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TailLogEntriesRequest
    Core.:> Core.Post '[Core.JSON] TailLogEntriesResponse

-- | Streaming read of log entries as they are ingested. Until the stream is terminated, it will continue reading logs.
--
-- /See:/ 'newLoggingEntriesTail' smart constructor.
data LoggingEntriesTail = LoggingEntriesTail
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TailLogEntriesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingEntriesTail' with the minimum fields required to make a request.
newLoggingEntriesTail ::
  -- |  Multipart request metadata. See 'payload'.
  TailLogEntriesRequest ->
  LoggingEntriesTail
newLoggingEntriesTail payload =
  LoggingEntriesTail
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingEntriesTail where
  type Rs LoggingEntriesTail = TailLogEntriesResponse
  type
    Scopes LoggingEntriesTail =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingEntriesTail {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingEntriesTailResource)
          Core.mempty
