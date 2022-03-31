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
-- Module      : Gogol.AdSense.Accounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all accounts available to this user.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.list@.
module Gogol.AdSense.Accounts.List
  ( -- * Resource
    AdSenseAccountsListResource,

    -- ** Constructing a Request
    newAdSenseAccountsList,
    AdSenseAccountsList,
  )
where

import Gogol.AdSense.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adsense.accounts.list@ method which the
-- 'AdSenseAccountsList' request conforms to.
type AdSenseAccountsListResource =
  "v2"
    Core.:> "accounts"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAccountsResponse

-- | Lists all accounts available to this user.
--
-- /See:/ 'newAdSenseAccountsList' smart constructor.
data AdSenseAccountsList = AdSenseAccountsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of accounts to include in the response, used for paging. If unspecified, at most 10000 accounts will be returned. The maximum value is 10000; values above 10000 will be coerced to 10000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListAccounts@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListAccounts@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseAccountsList' with the minimum fields required to make a request.
newAdSenseAccountsList ::
  AdSenseAccountsList
newAdSenseAccountsList =
  AdSenseAccountsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdSenseAccountsList where
  type Rs AdSenseAccountsList = ListAccountsResponse
  type
    Scopes AdSenseAccountsList =
      '[Adsense'FullControl, Adsense'Readonly]
  requestClient AdSenseAccountsList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adSenseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdSenseAccountsListResource
          )
          Core.mempty
