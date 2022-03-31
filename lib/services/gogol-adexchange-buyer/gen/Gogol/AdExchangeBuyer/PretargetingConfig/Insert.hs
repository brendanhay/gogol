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
-- Module      : Gogol.AdExchangeBuyer.PretargetingConfig.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new pretargeting configuration.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pretargetingConfig.insert@.
module Gogol.AdExchangeBuyer.PretargetingConfig.Insert
  ( -- * Resource
    AdExchangeBuyerPretargetingConfigInsertResource,

    -- ** Constructing a Request
    newAdExchangeBuyerPretargetingConfigInsert,
    AdExchangeBuyerPretargetingConfigInsert,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.pretargetingConfig.insert@ method which the
-- 'AdExchangeBuyerPretargetingConfigInsert' request conforms to.
type AdExchangeBuyerPretargetingConfigInsertResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "pretargetingconfigs"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PretargetingConfig
    Core.:> Core.Post '[Core.JSON] PretargetingConfig

-- | Inserts a new pretargeting configuration.
--
-- /See:/ 'newAdExchangeBuyerPretargetingConfigInsert' smart constructor.
data AdExchangeBuyerPretargetingConfigInsert = AdExchangeBuyerPretargetingConfigInsert
  { -- | The account id to insert the pretargeting config for.
    accountId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: PretargetingConfig
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPretargetingConfigInsert' with the minimum fields required to make a request.
newAdExchangeBuyerPretargetingConfigInsert ::
  -- |  The account id to insert the pretargeting config for. See 'accountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  PretargetingConfig ->
  AdExchangeBuyerPretargetingConfigInsert
newAdExchangeBuyerPretargetingConfigInsert accountId payload =
  AdExchangeBuyerPretargetingConfigInsert
    { accountId = accountId,
      payload = payload
    }

instance
  Core.GoogleRequest
    AdExchangeBuyerPretargetingConfigInsert
  where
  type
    Rs AdExchangeBuyerPretargetingConfigInsert =
      PretargetingConfig
  type
    Scopes AdExchangeBuyerPretargetingConfigInsert =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyerPretargetingConfigInsert {..} =
      go
        accountId
        (Core.Just Core.AltJSON)
        payload
        adExchangeBuyerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyerPretargetingConfigInsertResource
            )
            Core.mempty
