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
-- Module      : Gogol.Logging.Projects.Locations.SavedQueries.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing SavedQuery that was created by the user making the request.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.savedQueries.delete@.
module Gogol.Logging.Projects.Locations.SavedQueries.Delete
  ( -- * Resource
    LoggingProjectsLocationsSavedQueriesDeleteResource,

    -- ** Constructing a Request
    LoggingProjectsLocationsSavedQueriesDelete (..),
    newLoggingProjectsLocationsSavedQueriesDelete,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.projects.locations.savedQueries.delete@ method which the
-- 'LoggingProjectsLocationsSavedQueriesDelete' request conforms to.
type LoggingProjectsLocationsSavedQueriesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an existing SavedQuery that was created by the user making the request.
--
-- /See:/ 'newLoggingProjectsLocationsSavedQueriesDelete' smart constructor.
data LoggingProjectsLocationsSavedQueriesDelete = LoggingProjectsLocationsSavedQueriesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full resource name of the saved query to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLocationsSavedQueriesDelete' with the minimum fields required to make a request.
newLoggingProjectsLocationsSavedQueriesDelete ::
  -- |  Required. The full resource name of the saved query to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\" See 'name'.
  Core.Text ->
  LoggingProjectsLocationsSavedQueriesDelete
newLoggingProjectsLocationsSavedQueriesDelete name =
  LoggingProjectsLocationsSavedQueriesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingProjectsLocationsSavedQueriesDelete
  where
  type Rs LoggingProjectsLocationsSavedQueriesDelete = Empty
  type
    Scopes LoggingProjectsLocationsSavedQueriesDelete =
      '[CloudPlatform'FullControl, Logging'Admin]
  requestClient LoggingProjectsLocationsSavedQueriesDelete {..} =
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
              Core.Proxy LoggingProjectsLocationsSavedQueriesDeleteResource
          )
          Core.mempty
