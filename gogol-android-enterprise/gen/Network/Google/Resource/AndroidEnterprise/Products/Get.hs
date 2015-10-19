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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGet@.
module Network.Google.Resource.AndroidEnterprise.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet'
    , ProductsGet'

    -- * Request Lenses
    , pEnterpriseId
    , pLanguage
    , pProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGet@ method which the
-- 'ProductsGet'' request conforms to.
type ProductsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             QueryParam "language" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pEnterpriseId :: !Text
    , _pLanguage     :: !(Maybe Text)
    , _pProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEnterpriseId'
--
-- * 'pLanguage'
--
-- * 'pProductId'
productsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPEnterpriseId_ pPProductId_ =
    ProductsGet'
    { _pEnterpriseId = pPEnterpriseId_
    , _pLanguage = Nothing
    , _pProductId = pPProductId_
    }

-- | The ID of the enterprise.
pEnterpriseId :: Lens' ProductsGet' Text
pEnterpriseId
  = lens _pEnterpriseId
      (\ s a -> s{_pEnterpriseId = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pLanguage :: Lens' ProductsGet' (Maybe Text)
pLanguage
  = lens _pLanguage (\ s a -> s{_pLanguage = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
pProductId :: Lens' ProductsGet' Text
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        requestClient ProductsGet'{..}
          = go _pEnterpriseId _pProductId _pLanguage
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
