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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of transactions for a disbursement from your Merchant
-- Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreports.listtransactions@.
module Network.Google.Resource.Content.Orderreports.Listtransactions
    (
    -- * REST Resource
      OrderreportsListtransactionsResource

    -- * Creating a Request
    , orderreportsListtransactions
    , OrderreportsListtransactions

    -- * Request Lenses
    , olsXgafv
    , olsMerchantId
    , olsDisbursementId
    , olsUploadProtocol
    , olsTransactionStartDate
    , olsAccessToken
    , olsUploadType
    , olsTransactionEndDate
    , olsPageToken
    , olsMaxResults
    , olsCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

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
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "transactionStartDate" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "transactionEndDate" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         OrderreportsListTransactionsResponse

-- | Retrieves a list of transactions for a disbursement from your Merchant
-- Center account.
--
-- /See:/ 'orderreportsListtransactions' smart constructor.
data OrderreportsListtransactions =
  OrderreportsListtransactions'
    { _olsXgafv :: !(Maybe Xgafv)
    , _olsMerchantId :: !(Textual Word64)
    , _olsDisbursementId :: !Text
    , _olsUploadProtocol :: !(Maybe Text)
    , _olsTransactionStartDate :: !(Maybe Text)
    , _olsAccessToken :: !(Maybe Text)
    , _olsUploadType :: !(Maybe Text)
    , _olsTransactionEndDate :: !(Maybe Text)
    , _olsPageToken :: !(Maybe Text)
    , _olsMaxResults :: !(Maybe (Textual Word32))
    , _olsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreportsListtransactions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsXgafv'
--
-- * 'olsMerchantId'
--
-- * 'olsDisbursementId'
--
-- * 'olsUploadProtocol'
--
-- * 'olsTransactionStartDate'
--
-- * 'olsAccessToken'
--
-- * 'olsUploadType'
--
-- * 'olsTransactionEndDate'
--
-- * 'olsPageToken'
--
-- * 'olsMaxResults'
--
-- * 'olsCallback'
orderreportsListtransactions
    :: Word64 -- ^ 'olsMerchantId'
    -> Text -- ^ 'olsDisbursementId'
    -> OrderreportsListtransactions
orderreportsListtransactions pOlsMerchantId_ pOlsDisbursementId_ =
  OrderreportsListtransactions'
    { _olsXgafv = Nothing
    , _olsMerchantId = _Coerce # pOlsMerchantId_
    , _olsDisbursementId = pOlsDisbursementId_
    , _olsUploadProtocol = Nothing
    , _olsTransactionStartDate = Nothing
    , _olsAccessToken = Nothing
    , _olsUploadType = Nothing
    , _olsTransactionEndDate = Nothing
    , _olsPageToken = Nothing
    , _olsMaxResults = Nothing
    , _olsCallback = Nothing
    }


-- | V1 error format.
olsXgafv :: Lens' OrderreportsListtransactions (Maybe Xgafv)
olsXgafv = lens _olsXgafv (\ s a -> s{_olsXgafv = a})

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

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsUploadProtocol :: Lens' OrderreportsListtransactions (Maybe Text)
olsUploadProtocol
  = lens _olsUploadProtocol
      (\ s a -> s{_olsUploadProtocol = a})

-- | The first date in which transaction occurred. In ISO 8601 format.
olsTransactionStartDate :: Lens' OrderreportsListtransactions (Maybe Text)
olsTransactionStartDate
  = lens _olsTransactionStartDate
      (\ s a -> s{_olsTransactionStartDate = a})

-- | OAuth access token.
olsAccessToken :: Lens' OrderreportsListtransactions (Maybe Text)
olsAccessToken
  = lens _olsAccessToken
      (\ s a -> s{_olsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsUploadType :: Lens' OrderreportsListtransactions (Maybe Text)
olsUploadType
  = lens _olsUploadType
      (\ s a -> s{_olsUploadType = a})

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

-- | JSONP
olsCallback :: Lens' OrderreportsListtransactions (Maybe Text)
olsCallback
  = lens _olsCallback (\ s a -> s{_olsCallback = a})

instance GoogleRequest OrderreportsListtransactions
         where
        type Rs OrderreportsListtransactions =
             OrderreportsListTransactionsResponse
        type Scopes OrderreportsListtransactions =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreportsListtransactions'{..}
          = go _olsMerchantId _olsDisbursementId _olsXgafv
              _olsUploadProtocol
              _olsTransactionStartDate
              _olsAccessToken
              _olsUploadType
              _olsTransactionEndDate
              _olsPageToken
              _olsMaxResults
              _olsCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreportsListtransactionsResource)
                      mempty
