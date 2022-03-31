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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.update@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Update
  ( -- * Resource
    AdExchangeBuyerPretargetingConfigUpdateResource,

    -- ** Constructing a Request
    newAdExchangeBuyerPretargetingConfigUpdate,
    AdExchangeBuyerPretargetingConfigUpdate,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.pretargetingConfig.update@ method which the
-- 'AdExchangeBuyerPretargetingConfigUpdate' request conforms to.
type AdExchangeBuyerPretargetingConfigUpdateResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "pretargetingconfigs"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "configId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PretargetingConfig
    Core.:> Core.Put '[Core.JSON] PretargetingConfig

-- | Updates an existing pretargeting config.
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigUpdate' smart constructor.
data AdExchangeBuyerPretargetingConfigUpdate = AdExchangeBuyerPretargetingConfigUpdate
  { -- | The account id to update the pretargeting config for.
    accountId :: Core.Int64,
    -- | The specific id of the configuration to update.
    configId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: PretargetingConfig
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigUpdate' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigUpdate ::
  -- |  The account id to update the pretargeting config for. See 'accountId'.
  Core.Int64 ->
  -- |  The specific id of the configuration to update. See 'configId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  PretargetingConfig ->
  AdExchangeBuyerPretargetingConfigUpdate
newAdExchangeBuyerPretargetingConfigUpdate accountId configId payload =
  AdExchangeBuyerPretargetingConfigUpdate
    { accountId = accountId,
      configId = configId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerPretargetingConfigUpdate
  where
  type
    Rs AdExchangeBuyerPretargetingConfigUpdate =
      PretargetingConfig
  type
    Scopes AdExchangeBuyerPretargetingConfigUpdate =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyerPretargetingConfigUpdate {..} =
      go
        accountId
        configId
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyerPretargetingConfigUpdateResource
            )
            Core.mempty
