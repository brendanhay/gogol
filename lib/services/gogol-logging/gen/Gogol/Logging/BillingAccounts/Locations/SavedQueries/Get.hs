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
-- Module      : Gogol.Logging.BillingAccounts.Locations.SavedQueries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all data associated with the requested query.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.savedQueries.get@.
module Gogol.Logging.BillingAccounts.Locations.SavedQueries.Get
    (
    -- * Resource
      LoggingBillingAccountsLocationsSavedQueriesGetResource

    -- ** Constructing a Request
    , LoggingBillingAccountsLocationsSavedQueriesGet (..)
    , newLoggingBillingAccountsLocationsSavedQueriesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.billingAccounts.locations.savedQueries.get@ method which the
-- 'LoggingBillingAccountsLocationsSavedQueriesGet' request conforms to.
type LoggingBillingAccountsLocationsSavedQueriesGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] SavedQuery

-- | Returns all data associated with the requested query.
--
-- /See:/ 'newLoggingBillingAccountsLocationsSavedQueriesGet' smart constructor.
data LoggingBillingAccountsLocationsSavedQueriesGet = LoggingBillingAccountsLocationsSavedQueriesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the saved query. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsLocationsSavedQueriesGet' with the minimum fields required to make a request.
newLoggingBillingAccountsLocationsSavedQueriesGet 
    ::  Core.Text
       -- ^  Required. The resource name of the saved query. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\" See 'name'.
    -> LoggingBillingAccountsLocationsSavedQueriesGet
newLoggingBillingAccountsLocationsSavedQueriesGet name =
  LoggingBillingAccountsLocationsSavedQueriesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingBillingAccountsLocationsSavedQueriesGet
         where
        type Rs
               LoggingBillingAccountsLocationsSavedQueriesGet
             = SavedQuery
        type Scopes
               LoggingBillingAccountsLocationsSavedQueriesGet
             =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Logging'Admin, Logging'Read]
        requestClient
          LoggingBillingAccountsLocationsSavedQueriesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingBillingAccountsLocationsSavedQueriesGetResource)
                      Core.mempty

