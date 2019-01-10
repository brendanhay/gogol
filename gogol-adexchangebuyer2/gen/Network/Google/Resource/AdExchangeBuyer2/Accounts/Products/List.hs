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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all products visible to the buyer (optionally filtered by the
-- specified PQL query).
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.products.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.Products.List
    (
    -- * REST Resource
      AccountsProductsListResource

    -- * Creating a Request
    , accountsProductsList
    , AccountsProductsList

    -- * Request Lenses
    , aplpXgafv
    , aplpUploadProtocol
    , aplpAccessToken
    , aplpUploadType
    , aplpAccountId
    , aplpFilter
    , aplpPageToken
    , aplpPageSize
    , aplpCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.products.list@ method which the
-- 'AccountsProductsList' request conforms to.
type AccountsProductsListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "products" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListProductsResponse

-- | List all products visible to the buyer (optionally filtered by the
-- specified PQL query).
--
-- /See:/ 'accountsProductsList' smart constructor.
data AccountsProductsList = AccountsProductsList'
    { _aplpXgafv          :: !(Maybe Xgafv)
    , _aplpUploadProtocol :: !(Maybe Text)
    , _aplpAccessToken    :: !(Maybe Text)
    , _aplpUploadType     :: !(Maybe Text)
    , _aplpAccountId      :: !Text
    , _aplpFilter         :: !(Maybe Text)
    , _aplpPageToken      :: !(Maybe Text)
    , _aplpPageSize       :: !(Maybe (Textual Int32))
    , _aplpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplpXgafv'
--
-- * 'aplpUploadProtocol'
--
-- * 'aplpAccessToken'
--
-- * 'aplpUploadType'
--
-- * 'aplpAccountId'
--
-- * 'aplpFilter'
--
-- * 'aplpPageToken'
--
-- * 'aplpPageSize'
--
-- * 'aplpCallback'
accountsProductsList
    :: Text -- ^ 'aplpAccountId'
    -> AccountsProductsList
accountsProductsList pAplpAccountId_ =
    AccountsProductsList'
    { _aplpXgafv = Nothing
    , _aplpUploadProtocol = Nothing
    , _aplpAccessToken = Nothing
    , _aplpUploadType = Nothing
    , _aplpAccountId = pAplpAccountId_
    , _aplpFilter = Nothing
    , _aplpPageToken = Nothing
    , _aplpPageSize = Nothing
    , _aplpCallback = Nothing
    }

-- | V1 error format.
aplpXgafv :: Lens' AccountsProductsList (Maybe Xgafv)
aplpXgafv
  = lens _aplpXgafv (\ s a -> s{_aplpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplpUploadProtocol :: Lens' AccountsProductsList (Maybe Text)
aplpUploadProtocol
  = lens _aplpUploadProtocol
      (\ s a -> s{_aplpUploadProtocol = a})

-- | OAuth access token.
aplpAccessToken :: Lens' AccountsProductsList (Maybe Text)
aplpAccessToken
  = lens _aplpAccessToken
      (\ s a -> s{_aplpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplpUploadType :: Lens' AccountsProductsList (Maybe Text)
aplpUploadType
  = lens _aplpUploadType
      (\ s a -> s{_aplpUploadType = a})

-- | Account ID of the buyer.
aplpAccountId :: Lens' AccountsProductsList Text
aplpAccountId
  = lens _aplpAccountId
      (\ s a -> s{_aplpAccountId = a})

-- | An optional PQL query used to query for products. See
-- https:\/\/developers.google.com\/ad-manager\/docs\/pqlreference for
-- documentation about PQL and examples. Nested repeated fields, such as
-- product.targetingCriterion.inclusions, cannot be filtered.
aplpFilter :: Lens' AccountsProductsList (Maybe Text)
aplpFilter
  = lens _aplpFilter (\ s a -> s{_aplpFilter = a})

-- | The page token as returned from ListProductsResponse.
aplpPageToken :: Lens' AccountsProductsList (Maybe Text)
aplpPageToken
  = lens _aplpPageToken
      (\ s a -> s{_aplpPageToken = a})

-- | Requested page size. The server may return fewer results than requested.
-- If unspecified, the server will pick an appropriate default.
aplpPageSize :: Lens' AccountsProductsList (Maybe Int32)
aplpPageSize
  = lens _aplpPageSize (\ s a -> s{_aplpPageSize = a})
      . mapping _Coerce

-- | JSONP
aplpCallback :: Lens' AccountsProductsList (Maybe Text)
aplpCallback
  = lens _aplpCallback (\ s a -> s{_aplpCallback = a})

instance GoogleRequest AccountsProductsList where
        type Rs AccountsProductsList = ListProductsResponse
        type Scopes AccountsProductsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsProductsList'{..}
          = go _aplpAccountId _aplpXgafv _aplpUploadProtocol
              _aplpAccessToken
              _aplpUploadType
              _aplpFilter
              _aplpPageToken
              _aplpPageSize
              _aplpCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsProductsListResource)
                      mempty
