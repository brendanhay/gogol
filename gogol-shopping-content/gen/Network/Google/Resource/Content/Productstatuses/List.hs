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
-- Module      : Network.Google.Resource.Content.Productstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.productstatuses.list@.
module Network.Google.Resource.Content.Productstatuses.List
    (
    -- * REST Resource
      ProductstatusesListResource

    -- * Creating a Request
    , productstatusesList
    , ProductstatusesList

    -- * Request Lenses
    , plMerchantId
    , plIncludeInvalidInsertedItems
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.list@ method which the
-- 'ProductstatusesList' request conforms to.
type ProductstatusesListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "productstatuses" :>
             QueryParam "includeInvalidInsertedItems" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ProductstatusesListResponse

-- | Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ 'productstatusesList' smart constructor.
data ProductstatusesList = ProductstatusesList'
    { _plMerchantId                  :: !(Textual Word64)
    , _plIncludeInvalidInsertedItems :: !(Maybe Bool)
    , _plPageToken                   :: !(Maybe Text)
    , _plMaxResults                  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plMerchantId'
--
-- * 'plIncludeInvalidInsertedItems'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
productstatusesList
    :: Word64 -- ^ 'plMerchantId'
    -> ProductstatusesList
productstatusesList pPlMerchantId_ =
    ProductstatusesList'
    { _plMerchantId = _Coerce # pPlMerchantId_
    , _plIncludeInvalidInsertedItems = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    }

-- | The ID of the managing account.
plMerchantId :: Lens' ProductstatusesList Word64
plMerchantId
  = lens _plMerchantId (\ s a -> s{_plMerchantId = a})
      . _Coerce

-- | Flag to include the invalid inserted items in the result of the list
-- request. By default the invalid items are not shown (the default value
-- is false).
plIncludeInvalidInsertedItems :: Lens' ProductstatusesList (Maybe Bool)
plIncludeInvalidInsertedItems
  = lens _plIncludeInvalidInsertedItems
      (\ s a -> s{_plIncludeInvalidInsertedItems = a})

-- | The token returned by the previous request.
plPageToken :: Lens' ProductstatusesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of product statuses to return in the response, used
-- for paging.
plMaxResults :: Lens' ProductstatusesList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProductstatusesList where
        type Rs ProductstatusesList =
             ProductstatusesListResponse
        type Scopes ProductstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductstatusesList'{..}
          = go _plMerchantId _plIncludeInvalidInsertedItems
              _plPageToken
              _plMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesListResource)
                      mempty
