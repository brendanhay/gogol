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
-- Module      : Gogol.ShoppingContent.Content.Regions.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a region definition in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.regions.patch@.
module Gogol.ShoppingContent.Content.Regions.Patch
    (
    -- * Resource
      ContentRegionsPatchResource

    -- ** Constructing a Request
    , ContentRegionsPatch (..)
    , newContentRegionsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.regions.patch@ method which the
-- 'ContentRegionsPatch' request conforms to.
type ContentRegionsPatchResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "regions" Core.:>
             Core.Capture "regionId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "updateMask" Core.FieldMask Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Region Core.:>
                               Core.Patch '[Core.JSON] Region

-- | Updates a region definition in your Merchant Center account.
--
-- /See:/ 'newContentRegionsPatch' smart constructor.
data ContentRegionsPatch = ContentRegionsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The id of the merchant for which to update region definition.
    , merchantId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: Region
      -- | Required. The id of the region to update.
    , regionId :: Core.Text
      -- | Optional. The comma-separated field mask indicating the fields to update. Example: @\"displayName,postalCodeArea.regionCode\"@.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRegionsPatch' with the minimum fields required to make a request.
newContentRegionsPatch 
    ::  Core.Int64
       -- ^  Required. The id of the merchant for which to update region definition. See 'merchantId'.
    -> Region
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The id of the region to update. See 'regionId'.
    -> ContentRegionsPatch
newContentRegionsPatch merchantId payload regionId =
  ContentRegionsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , regionId = regionId
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentRegionsPatch where
        type Rs ContentRegionsPatch = Region
        type Scopes ContentRegionsPatch =
             '[Content'FullControl]
        requestClient ContentRegionsPatch{..}
          = go merchantId regionId xgafv accessToken callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentRegionsPatchResource)
                      Core.mempty

