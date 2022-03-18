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
-- Module      : Gogol.DFAReporting.ChangeLogs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of change logs. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.changeLogs.list@.
module Gogol.DFAReporting.ChangeLogs.List
  ( -- * Resource
    DFAReportingChangeLogsListResource,

    -- ** Constructing a Request
    newDFAReportingChangeLogsList,
    DFAReportingChangeLogsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.changeLogs.list@ method which the
-- 'DFAReportingChangeLogsList' request conforms to.
type DFAReportingChangeLogsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "changeLogs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "action" ChangeLogsListAction
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "maxChangeTime" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "minChangeTime" Core.Text
    Core.:> Core.QueryParams "objectIds" Core.Int64
    Core.:> Core.QueryParam
              "objectType"
              ChangeLogsListObjectType
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParams
              "userProfileIds"
              Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ChangeLogsListResponse

-- | Retrieves a list of change logs. This method supports paging.
--
-- /See:/ 'newDFAReportingChangeLogsList' smart constructor.
data DFAReportingChangeLogsList = DFAReportingChangeLogsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only change logs with the specified action.
    action :: (Core.Maybe ChangeLogsListAction),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only change logs with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | Select only change logs whose change time is before the specified maxChangeTime.The time should be formatted as an RFC3339 date\/time string. For example, for 10:54 PM on July 18th, 2015, in the America\/New York time zone, the format is \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.
    maxChangeTime :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return.
    maxResults :: Core.Int32,
    -- | Select only change logs whose change time is after the specified minChangeTime.The time should be formatted as an RFC3339 date\/time string. For example, for 10:54 PM on July 18th, 2015, in the America\/New York time zone, the format is \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.
    minChangeTime :: (Core.Maybe Core.Text),
    -- | Select only change logs with these object IDs.
    objectIds :: (Core.Maybe [Core.Int64]),
    -- | Select only change logs with the specified object type.
    objectType :: (Core.Maybe ChangeLogsListObjectType),
    -- | Value of the nextPageToken from the previous result page.
    pageToken :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Select only change logs whose object ID, user name, old or new values match the search string.
    searchString :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Select only change logs with these user profile IDs.
    userProfileIds :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingChangeLogsList' with the minimum fields required to make a request.
newDFAReportingChangeLogsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingChangeLogsList
newDFAReportingChangeLogsList profileId =
  DFAReportingChangeLogsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      action = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      maxChangeTime = Core.Nothing,
      maxResults = 1000,
      minChangeTime = Core.Nothing,
      objectIds = Core.Nothing,
      objectType = Core.Nothing,
      pageToken = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userProfileIds = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingChangeLogsList
  where
  type
    Rs DFAReportingChangeLogsList =
      ChangeLogsListResponse
  type
    Scopes DFAReportingChangeLogsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient DFAReportingChangeLogsList {..} =
    go
      profileId
      xgafv
      accessToken
      action
      callback
      (ids Core.^. Core._Default)
      maxChangeTime
      (Core.Just maxResults)
      minChangeTime
      (objectIds Core.^. Core._Default)
      objectType
      pageToken
      searchString
      uploadType
      uploadProtocol
      (userProfileIds Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DFAReportingChangeLogsListResource
          )
          Core.mempty
