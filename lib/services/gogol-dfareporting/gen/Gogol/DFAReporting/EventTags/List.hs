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
-- Module      : Gogol.DFAReporting.EventTags.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of event tags, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.eventTags.list@.
module Gogol.DFAReporting.EventTags.List
  ( -- * Resource
    DFAReportingEventTagsListResource,

    -- ** Constructing a Request
    DFAReportingEventTagsList (..),
    newDFAReportingEventTagsList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.eventTags.list@ method which the
-- 'DFAReportingEventTagsList' request conforms to.
type DFAReportingEventTagsListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "eventTags"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adId" Core.Int64
    Core.:> Core.QueryParam "advertiserId" Core.Int64
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "campaignId" Core.Int64
    Core.:> Core.QueryParam "definitionsOnly" Core.Bool
    Core.:> Core.QueryParam "enabled" Core.Bool
    Core.:> Core.QueryParams "eventTagTypes" EventTagsListEventTagTypes
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "searchString" Core.Text
    Core.:> Core.QueryParam "sortField" EventTagsListSortField
    Core.:> Core.QueryParam "sortOrder" EventTagsListSortOrder
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] EventTagsListResponse

-- | Retrieves a list of event tags, possibly filtered.
--
-- /See:/ 'newDFAReportingEventTagsList' smart constructor.
data DFAReportingEventTagsList = DFAReportingEventTagsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Select only event tags that belong to this ad.
    adId :: (Core.Maybe Core.Int64),
    -- | Select only event tags that belong to this advertiser.
    advertiserId :: (Core.Maybe Core.Int64),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only event tags that belong to this campaign.
    campaignId :: (Core.Maybe Core.Int64),
    -- | Examine only the specified campaign or advertiser\'s event tags for matching selector criteria. When set to false, the parent advertiser and parent campaign of the specified ad or campaign is examined as well. In addition, when set to false, the status field is examined as well, along with the enabledByDefault field. This parameter can not be set to true when adId is specified as ads do not define their own even tags.
    definitionsOnly :: (Core.Maybe Core.Bool),
    -- | Select only enabled event tags. What is considered enabled or disabled depends on the definitionsOnly parameter. When definitionsOnly is set to true, only the specified advertiser or campaign\'s event tags\' enabledByDefault field is examined. When definitionsOnly is set to false, the specified ad or specified campaign\'s parent advertiser\'s or parent campaign\'s event tags\' enabledByDefault and status fields are examined as well.
    enabled :: (Core.Maybe Core.Bool),
    -- | Select only event tags with the specified event tag types. Event tag types can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking.
    eventTagTypes :: (Core.Maybe [EventTagsListEventTagTypes]),
    -- | Select only event tags with these IDs.
    ids :: (Core.Maybe [Core.Int64]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"eventtag/2015\" will return objects with names like \"eventtag June 2015\", \"eventtag April 2015\", or simply \"eventtag 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"eventtag\" will match objects with name \"my eventtag\", \"eventtag 2015\", or simply \"eventtag\".
    searchString :: (Core.Maybe Core.Text),
    -- | Field by which to sort the list.
    sortField :: EventTagsListSortField,
    -- | Order of sorted results.
    sortOrder :: EventTagsListSortOrder,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingEventTagsList' with the minimum fields required to make a request.
newDFAReportingEventTagsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingEventTagsList
newDFAReportingEventTagsList profileId =
  DFAReportingEventTagsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      adId = Core.Nothing,
      advertiserId = Core.Nothing,
      callback = Core.Nothing,
      campaignId = Core.Nothing,
      definitionsOnly = Core.Nothing,
      enabled = Core.Nothing,
      eventTagTypes = Core.Nothing,
      ids = Core.Nothing,
      profileId = profileId,
      searchString = Core.Nothing,
      sortField = EventTagsListSortField_ID,
      sortOrder = EventTagsListSortOrder_Ascending,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingEventTagsList where
  type Rs DFAReportingEventTagsList = EventTagsListResponse
  type
    Scopes DFAReportingEventTagsList =
      '[Dfatrafficking'FullControl]
  requestClient DFAReportingEventTagsList {..} =
    go
      profileId
      xgafv
      accessToken
      adId
      advertiserId
      callback
      campaignId
      definitionsOnly
      enabled
      (eventTagTypes Core.^. Core._Default)
      (ids Core.^. Core._Default)
      searchString
      (Core.Just sortField)
      (Core.Just sortOrder)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingEventTagsListResource)
          Core.mempty
