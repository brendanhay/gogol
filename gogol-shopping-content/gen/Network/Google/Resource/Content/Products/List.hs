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
-- Lists the products in your Merchant Center account. The response might
-- contain fewer items than specified by maxResults. Rely on nextPageToken
-- to determine if there are more items to be requested.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.list@.
module Network.Google.Resource.Content.Products.List
    (
    -- * REST Resource
      ProductsListResource

    -- * Creating a Request
    , productsList
    , ProductsList

    -- * Request Lenses
    , ppXgafv
    , ppMerchantId
    , ppUploadProtocol
    , ppAccessToken
    , ppUploadType
    , ppPageToken
    , ppMaxResults
    , ppCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.list@ method which the
-- 'ProductsList' request conforms to.
type ProductsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ProductsListResponse

-- | Lists the products in your Merchant Center account. The response might
-- contain fewer items than specified by maxResults. Rely on nextPageToken
-- to determine if there are more items to be requested.
--
-- /See:/ 'productsList' smart constructor.
data ProductsList =
  ProductsList'
    { _ppXgafv :: !(Maybe Xgafv)
    , _ppMerchantId :: !(Textual Word64)
    , _ppUploadProtocol :: !(Maybe Text)
    , _ppAccessToken :: !(Maybe Text)
    , _ppUploadType :: !(Maybe Text)
    , _ppPageToken :: !(Maybe Text)
    , _ppMaxResults :: !(Maybe (Textual Word32))
    , _ppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppXgafv'
--
-- * 'ppMerchantId'
--
-- * 'ppUploadProtocol'
--
-- * 'ppAccessToken'
--
-- * 'ppUploadType'
--
-- * 'ppPageToken'
--
-- * 'ppMaxResults'
--
-- * 'ppCallback'
productsList
    :: Word64 -- ^ 'ppMerchantId'
    -> ProductsList
productsList pPpMerchantId_ =
  ProductsList'
    { _ppXgafv = Nothing
    , _ppMerchantId = _Coerce # pPpMerchantId_
    , _ppUploadProtocol = Nothing
    , _ppAccessToken = Nothing
    , _ppUploadType = Nothing
    , _ppPageToken = Nothing
    , _ppMaxResults = Nothing
    , _ppCallback = Nothing
    }


-- | V1 error format.
ppXgafv :: Lens' ProductsList (Maybe Xgafv)
ppXgafv = lens _ppXgafv (\ s a -> s{_ppXgafv = a})

-- | The ID of the account that contains the products. This account cannot be
-- a multi-client account.
ppMerchantId :: Lens' ProductsList Word64
ppMerchantId
  = lens _ppMerchantId (\ s a -> s{_ppMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppUploadProtocol :: Lens' ProductsList (Maybe Text)
ppUploadProtocol
  = lens _ppUploadProtocol
      (\ s a -> s{_ppUploadProtocol = a})

-- | OAuth access token.
ppAccessToken :: Lens' ProductsList (Maybe Text)
ppAccessToken
  = lens _ppAccessToken
      (\ s a -> s{_ppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppUploadType :: Lens' ProductsList (Maybe Text)
ppUploadType
  = lens _ppUploadType (\ s a -> s{_ppUploadType = a})

-- | The token returned by the previous request.
ppPageToken :: Lens' ProductsList (Maybe Text)
ppPageToken
  = lens _ppPageToken (\ s a -> s{_ppPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
ppMaxResults :: Lens' ProductsList (Maybe Word32)
ppMaxResults
  = lens _ppMaxResults (\ s a -> s{_ppMaxResults = a})
      . mapping _Coerce

-- | JSONP
ppCallback :: Lens' ProductsList (Maybe Text)
ppCallback
  = lens _ppCallback (\ s a -> s{_ppCallback = a})

instance GoogleRequest ProductsList where
        type Rs ProductsList = ProductsListResponse
        type Scopes ProductsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsList'{..}
          = go _ppMerchantId _ppXgafv _ppUploadProtocol
              _ppAccessToken
              _ppUploadType
              _ppPageToken
              _ppMaxResults
              _ppCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsListResource)
                      mempty
