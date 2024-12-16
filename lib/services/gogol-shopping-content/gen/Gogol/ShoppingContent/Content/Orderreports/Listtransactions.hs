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
-- Module      : Gogol.ShoppingContent.Content.Orderreports.Listtransactions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of transactions for a disbursement from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreports.listtransactions@.
module Gogol.ShoppingContent.Content.Orderreports.Listtransactions
    (
    -- * Resource
      ContentOrderreportsListtransactionsResource

    -- ** Constructing a Request
    , ContentOrderreportsListtransactions (..)
    , newContentOrderreportsListtransactions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.orderreports.listtransactions@ method which the
-- 'ContentOrderreportsListtransactions' request conforms to.
type ContentOrderreportsListtransactionsResource =
     "content" Core.:>
       "v2.1" Core.:>
         Core.Capture "merchantId" Core.Word64 Core.:>
           "orderreports" Core.:>
             "disbursements" Core.:>
               Core.Capture "disbursementId" Core.Text Core.:>
                 "transactions" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "maxResults" Core.Word32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "transactionEndDate" Core.Text
                               Core.:>
                               Core.QueryParam "transactionStartDate" Core.Text
                                 Core.:>
                                 Core.QueryParam "uploadType" Core.Text Core.:>
                                   Core.QueryParam "upload_protocol" Core.Text
                                     Core.:>
                                     Core.QueryParam "alt" Core.AltJSON Core.:>
                                       Core.Get '[Core.JSON]
                                         OrderreportsListTransactionsResponse

-- | Retrieves a list of transactions for a disbursement from your Merchant Center account.
--
-- /See:/ 'newContentOrderreportsListtransactions' smart constructor.
data ContentOrderreportsListtransactions = ContentOrderreportsListtransactions
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The Google-provided ID of the disbursement (found in Wallet).
    , disbursementId :: Core.Text
      -- | The maximum number of disbursements to return in the response, used for paging.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | The ID of the account that manages the order. This cannot be a multi-client account.
    , merchantId :: Core.Word64
      -- | The token returned by the previous request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | The last date in which transaction occurred. In ISO 8601 format. Default: current date.
    , transactionEndDate :: (Core.Maybe Core.Text)
      -- | The first date in which transaction occurred. In ISO 8601 format.
    , transactionStartDate :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentOrderreportsListtransactions' with the minimum fields required to make a request.
newContentOrderreportsListtransactions 
    ::  Core.Text
       -- ^  The Google-provided ID of the disbursement (found in Wallet). See 'disbursementId'.
    -> Core.Word64
       -- ^  The ID of the account that manages the order. This cannot be a multi-client account. See 'merchantId'.
    -> ContentOrderreportsListtransactions
newContentOrderreportsListtransactions disbursementId merchantId =
  ContentOrderreportsListtransactions
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , disbursementId = disbursementId
    , maxResults = Core.Nothing
    , merchantId = merchantId
    , pageToken = Core.Nothing
    , transactionEndDate = Core.Nothing
    , transactionStartDate = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ContentOrderreportsListtransactions
         where
        type Rs ContentOrderreportsListtransactions =
             OrderreportsListTransactionsResponse
        type Scopes ContentOrderreportsListtransactions =
             '[Content'FullControl]
        requestClient ContentOrderreportsListtransactions{..}
          = go merchantId disbursementId xgafv accessToken
              callback
              maxResults
              pageToken
              transactionEndDate
              transactionStartDate
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              shoppingContentService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ContentOrderreportsListtransactionsResource)
                      Core.mempty

