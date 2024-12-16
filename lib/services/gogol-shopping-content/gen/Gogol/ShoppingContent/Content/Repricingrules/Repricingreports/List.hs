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
-- Module      : Gogol.ShoppingContent.Content.Repricingrules.Repricingreports.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the metrics report for a given Repricing rule.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.repricingrules.repricingreports.list@.
module Gogol.ShoppingContent.Content.Repricingrules.Repricingreports.List
    (
    -- * Resource
      ContentRepricingrulesRepricingreportsListResource

    -- ** Constructing a Request
    , ContentRepricingrulesRepricingreportsList (..)
    , newContentRepricingrulesRepricingreportsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.repricingrules.repricingreports.list@ method which the
-- 'ContentRepricingrulesRepricingreportsList' request conforms to.
type ContentRepricingrulesRepricingreportsListResource
     =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Int64 Core.:>
           "repricingrules" Core.:>
             Core.Capture "ruleId" Core.Text Core.:>
               "repricingreports" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "endDate" Core.Text Core.:>
                         Core.QueryParam "pageSize" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "startDate" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON]
                                       ListRepricingRuleReportsResponse

-- | Lists the metrics report for a given Repricing rule.
--
-- /See:/ 'newContentRepricingrulesRepricingreportsList' smart constructor.
data ContentRepricingrulesRepricingreportsList = ContentRepricingrulesRepricingreportsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Gets Repricing reports on and before this date in the merchant\'s timezone. You can only retrieve data up to 7 days ago (default) or earlier. Format: YYYY-MM-DD.
    , endDate :: (Core.Maybe Core.Text)
      -- | Required. Id of the merchant who owns the Repricing rule.
    , merchantId :: Core.Int64
      -- | Maximum number of daily reports to return. Each report includes data from a single 24-hour period. The page size defaults to 50 and values above 1000 are coerced to 1000. This service may return fewer days than this value, for example, if the time between your start and end date is less than page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Id of the Repricing rule.
    , ruleId :: Core.Text
      -- | Gets Repricing reports on and after this date in the merchant\'s timezone, up to one year ago. Do not use a start date later than 7 days ago (default). Format: YYYY-MM-DD.
    , startDate :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentRepricingrulesRepricingreportsList' with the minimum fields required to make a request.
newContentRepricingrulesRepricingreportsList 
    ::  Core.Int64
       -- ^  Required. Id of the merchant who owns the Repricing rule. See 'merchantId'.
    -> Core.Text
       -- ^  Required. Id of the Repricing rule. See 'ruleId'.
    -> ContentRepricingrulesRepricingreportsList
newContentRepricingrulesRepricingreportsList merchantId ruleId =
  ContentRepricingrulesRepricingreportsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , endDate = Core.Nothing
    , merchantId = merchantId
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , ruleId = ruleId
    , startDate = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentRepricingrulesRepricingreportsList
         where
        type Rs ContentRepricingrulesRepricingreportsList =
             ListRepricingRuleReportsResponse
        type Scopes ContentRepricingrulesRepricingreportsList
             = '[Content'FullControl]
        requestClient
          ContentRepricingrulesRepricingreportsList{..}
          = go merchantId ruleId xgafv accessToken callback
              endDate
              pageSize
              pageToken
              startDate
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentRepricingrulesRepricingreportsListResource)
                      Core.mempty

