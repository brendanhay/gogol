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
-- Module      : Gogol.Logging.Locations.Buckets.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a log bucket.Changes the bucket\'s lifecycle/state to the DELETE/REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.delete@.
module Gogol.Logging.Locations.Buckets.Delete
  ( -- * Resource
    LoggingLocationsBucketsDeleteResource,

    -- ** Constructing a Request
    LoggingLocationsBucketsDelete (..),
    newLoggingLocationsBucketsDelete,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.locations.buckets.delete@ method which the
-- 'LoggingLocationsBucketsDelete' request conforms to.
type LoggingLocationsBucketsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a log bucket.Changes the bucket\'s lifecycle/state to the DELETE/REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.
--
-- /See:/ 'newLoggingLocationsBucketsDelete' smart constructor.
data LoggingLocationsBucketsDelete = LoggingLocationsBucketsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the bucket to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLocationsBucketsDelete' with the minimum fields required to make a request.
newLoggingLocationsBucketsDelete ::
  -- |  Required. The full resource name of the bucket to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET_ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\" See 'name'.
  Core.Text ->
  LoggingLocationsBucketsDelete
newLoggingLocationsBucketsDelete name =
  LoggingLocationsBucketsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingLocationsBucketsDelete where
  type Rs LoggingLocationsBucketsDelete = Empty
  type
    Scopes LoggingLocationsBucketsDelete =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingLocationsBucketsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LoggingLocationsBucketsDeleteResource)
          Core.mempty
