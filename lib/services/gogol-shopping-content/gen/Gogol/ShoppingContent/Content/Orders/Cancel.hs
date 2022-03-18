{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Orders.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels all line items in an order, making a full refund.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.cancel@.
module Gogol.ShoppingContent.Content.Orders.Cancel
    (
    -- * Resource
      ContentOrdersCancelResource

    -- ** Constructing a Request
    , newContentOrdersCancel
    , ContentOrdersCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orders.cancel@ method which the
-- 'ContentOrdersCancel' request conforms to.
type ContentOrdersCancelResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orders" Core.:>
             Core.Capture "orderId" Core.Text Core.:>
               "cancel" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] OrdersCancelRequest
                               Core.:>
                               Core.Post '[Core.JSON] OrdersCancelResponse

-- | Cancels all line items in an order, making a full refund.
--
-- /See:/ 'newContentOrdersCancel' smart constructor.
data ContentOrdersCancel = ContentOrdersCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The ID of the order to cancel.
    , orderId :: Core.Text
      -- | Multipart request metadata.
    , payload :: OrdersCancelRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrdersCancel' with the minimum fields required to make a request.
newContentOrdersCancel 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  The ID of the order to cancel. See 'orderId'.
    -> OrdersCancelRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentOrdersCancel
newContentOrdersCancel merchantId orderId payload =
  ContentOrdersCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , orderId = orderId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentOrdersCancel where
        type Rs ContentOrdersCancel = OrdersCancelResponse
        type Scopes ContentOrdersCancel =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentOrdersCancel{..}
          = go merchantId orderId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentOrdersCancelResource)
                      Core.mempty

