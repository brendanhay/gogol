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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all publisher profiles visible to the buyer
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.publisherProfiles.list@.
module Gogol.AdExchangeBuyer2.Accounts.PublisherProfiles.List
  ( -- * Resource
    AdExchangeBuyer2AccountsPublisherProfilesListResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsPublisherProfilesList,
    AdExchangeBuyer2AccountsPublisherProfilesList,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.publisherProfiles.list@ method which the
-- 'AdExchangeBuyer2AccountsPublisherProfilesList' request conforms to.
type AdExchangeBuyer2AccountsPublisherProfilesListResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "publisherProfiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPublisherProfilesResponse

-- | List all publisher profiles visible to the buyer
--
-- /See:/ 'newAdExchangeBuyer2AccountsPublisherProfilesList' smart constructor.
data AdExchangeBuyer2AccountsPublisherProfilesList = AdExchangeBuyer2AccountsPublisherProfilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Specify the number of results to include per page.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The page token as return from ListPublisherProfilesResponse.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsPublisherProfilesList' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsPublisherProfilesList ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  AdExchangeBuyer2AccountsPublisherProfilesList
newAdExchangeBuyer2AccountsPublisherProfilesList accountId =
  AdExchangeBuyer2AccountsPublisherProfilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsPublisherProfilesList
  where
  type
    Rs AdExchangeBuyer2AccountsPublisherProfilesList =
      ListPublisherProfilesResponse
  type
    Scopes
      AdExchangeBuyer2AccountsPublisherProfilesList =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsPublisherProfilesList {..} =
      go
        accountId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        adExchangeBuyer2Service
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeBuyer2AccountsPublisherProfilesListResource
            )
            Core.mempty
