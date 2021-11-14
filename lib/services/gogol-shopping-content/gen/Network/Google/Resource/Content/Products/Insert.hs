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
-- Module      : Network.Google.Resource.Content.Products.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a product to your Merchant Center account. If an item with the
-- same channel, contentLanguage, offerId, and targetCountry already
-- exists, this method updates that entry.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.insert@.
module Network.Google.Resource.Content.Products.Insert
    (
    -- * REST Resource
      ProductsInsertResource

    -- * Creating a Request
    , productsInsert
    , ProductsInsert

    -- * Request Lenses
    , piiXgafv
    , piiMerchantId
    , piiUploadProtocol
    , piiAccessToken
    , piiUploadType
    , piiPayload
    , piiFeedId
    , piiCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.insert@ method which the
-- 'ProductsInsert' request conforms to.
type ProductsInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "feedId" (Textual Word64) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Product :> Post '[JSON] Product

-- | Uploads a product to your Merchant Center account. If an item with the
-- same channel, contentLanguage, offerId, and targetCountry already
-- exists, this method updates that entry.
--
-- /See:/ 'productsInsert' smart constructor.
data ProductsInsert =
  ProductsInsert'
    { _piiXgafv :: !(Maybe Xgafv)
    , _piiMerchantId :: !(Textual Word64)
    , _piiUploadProtocol :: !(Maybe Text)
    , _piiAccessToken :: !(Maybe Text)
    , _piiUploadType :: !(Maybe Text)
    , _piiPayload :: !Product
    , _piiFeedId :: !(Maybe (Textual Word64))
    , _piiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiXgafv'
--
-- * 'piiMerchantId'
--
-- * 'piiUploadProtocol'
--
-- * 'piiAccessToken'
--
-- * 'piiUploadType'
--
-- * 'piiPayload'
--
-- * 'piiFeedId'
--
-- * 'piiCallback'
productsInsert
    :: Word64 -- ^ 'piiMerchantId'
    -> Product -- ^ 'piiPayload'
    -> ProductsInsert
productsInsert pPiiMerchantId_ pPiiPayload_ =
  ProductsInsert'
    { _piiXgafv = Nothing
    , _piiMerchantId = _Coerce # pPiiMerchantId_
    , _piiUploadProtocol = Nothing
    , _piiAccessToken = Nothing
    , _piiUploadType = Nothing
    , _piiPayload = pPiiPayload_
    , _piiFeedId = Nothing
    , _piiCallback = Nothing
    }


-- | V1 error format.
piiXgafv :: Lens' ProductsInsert (Maybe Xgafv)
piiXgafv = lens _piiXgafv (\ s a -> s{_piiXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
piiMerchantId :: Lens' ProductsInsert Word64
piiMerchantId
  = lens _piiMerchantId
      (\ s a -> s{_piiMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piiUploadProtocol :: Lens' ProductsInsert (Maybe Text)
piiUploadProtocol
  = lens _piiUploadProtocol
      (\ s a -> s{_piiUploadProtocol = a})

-- | OAuth access token.
piiAccessToken :: Lens' ProductsInsert (Maybe Text)
piiAccessToken
  = lens _piiAccessToken
      (\ s a -> s{_piiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piiUploadType :: Lens' ProductsInsert (Maybe Text)
piiUploadType
  = lens _piiUploadType
      (\ s a -> s{_piiUploadType = a})

-- | Multipart request metadata.
piiPayload :: Lens' ProductsInsert Product
piiPayload
  = lens _piiPayload (\ s a -> s{_piiPayload = a})

-- | The Content API Supplemental Feed ID. If present then product insertion
-- applies to the data in a supplemental feed.
piiFeedId :: Lens' ProductsInsert (Maybe Word64)
piiFeedId
  = lens _piiFeedId (\ s a -> s{_piiFeedId = a}) .
      mapping _Coerce

-- | JSONP
piiCallback :: Lens' ProductsInsert (Maybe Text)
piiCallback
  = lens _piiCallback (\ s a -> s{_piiCallback = a})

instance GoogleRequest ProductsInsert where
        type Rs ProductsInsert = Product
        type Scopes ProductsInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsInsert'{..}
          = go _piiMerchantId _piiXgafv _piiUploadProtocol
              _piiAccessToken
              _piiUploadType
              _piiFeedId
              _piiCallback
              (Just AltJSON)
              _piiPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy ProductsInsertResource)
                      mempty
