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
-- Module      : Gogol.DFAReporting.AdvertiserInvoices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of invoices for a particular issue month. The api only works if the billing profile invoice level is set to either advertiser or campaign non-consolidated invoice level.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserInvoices.list@.
module Gogol.DFAReporting.AdvertiserInvoices.List
    (
    -- * Resource
      DFAReportingAdvertiserInvoicesListResource

    -- ** Constructing a Request
    , DFAReportingAdvertiserInvoicesList (..)
    , newDFAReportingAdvertiserInvoicesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.advertiserInvoices.list@ method which the
-- 'DFAReportingAdvertiserInvoicesList' request conforms to.
type DFAReportingAdvertiserInvoicesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "advertisers" Core.:>
               Core.Capture "advertiserId" Core.Int64 Core.:>
                 "invoices" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "issueMonth" Core.Text Core.:>
                           Core.QueryParam "maxResults" Core.Int32 Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON]
                                       AdvertiserInvoicesListResponse

-- | Retrieves a list of invoices for a particular issue month. The api only works if the billing profile invoice level is set to either advertiser or campaign non-consolidated invoice level.
--
-- /See:/ 'newDFAReportingAdvertiserInvoicesList' smart constructor.
data DFAReportingAdvertiserInvoicesList = DFAReportingAdvertiserInvoicesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Advertiser ID of this invoice.
    , advertiserId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Month for which invoices are needed in the format YYYYMM. Required field
    , issueMonth :: (Core.Maybe Core.Text)
      -- | Maximum number of results to return.
    , maxResults :: Core.Int32
      -- | Value of the nextPageToken from the previous result page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAdvertiserInvoicesList' with the minimum fields required to make a request.
newDFAReportingAdvertiserInvoicesList 
    ::  Core.Int64
       -- ^  Advertiser ID of this invoice. See 'advertiserId'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingAdvertiserInvoicesList
newDFAReportingAdvertiserInvoicesList advertiserId profileId =
  DFAReportingAdvertiserInvoicesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , advertiserId = advertiserId
    , callback = Core.Nothing
    , issueMonth = Core.Nothing
    , maxResults = 1000
    , pageToken = Core.Nothing
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingAdvertiserInvoicesList
         where
        type Rs DFAReportingAdvertiserInvoicesList =
             AdvertiserInvoicesListResponse
        type Scopes DFAReportingAdvertiserInvoicesList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingAdvertiserInvoicesList{..}
          = go profileId advertiserId xgafv accessToken
              callback
              issueMonth
              (Core.Just maxResults)
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingAdvertiserInvoicesListResource)
                      Core.mempty

