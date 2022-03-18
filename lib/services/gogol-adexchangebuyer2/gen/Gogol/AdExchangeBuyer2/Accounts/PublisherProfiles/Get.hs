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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested publisher profile by id.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.publisherProfiles.get@.
module Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.Get
  ( -- * Resource
    AdExchangeBuyer2AccountsPublisherProfilesGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsPublisherProfilesGet,
    AdExchangeBuyer2AccountsPublisherProfilesGet,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.publisherProfiles.get@ method which the
-- 'AdExchangeBuyer2AccountsPublisherProfilesGet' request conforms to.
type AdExchangeBuyer2AccountsPublisherProfilesGetResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "publisherProfiles"
    Core.:> Core.Capture "publisherProfileId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] PublisherProfile

-- | Gets the requested publisher profile by id.
--
-- /See:/ 'newAdExchangeBuyer2AccountsPublisherProfilesGet' smart constructor.
data AdExchangeBuyer2AccountsPublisherProfilesGet = AdExchangeBuyer2AccountsPublisherProfilesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The id for the publisher profile to get.
    publisherProfileId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsPublisherProfilesGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsPublisherProfilesGet ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  The id for the publisher profile to get. See 'publisherProfileId'.
  Core.Text ->
  AdExchangeBuyer2AccountsPublisherProfilesGet
newAdExchangeBuyer2AccountsPublisherProfilesGet accountId publisherProfileId =
  AdExchangeBuyer2AccountsPublisherProfilesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      publisherProfileId = publisherProfileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsPublisherProfilesGet
  where
  type
    Rs AdExchangeBuyer2AccountsPublisherProfilesGet =
      PublisherProfile
  type
    Scopes
      AdExchangeBuyer2AccountsPublisherProfilesGet =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient
    AdExchangeBuyer2AccountsPublisherProfilesGet {..} =
      go
        accountId
        publisherProfileId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsPublisherProfilesGetResource
            )
            Core.mempty
