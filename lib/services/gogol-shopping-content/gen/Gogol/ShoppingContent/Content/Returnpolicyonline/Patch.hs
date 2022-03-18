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
-- Module      : Gogol.ShoppingContent.Content.Returnpolicyonline.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.patch@.
module Gogol.ShoppingContent.Content.Returnpolicyonline.Patch
    (
    -- * Resource
      ContentReturnpolicyonlinePatchResource

    -- ** Constructing a Request
    , newContentReturnpolicyonlinePatch
    , ContentReturnpolicyonlinePatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.patch@ method which the
-- 'ContentReturnpolicyonlinePatch' request conforms to.
type ContentReturnpolicyonlinePatchResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "returnpolicyonline" Core.:>
             Core.Capture "returnPolicyId" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ReturnPolicyOnline Core.:>
                             Core.Patch '[Core.JSON] ReturnPolicyOnline

-- | Updates an existing return policy.
--
-- /See:/ 'newContentReturnpolicyonlinePatch' smart constructor.
data ContentReturnpolicyonlinePatch = ContentReturnpolicyonlinePatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The id of the merchant for which to retrieve the return policy online object.
    , merchantId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: ReturnPolicyOnline
      -- | Required. The id of the return policy to update.
    , returnPolicyId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentReturnpolicyonlinePatch' with the minimum fields required to make a request.
newContentReturnpolicyonlinePatch 
    ::  Core.Int64
       -- ^  Required. The id of the merchant for which to retrieve the return policy online object. See 'merchantId'.
    -> ReturnPolicyOnline
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The id of the return policy to update. See 'returnPolicyId'.
    -> ContentReturnpolicyonlinePatch
newContentReturnpolicyonlinePatch merchantId payload returnPolicyId =
  ContentReturnpolicyonlinePatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , returnPolicyId = returnPolicyId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentReturnpolicyonlinePatch
         where
        type Rs ContentReturnpolicyonlinePatch =
             ReturnPolicyOnline
        type Scopes ContentReturnpolicyonlinePatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ContentReturnpolicyonlinePatch{..}
          = go merchantId returnPolicyId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentReturnpolicyonlinePatchResource)
                      Core.mempty

