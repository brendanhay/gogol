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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.get@.
module Network.Google.Resource.AndroidEnterprise.Products.Get
    (
    -- * REST Resource
      ProductsGetResource

    -- * Creating a Request
    , productsGet
    , ProductsGet

    -- * Request Lenses
    , proEnterpriseId
    , proLanguage
    , proProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.get@ method which the
-- 'ProductsGet' request conforms to.
type ProductsGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 QueryParam "language" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet' smart constructor.
data ProductsGet =
  ProductsGet'
    { _proEnterpriseId :: !Text
    , _proLanguage     :: !(Maybe Text)
    , _proProductId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proEnterpriseId'
--
-- * 'proLanguage'
--
-- * 'proProductId'
productsGet
    :: Text -- ^ 'proEnterpriseId'
    -> Text -- ^ 'proProductId'
    -> ProductsGet
productsGet pProEnterpriseId_ pProProductId_ =
  ProductsGet'
    { _proEnterpriseId = pProEnterpriseId_
    , _proLanguage = Nothing
    , _proProductId = pProProductId_
    }


-- | The ID of the enterprise.
proEnterpriseId :: Lens' ProductsGet Text
proEnterpriseId
  = lens _proEnterpriseId
      (\ s a -> s{_proEnterpriseId = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
proLanguage :: Lens' ProductsGet (Maybe Text)
proLanguage
  = lens _proLanguage (\ s a -> s{_proLanguage = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
proProductId :: Lens' ProductsGet Text
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

instance GoogleRequest ProductsGet where
        type Rs ProductsGet = Product
        type Scopes ProductsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsGet'{..}
          = go _proEnterpriseId _proProductId _proLanguage
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
