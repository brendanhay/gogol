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
-- Module      : Gogol.Logging.Organizations.Locations.SavedQueries.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all data associated with the requested query.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.savedQueries.get@.
module Gogol.Logging.Organizations.Locations.SavedQueries.Get
  ( -- * Resource
    LoggingOrganizationsLocationsSavedQueriesGetResource,

    -- ** Constructing a Request
    LoggingOrganizationsLocationsSavedQueriesGet (..),
    newLoggingOrganizationsLocationsSavedQueriesGet,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.organizations.locations.savedQueries.get@ method which the
-- 'LoggingOrganizationsLocationsSavedQueriesGet' request conforms to.
type LoggingOrganizationsLocationsSavedQueriesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SavedQuery

-- | Returns all data associated with the requested query.
--
-- /See:/ 'newLoggingOrganizationsLocationsSavedQueriesGet' smart constructor.
data LoggingOrganizationsLocationsSavedQueriesGet = LoggingOrganizationsLocationsSavedQueriesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the saved query. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsSavedQueriesGet' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsSavedQueriesGet ::
  -- |  Required. The resource name of the saved query. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\" See 'name'.
  Core.Text ->
  LoggingOrganizationsLocationsSavedQueriesGet
newLoggingOrganizationsLocationsSavedQueriesGet name =
  LoggingOrganizationsLocationsSavedQueriesGet
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
    LoggingOrganizationsLocationsSavedQueriesGet
  where
  type Rs LoggingOrganizationsLocationsSavedQueriesGet = SavedQuery
  type
    Scopes LoggingOrganizationsLocationsSavedQueriesGet =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingOrganizationsLocationsSavedQueriesGet {..} =
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
              Core.Proxy LoggingOrganizationsLocationsSavedQueriesGetResource
          )
          Core.mempty
