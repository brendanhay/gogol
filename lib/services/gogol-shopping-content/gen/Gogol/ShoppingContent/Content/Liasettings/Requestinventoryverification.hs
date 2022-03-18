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
-- Module      : Gogol.ShoppingContent.Content.Liasettings.Requestinventoryverification
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests inventory validation for the specified country.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.requestinventoryverification@.
module Gogol.ShoppingContent.Content.Liasettings.Requestinventoryverification
    (
    -- * Resource
      ContentLiasettingsRequestinventoryverificationResource

    -- ** Constructing a Request
    , newContentLiasettingsRequestinventoryverification
    , ContentLiasettingsRequestinventoryverification
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.liasettings.requestinventoryverification@ method which the
-- 'ContentLiasettingsRequestinventoryverification' request conforms to.
type ContentLiasettingsRequestinventoryverificationResource
     =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "liasettings" Core.:>
             Core.Capture "accountId" Core.Word64 Core.:>
               "requestinventoryverification" Core.:>
                 Core.Capture "country" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Post '[Core.JSON]
                                 LiasettingsRequestInventoryVerificationResponse

-- | Requests inventory validation for the specified country.
--
-- /See:/ 'newContentLiasettingsRequestinventoryverification' smart constructor.
data ContentLiasettingsRequestinventoryverification = ContentLiasettingsRequestinventoryverification
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , accountId :: Core.Word64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The country for which inventory validation is requested.
    , country :: Core.Text
      -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    , merchantId :: Core.Word64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsRequestinventoryverification' with the minimum fields required to make a request.
newContentLiasettingsRequestinventoryverification 
    ::  Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'accountId'.
    -> Core.Text
       -- ^  The country for which inventory validation is requested. See 'country'.
    -> Core.Word64
       -- ^  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
    -> ContentLiasettingsRequestinventoryverification
newContentLiasettingsRequestinventoryverification accountId country merchantId =
  ContentLiasettingsRequestinventoryverification
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , country = country
    , merchantId = merchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentLiasettingsRequestinventoryverification
         where
        type Rs
               ContentLiasettingsRequestinventoryverification
             = LiasettingsRequestInventoryVerificationResponse
        type Scopes
               ContentLiasettingsRequestinventoryverification
             = '["https://www.googleapis.com/auth/content"]
        requestClient
          ContentLiasettingsRequestinventoryverification{..}
          = go merchantId accountId country xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentLiasettingsRequestinventoryverificationResource)
                      Core.mempty

