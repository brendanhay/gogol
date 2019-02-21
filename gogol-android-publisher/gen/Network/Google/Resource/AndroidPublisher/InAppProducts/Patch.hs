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
-- Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.patch@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
    (
    -- * REST Resource
      InAppProductsPatchResource

    -- * Creating a Request
    , inAppProductsPatch
    , InAppProductsPatch

    -- * Request Lenses
    , iAppAutoConvertMissingPrices
    , iAppPackageName
    , iAppPayload
    , iAppSKU
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.patch@ method which the
-- 'InAppProductsPatch' request conforms to.
type InAppProductsPatchResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "autoConvertMissingPrices" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InAppProduct :>
                       Patch '[JSON] InAppProduct

-- | Updates the details of an in-app product. This method supports patch
-- semantics.
--
-- /See:/ 'inAppProductsPatch' smart constructor.
data InAppProductsPatch =
  InAppProductsPatch'
    { _iAppAutoConvertMissingPrices :: !(Maybe Bool)
    , _iAppPackageName              :: !Text
    , _iAppPayload                  :: !InAppProduct
    , _iAppSKU                      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InAppProductsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAppAutoConvertMissingPrices'
--
-- * 'iAppPackageName'
--
-- * 'iAppPayload'
--
-- * 'iAppSKU'
inAppProductsPatch
    :: Text -- ^ 'iAppPackageName'
    -> InAppProduct -- ^ 'iAppPayload'
    -> Text -- ^ 'iAppSKU'
    -> InAppProductsPatch
inAppProductsPatch pIAppPackageName_ pIAppPayload_ pIAppSKU_ =
  InAppProductsPatch'
    { _iAppAutoConvertMissingPrices = Nothing
    , _iAppPackageName = pIAppPackageName_
    , _iAppPayload = pIAppPayload_
    , _iAppSKU = pIAppSKU_
    }


-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iAppAutoConvertMissingPrices :: Lens' InAppProductsPatch (Maybe Bool)
iAppAutoConvertMissingPrices
  = lens _iAppAutoConvertMissingPrices
      (\ s a -> s{_iAppAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iAppPackageName :: Lens' InAppProductsPatch Text
iAppPackageName
  = lens _iAppPackageName
      (\ s a -> s{_iAppPackageName = a})

-- | Multipart request metadata.
iAppPayload :: Lens' InAppProductsPatch InAppProduct
iAppPayload
  = lens _iAppPayload (\ s a -> s{_iAppPayload = a})

-- | Unique identifier for the in-app product.
iAppSKU :: Lens' InAppProductsPatch Text
iAppSKU = lens _iAppSKU (\ s a -> s{_iAppSKU = a})

instance GoogleRequest InAppProductsPatch where
        type Rs InAppProductsPatch = InAppProduct
        type Scopes InAppProductsPatch =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsPatch'{..}
          = go _iAppPackageName _iAppSKU
              _iAppAutoConvertMissingPrices
              (Just AltJSON)
              _iAppPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsPatchResource)
                      mempty
