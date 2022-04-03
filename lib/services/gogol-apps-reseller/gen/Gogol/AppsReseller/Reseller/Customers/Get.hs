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
-- Module      : Gogol.AppsReseller.Reseller.Customers.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a customer account. Use this operation to see a customer account already in your reseller management, or to see the minimal account information for an existing customer that you do not manage. For more information about the API response for existing customers, see </admin-sdk/reseller/v1/how-tos/manage_customers#get_customer retrieving a customer account>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.get@.
module Gogol.AppsReseller.Reseller.Customers.Get
  ( -- * Resource
    ResellerCustomersGetResource,

    -- ** Constructing a Request
    ResellerCustomersGet (..),
    newResellerCustomersGet,
  )
where

import Gogol.AppsReseller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reseller.customers.get@ method which the
-- 'ResellerCustomersGet' request conforms to.
type ResellerCustomersGetResource =
  "apps"
    Core.:> "reseller"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Customer

-- | Gets a customer account. Use this operation to see a customer account already in your reseller management, or to see the minimal account information for an existing customer that you do not manage. For more information about the API response for existing customers, see </admin-sdk/reseller/v1/how-tos/manage_customers#get_customer retrieving a customer account>.
--
-- /See:/ 'newResellerCustomersGet' smart constructor.
data ResellerCustomersGet = ResellerCustomersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerCustomersGet' with the minimum fields required to make a request.
newResellerCustomersGet ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  ResellerCustomersGet
newResellerCustomersGet customerId =
  ResellerCustomersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerCustomersGet where
  type Rs ResellerCustomersGet = Customer
  type
    Scopes ResellerCustomersGet =
      '[Apps'Order, Apps'Order'Readonly]
  requestClient ResellerCustomersGet {..} =
    go
      customerId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerCustomersGetResource
          )
          Core.mempty
