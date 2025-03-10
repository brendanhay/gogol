{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Logging.Exclusions.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more properties of an existing exclusion in the _Default sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.exclusions.patch@.
module Gogol.Logging.Exclusions.Patch
  ( -- * Resource
    LoggingExclusionsPatchResource,

    -- ** Constructing a Request
    LoggingExclusionsPatch (..),
    newLoggingExclusionsPatch,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.exclusions.patch@ method which the
-- 'LoggingExclusionsPatch' request conforms to.
type LoggingExclusionsPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] LogExclusion
    Core.:> Core.Patch '[Core.JSON] LogExclusion

-- | Changes one or more properties of an existing exclusion in the _Default sink.
--
-- /See:/ 'newLoggingExclusionsPatch' smart constructor.
data LoggingExclusionsPatch = LoggingExclusionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the exclusion to update: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: LogExclusion,
    -- | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from the corresponding fields in the LogExclusion included in this request. Fields not mentioned in update/mask are not changed and are ignored in the request.For example, to change the filter and description of an exclusion, specify an update/mask of \"filter,description\".
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingExclusionsPatch' with the minimum fields required to make a request.
newLoggingExclusionsPatch ::
  -- |  Required. The resource name of the exclusion to update: \"projects\/[PROJECT/ID]\/exclusions\/[EXCLUSION/ID]\" \"organizations\/[ORGANIZATION/ID]\/exclusions\/[EXCLUSION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/exclusions\/[EXCLUSION/ID]\" \"folders\/[FOLDER/ID]\/exclusions\/[EXCLUSION_ID]\" For example:\"projects\/my-project\/exclusions\/my-exclusion\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  LogExclusion ->
  LoggingExclusionsPatch
newLoggingExclusionsPatch name payload =
  LoggingExclusionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingExclusionsPatch where
  type Rs LoggingExclusionsPatch = LogExclusion
  type
    Scopes LoggingExclusionsPatch =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingExclusionsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingExclusionsPatchResource)
          Core.mempty
