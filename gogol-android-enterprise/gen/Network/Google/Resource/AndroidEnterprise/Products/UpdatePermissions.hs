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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.products.updatePermissions@.
module Network.Google.Resource.AndroidEnterprise.Products.UpdatePermissions
    (
    -- * REST Resource
      ProductsUpdatePermissionsResource

    -- * Creating a Request
    , productsUpdatePermissions
    , ProductsUpdatePermissions

    -- * Request Lenses
    , pupEnterpriseId
    , pupPayload
    , pupProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.updatePermissions@ method which the
-- 'ProductsUpdatePermissions' request conforms to.
type ProductsUpdatePermissionsResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "permissions" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ProductPermissions :>
                       Put '[JSON] ProductPermissions

-- | Updates the set of Android app permissions for this app that have been
-- accepted by the enterprise.
--
-- /See:/ 'productsUpdatePermissions' smart constructor.
data ProductsUpdatePermissions = ProductsUpdatePermissions
    { _pupEnterpriseId :: !Text
    , _pupPayload      :: !ProductPermissions
    , _pupProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsUpdatePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupEnterpriseId'
--
-- * 'pupPayload'
--
-- * 'pupProductId'
productsUpdatePermissions
    :: Text -- ^ 'pupEnterpriseId'
    -> ProductPermissions -- ^ 'pupPayload'
    -> Text -- ^ 'pupProductId'
    -> ProductsUpdatePermissions
productsUpdatePermissions pPupEnterpriseId_ pPupPayload_ pPupProductId_ =
    ProductsUpdatePermissions
    { _pupEnterpriseId = pPupEnterpriseId_
    , _pupPayload = pPupPayload_
    , _pupProductId = pPupProductId_
    }

-- | The ID of the enterprise.
pupEnterpriseId :: Lens' ProductsUpdatePermissions Text
pupEnterpriseId
  = lens _pupEnterpriseId
      (\ s a -> s{_pupEnterpriseId = a})

-- | Multipart request metadata.
pupPayload :: Lens' ProductsUpdatePermissions ProductPermissions
pupPayload
  = lens _pupPayload (\ s a -> s{_pupPayload = a})

-- | The ID of the product.
pupProductId :: Lens' ProductsUpdatePermissions Text
pupProductId
  = lens _pupProductId (\ s a -> s{_pupProductId = a})

instance GoogleRequest ProductsUpdatePermissions
         where
        type Rs ProductsUpdatePermissions =
             ProductPermissions
        requestClient ProductsUpdatePermissions{..}
          = go _pupEnterpriseId _pupProductId (Just AltJSON)
              _pupPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsUpdatePermissionsResource)
                      mempty
