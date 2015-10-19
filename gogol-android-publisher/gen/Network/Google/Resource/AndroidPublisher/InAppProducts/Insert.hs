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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsInsert@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
    (
    -- * REST Resource
      InAppProductsInsertResource

    -- * Creating a Request
    , inAppProductsInsert'
    , InAppProductsInsert'

    -- * Request Lenses
    , iapiAutoConvertMissingPrices
    , iapiPackageName
    , iapiPayload
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsInsert@ method which the
-- 'InAppProductsInsert'' request conforms to.
type InAppProductsInsertResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "autoConvertMissingPrices" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] InAppProduct :>
               Post '[JSON] InAppProduct

-- | Creates a new in-app product for an app.
--
-- /See:/ 'inAppProductsInsert'' smart constructor.
data InAppProductsInsert' = InAppProductsInsert'
    { _iapiAutoConvertMissingPrices :: !(Maybe Bool)
    , _iapiPackageName              :: !Text
    , _iapiPayload                  :: !InAppProduct
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapiAutoConvertMissingPrices'
--
-- * 'iapiPackageName'
--
-- * 'iapiPayload'
inAppProductsInsert'
    :: Text -- ^ 'packageName'
    -> InAppProduct -- ^ 'payload'
    -> InAppProductsInsert'
inAppProductsInsert' pIapiPackageName_ pIapiPayload_ =
    InAppProductsInsert'
    { _iapiAutoConvertMissingPrices = Nothing
    , _iapiPackageName = pIapiPackageName_
    , _iapiPayload = pIapiPayload_
    }

-- | If true the prices for all regions targeted by the parent app that
-- don\'t have a price specified for this in-app product will be auto
-- converted to the target currency based on the default price. Defaults to
-- false.
iapiAutoConvertMissingPrices :: Lens' InAppProductsInsert' (Maybe Bool)
iapiAutoConvertMissingPrices
  = lens _iapiAutoConvertMissingPrices
      (\ s a -> s{_iapiAutoConvertMissingPrices = a})

-- | Unique identifier for the Android app; for example, \"com.spiffygame\".
iapiPackageName :: Lens' InAppProductsInsert' Text
iapiPackageName
  = lens _iapiPackageName
      (\ s a -> s{_iapiPackageName = a})

-- | Multipart request metadata.
iapiPayload :: Lens' InAppProductsInsert' InAppProduct
iapiPayload
  = lens _iapiPayload (\ s a -> s{_iapiPayload = a})

instance GoogleRequest InAppProductsInsert' where
        type Rs InAppProductsInsert' = InAppProduct
        requestClient InAppProductsInsert'{..}
          = go _iapiPackageName _iapiAutoConvertMissingPrices
              (Just AltJSON)
              _iapiPayload
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsInsertResource)
                      mempty
