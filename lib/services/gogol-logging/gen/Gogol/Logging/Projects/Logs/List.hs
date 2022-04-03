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
-- Module      : Gogol.Logging.Projects.Logs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.logs.list@.
module Gogol.Logging.Projects.Logs.List
  ( -- * Resource
    LoggingProjectsLogsListResource,

    -- ** Constructing a Request
    LoggingProjectsLogsList (..),
    newLoggingProjectsLogsList,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.projects.logs.list@ method which the
-- 'LoggingProjectsLogsList' request conforms to.
type LoggingProjectsLogsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "logs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParams "resourceNames" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListLogsResponse

-- | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.
--
-- /See:/ 'newLoggingProjectsLogsList' smart constructor.
data LoggingProjectsLogsList = LoggingProjectsLogsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name that owns the logs: projects\/[PROJECT/ID] organizations\/[ORGANIZATION/ID] billingAccounts\/[BILLING/ACCOUNT/ID] folders\/[FOLDER_ID]
    parent :: Core.Text,
    -- | Optional. The resource name that owns the logs: projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID] folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/buckets\/[BUCKET/ID]\/views\/[VIEW/ID]To support legacy queries, it could also be: projects\/[PROJECT/ID] organizations\/[ORGANIZATION/ID] billingAccounts\/[BILLING/ACCOUNT/ID] folders\/[FOLDER/ID]
    resourceNames :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingProjectsLogsList' with the minimum fields required to make a request.
newLoggingProjectsLogsList ::
  -- |  Required. The resource name that owns the logs: projects\/[PROJECT/ID] organizations\/[ORGANIZATION/ID] billingAccounts\/[BILLING/ACCOUNT/ID] folders\/[FOLDER_ID] See 'parent'.
  Core.Text ->
  LoggingProjectsLogsList
newLoggingProjectsLogsList parent =
  LoggingProjectsLogsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      resourceNames = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingProjectsLogsList where
  type Rs LoggingProjectsLogsList = ListLogsResponse
  type
    Scopes LoggingProjectsLogsList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingProjectsLogsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      (resourceNames Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingProjectsLogsListResource
          )
          Core.mempty
