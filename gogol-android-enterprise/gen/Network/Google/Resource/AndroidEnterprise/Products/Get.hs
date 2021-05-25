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
    , proXgafv
    , proUploadProtocol
    , proEnterpriseId
    , proAccessToken
    , proUploadType
    , proLanguage
    , proProductId
    , proCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.get@ method which the
-- 'ProductsGet' request conforms to.
type ProductsGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "language" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet' smart constructor.
data ProductsGet =
  ProductsGet'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proEnterpriseId :: !Text
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proLanguage :: !(Maybe Text)
    , _proProductId :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proEnterpriseId'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proLanguage'
--
-- * 'proProductId'
--
-- * 'proCallback'
productsGet
    :: Text -- ^ 'proEnterpriseId'
    -> Text -- ^ 'proProductId'
    -> ProductsGet
productsGet pProEnterpriseId_ pProProductId_ =
  ProductsGet'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proEnterpriseId = pProEnterpriseId_
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proLanguage = Nothing
    , _proProductId = pProProductId_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProductsGet (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProductsGet (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | The ID of the enterprise.
proEnterpriseId :: Lens' ProductsGet Text
proEnterpriseId
  = lens _proEnterpriseId
      (\ s a -> s{_proEnterpriseId = a})

-- | OAuth access token.
proAccessToken :: Lens' ProductsGet (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProductsGet (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
proLanguage :: Lens' ProductsGet (Maybe Text)
proLanguage
  = lens _proLanguage (\ s a -> s{_proLanguage = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
proProductId :: Lens' ProductsGet Text
proProductId
  = lens _proProductId (\ s a -> s{_proProductId = a})

-- | JSONP
proCallback :: Lens' ProductsGet (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProductsGet where
        type Rs ProductsGet = Product
        type Scopes ProductsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsGet'{..}
          = go _proEnterpriseId _proProductId _proXgafv
              _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proLanguage
              _proCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy ProductsGetResource)
                      mempty
