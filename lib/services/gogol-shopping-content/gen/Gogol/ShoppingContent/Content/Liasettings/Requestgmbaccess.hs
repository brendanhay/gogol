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
-- Module      : Gogol.ShoppingContent.Content.Liasettings.Requestgmbaccess
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests access to a specified Business Profile.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.requestgmbaccess@.
module Gogol.ShoppingContent.Content.Liasettings.Requestgmbaccess
    (
    -- * Resource
      ContentLiasettingsRequestgmbaccessResource

    -- ** Constructing a Request
    , newContentLiasettingsRequestgmbaccess
    , ContentLiasettingsRequestgmbaccess
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.liasettings.requestgmbaccess@ method which the
-- 'ContentLiasettingsRequestgmbaccess' request conforms to.
type ContentLiasettingsRequestgmbaccessResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "liasettings" Core.:>
             Core.Capture "accountId" Core.Word64 Core.:>
               "requestgmbaccess" Core.:>
                 Core.QueryParam "gmbEmail" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Post '[Core.JSON]
                                 LiasettingsRequestGmbAccessResponse

-- | Requests access to a specified Business Profile.
--
-- /See:/ 'newContentLiasettingsRequestgmbaccess' smart constructor.
data ContentLiasettingsRequestgmbaccess = ContentLiasettingsRequestgmbaccess
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The ID of the account for which Business Profile access is requested.
    , accountId :: Core.Word64
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The email of the Business Profile.
    , gmbEmail :: Core.Text
      -- | The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account.
    , merchantId :: Core.Word64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentLiasettingsRequestgmbaccess' with the minimum fields required to make a request.
newContentLiasettingsRequestgmbaccess 
    ::  Core.Word64
       -- ^  The ID of the account for which Business Profile access is requested. See 'accountId'.
    -> Core.Text
       -- ^  The email of the Business Profile. See 'gmbEmail'.
    -> Core.Word64
       -- ^  The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and @accountId@ must be the ID of a sub-account of this account. See 'merchantId'.
    -> ContentLiasettingsRequestgmbaccess
newContentLiasettingsRequestgmbaccess accountId gmbEmail merchantId =
  ContentLiasettingsRequestgmbaccess
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , callback = Core.Nothing
    , gmbEmail = gmbEmail
    , merchantId = merchantId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentLiasettingsRequestgmbaccess
         where
        type Rs ContentLiasettingsRequestgmbaccess =
             LiasettingsRequestGmbAccessResponse
        type Scopes ContentLiasettingsRequestgmbaccess =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentLiasettingsRequestgmbaccess{..}
          = go merchantId accountId (Core.Just gmbEmail) xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentLiasettingsRequestgmbaccessResource)
                      Core.mempty

