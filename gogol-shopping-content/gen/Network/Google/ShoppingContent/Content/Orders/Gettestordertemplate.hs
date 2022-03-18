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
-- Module      : Network.Google.ShoppingContent.Content.Orders.Gettestordertemplate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sandbox only. Retrieves an order template that can be used to quickly create a new order in sandbox.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.gettestordertemplate@.
module Network.Google.ShoppingContent.Content.Orders.Gettestordertemplate
  ( -- * Resource
    ContentOrdersGettestordertemplateResource,

    -- ** Constructing a Request
    newContentOrdersGettestordertemplate,
    ContentOrdersGettestordertemplate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.gettestordertemplate@ method which the
-- 'ContentOrdersGettestordertemplate' request conforms to.
type ContentOrdersGettestordertemplateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "testordertemplates"
    Core.:> Core.Capture
              "templateName"
              OrdersGettestordertemplateTemplateName
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              OrdersGetTestOrderTemplateResponse

-- | Sandbox only. Retrieves an order template that can be used to quickly create a new order in sandbox.
--
-- /See:/ 'newContentOrdersGettestordertemplate' smart constructor.
data ContentOrdersGettestordertemplate = ContentOrdersGettestordertemplate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The country of the template to retrieve. Defaults to \"@US@\".
    country :: (Core.Maybe Core.Text),
    -- | The ID of the account that should manage the order. This cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | The name of the template to retrieve.
    templateName :: OrdersGettestordertemplateTemplateName,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersGettestordertemplate' with the minimum fields required to make a request.
newContentOrdersGettestordertemplate ::
  -- |  The ID of the account that should manage the order. This cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  The name of the template to retrieve. See 'templateName'.
  OrdersGettestordertemplateTemplateName ->
  ContentOrdersGettestordertemplate
newContentOrdersGettestordertemplate merchantId templateName =
  ContentOrdersGettestordertemplate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      merchantId = merchantId,
      templateName = templateName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentOrdersGettestordertemplate
  where
  type
    Rs ContentOrdersGettestordertemplate =
      OrdersGetTestOrderTemplateResponse
  type
    Scopes ContentOrdersGettestordertemplate =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentOrdersGettestordertemplate {..} =
    go
      merchantId
      templateName
      xgafv
      accessToken
      callback
      country
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentOrdersGettestordertemplateResource
          )
          Core.mempty
