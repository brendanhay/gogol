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
-- Module      : Network.Google.Manufacturers.Accounts.Products.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the products in a Manufacturer Center account.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.products.list@.
module Network.Google.Manufacturers.Accounts.Products.List
  ( -- * Resource
    ManufacturersAccountsProductsListResource,

    -- ** Constructing a Request
    newManufacturersAccountsProductsList,
    ManufacturersAccountsProductsList,
  )
where

import Network.Google.Manufacturers.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @manufacturers.accounts.products.list@ method which the
-- 'ManufacturersAccountsProductsList' request conforms to.
type ManufacturersAccountsProductsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "products"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "include"
              AccountsProductsListInclude
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListProductsResponse

-- | Lists all the products in a Manufacturer Center account.
--
-- /See:/ 'newManufacturersAccountsProductsList' smart constructor.
data ManufacturersAccountsProductsList = ManufacturersAccountsProductsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The information to be included in the response. Only sections listed here will be returned.
    include :: (Core.Maybe [AccountsProductsListInclude]),
    -- | Maximum number of product statuses to return in the response, used for paging.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsProductsList' with the minimum fields required to make a request.
newManufacturersAccountsProductsList ::
  -- |  Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account. See 'parent'.
  Core.Text ->
  ManufacturersAccountsProductsList
newManufacturersAccountsProductsList parent =
  ManufacturersAccountsProductsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      include = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ManufacturersAccountsProductsList
  where
  type
    Rs ManufacturersAccountsProductsList =
      ListProductsResponse
  type
    Scopes ManufacturersAccountsProductsList =
      '["https://www.googleapis.com/auth/manufacturercenter"]
  requestClient ManufacturersAccountsProductsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      (include Core.^. Core._Default)
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      manufacturersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ManufacturersAccountsProductsListResource
          )
          Core.mempty
