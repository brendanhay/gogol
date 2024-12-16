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
-- Module      : Gogol.DFAReporting.BillingRates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of billing rates. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.billingRates.list@.
module Gogol.DFAReporting.BillingRates.List
    (
    -- * Resource
      DFAReportingBillingRatesListResource

    -- ** Constructing a Request
    , DFAReportingBillingRatesList (..)
    , newDFAReportingBillingRatesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.billingRates.list@ method which the
-- 'DFAReportingBillingRatesList' request conforms to.
type DFAReportingBillingRatesListResource =
     "dfareporting" Core.:>
       "v4" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "billingProfiles" Core.:>
               Core.Capture "billingProfileId" Core.Int64 Core.:>
                 "billingRates" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] BillingRatesListResponse

-- | Retrieves a list of billing rates. This method supports paging.
--
-- /See:/ 'newDFAReportingBillingRatesList' smart constructor.
data DFAReportingBillingRatesList = DFAReportingBillingRatesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Billing profile ID of this billing rate.
    , billingProfileId :: Core.Int64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingBillingRatesList' with the minimum fields required to make a request.
newDFAReportingBillingRatesList 
    ::  Core.Int64
       -- ^  Billing profile ID of this billing rate. See 'billingProfileId'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingBillingRatesList
newDFAReportingBillingRatesList billingProfileId profileId =
  DFAReportingBillingRatesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , billingProfileId = billingProfileId
    , callback = Core.Nothing
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingBillingRatesList
         where
        type Rs DFAReportingBillingRatesList =
             BillingRatesListResponse
        type Scopes DFAReportingBillingRatesList =
             '[Dfatrafficking'FullControl]
        requestClient DFAReportingBillingRatesList{..}
          = go profileId billingProfileId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DFAReportingBillingRatesListResource)
                      Core.mempty

