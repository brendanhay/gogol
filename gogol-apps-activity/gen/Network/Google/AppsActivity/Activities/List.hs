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
-- Module      : Network.Google.AppsActivity.Activities.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of activities visible to the current logged in user. Visible activities are determined by the visibility settings of the object that was acted on, e.g. Drive files a user can see. An activity is a record of past events. Multiple events may be merged if they are similar. A request is scoped to activities from a given Google service using the source parameter.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Drive Activity API Reference> for @appsactivity.activities.list@.
module Network.Google.AppsActivity.Activities.List
  ( -- * Resource
    AppsActivityActivitiesListResource,

    -- ** Constructing a Request
    newAppsActivityActivitiesList,
    AppsActivityActivitiesList,
  )
where

import Network.Google.AppsActivity.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @appsactivity.activities.list@ method which the
-- 'AppsActivityActivitiesList' request conforms to.
type AppsActivityActivitiesListResource =
  "appsactivity"
    Core.:> "v1"
    Core.:> "activities"
    Core.:> Core.QueryParam "drive.ancestorId" Core.Text
    Core.:> Core.QueryParam "drive.fileId" Core.Text
    Core.:> Core.QueryParam
              "groupingStrategy"
              ActivitiesListGroupingStrategy
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListActivitiesResponse

-- | Returns a list of activities visible to the current logged in user. Visible activities are determined by the visibility settings of the object that was acted on, e.g. Drive files a user can see. An activity is a record of past events. Multiple events may be merged if they are similar. A request is scoped to activities from a given Google service using the source parameter.
--
-- /See:/ 'newAppsActivityActivitiesList' smart constructor.
data AppsActivityActivitiesList = AppsActivityActivitiesList
  { -- | Identifies the Drive folder containing the items for which to return activities.
    driveAncestorId :: (Core.Maybe Core.Text),
    -- | Identifies the Drive item to return activities for.
    driveFileId :: (Core.Maybe Core.Text),
    -- | Indicates the strategy to use when grouping singleEvents items in the associated combinedEvent object.
    groupingStrategy :: ActivitiesListGroupingStrategy,
    -- | The maximum number of events to return on a page. The response includes a continuation token if there are more events.
    pageSize :: Core.Int32,
    -- | A token to retrieve a specific page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | The Google service from which to return activities. Possible values of source are: - drive.google.com
    source :: (Core.Maybe Core.Text),
    -- | The ID used for ACL checks (does not filter the resulting event list by the assigned value). Use the special value me to indicate the currently authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppsActivityActivitiesList' with the minimum fields required to make a request.
newAppsActivityActivitiesList ::
  AppsActivityActivitiesList
newAppsActivityActivitiesList =
  AppsActivityActivitiesList
    { driveAncestorId = Core.Nothing,
      driveFileId = Core.Nothing,
      groupingStrategy = ActivitiesListGroupingStrategy_DriveUi,
      pageSize = 50,
      pageToken = Core.Nothing,
      source = Core.Nothing,
      userId = "me"
    }

instance
  Core.GoogleRequest
    AppsActivityActivitiesList
  where
  type
    Rs AppsActivityActivitiesList =
      ListActivitiesResponse
  type
    Scopes AppsActivityActivitiesList =
      '["https://www.googleapis.com/auth/activity"]
  requestClient AppsActivityActivitiesList {..} =
    go
      driveAncestorId
      driveFileId
      (Core.Just groupingStrategy)
      (Core.Just pageSize)
      pageToken
      source
      (Core.Just userId)
      (Core.Just Core.AltJSON)
      appsActivityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AppsActivityActivitiesListResource
          )
          Core.mempty
