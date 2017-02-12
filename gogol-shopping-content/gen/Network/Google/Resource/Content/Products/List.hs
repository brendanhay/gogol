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
-- Module      : Network.Google.Resource.Content.Products.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the products in your Merchant Center account. This method can only
-- be called for non-multi-client accounts.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.products.list@.
module Network.Google.Resource.Content.Products.List
    (
    -- * REST Resource
      ProductsListResource

    -- * Creating a Request
    , productsList
    , ProductsList

    -- * Request Lenses
    , proMerchantId
    , proIncludeInvalidInsertedItems
    , proPageToken
    , proMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.list@ method which the
-- 'ProductsList' request conforms to.
type ProductsListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             QueryParam "includeInvalidInsertedItems" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ProductsListResponse

-- | Lists the products in your Merchant Center account. This method can only
-- be called for non-multi-client accounts.
--
-- /See:/ 'productsList' smart constructor.
data ProductsList = ProductsList'
    { _proMerchantId                  :: !(Textual Word64)
    , _proIncludeInvalidInsertedItems :: !(Maybe Bool)
    , _proPageToken                   :: !(Maybe Text)
    , _proMaxResults                  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proMerchantId'
--
-- * 'proIncludeInvalidInsertedItems'
--
-- * 'proPageToken'
--
-- * 'proMaxResults'
productsList
    :: Word64 -- ^ 'proMerchantId'
    -> ProductsList
productsList pProMerchantId_ =
    ProductsList'
    { _proMerchantId = _Coerce # pProMerchantId_
    , _proIncludeInvalidInsertedItems = Nothing
    , _proPageToken = Nothing
    , _proMaxResults = Nothing
    }

-- | The ID of the managing account.
proMerchantId :: Lens' ProductsList Word64
proMerchantId
  = lens _proMerchantId
      (\ s a -> s{_proMerchantId = a})
      . _Coerce

-- | Flag to include the invalid inserted items in the result of the list
-- request. By default the invalid items are not shown (the default value
-- is false).
proIncludeInvalidInsertedItems :: Lens' ProductsList (Maybe Bool)
proIncludeInvalidInsertedItems
  = lens _proIncludeInvalidInsertedItems
      (\ s a -> s{_proIncludeInvalidInsertedItems = a})

-- | The token returned by the previous request.
proPageToken :: Lens' ProductsList (Maybe Text)
proPageToken
  = lens _proPageToken (\ s a -> s{_proPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
proMaxResults :: Lens' ProductsList (Maybe Word32)
proMaxResults
  = lens _proMaxResults
      (\ s a -> s{_proMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProductsList where
        type Rs ProductsList = ProductsListResponse
        type Scopes ProductsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsList'{..}
          = go _proMerchantId _proIncludeInvalidInsertedItems
              _proPageToken
              _proMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsListResource)
                      mempty
