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
-- Module      : Gogol.ShoppingContent.Content.Promotions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a promotion from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.promotions.get@.
module Gogol.ShoppingContent.Content.Promotions.Get
    (
    -- * Resource
      ContentPromotionsGetResource

    -- ** Constructing a Request
    , newContentPromotionsGet
    , ContentPromotionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.promotions.get@ method which the
-- 'ContentPromotionsGet' request conforms to.
type ContentPromotionsGetResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "promotions" Core.:>
             Core.Capture "id" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Promotion

-- | Retrieves a promotion from your Merchant Center account.
--
-- /See:/ 'newContentPromotionsGet' smart constructor.
data ContentPromotionsGet = ContentPromotionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. REST ID of the promotion to retrieve.
    , id :: Core.Text
      -- | Required. The ID of the account that contains the collection.
    , merchantId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPromotionsGet' with the minimum fields required to make a request.
newContentPromotionsGet 
    ::  Core.Text
       -- ^  Required. REST ID of the promotion to retrieve. See 'id'.
    -> Core.Int64
       -- ^  Required. The ID of the account that contains the collection. See 'merchantId'.
    -> ContentPromotionsGet
newContentPromotionsGet id merchantId =
  ContentPromotionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , merchantId = merchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentPromotionsGet
         where
        type Rs ContentPromotionsGet = Promotion
        type Scopes ContentPromotionsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentPromotionsGet{..}
          = go merchantId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentPromotionsGetResource)
                      Core.mempty

