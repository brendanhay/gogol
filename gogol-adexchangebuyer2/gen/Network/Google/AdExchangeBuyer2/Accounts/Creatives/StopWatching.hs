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
-- Module      : Network.Google.AdExchangeBuyer2.Accounts.Creatives.StopWatching
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops watching a creative. Will stop push notifications being sent to the topics when the creative changes status.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.creatives.stopWatching@.
module Network.Google.AdExchangeBuyer2.Accounts.Creatives.StopWatching
  ( -- * Resource
    AdExchangeBuyer2AccountsCreativesStopWatchingResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsCreativesStopWatching,
    AdExchangeBuyer2AccountsCreativesStopWatching,
  )
where

import Network.Google.AdExchangeBuyer2.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.creatives.stopWatching@ method which the
-- 'AdExchangeBuyer2AccountsCreativesStopWatching' request conforms to.
type AdExchangeBuyer2AccountsCreativesStopWatchingResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "creatives"
    Core.:> Core.CaptureMode
              "creativeId"
              "stopWatching"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StopWatchingCreativeRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Stops watching a creative. Will stop push notifications being sent to the topics when the creative changes status.
--
-- /See:/ 'newAdExchangeBuyer2AccountsCreativesStopWatching' smart constructor.
data AdExchangeBuyer2AccountsCreativesStopWatching = AdExchangeBuyer2AccountsCreativesStopWatching
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The account of the creative to stop notifications for.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The creative ID of the creative to stop notifications for. Specify \"-\" to specify stopping account level notifications.
    creativeId :: Core.Text,
    -- | Multipart request metadata.
    payload :: StopWatchingCreativeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsCreativesStopWatching' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsCreativesStopWatching ::
  -- |  The account of the creative to stop notifications for. See 'accountId'.
  Core.Text ->
  -- |  The creative ID of the creative to stop notifications for. Specify \"-\" to specify stopping account level notifications. See 'creativeId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StopWatchingCreativeRequest ->
  AdExchangeBuyer2AccountsCreativesStopWatching
newAdExchangeBuyer2AccountsCreativesStopWatching accountId creativeId payload =
  AdExchangeBuyer2AccountsCreativesStopWatching
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
    AdExchangeBuyer2AccountsCreativesStopWatching
  where
  type
    Rs AdExchangeBuyer2AccountsCreativesStopWatching =
      Empty
  type
    Scopes
      AdExchangeBuyer2AccountsCreativesStopWatching =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsCreativesStopWatching {..} =
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
                  AdExchangeBuyer2AccountsCreativesStopWatchingResource
            )
            Core.mempty
