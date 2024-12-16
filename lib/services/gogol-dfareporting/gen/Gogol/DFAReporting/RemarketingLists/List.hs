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
-- Module      : Gogol.DFAReporting.RemarketingLists.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of remarketing lists, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.list@.
module Gogol.DFAReporting.RemarketingLists.List
    (
    -- * Resource
      DFAReportingRemarketingListsListResource

    -- ** Constructing a Request
    , DFAReportingRemarketingListsList (..)
    , newDFAReportingRemarketingListsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.remarketingLists.list@ method which the
-- 'DFAReportingRemarketingListsList' request conforms to.
type DFAReportingRemarketingListsListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "remarketingLists" Core.:>
               Core.QueryParam "advertiserId" Core.Int64 Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "active" Core.Bool Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "floodlightActivityId" Core.Int64
                           Core.:>
                           Core.QueryParam "maxResults" Core.Int32 Core.:>
                             Core.QueryParam "name" Core.Text Core.:>
                               Core.QueryParam "pageToken" Core.Text Core.:>
                                 Core.QueryParam "sortField"
                                   RemarketingListsListSortField
                                   Core.:>
                                   Core.QueryParam "sortOrder"
                                     RemarketingListsListSortOrder
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParam "alt" Core.AltJSON
                                           Core.:>
                                           Core.Get '[Core.JSON]
                                             RemarketingListsListResponse

-- | Retrieves a list of remarketing lists, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingRemarketingListsList' smart constructor.
data DFAReportingRemarketingListsList = DFAReportingRemarketingListsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Select only active or only inactive remarketing lists.
    , active :: (Core.Maybe Core.Bool)
      -- | Required. Select only remarketing lists owned by this advertiser.
    , advertiserId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only remarketing lists that have this floodlight activity ID.
    , floodlightActivityId :: (Core.Maybe Core.Int64)
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Allows searching for objects by name or ID. Wildcards (/) are allowed. For example, \"remarketing list/2015\" will return objects with names like \"remarketing list June 2015\", \"remarketing list April 2015\", or simply \"remarketing list 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"remarketing list\" will match objects with name \"my remarketing list\", \"remarketing list 2015\", or simply \"remarketing list\".
    , name :: (Core.Maybe Core.Text)
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Field by which to sort the list.
    , sortField :: RemarketingListsListSortField
      -- | Order of sorted results.
    , sortOrder :: RemarketingListsListSortOrder
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingRemarketingListsList' with the minimum fields required to make a request.
newDFAReportingRemarketingListsList 
    ::  Core.Int64
       -- ^  Required. Select only remarketing lists owned by this advertiser. See 'advertiserId'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingRemarketingListsList
newDFAReportingRemarketingListsList advertiserId profileId =
  DFAReportingRemarketingListsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , active = Core.Nothing
    , advertiserId = advertiserId
    , callback = Core.Nothing
    , floodlightActivityId = Core.Nothing
    , maxResults = 1000
    , name = Core.Nothing
    , pageToken = Core.Nothing
    , profileId = profileId
    , sortField = RemarketingListsListSortField_ID
    , sortOrder = RemarketingListsListSortOrder_Ascending
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingRemarketingListsList
         where
        type Rs DFAReportingRemarketingListsList =
             RemarketingListsListResponse
        type Scopes DFAReportingRemarketingListsList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingRemarketingListsList{..}
          = go profileId (Core.Just advertiserId) xgafv
              accessToken
              active
              callback
              floodlightActivityId
              (Core.Just maxResults)
              name
              pageToken
              (Core.Just sortField)
              (Core.Just sortOrder)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingRemarketingListsListResource)
                      Core.mempty

