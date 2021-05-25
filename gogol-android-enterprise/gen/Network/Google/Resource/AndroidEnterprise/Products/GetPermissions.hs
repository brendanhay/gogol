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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Android app permissions required by this app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.getPermissions@.
module Network.Google.Resource.AndroidEnterprise.Products.GetPermissions
    (
    -- * REST Resource
      ProductsGetPermissionsResource

    -- * Creating a Request
    , productsGetPermissions
    , ProductsGetPermissions

    -- * Request Lenses
    , pgpXgafv
    , pgpUploadProtocol
    , pgpEnterpriseId
    , pgpAccessToken
    , pgpUploadType
    , pgpProductId
    , pgpCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.getPermissions@ method which the
-- 'ProductsGetPermissions' request conforms to.
type ProductsGetPermissionsResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "permissions" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ProductPermissions

-- | Retrieves the Android app permissions required by this app.
--
-- /See:/ 'productsGetPermissions' smart constructor.
data ProductsGetPermissions =
  ProductsGetPermissions'
    { _pgpXgafv :: !(Maybe Xgafv)
    , _pgpUploadProtocol :: !(Maybe Text)
    , _pgpEnterpriseId :: !Text
    , _pgpAccessToken :: !(Maybe Text)
    , _pgpUploadType :: !(Maybe Text)
    , _pgpProductId :: !Text
    , _pgpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGetPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpXgafv'
--
-- * 'pgpUploadProtocol'
--
-- * 'pgpEnterpriseId'
--
-- * 'pgpAccessToken'
--
-- * 'pgpUploadType'
--
-- * 'pgpProductId'
--
-- * 'pgpCallback'
productsGetPermissions
    :: Text -- ^ 'pgpEnterpriseId'
    -> Text -- ^ 'pgpProductId'
    -> ProductsGetPermissions
productsGetPermissions pPgpEnterpriseId_ pPgpProductId_ =
  ProductsGetPermissions'
    { _pgpXgafv = Nothing
    , _pgpUploadProtocol = Nothing
    , _pgpEnterpriseId = pPgpEnterpriseId_
    , _pgpAccessToken = Nothing
    , _pgpUploadType = Nothing
    , _pgpProductId = pPgpProductId_
    , _pgpCallback = Nothing
    }


-- | V1 error format.
pgpXgafv :: Lens' ProductsGetPermissions (Maybe Xgafv)
pgpXgafv = lens _pgpXgafv (\ s a -> s{_pgpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgpUploadProtocol :: Lens' ProductsGetPermissions (Maybe Text)
pgpUploadProtocol
  = lens _pgpUploadProtocol
      (\ s a -> s{_pgpUploadProtocol = a})

-- | The ID of the enterprise.
pgpEnterpriseId :: Lens' ProductsGetPermissions Text
pgpEnterpriseId
  = lens _pgpEnterpriseId
      (\ s a -> s{_pgpEnterpriseId = a})

-- | OAuth access token.
pgpAccessToken :: Lens' ProductsGetPermissions (Maybe Text)
pgpAccessToken
  = lens _pgpAccessToken
      (\ s a -> s{_pgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgpUploadType :: Lens' ProductsGetPermissions (Maybe Text)
pgpUploadType
  = lens _pgpUploadType
      (\ s a -> s{_pgpUploadType = a})

-- | The ID of the product.
pgpProductId :: Lens' ProductsGetPermissions Text
pgpProductId
  = lens _pgpProductId (\ s a -> s{_pgpProductId = a})

-- | JSONP
pgpCallback :: Lens' ProductsGetPermissions (Maybe Text)
pgpCallback
  = lens _pgpCallback (\ s a -> s{_pgpCallback = a})

instance GoogleRequest ProductsGetPermissions where
        type Rs ProductsGetPermissions = ProductPermissions
        type Scopes ProductsGetPermissions =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsGetPermissions'{..}
          = go _pgpEnterpriseId _pgpProductId _pgpXgafv
              _pgpUploadProtocol
              _pgpAccessToken
              _pgpUploadType
              _pgpCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsGetPermissionsResource)
                      mempty
