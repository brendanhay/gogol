{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Content.Productdeliverytime.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the delivery time of a product.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productdeliverytime.delete@.
module Gogol.ShoppingContent.Content.Productdeliverytime.Delete
    (
    -- * Resource
      ContentProductdeliverytimeDeleteResource

    -- ** Constructing a Request
    , ContentProductdeliverytimeDelete (..)
    , newContentProductdeliverytimeDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.productdeliverytime.delete@ method which the
-- 'ContentProductdeliverytimeDelete' request conforms to.
type ContentProductdeliverytimeDeleteResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "productdeliverytime" Core.:>
             Core.Capture "productId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] ()

-- | Deletes the delivery time of a product.
--
-- /See:/ 'newContentProductdeliverytimeDelete' smart constructor.
data ContentProductdeliverytimeDelete = ContentProductdeliverytimeDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.
    , merchantId :: Core.Int64
      -- | Required. The Content API ID of the product, in the form @channel:contentLanguage:targetCountry:offerId@.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProductdeliverytimeDelete' with the minimum fields required to make a request.
newContentProductdeliverytimeDelete 
    ::  Core.Int64
       -- ^  Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
    -> Core.Text
       -- ^  Required. The Content API ID of the product, in the form @channel:contentLanguage:targetCountry:offerId@. See 'productId'.
    -> ContentProductdeliverytimeDelete
newContentProductdeliverytimeDelete merchantId productId =
  ContentProductdeliverytimeDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentProductdeliverytimeDelete
         where
        type Rs ContentProductdeliverytimeDelete = ()
        type Scopes ContentProductdeliverytimeDelete =
             '[Content'FullControl]
        requestClient ContentProductdeliverytimeDelete{..}
          = go merchantId productId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentProductdeliverytimeDeleteResource)
                      Core.mempty

