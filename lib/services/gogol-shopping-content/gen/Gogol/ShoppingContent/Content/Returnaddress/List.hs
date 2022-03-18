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
-- Module      : Gogol.ShoppingContent.Content.Returnaddress.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the return addresses of the Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnaddress.list@.
module Gogol.ShoppingContent.Content.Returnaddress.List
    (
    -- * Resource
      ContentReturnaddressListResource

    -- ** Constructing a Request
    , newContentReturnaddressList
    , ContentReturnaddressList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.returnaddress.list@ method which the
-- 'ContentReturnaddressList' request conforms to.
type ContentReturnaddressListResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "returnaddress" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "country" Core.Text Core.:>
                     Core.QueryParam "maxResults" Core.Word32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ReturnaddressListResponse

-- | Lists the return addresses of the Merchant Center account.
--
-- /See:/ 'newContentReturnaddressList' smart constructor.
data ContentReturnaddressList = ContentReturnaddressList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | List only return addresses applicable to the given country of sale. When omitted, all return addresses are listed.
    , country :: (Core.Maybe Core.Text)
      -- | The maximum number of addresses in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | The Merchant Center account to list return addresses for.
    , merchantId :: Core.Word64
      -- | The token returned by the previous request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentReturnaddressList' with the minimum fields required to make a request.
newContentReturnaddressList 
    ::  Core.Word64
       -- ^  The Merchant Center account to list return addresses for. See 'merchantId'.
    -> ContentReturnaddressList
newContentReturnaddressList merchantId =
  ContentReturnaddressList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , country = Core.Nothing
    , maxResults = Core.Nothing
    , merchantId = merchantId
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentReturnaddressList
         where
        type Rs ContentReturnaddressList =
             ReturnaddressListResponse
        type Scopes ContentReturnaddressList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentReturnaddressList{..}
          = go merchantId xgafv accessToken callback country
              maxResults
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentReturnaddressListResource)
                      Core.mempty

