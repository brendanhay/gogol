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
-- Module      : Gogol.Logging.BillingAccounts.Exclusions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.exclusions.create@.
module Gogol.Logging.BillingAccounts.Exclusions.Create
  ( -- * Resource
    LoggingBillingAccountsExclusionsCreateResource,

    -- ** Constructing a Request
    LoggingBillingAccountsExclusionsCreate (..),
    newLoggingBillingAccountsExclusionsCreate,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.billingAccounts.exclusions.create@ method which the
-- 'LoggingBillingAccountsExclusionsCreate' request conforms to.
type LoggingBillingAccountsExclusionsCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "exclusions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogExclusion
    Core.:> Core.Post '[Core.JSON] LogExclusion

-- | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
--
-- /See:/ 'newLoggingBillingAccountsExclusionsCreate' smart constructor.
data LoggingBillingAccountsExclusionsCreate = LoggingBillingAccountsExclusionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource in which to create the exclusion: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-logging-project\" \"organizations\/123456789\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogExclusion,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsExclusionsCreate' with the minimum fields required to make a request.
newLoggingBillingAccountsExclusionsCreate ::
  -- |  Required. The parent resource in which to create the exclusion: \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" For examples:\"projects\/my-logging-project\" \"organizations\/123456789\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogExclusion ->
  LoggingBillingAccountsExclusionsCreate
newLoggingBillingAccountsExclusionsCreate parent payload =
  LoggingBillingAccountsExclusionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingBillingAccountsExclusionsCreate where
  type Rs LoggingBillingAccountsExclusionsCreate = LogExclusion
  type
    Scopes LoggingBillingAccountsExclusionsCreate =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingBillingAccountsExclusionsCreate {..} =
    go
      parent
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
          ( Core.Proxy ::
              Core.Proxy LoggingBillingAccountsExclusionsCreateResource
          )
          Core.mempty
