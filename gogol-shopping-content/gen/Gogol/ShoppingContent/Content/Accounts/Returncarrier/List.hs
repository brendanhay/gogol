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
-- Module      : Gogol.ShoppingContent.Content.Accounts.Returncarrier.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available return carriers in the merchant account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.returncarrier.list@.
module Gogol.ShoppingContent.Content.Accounts.Returncarrier.List
  ( -- * Resource
    ContentAccountsReturncarrierListResource,

    -- ** Constructing a Request
    newContentAccountsReturncarrierList,
    ContentAccountsReturncarrierList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounts.returncarrier.list@ method which the
-- 'ContentAccountsReturncarrierList' request conforms to.
type ContentAccountsReturncarrierListResource =
  "content"
    Core.:> "v2.1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "returncarrier"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListAccountReturnCarrierResponse

-- | Lists available return carriers in the merchant account.
--
-- /See:/ 'newContentAccountsReturncarrierList' smart constructor.
data ContentAccountsReturncarrierList = ContentAccountsReturncarrierList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The Merchant Center Account Id under which the Return Carrier is to be linked.
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountsReturncarrierList' with the minimum fields required to make a request.
newContentAccountsReturncarrierList ::
  -- |  Required. The Merchant Center Account Id under which the Return Carrier is to be linked. See 'accountId'.
  Core.Int64 ->
  ContentAccountsReturncarrierList
newContentAccountsReturncarrierList accountId =
  ContentAccountsReturncarrierList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentAccountsReturncarrierList
  where
  type
    Rs ContentAccountsReturncarrierList =
      ListAccountReturnCarrierResponse
  type
    Scopes ContentAccountsReturncarrierList =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentAccountsReturncarrierList {..} =
    go
      accountId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentAccountsReturncarrierListResource
          )
          Core.mempty
