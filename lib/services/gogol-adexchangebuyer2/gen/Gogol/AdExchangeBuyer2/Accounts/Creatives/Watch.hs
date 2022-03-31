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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Creatives.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watches a creative. Will result in push notifications being sent to the topic when the creative changes status.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.watch@.
module Gogol.AdExchangeBuyer2.Accounts.Creatives.Watch
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesWatchResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsCreativesWatch,
    AdExchangeBuyer2AccountsCreativesWatch,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.watch@ method which the
-- 'AdExchangeBuyer2AccountsCreativesWatch' request conforms to.
type AdExchangeBuyer2AccountsCreativesWatchResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.CaptureMode "creativeId" "watch" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WatchCreativeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Watches a creative. Will result in push notifications being sent to the topic when the creative changes status.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesWatch' smart constructor.
data AdExchangeBuyer2AccountsCreativesWatch = AdExchangeBuyer2AccountsCreativesWatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account of the creative to watch.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The creative ID to watch for status changes. Specify \"-\" to watch all creatives under the above account. If both creative-level and account-level notifications are sent, only a single notification will be sent to the creative-level notification topic.
    creativeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: WatchCreativeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesWatch' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesWatch ::
  -- |  The account of the creative to watch. See 'accountId'.
  Core.Text ->
  -- |  The creative ID to watch for status changes. Specify \"-\" to watch all creatives under the above account. If both creative-level and account-level notifications are sent, only a single notification will be sent to the creative-level notification topic. See 'creativeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WatchCreativeRequest ->
  AdExchangeBuyer2AccountsCreativesWatch
newAdExchangeBuyer2AccountsCreativesWatch accountId creativeId payload =
  AdExchangeBuyer2AccountsCreativesWatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      creativeId = creativeId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsCreativesWatch
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesWatch =
      Empty
  type
    Scopes AdExchangeBuyer2AccountsCreativesWatch =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsCreativesWatch {..} =
      go
        accountId
        creativeId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsCreativesWatchResource
            )
            Core.mempty
