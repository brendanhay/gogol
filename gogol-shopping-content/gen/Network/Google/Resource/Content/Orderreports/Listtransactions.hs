{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Orderreports.Listtransactions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of transactions for a disbursement from your Merchant
-- Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderreports.listtransactions@.
module Network.Google.Resource.Content.Orderreports.Listtransactions
    (
    -- * REST Resource
      OrderreportsListtransactionsResource

    -- * Creating a Request
    , orderreportsListtransactions
    , OrderreportsListtransactions

    -- * Request Lenses
    , olsMerchantId
    , olsDisbursementId
    , olsTransactionStartDate
    , olsTransactionEndDate
    , olsPageToken
    , olsMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreports.listtransactions@ method which the
-- 'OrderreportsListtransactions' request conforms to.
type OrderreportsListtransactionsResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreports" :>
             "disbursements" :>
               Capture "disbursementId" Text :>
                 "transactions" :>
                   QueryParam "transactionStartDate" Text :>
                     QueryParam "transactionEndDate" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] OrderreportsListTransactionsResponse

-- | Retrieves a list of transactions for a disbursement from your Merchant
-- Center account.
--
-- /See:/ 'orderreportsListtransactions' smart constructor.
data OrderreportsListtransactions = OrderreportsListtransactions'
    { _olsMerchantId           :: !(Textual Word64)
    , _olsDisbursementId       :: !Text
    , _olsTransactionStartDate :: !Text
    , _olsTransactionEndDate   :: !(Maybe Text)
    , _olsPageToken            :: !(Maybe Text)
    , _olsMaxResults           :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderreportsListtransactions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsMerchantId'
--
-- * 'olsDisbursementId'
--
-- * 'olsTransactionStartDate'
--
-- * 'olsTransactionEndDate'
--
-- * 'olsPageToken'
--
-- * 'olsMaxResults'
orderreportsListtransactions
    :: Word64 -- ^ 'olsMerchantId'
    -> Text -- ^ 'olsDisbursementId'
    -> Text -- ^ 'olsTransactionStartDate'
    -> OrderreportsListtransactions
orderreportsListtransactions pOlsMerchantId_ pOlsDisbursementId_ pOlsTransactionStartDate_ =
    OrderreportsListtransactions'
    { _olsMerchantId = _Coerce # pOlsMerchantId_
    , _olsDisbursementId = pOlsDisbursementId_
    , _olsTransactionStartDate = pOlsTransactionStartDate_
    , _olsTransactionEndDate = Nothing
    , _olsPageToken = Nothing
    , _olsMaxResults = Nothing
    }

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
olsMerchantId :: Lens' OrderreportsListtransactions Word64
olsMerchantId
  = lens _olsMerchantId
      (\ s a -> s{_olsMerchantId = a})
      . _Coerce

-- | The Google-provided ID of the disbursement (found in Wallet).
olsDisbursementId :: Lens' OrderreportsListtransactions Text
olsDisbursementId
  = lens _olsDisbursementId
      (\ s a -> s{_olsDisbursementId = a})

-- | The first date in which transaction occurred. In ISO 8601 format.
olsTransactionStartDate :: Lens' OrderreportsListtransactions Text
olsTransactionStartDate
  = lens _olsTransactionStartDate
      (\ s a -> s{_olsTransactionStartDate = a})

-- | The last date in which transaction occurred. In ISO 8601 format.
-- Default: current date.
olsTransactionEndDate :: Lens' OrderreportsListtransactions (Maybe Text)
olsTransactionEndDate
  = lens _olsTransactionEndDate
      (\ s a -> s{_olsTransactionEndDate = a})

-- | The token returned by the previous request.
olsPageToken :: Lens' OrderreportsListtransactions (Maybe Text)
olsPageToken
  = lens _olsPageToken (\ s a -> s{_olsPageToken = a})

-- | The maximum number of disbursements to return in the response, used for
-- paging.
olsMaxResults :: Lens' OrderreportsListtransactions (Maybe Word32)
olsMaxResults
  = lens _olsMaxResults
      (\ s a -> s{_olsMaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrderreportsListtransactions
         where
        type Rs OrderreportsListtransactions =
             OrderreportsListTransactionsResponse
        type Scopes OrderreportsListtransactions =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreportsListtransactions'{..}
          = go _olsMerchantId _olsDisbursementId
              (Just _olsTransactionStartDate)
              _olsTransactionEndDate
              _olsPageToken
              _olsMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreportsListtransactionsResource)
                      mempty
