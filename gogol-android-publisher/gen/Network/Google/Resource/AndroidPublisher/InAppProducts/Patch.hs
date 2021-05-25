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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.patch@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
    (
    -- * REST Resource
      InAppProductsPatchResource

    -- * Creating a Request
    , inAppProductsPatch
    , InAppProductsPatch

    -- * Request Lenses
    , iAppXgafv
    , iAppUploadProtocol
    , iAppAutoConvertMissingPrices
    , iAppPackageName
    , iAppAccessToken
    , iAppUploadType
    , iAppPayload
    , iAppSKU
    , iAppCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.patch@ method which the
-- 'InAppProductsPatch' request conforms to.
type InAppProductsPatchResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "autoConvertMissingPrices" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] InAppProduct :>
                                 Patch '[JSON] InAppProduct

-- | Patches an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'inAppProductsPatch' smart constructor.
data InAppProductsPatch =
  InAppProductsPatch'
    { _iAppXgafv :: !(Maybe Xgafv)
    , _iAppUploadProtocol :: !(Maybe Text)
    , _iAppAutoConvertMissingPrices :: !(Maybe Bool)
    , _iAppPackageName :: !Text
    , _iAppAccessToken :: !(Maybe Text)
    , _iAppUploadType :: !(Maybe Text)
    , _iAppPayload :: !InAppProduct
    , _iAppSKU :: !Text
    , _iAppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAppXgafv'
--
-- * 'iAppUploadProtocol'
--
-- * 'iAppAutoConvertMissingPrices'
--
-- * 'iAppPackageName'
--
-- * 'iAppAccessToken'
--
-- * 'iAppUploadType'
--
-- * 'iAppPayload'
--
-- * 'iAppSKU'
--
-- * 'iAppCallback'
inAppProductsPatch
    :: Text -- ^ 'iAppPackageName'
    -> InAppProduct -- ^ 'iAppPayload'
    -> Text -- ^ 'iAppSKU'
    -> InAppProductsPatch
inAppProductsPatch pIAppPackageName_ pIAppPayload_ pIAppSKU_ =
  InAppProductsPatch'
    { _iAppXgafv = Nothing
    , _iAppUploadProtocol = Nothing
    , _iAppAutoConvertMissingPrices = Nothing
    , _iAppPackageName = pIAppPackageName_
    , _iAppAccessToken = Nothing
    , _iAppUploadType = Nothing
    , _iAppPayload = pIAppPayload_
    , _iAppSKU = pIAppSKU_
    , _iAppCallback = Nothing
    }


-- | V1 error format.
iAppXgafv :: Lens' InAppProductsPatch (Maybe Xgafv)
iAppXgafv
  = lens _iAppXgafv (\ s a -> s{_iAppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iAppUploadProtocol :: Lens' InAppProductsPatch (Maybe Text)
iAppUploadProtocol
  = lens _iAppUploadProtocol
      (\ s a -> s{_iAppUploadProtocol = a})

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iAppAutoConvertMissingPrices :: Lens' InAppProductsPatch (Maybe Bool)
iAppAutoConvertMissingPrices
  = lens _iAppAutoConvertMissingPrices
      (\ s a -> s{_iAppAutoConvertMissingPrices = a})

-- | Package name of the app.
iAppPackageName :: Lens' InAppProductsPatch Text
iAppPackageName
  = lens _iAppPackageName
      (\ s a -> s{_iAppPackageName = a})

-- | OAuth access token.
iAppAccessToken :: Lens' InAppProductsPatch (Maybe Text)
iAppAccessToken
  = lens _iAppAccessToken
      (\ s a -> s{_iAppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iAppUploadType :: Lens' InAppProductsPatch (Maybe Text)
iAppUploadType
  = lens _iAppUploadType
      (\ s a -> s{_iAppUploadType = a})

-- | Multipart request metadata.
iAppPayload :: Lens' InAppProductsPatch InAppProduct
iAppPayload
  = lens _iAppPayload (\ s a -> s{_iAppPayload = a})

-- | Unique identifier for the in-app product.
iAppSKU :: Lens' InAppProductsPatch Text
iAppSKU = lens _iAppSKU (\ s a -> s{_iAppSKU = a})

-- | JSONP
iAppCallback :: Lens' InAppProductsPatch (Maybe Text)
iAppCallback
  = lens _iAppCallback (\ s a -> s{_iAppCallback = a})

instance GoogleRequest InAppProductsPatch where
        type Rs InAppProductsPatch = InAppProduct
        type Scopes InAppProductsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsPatch'{..}
          = go _iAppPackageName _iAppSKU _iAppXgafv
              _iAppUploadProtocol
              _iAppAutoConvertMissingPrices
              _iAppAccessToken
              _iAppUploadType
              _iAppCallback
              (Just AltJSON)
              _iAppPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsPatchResource)
                      mempty
