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
-- Module      : Gogol.AdExchangeBuyer.Pubprofiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested publisher profile(s) by publisher accountId.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.pubprofiles.list@.
module Gogol.AdExchangeBuyer.Pubprofiles.List
  ( -- * Resource
    AdExchangeBuyerPubprofilesListResource,

    -- ** Constructing a Request
    newAdExchangeBuyerPubprofilesList,
    AdExchangeBuyerPubprofilesList,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.pubprofiles.list@ method which the
-- 'AdExchangeBuyerPubprofilesList' request conforms to.
type AdExchangeBuyerPubprofilesListResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "publisher"
    Core.:> Core.Capture "accountId" Core.Int32
    Core.:> "profiles"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GetPublisherProfilesByAccountIdResponse

-- | Gets the requested publisher profile(s) by publisher accountId.
--
-- /See:/ 'newAdExchangeBuyerPubprofilesList' smart constructor.
newtype AdExchangeBuyerPubprofilesList = AdExchangeBuyerPubprofilesList
  { -- | The accountId of the publisher to get profiles for.
    accountId :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerPubprofilesList' with the minimum fields required to make a request.
newAdExchangeBuyerPubprofilesList ::
  -- |  The accountId of the publisher to get profiles for. See 'accountId'.
  Core.Int32 ->
  AdExchangeBuyerPubprofilesList
newAdExchangeBuyerPubprofilesList accountId =
  AdExchangeBuyerPubprofilesList {accountId = accountId}

instance
  Core.GoogleRequest
    AdExchangeBuyerPubprofilesList
  where
  type
    Rs AdExchangeBuyerPubprofilesList =
      GetPublisherProfilesByAccountIdResponse
  type
    Scopes AdExchangeBuyerPubprofilesList =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerPubprofilesList {..} =
    go
      accountId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerPubprofilesListResource
          )
          Core.mempty
