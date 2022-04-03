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
-- Module      : Gogol.Logging.Folders.Sinks.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink\'s writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.sinks.create@.
module Gogol.Logging.Folders.Sinks.Create
  ( -- * Resource
    LoggingFoldersSinksCreateResource,

    -- ** Constructing a Request
    LoggingFoldersSinksCreate (..),
    newLoggingFoldersSinksCreate,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.folders.sinks.create@ method which the
-- 'LoggingFoldersSinksCreate' request conforms to.
type LoggingFoldersSinksCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "sinks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uniqueWriterIdentity" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogSink
    Core.:> Core.Post '[Core.JSON] LogSink

-- | Creates a sink that exports specified log entries to a destination. The export of newly-ingested log entries begins immediately, unless the sink\'s writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.
--
-- /See:/ 'newLoggingFoldersSinksCreate' smart constructor.
data LoggingFoldersSinksCreate = LoggingFoldersSinksCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource in which to create the sink: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-project\" \"organizations\/123456789\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogSink,
    -- | Optional. Determines the kind of IAM identity returned as writer/identity in the new sink. If this value is omitted or set to false, and if the sink\'s parent is a project, then the value returned as writer/identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink\'s destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer/identity will be a unique service account used only for exports from the new sink. For more information, see writer/identity in LogSink.
    uniqueWriterIdentity :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingFoldersSinksCreate' with the minimum fields required to make a request.
newLoggingFoldersSinksCreate ::
  -- |  Required. The resource in which to create the sink: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-project\" \"organizations\/123456789\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogSink ->
  LoggingFoldersSinksCreate
newLoggingFoldersSinksCreate parent payload =
  LoggingFoldersSinksCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uniqueWriterIdentity = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingFoldersSinksCreate where
  type Rs LoggingFoldersSinksCreate = LogSink
  type
    Scopes LoggingFoldersSinksCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingFoldersSinksCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uniqueWriterIdentity
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingFoldersSinksCreateResource
          )
          Core.mempty
