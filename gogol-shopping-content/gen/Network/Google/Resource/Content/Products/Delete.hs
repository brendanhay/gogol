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
-- Module      : Network.Google.Resource.Content.Products.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.delete@.
module Network.Google.Resource.Content.Products.Delete
    (
    -- * REST Resource
      ProductsDeleteResource

    -- * Creating a Request
    , productsDelete
    , ProductsDelete

    -- * Request Lenses
    , proXgafv
    , proMerchantId
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proFeedId
    , proProductId
    , proCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.delete@ method which the
-- 'ProductsDelete' request conforms to.
type ProductsDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "feedId" (Textual Word64) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a product from your Merchant Center account.
--
-- /See:/ 'productsDelete' smart constructor.
data ProductsDelete =
  ProductsDelete'
    { _proXgafv :: !(Maybe Xgafv)
    , _proMerchantId :: !(Textual Word64)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proFeedId :: !(Maybe (Textual Word64))
    , _proProductId :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proMerchantId'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proFeedId'
--
-- * 'proProductId'
--
-- * 'proCallback'
productsDelete
    :: Word64 -- ^ 'proMerchantId'
    -> Text -- ^ 'proProductId'
    -> ProductsDelete
productsDelete pProMerchantId_ pProProductId_ =
  ProductsDelete'
    { _proXgafv = Nothing
    , _proMerchantId = _Coerce # pProMerchantId_
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proFeedId = Nothing
    , _proProductId = pProProductId_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProductsDelete (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
proMerchantId :: Lens' ProductsDelete Word64
proMerchantId
  = lens _proMerchantId
      (\ s a -> s{_proMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProductsDelete (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProductsDelete (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProductsDelete (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | The Content API Supplemental Feed ID. If present then product deletion
-- applies to the data in a supplemental feed. If absent, entire product
-- will be deleted.
proFeedId :: Lens' ProductsDelete (Maybe Word64)
proFeedId
  = lens _proFeedId (\ s a -> s{_proFeedId = a}) .
      mapping _Coerce

-- | The REST ID of the product.
proProductId :: Lens' ProductsDelete Text
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

-- | JSONP
proCallback :: Lens' ProductsDelete (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProductsDelete where
        type Rs ProductsDelete = ()
        type Scopes ProductsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsDelete'{..}
          = go _proMerchantId _proProductId _proXgafv
              _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proFeedId
              _proCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsDeleteResource)
                      mempty
