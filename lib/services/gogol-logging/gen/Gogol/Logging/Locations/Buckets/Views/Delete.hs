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
-- Module      : Gogol.Logging.Locations.Buckets.Views.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.buckets.views.delete@.
module Gogol.Logging.Locations.Buckets.Views.Delete
  ( -- * Resource
    LoggingLocationsBucketsViewsDeleteResource,

    -- ** Constructing a Request
    LoggingLocationsBucketsViewsDelete (..),
    newLoggingLocationsBucketsViewsDelete,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.locations.buckets.views.delete@ method which the
-- 'LoggingLocationsBucketsViewsDelete' request conforms to.
type LoggingLocationsBucketsViewsDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.
--
-- /See:/ 'newLoggingLocationsBucketsViewsDelete' smart constructor.
data LoggingLocationsBucketsViewsDelete = LoggingLocationsBucketsViewsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the view to delete: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingLocationsBucketsViewsDelete' with the minimum fields required to make a request.
newLoggingLocationsBucketsViewsDelete ::
  -- |  Required. The full resource name of the view to delete: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\" See 'name'.
  Core.Text ->
  LoggingLocationsBucketsViewsDelete
newLoggingLocationsBucketsViewsDelete name =
  LoggingLocationsBucketsViewsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingLocationsBucketsViewsDelete where
  type Rs LoggingLocationsBucketsViewsDelete = Empty
  type
    Scopes LoggingLocationsBucketsViewsDelete =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingLocationsBucketsViewsDelete {..} =
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
          ( Core.Proxy ::
              Core.Proxy LoggingLocationsBucketsViewsDeleteResource
          )
          Core.mempty
