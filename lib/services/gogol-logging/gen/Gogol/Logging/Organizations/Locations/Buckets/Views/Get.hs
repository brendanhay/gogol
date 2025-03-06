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
-- Module      : Gogol.Logging.Organizations.Locations.Buckets.Views.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a view on a log bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.views.get@.
module Gogol.Logging.Organizations.Locations.Buckets.Views.Get
  ( -- * Resource
    LoggingOrganizationsLocationsBucketsViewsGetResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsBucketsViewsGet (..),
    newLoggingOrganizationsLocationsBucketsViewsGet,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.organizations.locations.buckets.views.get@ method which the
-- 'LoggingOrganizationsLocationsBucketsViewsGet' request conforms to.
type LoggingOrganizationsLocationsBucketsViewsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] LogView

-- | Gets a view on a log bucket.
--
-- /See:/ 'newLoggingOrganizationsLocationsBucketsViewsGet' smart constructor.
data LoggingOrganizationsLocationsBucketsViewsGet = LoggingOrganizationsLocationsBucketsViewsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the policy: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsBucketsViewsGet' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsBucketsViewsGet ::
  -- |  Required. The resource name of the policy: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]\" For example:\"projects\/my-project\/locations\/global\/buckets\/my-bucket\/views\/my-view\" See 'name'.
  Core.Text ->
  LoggingOrganizationsLocationsBucketsViewsGet
newLoggingOrganizationsLocationsBucketsViewsGet name =
  LoggingOrganizationsLocationsBucketsViewsGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingOrganizationsLocationsBucketsViewsGet
  where
  type Rs LoggingOrganizationsLocationsBucketsViewsGet = LogView
  type
    Scopes LoggingOrganizationsLocationsBucketsViewsGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingOrganizationsLocationsBucketsViewsGet {..} =
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
              Core.Proxy LoggingOrganizationsLocationsBucketsViewsGetResource
          )
          Core.mempty
