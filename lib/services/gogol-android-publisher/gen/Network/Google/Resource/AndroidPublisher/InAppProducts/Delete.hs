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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.delete@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
    (
    -- * REST Resource
      InAppProductsDeleteResource

    -- * Creating a Request
    , inAppProductsDelete
    , InAppProductsDelete

    -- * Request Lenses
    , iapdXgafv
    , iapdUploadProtocol
    , iapdPackageName
    , iapdAccessToken
    , iapdUploadType
    , iapdSKU
    , iapdCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.delete@ method which the
-- 'InAppProductsDelete' request conforms to.
type InAppProductsDeleteResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'inAppProductsDelete' smart constructor.
data InAppProductsDelete =
  InAppProductsDelete'
    { _iapdXgafv :: !(Maybe Xgafv)
    , _iapdUploadProtocol :: !(Maybe Text)
    , _iapdPackageName :: !Text
    , _iapdAccessToken :: !(Maybe Text)
    , _iapdUploadType :: !(Maybe Text)
    , _iapdSKU :: !Text
    , _iapdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapdXgafv'
--
-- * 'iapdUploadProtocol'
--
-- * 'iapdPackageName'
--
-- * 'iapdAccessToken'
--
-- * 'iapdUploadType'
--
-- * 'iapdSKU'
--
-- * 'iapdCallback'
inAppProductsDelete
    :: Text -- ^ 'iapdPackageName'
    -> Text -- ^ 'iapdSKU'
    -> InAppProductsDelete
inAppProductsDelete pIapdPackageName_ pIapdSKU_ =
  InAppProductsDelete'
    { _iapdXgafv = Nothing
    , _iapdUploadProtocol = Nothing
    , _iapdPackageName = pIapdPackageName_
    , _iapdAccessToken = Nothing
    , _iapdUploadType = Nothing
    , _iapdSKU = pIapdSKU_
    , _iapdCallback = Nothing
    }


-- | V1 error format.
iapdXgafv :: Lens' InAppProductsDelete (Maybe Xgafv)
iapdXgafv
  = lens _iapdXgafv (\ s a -> s{_iapdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iapdUploadProtocol :: Lens' InAppProductsDelete (Maybe Text)
iapdUploadProtocol
  = lens _iapdUploadProtocol
      (\ s a -> s{_iapdUploadProtocol = a})

-- | Package name of the app.
iapdPackageName :: Lens' InAppProductsDelete Text
iapdPackageName
  = lens _iapdPackageName
      (\ s a -> s{_iapdPackageName = a})

-- | OAuth access token.
iapdAccessToken :: Lens' InAppProductsDelete (Maybe Text)
iapdAccessToken
  = lens _iapdAccessToken
      (\ s a -> s{_iapdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iapdUploadType :: Lens' InAppProductsDelete (Maybe Text)
iapdUploadType
  = lens _iapdUploadType
      (\ s a -> s{_iapdUploadType = a})

-- | Unique identifier for the in-app product.
iapdSKU :: Lens' InAppProductsDelete Text
iapdSKU = lens _iapdSKU (\ s a -> s{_iapdSKU = a})

-- | JSONP
iapdCallback :: Lens' InAppProductsDelete (Maybe Text)
iapdCallback
  = lens _iapdCallback (\ s a -> s{_iapdCallback = a})

instance GoogleRequest InAppProductsDelete where
        type Rs InAppProductsDelete = ()
        type Scopes InAppProductsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsDelete'{..}
          = go _iapdPackageName _iapdSKU _iapdXgafv
              _iapdUploadProtocol
              _iapdAccessToken
              _iapdUploadType
              _iapdCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsDeleteResource)
                      mempty
