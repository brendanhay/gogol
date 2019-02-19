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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.UnApprove
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unapproves the specified product (and the relevant app permissions, if
-- any)
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.unapprove@.
module Network.Google.Resource.AndroidEnterprise.Products.UnApprove
    (
    -- * REST Resource
      ProductsUnApproveResource

    -- * Creating a Request
    , productsUnApprove
    , ProductsUnApprove

    -- * Request Lenses
    , puaEnterpriseId
    , puaProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.unapprove@ method which the
-- 'ProductsUnApprove' request conforms to.
type ProductsUnApproveResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "unapprove" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Unapproves the specified product (and the relevant app permissions, if
-- any)
--
-- /See:/ 'productsUnApprove' smart constructor.
data ProductsUnApprove =
  ProductsUnApprove'
    { _puaEnterpriseId :: !Text
    , _puaProductId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsUnApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puaEnterpriseId'
--
-- * 'puaProductId'
productsUnApprove
    :: Text -- ^ 'puaEnterpriseId'
    -> Text -- ^ 'puaProductId'
    -> ProductsUnApprove
productsUnApprove pPuaEnterpriseId_ pPuaProductId_ =
  ProductsUnApprove'
    {_puaEnterpriseId = pPuaEnterpriseId_, _puaProductId = pPuaProductId_}

-- | The ID of the enterprise.
puaEnterpriseId :: Lens' ProductsUnApprove Text
puaEnterpriseId
  = lens _puaEnterpriseId
      (\ s a -> s{_puaEnterpriseId = a})

-- | The ID of the product.
puaProductId :: Lens' ProductsUnApprove Text
puaProductId
  = lens _puaProductId (\ s a -> s{_puaProductId = a})

instance GoogleRequest ProductsUnApprove where
        type Rs ProductsUnApprove = ()
        type Scopes ProductsUnApprove =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsUnApprove'{..}
          = go _puaEnterpriseId _puaProductId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsUnApproveResource)
                      mempty
