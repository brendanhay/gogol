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
-- Module      : Network.Google.Resource.Content.Settlementtransactions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of transactions for the settlement.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementtransactions.list@.
module Network.Google.Resource.Content.Settlementtransactions.List
    (
    -- * REST Resource
      SettlementtransactionsListResource

    -- * Creating a Request
    , settlementtransactionsList
    , SettlementtransactionsList

    -- * Request Lenses
    , slXgafv
    , slMerchantId
    , slUploadProtocol
    , slTransactionIds
    , slAccessToken
    , slUploadType
    , slPageToken
    , slSettlementId
    , slMaxResults
    , slCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.settlementtransactions.list@ method which the
-- 'SettlementtransactionsList' request conforms to.
type SettlementtransactionsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "settlementreports" :>
             Capture "settlementId" Text :>
               "transactions" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParams "transactionIds" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON]
                                     SettlementtransactionsListResponse

-- | Retrieves a list of transactions for the settlement.
--
-- /See:/ 'settlementtransactionsList' smart constructor.
data SettlementtransactionsList =
  SettlementtransactionsList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slMerchantId :: !(Textual Word64)
    , _slUploadProtocol :: !(Maybe Text)
    , _slTransactionIds :: !(Maybe [Text])
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slSettlementId :: !Text
    , _slMaxResults :: !(Maybe (Textual Word32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementtransactionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slMerchantId'
--
-- * 'slUploadProtocol'
--
-- * 'slTransactionIds'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slPageToken'
--
-- * 'slSettlementId'
--
-- * 'slMaxResults'
--
-- * 'slCallback'
settlementtransactionsList
    :: Word64 -- ^ 'slMerchantId'
    -> Text -- ^ 'slSettlementId'
    -> SettlementtransactionsList
settlementtransactionsList pSlMerchantId_ pSlSettlementId_ =
  SettlementtransactionsList'
    { _slXgafv = Nothing
    , _slMerchantId = _Coerce # pSlMerchantId_
    , _slUploadProtocol = Nothing
    , _slTransactionIds = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slPageToken = Nothing
    , _slSettlementId = pSlSettlementId_
    , _slMaxResults = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' SettlementtransactionsList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | The Merchant Center account to list transactions for.
slMerchantId :: Lens' SettlementtransactionsList Word64
slMerchantId
  = lens _slMerchantId (\ s a -> s{_slMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SettlementtransactionsList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | The list of transactions to return. If not set, all transactions will be
-- returned.
slTransactionIds :: Lens' SettlementtransactionsList [Text]
slTransactionIds
  = lens _slTransactionIds
      (\ s a -> s{_slTransactionIds = a})
      . _Default
      . _Coerce

-- | OAuth access token.
slAccessToken :: Lens' SettlementtransactionsList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SettlementtransactionsList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | The token returned by the previous request.
slPageToken :: Lens' SettlementtransactionsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | The Google-provided ID of the settlement.
slSettlementId :: Lens' SettlementtransactionsList Text
slSettlementId
  = lens _slSettlementId
      (\ s a -> s{_slSettlementId = a})

-- | The maximum number of transactions to return in the response, used for
-- paging. The default value is 200 transactions per page, and the maximum
-- allowed value is 5000 transactions per page.
slMaxResults :: Lens' SettlementtransactionsList (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

-- | JSONP
slCallback :: Lens' SettlementtransactionsList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SettlementtransactionsList
         where
        type Rs SettlementtransactionsList =
             SettlementtransactionsListResponse
        type Scopes SettlementtransactionsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient SettlementtransactionsList'{..}
          = go _slMerchantId _slSettlementId _slXgafv
              _slUploadProtocol
              (_slTransactionIds ^. _Default)
              _slAccessToken
              _slUploadType
              _slPageToken
              _slMaxResults
              _slCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy SettlementtransactionsListResource)
                      mempty
