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
-- Module      : Network.Google.AppsReseller.Reseller.Customers.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer account\'s settings. You cannot update @customerType@ via the Reseller API, but a @\"team\"@ customer can verify their domain and become @customerType = \"domain\"@. For more information, see </admin-sdk/reseller/v1/how-tos/manage_customers#update_customer update a customer\'s settings>.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.update@.
module Network.Google.AppsReseller.Reseller.Customers.Update
  ( -- * Resource
    ResellerCustomersUpdateResource,

    -- ** Constructing a Request
    newResellerCustomersUpdate,
    ResellerCustomersUpdate,
  )
where

import Network.Google.AppsReseller.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @reseller.customers.update@ method which the
-- 'ResellerCustomersUpdate' request conforms to.
type ResellerCustomersUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Customer
    Core.:> Core.Put '[Core.JSON] Customer

-- | Updates a customer account\'s settings. You cannot update @customerType@ via the Reseller API, but a @\"team\"@ customer can verify their domain and become @customerType = \"domain\"@. For more information, see </admin-sdk/reseller/v1/how-tos/manage_customers#update_customer update a customer\'s settings>.
--
-- /See:/ 'newResellerCustomersUpdate' smart constructor.
data ResellerCustomersUpdate = ResellerCustomersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.
    customerId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Customer,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResellerCustomersUpdate' with the minimum fields required to make a request.
newResellerCustomersUpdate ::
  -- |  This can be either the customer\'s primary domain name or the customer\'s unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer\'s unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable. See 'customerId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Customer ->
  ResellerCustomersUpdate
newResellerCustomersUpdate customerId payload =
  ResellerCustomersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ResellerCustomersUpdate where
  type Rs ResellerCustomersUpdate = Customer
  type
    Scopes ResellerCustomersUpdate =
      '["https://www.googleapis.com/auth/apps.order"]
  requestClient ResellerCustomersUpdate {..} =
    go
      customerId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      appsResellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ResellerCustomersUpdateResource
          )
          Core.mempty
