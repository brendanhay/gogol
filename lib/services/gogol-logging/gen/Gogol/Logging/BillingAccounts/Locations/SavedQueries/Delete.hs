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
-- Module      : Gogol.Logging.BillingAccounts.Locations.SavedQueries.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing SavedQuery that was created by the user making the request.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.savedQueries.delete@.
module Gogol.Logging.BillingAccounts.Locations.SavedQueries.Delete
    (
    -- * Resource
      LoggingBillingAccountsLocationsSavedQueriesDeleteResource

    -- ** Constructing a Request
    , LoggingBillingAccountsLocationsSavedQueriesDelete (..)
    , newLoggingBillingAccountsLocationsSavedQueriesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.billingAccounts.locations.savedQueries.delete@ method which the
-- 'LoggingBillingAccountsLocationsSavedQueriesDelete' request conforms to.
type LoggingBillingAccountsLocationsSavedQueriesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes an existing SavedQuery that was created by the user making the request.
--
-- /See:/ 'newLoggingBillingAccountsLocationsSavedQueriesDelete' smart constructor.
data LoggingBillingAccountsLocationsSavedQueriesDelete = LoggingBillingAccountsLocationsSavedQueriesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The full resource name of the saved query to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsLocationsSavedQueriesDelete' with the minimum fields required to make a request.
newLoggingBillingAccountsLocationsSavedQueriesDelete 
    ::  Core.Text
       -- ^  Required. The full resource name of the saved query to delete. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\/savedQueries\/[QUERY_ID]\" For example: \"projects\/my-project\/locations\/global\/savedQueries\/my-saved-query\" See 'name'.
    -> LoggingBillingAccountsLocationsSavedQueriesDelete
newLoggingBillingAccountsLocationsSavedQueriesDelete name =
  LoggingBillingAccountsLocationsSavedQueriesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingBillingAccountsLocationsSavedQueriesDelete
         where
        type Rs
               LoggingBillingAccountsLocationsSavedQueriesDelete
             = Empty
        type Scopes
               LoggingBillingAccountsLocationsSavedQueriesDelete
             = '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingBillingAccountsLocationsSavedQueriesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingBillingAccountsLocationsSavedQueriesDeleteResource)
                      Core.mempty
