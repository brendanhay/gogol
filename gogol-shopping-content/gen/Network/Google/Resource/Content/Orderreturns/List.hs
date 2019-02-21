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
-- Module      : Network.Google.Resource.Content.Orderreturns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists order returns in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orderreturns.list@.
module Network.Google.Resource.Content.Orderreturns.List
    (
    -- * REST Resource
      OrderreturnsListResource

    -- * Creating a Request
    , orderreturnsList
    , OrderreturnsList

    -- * Request Lenses
    , ooMerchantId
    , ooOrderBy
    , ooCreatedEndDate
    , ooCreatedStartDate
    , ooPageToken
    , ooMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.list@ method which the
-- 'OrderreturnsList' request conforms to.
type OrderreturnsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             QueryParam "orderBy" OrderreturnsListOrderBy :>
               QueryParam "createdEndDate" Text :>
                 QueryParam "createdStartDate" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrderreturnsListResponse

-- | Lists order returns in your Merchant Center account.
--
-- /See:/ 'orderreturnsList' smart constructor.
data OrderreturnsList =
  OrderreturnsList'
    { _ooMerchantId       :: !(Textual Word64)
    , _ooOrderBy          :: !(Maybe OrderreturnsListOrderBy)
    , _ooCreatedEndDate   :: !(Maybe Text)
    , _ooCreatedStartDate :: !(Maybe Text)
    , _ooPageToken        :: !(Maybe Text)
    , _ooMaxResults       :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooMerchantId'
--
-- * 'ooOrderBy'
--
-- * 'ooCreatedEndDate'
--
-- * 'ooCreatedStartDate'
--
-- * 'ooPageToken'
--
-- * 'ooMaxResults'
orderreturnsList
    :: Word64 -- ^ 'ooMerchantId'
    -> OrderreturnsList
orderreturnsList pOoMerchantId_ =
  OrderreturnsList'
    { _ooMerchantId = _Coerce # pOoMerchantId_
    , _ooOrderBy = Nothing
    , _ooCreatedEndDate = Nothing
    , _ooCreatedStartDate = Nothing
    , _ooPageToken = Nothing
    , _ooMaxResults = Nothing
    }


-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ooMerchantId :: Lens' OrderreturnsList Word64
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})
      . _Coerce

-- | Return the results in the specified order.
ooOrderBy :: Lens' OrderreturnsList (Maybe OrderreturnsListOrderBy)
ooOrderBy
  = lens _ooOrderBy (\ s a -> s{_ooOrderBy = a})

-- | Obtains order returns created before this date (inclusively), in ISO
-- 8601 format.
ooCreatedEndDate :: Lens' OrderreturnsList (Maybe Text)
ooCreatedEndDate
  = lens _ooCreatedEndDate
      (\ s a -> s{_ooCreatedEndDate = a})

-- | Obtains order returns created after this date (inclusively), in ISO 8601
-- format.
ooCreatedStartDate :: Lens' OrderreturnsList (Maybe Text)
ooCreatedStartDate
  = lens _ooCreatedStartDate
      (\ s a -> s{_ooCreatedStartDate = a})

-- | The token returned by the previous request.
ooPageToken :: Lens' OrderreturnsList (Maybe Text)
ooPageToken
  = lens _ooPageToken (\ s a -> s{_ooPageToken = a})

-- | The maximum number of order returns to return in the response, used for
-- paging. The default value is 25 returns per page, and the maximum
-- allowed value is 250 returns per page.
ooMaxResults :: Lens' OrderreturnsList (Maybe Word32)
ooMaxResults
  = lens _ooMaxResults (\ s a -> s{_ooMaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrderreturnsList where
        type Rs OrderreturnsList = OrderreturnsListResponse
        type Scopes OrderreturnsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsList'{..}
          = go _ooMerchantId _ooOrderBy _ooCreatedEndDate
              _ooCreatedStartDate
              _ooPageToken
              _ooMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsListResource)
                      mempty
