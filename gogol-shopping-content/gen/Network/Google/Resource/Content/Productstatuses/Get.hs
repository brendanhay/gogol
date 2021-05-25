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
-- Module      : Network.Google.Resource.Content.Productstatuses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of a product from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productstatuses.get@.
module Network.Google.Resource.Content.Productstatuses.Get
    (
    -- * REST Resource
      ProductstatusesGetResource

    -- * Creating a Request
    , productstatusesGet
    , ProductstatusesGet

    -- * Request Lenses
    , pgXgafv
    , pgMerchantId
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgDestinations
    , pgProductId
    , pgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.get@ method which the
-- 'ProductstatusesGet' request conforms to.
type ProductstatusesGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "productstatuses" :>
             Capture "productId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParams "destinations" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ProductStatus

-- | Gets the status of a product from your Merchant Center account.
--
-- /See:/ 'productstatusesGet' smart constructor.
data ProductstatusesGet =
  ProductstatusesGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgMerchantId :: !(Textual Word64)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgDestinations :: !(Maybe [Text])
    , _pgProductId :: !Text
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgMerchantId'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgDestinations'
--
-- * 'pgProductId'
--
-- * 'pgCallback'
productstatusesGet
    :: Word64 -- ^ 'pgMerchantId'
    -> Text -- ^ 'pgProductId'
    -> ProductstatusesGet
productstatusesGet pPgMerchantId_ pPgProductId_ =
  ProductstatusesGet'
    { _pgXgafv = Nothing
    , _pgMerchantId = _Coerce # pPgMerchantId_
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgDestinations = Nothing
    , _pgProductId = pPgProductId_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' ProductstatusesGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
pgMerchantId :: Lens' ProductstatusesGet Word64
pgMerchantId
  = lens _pgMerchantId (\ s a -> s{_pgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' ProductstatusesGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' ProductstatusesGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' ProductstatusesGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
pgDestinations :: Lens' ProductstatusesGet [Text]
pgDestinations
  = lens _pgDestinations
      (\ s a -> s{_pgDestinations = a})
      . _Default
      . _Coerce

-- | The REST ID of the product.
pgProductId :: Lens' ProductstatusesGet Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

-- | JSONP
pgCallback :: Lens' ProductstatusesGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest ProductstatusesGet where
        type Rs ProductstatusesGet = ProductStatus
        type Scopes ProductstatusesGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductstatusesGet'{..}
          = go _pgMerchantId _pgProductId _pgXgafv
              _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              (_pgDestinations ^. _Default)
              _pgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesGetResource)
                      mempty
