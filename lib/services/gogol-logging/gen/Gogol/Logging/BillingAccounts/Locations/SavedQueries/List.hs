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
-- Module      : Gogol.Logging.BillingAccounts.Locations.SavedQueries.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the SavedQueries that were created by the user making the request.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.savedQueries.list@.
module Gogol.Logging.BillingAccounts.Locations.SavedQueries.List
  ( -- * Resource
    LoggingBillingAccountsLocationsSavedQueriesListResource,

    -- ** Constructing a Request
    LoggingBillingAccountsLocationsSavedQueriesList (..),
    newLoggingBillingAccountsLocationsSavedQueriesList,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.billingAccounts.locations.savedQueries.list@ method which the
-- 'LoggingBillingAccountsLocationsSavedQueriesList' request conforms to.
type LoggingBillingAccountsLocationsSavedQueriesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "savedQueries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSavedQueriesResponse

-- | Lists the SavedQueries that were created by the user making the request.
--
-- /See:/ 'newLoggingBillingAccountsLocationsSavedQueriesList' smart constructor.
data LoggingBillingAccountsLocationsSavedQueriesList = LoggingBillingAccountsLocationsSavedQueriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the type (\"Logging\" or \"OpsAnalytics\") and the visibility (PRIVATE or SHARED) of the saved queries to list. If provided, the filter must contain either the type function or a visibility token, or both. If both are chosen, they can be placed in any order, but they must be joined by the AND operator or the empty character.The two supported type function calls are: type(\"Logging\") type(\"OpsAnalytics\")The two supported visibility tokens are: visibility = PRIVATE visibility = SHAREDFor example:type(\"Logging\") AND visibility = PRIVATE visibility=SHARED type(\"OpsAnalytics\") type(\"OpsAnalytics)\" visibility = PRIVATE visibility = SHARED
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource to which the listed queries belong. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" For example: \"projects\/my-project\/locations\/us-central1\" Note: The locations portion of the resource must be specified. To get a list of all saved queries, a wildcard character - can be used for LOCATION/ID, for example: \"projects\/my-project\/locations\/-\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsLocationsSavedQueriesList' with the minimum fields required to make a request.
newLoggingBillingAccountsLocationsSavedQueriesList ::
  -- |  Required. The resource to which the listed queries belong. \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\" \"organizations\/[ORGANIZATION/ID]\/locations\/[LOCATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/locations\/[LOCATION/ID]\" \"folders\/[FOLDER/ID]\/locations\/[LOCATION/ID]\" For example: \"projects\/my-project\/locations\/us-central1\" Note: The locations portion of the resource must be specified. To get a list of all saved queries, a wildcard character - can be used for LOCATION/ID, for example: \"projects\/my-project\/locations\/-\" See 'parent'.
  Core.Text ->
  LoggingBillingAccountsLocationsSavedQueriesList
newLoggingBillingAccountsLocationsSavedQueriesList parent =
  LoggingBillingAccountsLocationsSavedQueriesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingBillingAccountsLocationsSavedQueriesList
  where
  type
    Rs LoggingBillingAccountsLocationsSavedQueriesList =
      ListSavedQueriesResponse
  type
    Scopes LoggingBillingAccountsLocationsSavedQueriesList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingBillingAccountsLocationsSavedQueriesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingBillingAccountsLocationsSavedQueriesListResource
          )
          Core.mempty
