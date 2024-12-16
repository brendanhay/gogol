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
-- Module      : Gogol.ShoppingContent.Content.Merchantsupport.Triggeraction
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start an action. The action can be requested by merchants in third-party application. Before merchants can request the action, the third-party application needs to show them action specific content and display a user input form. The action can be successfully started only once all @required@ inputs are provided. If any @required@ input is missing, or invalid value was provided, the service will return 400 error. Validation errors will contain Ids for all problematic field together with translated, human readable error messages that can be shown to the user.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.merchantsupport.triggeraction@.
module Gogol.ShoppingContent.Content.Merchantsupport.Triggeraction
    (
    -- * Resource
      ContentMerchantsupportTriggeractionResource

    -- ** Constructing a Request
    , ContentMerchantsupportTriggeraction (..)
    , newContentMerchantsupportTriggeraction
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.merchantsupport.triggeraction@ method which the
-- 'ContentMerchantsupportTriggeraction' request conforms to.
type ContentMerchantsupportTriggeractionResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "merchantsupport" Core.:>
             "triggeraction" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "languageCode" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] TriggerActionPayload
                               Core.:>
                               Core.Post '[Core.JSON] TriggerActionResponse

-- | Start an action. The action can be requested by merchants in third-party application. Before merchants can request the action, the third-party application needs to show them action specific content and display a user input form. The action can be successfully started only once all @required@ inputs are provided. If any @required@ input is missing, or invalid value was provided, the service will return 400 error. Validation errors will contain Ids for all problematic field together with translated, human readable error messages that can be shown to the user.
--
-- /See:/ 'newContentMerchantsupportTriggeraction' smart constructor.
data ContentMerchantsupportTriggeraction = ContentMerchantsupportTriggeraction
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Language code <https://tools.ietf.org/html/bcp47 IETF BCP 47 syntax> used to localize the response. If not set, the result will be in default language @en-US@.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The ID of the merchant\'s account.
    , merchantId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: TriggerActionPayload
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentMerchantsupportTriggeraction' with the minimum fields required to make a request.
newContentMerchantsupportTriggeraction 
    ::  Core.Int64
       -- ^  Required. The ID of the merchant\'s account. See 'merchantId'.
    -> TriggerActionPayload
       -- ^  Multipart request metadata. See 'payload'.
    -> ContentMerchantsupportTriggeraction
newContentMerchantsupportTriggeraction merchantId payload =
  ContentMerchantsupportTriggeraction
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , languageCode = Core.Nothing
    , merchantId = merchantId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentMerchantsupportTriggeraction
         where
        type Rs ContentMerchantsupportTriggeraction =
             TriggerActionResponse
        type Scopes ContentMerchantsupportTriggeraction =
             '[Content'FullControl]
        requestClient ContentMerchantsupportTriggeraction{..}
          = go merchantId xgafv accessToken callback
              languageCode
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentMerchantsupportTriggeractionResource)
                      Core.mempty

