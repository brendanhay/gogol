{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DFAReporting.FloodlightActivities.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight activities, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivities.list@.
module Gogol.DFAReporting.FloodlightActivities.List
    (
    -- * Resource
      DFAReportingFloodlightActivitiesListResource

    -- ** Constructing a Request
    , DFAReportingFloodlightActivitiesList (..)
    , newDFAReportingFloodlightActivitiesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.floodlightActivities.list@ method which the
-- 'DFAReportingFloodlightActivitiesList' request conforms to.
type DFAReportingFloodlightActivitiesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "floodlightActivities" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "advertiserId" Core.Int64 Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParams "floodlightActivityGroupIds"
                         Core.Int64
                         Core.:>
                         Core.QueryParam "floodlightActivityGroupName"
                           Core.Text
                           Core.:>
                           Core.QueryParam "floodlightActivityGroupTagString"
                             Core.Text
                             Core.:>
                             Core.QueryParam "floodlightActivityGroupType"
                               FloodlightActivitiesListFloodlightActivityGroupType
                               Core.:>
                               Core.QueryParam "floodlightConfigurationId"
                                 Core.Int64
                                 Core.:>
                                 Core.QueryParams "ids" Core.Int64 Core.:>
                                   Core.QueryParam "maxResults" Core.Int32
                                     Core.:>
                                     Core.QueryParam "pageToken" Core.Text
                                       Core.:>
                                       Core.QueryParam "searchString" Core.Text
                                         Core.:>
                                         Core.QueryParam "sortField"
                                           FloodlightActivitiesListSortField
                                           Core.:>
                                           Core.QueryParam "sortOrder"
                                             FloodlightActivitiesListSortOrder
                                             Core.:>
                                             Core.QueryParam "tagString"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam "uploadType"
                                                 Core.Text
                                                 Core.:>
                                                 Core.QueryParam
                                                   "upload_protocol"
                                                   Core.Text
                                                   Core.:>
                                                   Core.QueryParam "alt"
                                                     Core.AltJSON
                                                     Core.:>
                                                     Core.Get '[Core.JSON]
                                                       FloodlightActivitiesListResponse

-- | Retrieves a list of floodlight activities, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingFloodlightActivitiesList' smart constructor.
data DFAReportingFloodlightActivitiesList = DFAReportingFloodlightActivitiesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Select only floodlight activities for the specified advertiser ID. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.
    , advertiserId :: (Core.Maybe Core.Int64)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only floodlight activities with the specified floodlight activity group IDs.
    , floodlightActivityGroupIds :: (Core.Maybe [Core.Int64])
      -- | Select only floodlight activities with the specified floodlight activity group name.
    , floodlightActivityGroupName :: (Core.Maybe Core.Text)
      -- | Select only floodlight activities with the specified floodlight activity group tag string.
    , floodlightActivityGroupTagString :: (Core.Maybe Core.Text)
      -- | Select only floodlight activities with the specified floodlight activity group type.
    , floodlightActivityGroupType :: (Core.Maybe FloodlightActivitiesListFloodlightActivityGroupType)
      -- | Select only floodlight activities for the specified floodlight configuration ID. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.
    , floodlightConfigurationId :: (Core.Maybe Core.Int64)
      -- | Select only floodlight activities with the specified IDs. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"floodlightactivity/2015\" will return objects with names like \"floodlightactivity June 2015\", \"floodlightactivity April 2015\", or simply \"floodlightactivity 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"floodlightactivity\" will match objects with name \"my floodlightactivity activity\", \"floodlightactivity 2015\", or simply \"floodlightactivity\".
    , searchString :: (Core.Maybe Core.Text)
      -- | Field by which to sort the list.
    , sortField :: FloodlightActivitiesListSortField
      -- | Order of sorted results.
    , sortOrder :: FloodlightActivitiesListSortOrder
      -- | Select only floodlight activities with the specified tag string.
    , tagString :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightActivitiesList' with the minimum fields required to make a request.
newDFAReportingFloodlightActivitiesList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingFloodlightActivitiesList
newDFAReportingFloodlightActivitiesList profileId =
  DFAReportingFloodlightActivitiesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , advertiserId = Core.Nothing
    , callback = Core.Nothing
    , floodlightActivityGroupIds = Core.Nothing
    , floodlightActivityGroupName = Core.Nothing
    , floodlightActivityGroupTagString = Core.Nothing
    , floodlightActivityGroupType = Core.Nothing
    , floodlightConfigurationId = Core.Nothing
    , ids = Core.Nothing
    , maxResults = 1000
    , pageToken = Core.Nothing
    , profileId = profileId
    , searchString = Core.Nothing
    , sortField = FloodlightActivitiesListSortField_ID
    , sortOrder = FloodlightActivitiesListSortOrder_Ascending
    , tagString = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingFloodlightActivitiesList
         where
        type Rs DFAReportingFloodlightActivitiesList =
             FloodlightActivitiesListResponse
        type Scopes DFAReportingFloodlightActivitiesList =
             '[Dfatrafficking'FullControl]
        requestClient
          DFAReportingFloodlightActivitiesList{..}
          = go profileId xgafv accessToken advertiserId
              callback
              (floodlightActivityGroupIds Core.^. Core._Default)
              floodlightActivityGroupName
              floodlightActivityGroupTagString
              floodlightActivityGroupType
              floodlightConfigurationId
              (ids Core.^. Core._Default)
              (Core.Just maxResults)
              pageToken
              searchString
              (Core.Just sortField)
              (Core.Just sortOrder)
              tagString
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingFloodlightActivitiesListResource)
                      Core.mempty

