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
-- Module      : Gogol.Logging.BillingAccounts.Exclusions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions on the _Default sink in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.exclusions.list@.
module Gogol.Logging.BillingAccounts.Exclusions.List
  ( -- * Resource
    LoggingBillingAccountsExclusionsListResource,

    -- ** Constructing a Request
    LoggingBillingAccountsExclusionsList (..),
    newLoggingBillingAccountsExclusionsList,
  )
where

import Gogol.Logging.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @logging.billingAccounts.exclusions.list@ method which the
-- 'LoggingBillingAccountsExclusionsList' request conforms to.
type LoggingBillingAccountsExclusionsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "exclusions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListExclusionsResponse

-- | Lists all the exclusions on the _Default sink in a parent resource.
--
-- /See:/ 'newLoggingBillingAccountsExclusionsList' smart constructor.
data LoggingBillingAccountsExclusionsList = LoggingBillingAccountsExclusionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource whose exclusions are to be listed. \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsExclusionsList' with the minimum fields required to make a request.
newLoggingBillingAccountsExclusionsList ::
  -- |  Required. The parent resource whose exclusions are to be listed. \"projects\/[PROJECT/ID]\" \"organizations\/[ORGANIZATION/ID]\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\" \"folders\/[FOLDER_ID]\" See 'parent'.
  Core.Text ->
  LoggingBillingAccountsExclusionsList
newLoggingBillingAccountsExclusionsList parent =
  LoggingBillingAccountsExclusionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LoggingBillingAccountsExclusionsList where
  type
    Rs LoggingBillingAccountsExclusionsList =
      ListExclusionsResponse
  type
    Scopes LoggingBillingAccountsExclusionsList =
      '[ CloudPlatform'FullControl,
         CloudPlatform'ReadOnly,
         Logging'Admin,
         Logging'Read
       ]
  requestClient LoggingBillingAccountsExclusionsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
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
              Core.Proxy LoggingBillingAccountsExclusionsListResource
          )
          Core.mempty
