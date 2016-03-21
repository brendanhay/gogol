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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.delete@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
    (
    -- * REST Resource
      InAppProductsDeleteResource

    -- * Creating a Request
    , inAppProductsDelete
    , InAppProductsDelete

    -- * Request Lenses
    , iapdPackageName
    , iapdSKU
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.delete@ method which the
-- 'InAppProductsDelete' request conforms to.
type InAppProductsDeleteResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an in-app product for an app.
--
-- /See:/ 'inAppProductsDelete' smart constructor.
data InAppProductsDelete = InAppProductsDelete'
    { _iapdPackageName :: !Text
    , _iapdSKU         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iapdPackageName'
--
-- * 'iapdSKU'
inAppProductsDelete
    :: Text -- ^ 'iapdPackageName'
    -> Text -- ^ 'iapdSKU'
    -> InAppProductsDelete
inAppProductsDelete pIapdPackageName_ pIapdSKU_ =
    InAppProductsDelete'
    { _iapdPackageName = pIapdPackageName_
    , _iapdSKU = pIapdSKU_
    }

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
iapdPackageName :: Lens' InAppProductsDelete Text
iapdPackageName
  = lens _iapdPackageName
      (\ s a -> s{_iapdPackageName = a})

-- | Unique identifier for the in-app product.
iapdSKU :: Lens' InAppProductsDelete Text
iapdSKU = lens _iapdSKU (\ s a -> s{_iapdSKU = a})

instance GoogleRequest InAppProductsDelete where
        type Rs InAppProductsDelete = ()
        type Scopes InAppProductsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsDelete'{..}
          = go _iapdPackageName _iapdSKU (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsDeleteResource)
                      mempty
