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
-- Module      : Gogol.ShoppingContent.Content.Regionalinventory.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the regional inventory of a product in your Merchant Center account. If a regional inventory with the same region ID already exists, this method updates that entry.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regionalinventory.insert@.
module Gogol.ShoppingContent.Content.Regionalinventory.Insert
    (
    -- * Resource
      ContentRegionalinventoryInsertResource

    -- ** Constructing a Request
    , newContentRegionalinventoryInsert
    , ContentRegionalinventoryInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.insert@ method which the
-- 'ContentRegionalinventoryInsert' request conforms to.
type ContentRegionalinventoryInsertResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "products" Core.:>
             Core.Capture "productId" Core.Text Core.:>
               "regionalinventory" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] RegionalInventory Core.:>
                               Core.Post '[Core.JSON] RegionalInventory

-- | Update the regional inventory of a product in your Merchant Center account. If a regional inventory with the same region ID already exists, this method updates that entry.
--
-- /See:/ 'newContentRegionalinventoryInsert' smart constructor.
data ContentRegionalinventoryInsert = ContentRegionalinventoryInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the account that contains the product. This account cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | Multipart request metadata.
    , payload :: RegionalInventory
      -- | The REST ID of the product for which to update the regional inventory.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRegionalinventoryInsert' with the minimum fields required to make a request.
newContentRegionalinventoryInsert 
    ::  Core.Word64
       -- ^  The ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
    -> RegionalInventory
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The REST ID of the product for which to update the regional inventory. See 'productId'.
    -> ContentRegionalinventoryInsert
newContentRegionalinventoryInsert merchantId payload productId =
  ContentRegionalinventoryInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentRegionalinventoryInsert
         where
        type Rs ContentRegionalinventoryInsert =
             RegionalInventory
        type Scopes ContentRegionalinventoryInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentRegionalinventoryInsert{..}
          = go merchantId productId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentRegionalinventoryInsertResource)
                      Core.mempty

