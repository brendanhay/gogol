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
-- Module      : Gogol.ShoppingContent.Content.Settlementtransactions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of transactions for the settlement.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementtransactions.list@.
module Gogol.ShoppingContent.Content.Settlementtransactions.List
    (
    -- * Resource
      ContentSettlementtransactionsListResource

    -- ** Constructing a Request
    , ContentSettlementtransactionsList (..)
    , newContentSettlementtransactionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.settlementtransactions.list@ method which the
-- 'ContentSettlementtransactionsList' request conforms to.
type ContentSettlementtransactionsListResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "settlementreports" Core.:>
             Core.Capture "settlementId" Core.Text Core.:>
               "transactions" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "maxResults" Core.Word32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParams "transactionIds" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON]
                                     SettlementtransactionsListResponse

-- | Retrieves a list of transactions for the settlement.
--
-- /See:/ 'newContentSettlementtransactionsList' smart constructor.
data ContentSettlementtransactionsList = ContentSettlementtransactionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of transactions to return in the response, used for paging. The default value is 200 transactions per page, and the maximum allowed value is 5000 transactions per page.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | The Merchant Center account to list transactions for.
    , merchantId :: Core.Word64
      -- | The token returned by the previous request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The Google-provided ID of the settlement.
    , settlementId :: Core.Text
      -- | The list of transactions to return. If not set, all transactions will be returned.
    , transactionIds :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentSettlementtransactionsList' with the minimum fields required to make a request.
newContentSettlementtransactionsList 
    ::  Core.Word64
       -- ^  The Merchant Center account to list transactions for. See 'merchantId'.
    -> Core.Text
       -- ^  The Google-provided ID of the settlement. See 'settlementId'.
    -> ContentSettlementtransactionsList
newContentSettlementtransactionsList merchantId settlementId =
  ContentSettlementtransactionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , maxResults = Core.Nothing
    , merchantId = merchantId
    , pageToken = Core.Nothing
    , settlementId = settlementId
    , transactionIds = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentSettlementtransactionsList
         where
        type Rs ContentSettlementtransactionsList =
             SettlementtransactionsListResponse
        type Scopes ContentSettlementtransactionsList =
             '[Content'FullControl]
        requestClient ContentSettlementtransactionsList{..}
          = go merchantId settlementId xgafv accessToken
              callback
              maxResults
              pageToken
              (transactionIds Core.^. Core._Default)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy ContentSettlementtransactionsListResource)
                      Core.mempty

