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
-- Module      : Gogol.DFAReporting.BillingProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of billing profiles, possibly filtered. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.billingProfiles.list@.
module Gogol.DFAReporting.BillingProfiles.List
    (
    -- * Resource
      DFAReportingBillingProfilesListResource

    -- ** Constructing a Request
    , DFAReportingBillingProfilesList (..)
    , newDFAReportingBillingProfilesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.billingProfiles.list@ method which the
-- 'DFAReportingBillingProfilesList' request conforms to.
type DFAReportingBillingProfilesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "billingProfiles" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "currency_code" Core.Text Core.:>
                       Core.QueryParams "ids" Core.Int64 Core.:>
                         Core.QueryParam "maxResults" Core.Int32 Core.:>
                           Core.QueryParam "name" Core.Text Core.:>
                             Core.QueryParam "onlySuggestion" Core.Bool Core.:>
                               Core.QueryParam "pageToken" Core.Text Core.:>
                                 Core.QueryParam "sortField"
                                   BillingProfilesListSortField
                                   Core.:>
                                   Core.QueryParam "sortOrder"
                                     BillingProfilesListSortOrder
                                     Core.:>
                                     Core.QueryParams "status"
                                       BillingProfilesListStatus
                                       Core.:>
                                       Core.QueryParams "subaccountIds"
                                         Core.Int64
                                         Core.:>
                                         Core.QueryParam "uploadType" Core.Text
                                           Core.:>
                                           Core.QueryParam "upload_protocol"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam "alt" Core.AltJSON
                                               Core.:>
                                               Core.Get '[Core.JSON]
                                                 BillingProfilesListResponse

-- | Retrieves a list of billing profiles, possibly filtered. This method supports paging.
--
-- /See:/ 'newDFAReportingBillingProfilesList' smart constructor.
data DFAReportingBillingProfilesList = DFAReportingBillingProfilesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Select only billing profile with currency.
    , currencyCode :: (Core.Maybe Core.Text)
      -- | Select only billing profile with these IDs.
    , ids :: (Core.Maybe [Core.Int64])
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Allows searching for billing profiles by name. Wildcards (/) are allowed. For example, \"profile/2020\" will return objects with names like \"profile June 2020\", \"profile April 2020\", or simply \"profile 2020\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"profile\" will match objects with name \"my profile\", \"profile 2021\", or simply \"profile\".
    , name :: (Core.Maybe Core.Text)
      -- | Select only billing profile which is suggested for the currency/code & subaccount/id using the Billing Suggestion API.
    , onlySuggestion :: (Core.Maybe Core.Bool)
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Field by which to sort the list.
    , sortField :: BillingProfilesListSortField
      -- | Order of sorted results.
    , sortOrder :: BillingProfilesListSortOrder
      -- | Select only billing profile with the specified status.
    , status :: (Core.Maybe [BillingProfilesListStatus])
      -- | Select only billing profile with the specified subaccount.When only/suggestion is true, only a single subaccount/id is supported.
    , subaccountIds :: (Core.Maybe [Core.Int64])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingBillingProfilesList' with the minimum fields required to make a request.
newDFAReportingBillingProfilesList 
    ::  Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingBillingProfilesList
newDFAReportingBillingProfilesList profileId =
  DFAReportingBillingProfilesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , currencyCode = Core.Nothing
    , ids = Core.Nothing
    , maxResults = 1000
    , name = Core.Nothing
    , onlySuggestion = Core.Nothing
    , pageToken = Core.Nothing
    , profileId = profileId
    , sortField = BillingProfilesListSortField_ID
    , sortOrder = BillingProfilesListSortOrder_Ascending
    , status = Core.Nothing
    , subaccountIds = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingBillingProfilesList
         where
        type Rs DFAReportingBillingProfilesList =
             BillingProfilesListResponse
        type Scopes DFAReportingBillingProfilesList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingBillingProfilesList{..}
          = go profileId xgafv accessToken callback
              currencyCode
              (ids Core.^. Core._Default)
              (Core.Just maxResults)
              name
              onlySuggestion
              pageToken
              (Core.Just sortField)
              (Core.Just sortOrder)
              (status Core.^. Core._Default)
              (subaccountIds Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingBillingProfilesListResource)
                      Core.mempty

