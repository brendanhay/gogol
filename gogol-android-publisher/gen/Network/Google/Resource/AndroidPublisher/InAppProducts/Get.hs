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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the in-app product specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.get@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Get
    (
    -- * REST Resource
      InAppProductsGetResource

    -- * Creating a Request
    , inAppProductsGet
    , InAppProductsGet

    -- * Request Lenses
    , iapgPackageName
    , iapgSKU
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.get@ method which the
-- 'InAppProductsGet' request conforms to.
type InAppProductsGetResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] InAppProduct

-- | Returns information about the in-app product specified.
--
-- /See:/ 'inAppProductsGet' smart constructor.
data InAppProductsGet = InAppProductsGet
    { _iapgPackageName :: !Text
    , _iapgSKU         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapgPackageName'
--
-- * 'iapgSKU'
inAppProductsGet
    :: Text -- ^ 'iapgPackageName'
    -> Text -- ^ 'iapgSKU'
    -> InAppProductsGet
inAppProductsGet pIapgPackageName_ pIapgSKU_ =
    InAppProductsGet
    { _iapgPackageName = pIapgPackageName_
    , _iapgSKU = pIapgSKU_
    }

iapgPackageName :: Lens' InAppProductsGet Text
iapgPackageName
  = lens _iapgPackageName
      (\ s a -> s{_iapgPackageName = a})

-- | Unique identifier for the in-app product.
iapgSKU :: Lens' InAppProductsGet Text
iapgSKU = lens _iapgSKU (\ s a -> s{_iapgSKU = a})

instance GoogleRequest InAppProductsGet where
        type Rs InAppProductsGet = InAppProduct
        type Scopes InAppProductsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsGet{..}
          = go _iapgPackageName _iapgSKU (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsGetResource)
                      mempty
