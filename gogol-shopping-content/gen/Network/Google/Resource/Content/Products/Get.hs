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
-- Module      : Network.Google.Resource.Content.Products.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.get@.
module Network.Google.Resource.Content.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet
    , ProductsGet

    -- * Request Lenses
    , pggXgafv
    , pggMerchantId
    , pggUploadProtocol
    , pggAccessToken
    , pggUploadType
    , pggProductId
    , pggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.get@ method which the
-- 'ProductsGet' request conforms to.
type ProductsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves a product from your Merchant Center account.
--
-- /See:/ 'productsGet' smart constructor.
data ProductsGet =
  ProductsGet'
    { _pggXgafv :: !(Maybe Xgafv)
    , _pggMerchantId :: !(Textual Word64)
    , _pggUploadProtocol :: !(Maybe Text)
    , _pggAccessToken :: !(Maybe Text)
    , _pggUploadType :: !(Maybe Text)
    , _pggProductId :: !Text
    , _pggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggXgafv'
--
-- * 'pggMerchantId'
--
-- * 'pggUploadProtocol'
--
-- * 'pggAccessToken'
--
-- * 'pggUploadType'
--
-- * 'pggProductId'
--
-- * 'pggCallback'
productsGet
    :: Word64 -- ^ 'pggMerchantId'
    -> Text -- ^ 'pggProductId'
    -> ProductsGet
productsGet pPggMerchantId_ pPggProductId_ =
  ProductsGet'
    { _pggXgafv = Nothing
    , _pggMerchantId = _Coerce # pPggMerchantId_
    , _pggUploadProtocol = Nothing
    , _pggAccessToken = Nothing
    , _pggUploadType = Nothing
    , _pggProductId = pPggProductId_
    , _pggCallback = Nothing
    }


-- | V1 error format.
pggXgafv :: Lens' ProductsGet (Maybe Xgafv)
pggXgafv = lens _pggXgafv (\ s a -> s{_pggXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
pggMerchantId :: Lens' ProductsGet Word64
pggMerchantId
  = lens _pggMerchantId
      (\ s a -> s{_pggMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pggUploadProtocol :: Lens' ProductsGet (Maybe Text)
pggUploadProtocol
  = lens _pggUploadProtocol
      (\ s a -> s{_pggUploadProtocol = a})

-- | OAuth access token.
pggAccessToken :: Lens' ProductsGet (Maybe Text)
pggAccessToken
  = lens _pggAccessToken
      (\ s a -> s{_pggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pggUploadType :: Lens' ProductsGet (Maybe Text)
pggUploadType
  = lens _pggUploadType
      (\ s a -> s{_pggUploadType = a})

-- | The REST ID of the product.
pggProductId :: Lens' ProductsGet Text
pggProductId
  = lens _pggProductId (\ s a -> s{_pggProductId = a})

-- | JSONP
pggCallback :: Lens' ProductsGet (Maybe Text)
pggCallback
  = lens _pggCallback (\ s a -> s{_pggCallback = a})

instance GoogleRequest ProductsGet where
        type Rs ProductsGet = Product
        type Scopes ProductsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsGet'{..}
          = go _pggMerchantId _pggProductId _pggXgafv
              _pggUploadProtocol
              _pggAccessToken
              _pggUploadType
              _pggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
