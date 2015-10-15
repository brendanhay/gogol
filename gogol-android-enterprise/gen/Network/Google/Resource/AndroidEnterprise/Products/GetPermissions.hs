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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGetPermissions@.
module Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
    (
    -- * REST Resource
      ProductsGetPermissionsResource

    -- * Creating a Request
    , productsGetPermissions'
    , ProductsGetPermissions'

    -- * Request Lenses
    , pgpEnterpriseId
    , pgpProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGetPermissions@ method which the
-- 'ProductsGetPermissions'' request conforms to.
type ProductsGetPermissionsResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "permissions" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ProductPermissions

-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ 'productsGetPermissions'' smart constructor.
data ProductsGetPermissions' = ProductsGetPermissions'
    { _pgpEnterpriseId :: !Text
    , _pgpProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGetPermissions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpEnterpriseId'
--
-- * 'pgpProductId'
productsGetPermissions'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGetPermissions'
productsGetPermissions' pPgpEnterpriseId_ pPgpProductId_ =
    ProductsGetPermissions'
    { _pgpEnterpriseId = pPgpEnterpriseId_
    , _pgpProductId = pPgpProductId_
    }

-- | The ID of the enterprise.
pgpEnterpriseId :: Lens' ProductsGetPermissions' Text
pgpEnterpriseId
  = lens _pgpEnterpriseId
      (\ s a -> s{_pgpEnterpriseId = a})

-- | The ID of the product.
pgpProductId :: Lens' ProductsGetPermissions' Text
pgpProductId
  = lens _pgpProductId (\ s a -> s{_pgpProductId = a})

instance GoogleRequest ProductsGetPermissions' where
        type Rs ProductsGetPermissions' = ProductPermissions
        requestClient ProductsGetPermissions'{..}
          = go _pgpEnterpriseId _pgpProductId (Just AltJSON)
              androidEnterprise
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsGetPermissionsResource)
                      mempty
