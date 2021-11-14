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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.insert@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
    (
    -- * REST Resource
      InAppProductsInsertResource

    -- * Creating a Request
    , inAppProductsInsert
    , InAppProductsInsert

    -- * Request Lenses
    , iapiXgafv
    , iapiUploadProtocol
    , iapiAutoConvertMissingPrices
    , iapiPackageName
    , iapiAccessToken
    , iapiUploadType
    , iapiPayload
    , iapiCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.insert@ method which the
-- 'InAppProductsInsert' request conforms to.
type InAppProductsInsertResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "autoConvertMissingPrices" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InAppProduct :>
                               Post '[JSON] InAppProduct

-- | Creates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'inAppProductsInsert' smart constructor.
data InAppProductsInsert =
  InAppProductsInsert'
    { _iapiXgafv :: !(Maybe Xgafv)
    , _iapiUploadProtocol :: !(Maybe Text)
    , _iapiAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapiPackageName :: !Text
    , _iapiAccessToken :: !(Maybe Text)
    , _iapiUploadType :: !(Maybe Text)
    , _iapiPayload :: !InAppProduct
    , _iapiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapiXgafv'
--
-- * 'iapiUploadProtocol'
--
-- * 'iapiAutoConvertMissingPrices'
--
-- * 'iapiPackageName'
--
-- * 'iapiAccessToken'
--
-- * 'iapiUploadType'
--
-- * 'iapiPayload'
--
-- * 'iapiCallback'
inAppProductsInsert
    :: Text -- ^ 'iapiPackageName'
    -> InAppProduct -- ^ 'iapiPayload'
    -> InAppProductsInsert
inAppProductsInsert pIapiPackageName_ pIapiPayload_ =
  InAppProductsInsert'
    { _iapiXgafv = Nothing
    , _iapiUploadProtocol = Nothing
    , _iapiAutoConvertMissingPrices = Nothing
    , _iapiPackageName = pIapiPackageName_
    , _iapiAccessToken = Nothing
    , _iapiUploadType = Nothing
    , _iapiPayload = pIapiPayload_
    , _iapiCallback = Nothing
    }


-- | V1 error format.
iapiXgafv :: Lens' InAppProductsInsert (Maybe Xgafv)
iapiXgafv
  = lens _iapiXgafv (\ s a -> s{_iapiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iapiUploadProtocol :: Lens' InAppProductsInsert (Maybe Text)
iapiUploadProtocol
  = lens _iapiUploadProtocol
      (\ s a -> s{_iapiUploadProtocol = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapiAutoConvertMissingPrices :: Lens' InAppProductsInsert (Maybe Bool)
iapiAutoConvertMissingPrices
  = lens _iapiAutoConvertMissingPrices
      (\ s a -> s{_iapiAutoConvertMissingPrices = a})

-- | Package name of the app.
iapiPackageName :: Lens' InAppProductsInsert Text
iapiPackageName
  = lens _iapiPackageName
      (\ s a -> s{_iapiPackageName = a})

-- | OAuth access token.
iapiAccessToken :: Lens' InAppProductsInsert (Maybe Text)
iapiAccessToken
  = lens _iapiAccessToken
      (\ s a -> s{_iapiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iapiUploadType :: Lens' InAppProductsInsert (Maybe Text)
iapiUploadType
  = lens _iapiUploadType
      (\ s a -> s{_iapiUploadType = a})

-- | Multipart request metadata.
iapiPayload :: Lens' InAppProductsInsert InAppProduct
iapiPayload
  = lens _iapiPayload (\ s a -> s{_iapiPayload = a})

-- | JSONP
iapiCallback :: Lens' InAppProductsInsert (Maybe Text)
iapiCallback
  = lens _iapiCallback (\ s a -> s{_iapiCallback = a})

instance GoogleRequest InAppProductsInsert where
        type Rs InAppProductsInsert = InAppProduct
        type Scopes InAppProductsInsert =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsInsert'{..}
          = go _iapiPackageName _iapiXgafv _iapiUploadProtocol
              _iapiAutoConvertMissingPrices
              _iapiAccessToken
              _iapiUploadType
              _iapiCallback
              (Just AltJSON)
              _iapiPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsInsertResource)
                      mempty
