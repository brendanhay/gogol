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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , puaXgafv
    , puaUploadProtocol
    , puaEnterpriseId
    , puaAccessToken
    , puaUploadType
    , puaProductId
    , puaCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

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
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Unapproves the specified product (and the relevant app permissions, if
-- any)
--
-- /See:/ 'productsUnApprove' smart constructor.
data ProductsUnApprove =
  ProductsUnApprove'
    { _puaXgafv :: !(Maybe Xgafv)
    , _puaUploadProtocol :: !(Maybe Text)
    , _puaEnterpriseId :: !Text
    , _puaAccessToken :: !(Maybe Text)
    , _puaUploadType :: !(Maybe Text)
    , _puaProductId :: !Text
    , _puaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsUnApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puaXgafv'
--
-- * 'puaUploadProtocol'
--
-- * 'puaEnterpriseId'
--
-- * 'puaAccessToken'
--
-- * 'puaUploadType'
--
-- * 'puaProductId'
--
-- * 'puaCallback'
productsUnApprove
    :: Text -- ^ 'puaEnterpriseId'
    -> Text -- ^ 'puaProductId'
    -> ProductsUnApprove
productsUnApprove pPuaEnterpriseId_ pPuaProductId_ =
  ProductsUnApprove'
    { _puaXgafv = Nothing
    , _puaUploadProtocol = Nothing
    , _puaEnterpriseId = pPuaEnterpriseId_
    , _puaAccessToken = Nothing
    , _puaUploadType = Nothing
    , _puaProductId = pPuaProductId_
    , _puaCallback = Nothing
    }


-- | V1 error format.
puaXgafv :: Lens' ProductsUnApprove (Maybe Xgafv)
puaXgafv = lens _puaXgafv (\ s a -> s{_puaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puaUploadProtocol :: Lens' ProductsUnApprove (Maybe Text)
puaUploadProtocol
  = lens _puaUploadProtocol
      (\ s a -> s{_puaUploadProtocol = a})

-- | The ID of the enterprise.
puaEnterpriseId :: Lens' ProductsUnApprove Text
puaEnterpriseId
  = lens _puaEnterpriseId
      (\ s a -> s{_puaEnterpriseId = a})

-- | OAuth access token.
puaAccessToken :: Lens' ProductsUnApprove (Maybe Text)
puaAccessToken
  = lens _puaAccessToken
      (\ s a -> s{_puaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puaUploadType :: Lens' ProductsUnApprove (Maybe Text)
puaUploadType
  = lens _puaUploadType
      (\ s a -> s{_puaUploadType = a})

-- | The ID of the product.
puaProductId :: Lens' ProductsUnApprove Text
puaProductId
  = lens _puaProductId (\ s a -> s{_puaProductId = a})

-- | JSONP
puaCallback :: Lens' ProductsUnApprove (Maybe Text)
puaCallback
  = lens _puaCallback (\ s a -> s{_puaCallback = a})

instance GoogleRequest ProductsUnApprove where
        type Rs ProductsUnApprove = ()
        type Scopes ProductsUnApprove =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsUnApprove'{..}
          = go _puaEnterpriseId _puaProductId _puaXgafv
              _puaUploadProtocol
              _puaAccessToken
              _puaUploadType
              _puaCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsUnApproveResource)
                      mempty
