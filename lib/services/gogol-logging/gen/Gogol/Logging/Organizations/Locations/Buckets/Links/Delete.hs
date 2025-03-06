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
-- Module      : Gogol.Logging.Organizations.Locations.Buckets.Links.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a link. This will also delete the corresponding BigQuery linked dataset.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.buckets.links.delete@.
module Gogol.Logging.Organizations.Locations.Buckets.Links.Delete
  ( -- * Resource
    LoggingOrganizationsLocationsBucketsLinksDeleteResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsBucketsLinksDelete (..),
    newLoggingOrganizationsLocationsBucketsLinksDelete,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.organizations.locations.buckets.links.delete@ method which the
-- 'LoggingOrganizationsLocationsBucketsLinksDelete' request conforms to.
type LoggingOrganizationsLocationsBucketsLinksDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a link. This will also delete the corresponding BigQuery linked dataset.
--
-- /See:/ 'newLoggingOrganizationsLocationsBucketsLinksDelete' smart constructor.
data LoggingOrganizationsLocationsBucketsLinksDelete = LoggingOrganizationsLocationsBucketsLinksDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the link to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK_ID]\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsBucketsLinksDelete' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsBucketsLinksDelete ::
  -- |  Required. The full resource name of the link to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/links\/[LINK_ID]\" See 'name'.
  Core.Text ->
  LoggingOrganizationsLocationsBucketsLinksDelete
newLoggingOrganizationsLocationsBucketsLinksDelete name =
  LoggingOrganizationsLocationsBucketsLinksDelete
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
    LoggingOrganizationsLocationsBucketsLinksDelete
  where
  type Rs LoggingOrganizationsLocationsBucketsLinksDelete = Operation
  type
    Scopes LoggingOrganizationsLocationsBucketsLinksDelete =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingOrganizationsLocationsBucketsLinksDelete {..} =
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
              Core.Proxy LoggingOrganizationsLocationsBucketsLinksDeleteResource
          )
          Core.mempty
