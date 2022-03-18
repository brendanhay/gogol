{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.DFAReporting.AccountActiveAdSummaries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the account\'s active ad summary by account ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountActiveAdSummaries.get@.
module Network.Google.DFAReporting.AccountActiveAdSummaries.Get
  ( -- * Resource
    DFAReportingAccountActiveAdSummariesGetResource,

    -- ** Constructing a Request
    newDFAReportingAccountActiveAdSummariesGet,
    DFAReportingAccountActiveAdSummariesGet,
  )
where

import Network.Google.DFAReporting.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dfareporting.accountActiveAdSummaries.get@ method which the
-- 'DFAReportingAccountActiveAdSummariesGet' request conforms to.
type DFAReportingAccountActiveAdSummariesGetResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "accountActiveAdSummaries"
    Core.:> Core.Capture "summaryAccountId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccountActiveAdSummary

-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ 'newDFAReportingAccountActiveAdSummariesGet' smart constructor.
data DFAReportingAccountActiveAdSummariesGet = DFAReportingAccountActiveAdSummariesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Account ID.
    summaryAccountId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingAccountActiveAdSummariesGet' with the minimum fields required to make a request.
newDFAReportingAccountActiveAdSummariesGet ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  -- |  Account ID. See 'summaryAccountId'.
  Core.Int64 ->
  DFAReportingAccountActiveAdSummariesGet
newDFAReportingAccountActiveAdSummariesGet profileId summaryAccountId =
  DFAReportingAccountActiveAdSummariesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      profileId = profileId,
      summaryAccountId = summaryAccountId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingAccountActiveAdSummariesGet
  where
  type
    Rs DFAReportingAccountActiveAdSummariesGet =
      AccountActiveAdSummary
  type
    Scopes DFAReportingAccountActiveAdSummariesGet =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingAccountActiveAdSummariesGet {..} =
      go
        profileId
        summaryAccountId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingAccountActiveAdSummariesGetResource
            )
            Core.mempty
