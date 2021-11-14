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
-- Module      : Network.Google.Resource.Content.Products.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.custombatch@.
module Network.Google.Resource.Content.Products.Custombatch
    (
    -- * REST Resource
      ProductsCustombatchResource

    -- * Creating a Request
    , productsCustombatch
    , ProductsCustombatch

    -- * Request Lenses
    , pcXgafv
    , pcUploadProtocol
    , pcAccessToken
    , pcUploadType
    , pcPayload
    , pcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.products.custombatch@ method which the
-- 'ProductsCustombatch' request conforms to.
type ProductsCustombatchResource =
     "content" :>
       "v2.1" :>
         "products" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ProductsCustomBatchRequest :>
                           Post '[JSON] ProductsCustomBatchResponse

-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ 'productsCustombatch' smart constructor.
data ProductsCustombatch =
  ProductsCustombatch'
    { _pcXgafv :: !(Maybe Xgafv)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcAccessToken :: !(Maybe Text)
    , _pcUploadType :: !(Maybe Text)
    , _pcPayload :: !ProductsCustomBatchRequest
    , _pcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcXgafv'
--
-- * 'pcUploadProtocol'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcPayload'
--
-- * 'pcCallback'
productsCustombatch
    :: ProductsCustomBatchRequest -- ^ 'pcPayload'
    -> ProductsCustombatch
productsCustombatch pPcPayload_ =
  ProductsCustombatch'
    { _pcXgafv = Nothing
    , _pcUploadProtocol = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcPayload = pPcPayload_
    , _pcCallback = Nothing
    }


-- | V1 error format.
pcXgafv :: Lens' ProductsCustombatch (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' ProductsCustombatch (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | OAuth access token.
pcAccessToken :: Lens' ProductsCustombatch (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' ProductsCustombatch (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Multipart request metadata.
pcPayload :: Lens' ProductsCustombatch ProductsCustomBatchRequest
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | JSONP
pcCallback :: Lens' ProductsCustombatch (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest ProductsCustombatch where
        type Rs ProductsCustombatch =
             ProductsCustomBatchResponse
        type Scopes ProductsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductsCustombatch'{..}
          = go _pcXgafv _pcUploadProtocol _pcAccessToken
              _pcUploadType
              _pcCallback
              (Just AltJSON)
              _pcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsCustombatchResource)
                      mempty
