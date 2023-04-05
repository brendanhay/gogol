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
-- Module      : Gogol.AdSense.Accounts.Reports.GetSaved
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the saved report from the given resource name.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.getSaved@.
module Gogol.AdSense.Accounts.Reports.GetSaved
  ( -- * Resource
    AdSenseAccountsReportsGetSavedResource,

    -- ** Constructing a Request
    AdSenseAccountsReportsGetSaved (..),
    newAdSenseAccountsReportsGetSaved,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.reports.getSaved@ method which the
-- 'AdSenseAccountsReportsGetSaved' request conforms to.
type AdSenseAccountsReportsGetSavedResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "saved"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SavedReport

-- | Gets the saved report from the given resource name.
--
-- /See:/ 'newAdSenseAccountsReportsGetSaved' smart constructor.
data AdSenseAccountsReportsGetSaved = AdSenseAccountsReportsGetSaved
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the saved report to retrieve. Format: accounts\/{account}\/reports\/{report}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsReportsGetSaved' with the minimum fields required to make a request.
newAdSenseAccountsReportsGetSaved ::
  -- |  Required. The name of the saved report to retrieve. Format: accounts\/{account}\/reports\/{report} See 'name'.
  Core.Text ->
  AdSenseAccountsReportsGetSaved
newAdSenseAccountsReportsGetSaved name =
  AdSenseAccountsReportsGetSaved
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdSenseAccountsReportsGetSaved
  where
  type Rs AdSenseAccountsReportsGetSaved = SavedReport
  type
    Scopes AdSenseAccountsReportsGetSaved =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsReportsGetSaved {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsReportsGetSavedResource
          )
          Core.mempty
