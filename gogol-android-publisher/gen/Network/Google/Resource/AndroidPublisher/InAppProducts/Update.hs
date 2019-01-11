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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of an in-app product.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.update@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Update
    (
    -- * REST Resource
      InAppProductsUpdateResource

    -- * Creating a Request
    , inAppProductsUpdate
    , InAppProductsUpdate

    -- * Request Lenses
    , iapuAutoConvertMissingPrices
    , iapuPackageName
    , iapuPayload
    , iapuSKU
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.update@ method which the
-- 'InAppProductsUpdate' request conforms to.
type InAppProductsUpdateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "autoConvertMissingPrices" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InAppProduct :>
                       Put '[JSON] InAppProduct

-- | Updates the details of an in-app product.
--
-- /See:/ 'inAppProductsUpdate' smart constructor.
data InAppProductsUpdate = InAppProductsUpdate'
    { _iapuAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapuPackageName              :: !Text
    , _iapuPayload                  :: !InAppProduct
    , _iapuSKU                      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapuAutoConvertMissingPrices'
--
-- * 'iapuPackageName'
--
-- * 'iapuPayload'
--
-- * 'iapuSKU'
inAppProductsUpdate
    :: Text -- ^ 'iapuPackageName'
    -> InAppProduct -- ^ 'iapuPayload'
    -> Text -- ^ 'iapuSKU'
    -> InAppProductsUpdate
inAppProductsUpdate pIapuPackageName_ pIapuPayload_ pIapuSKU_ =
    InAppProductsUpdate'
    { _iapuAutoConvertMissingPrices = Nothing
    , _iapuPackageName = pIapuPackageName_
    , _iapuPayload = pIapuPayload_
    , _iapuSKU = pIapuSKU_
    }

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapuAutoConvertMissingPrices :: Lens' InAppProductsUpdate (Maybe Bool)
iapuAutoConvertMissingPrices
  = lens _iapuAutoConvertMissingPrices
      (\ s a -> s{_iapuAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iapuPackageName :: Lens' InAppProductsUpdate Text
iapuPackageName
  = lens _iapuPackageName
      (\ s a -> s{_iapuPackageName = a})

-- | Multipart request metadata.
iapuPayload :: Lens' InAppProductsUpdate InAppProduct
iapuPayload
  = lens _iapuPayload (\ s a -> s{_iapuPayload = a})

-- | Unique identifier for the in-app product.
iapuSKU :: Lens' InAppProductsUpdate Text
iapuSKU = lens _iapuSKU (\ s a -> s{_iapuSKU = a})

instance GoogleRequest InAppProductsUpdate where
        type Rs InAppProductsUpdate = InAppProduct
        type Scopes InAppProductsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsUpdate'{..}
          = go _iapuPackageName _iapuSKU
              _iapuAutoConvertMissingPrices
              (Just AltJSON)
              _iapuPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsUpdateResource)
                      mempty
