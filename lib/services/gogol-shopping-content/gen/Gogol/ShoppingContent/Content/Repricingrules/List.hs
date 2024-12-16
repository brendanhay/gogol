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
-- Module      : Gogol.ShoppingContent.Content.Repricingrules.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the repricing rules in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.list@.
module Gogol.ShoppingContent.Content.Repricingrules.List
    (
    -- * Resource
      ContentRepricingrulesListResource

    -- ** Constructing a Request
    , ContentRepricingrulesList (..)
    , newContentRepricingrulesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.list@ method which the
-- 'ContentRepricingrulesList' request conforms to.
type ContentRepricingrulesListResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "repricingrules" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "countryCode" Core.Text Core.:>
                     Core.QueryParam "languageCode" Core.Text Core.:>
                       Core.QueryParam "pageSize" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON]
                                   ListRepricingRulesResponse

-- | Lists the repricing rules in your Merchant Center account.
--
-- /See:/ 'newContentRepricingrulesList' smart constructor.
data ContentRepricingrulesList = ContentRepricingrulesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml CLDR country code> (e.g. \"US\"), used as a filter on repricing rules.
    , countryCode :: (Core.Maybe Core.Text)
      -- | The two-letter ISO 639-1 language code associated with the repricing rule, used as a filter.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Required. The id of the merchant who owns the repricing rule.
    , merchantId :: Core.Int64
      -- | The maximum number of repricing rules to return. The service may return fewer than this value. If unspecified, at most 50 rules will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListRepricingRules@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListRepricingRules@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRepricingrulesList' with the minimum fields required to make a request.
newContentRepricingrulesList 
    ::  Core.Int64
       -- ^  Required. The id of the merchant who owns the repricing rule. See 'merchantId'.
    -> ContentRepricingrulesList
newContentRepricingrulesList merchantId =
  ContentRepricingrulesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , countryCode = Core.Nothing
    , languageCode = Core.Nothing
    , merchantId = merchantId
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentRepricingrulesList
         where
        type Rs ContentRepricingrulesList =
             ListRepricingRulesResponse
        type Scopes ContentRepricingrulesList =
             '[Content'FullControl]
        requestClient ContentRepricingrulesList{..}
          = go merchantId xgafv accessToken callback
              countryCode
              languageCode
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentRepricingrulesListResource)
                      Core.mempty

