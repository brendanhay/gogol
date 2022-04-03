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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing pretargeting config.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.delete@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Delete
  ( -- * Resource
    AdExchangeBuyerPretargetingConfigDeleteResource,

    -- ** Constructing a Request
    AdExchangeBuyerPretargetingConfigDelete (..),
    newAdExchangeBuyerPretargetingConfigDelete,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.pretargetingConfig.delete@ method which the
-- 'AdExchangeBuyerPretargetingConfigDelete' request conforms to.
type AdExchangeBuyerPretargetingConfigDeleteResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "pretargetingconfigs"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.Capture "configId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an existing pretargeting config.
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigDelete' smart constructor.
data AdExchangeBuyerPretargetingConfigDelete = AdExchangeBuyerPretargetingConfigDelete
  { -- | The account id to delete the pretargeting config for.
    accountId :: Core.Int64,
    -- | The specific id of the configuration to delete.
    configId :: Core.Int64
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigDelete' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigDelete ::
  -- |  The account id to delete the pretargeting config for. See 'accountId'.
  Core.Int64 ->
  -- |  The specific id of the configuration to delete. See 'configId'.
  Core.Int64 ->
  AdExchangeBuyerPretargetingConfigDelete
newAdExchangeBuyerPretargetingConfigDelete accountId configId =
  AdExchangeBuyerPretargetingConfigDelete
    { accountId = accountId,
      configId = configId
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerPretargetingConfigDelete
  where
  type Rs AdExchangeBuyerPretargetingConfigDelete = ()
  type
    Scopes AdExchangeBuyerPretargetingConfigDelete =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyerPretargetingConfigDelete {..} =
      go
        accountId
        configId
        (Core.Just Core.AltJSON)
        adExchangeBuyerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyerPretargetingConfigDeleteResource
            )
            Core.mempty
