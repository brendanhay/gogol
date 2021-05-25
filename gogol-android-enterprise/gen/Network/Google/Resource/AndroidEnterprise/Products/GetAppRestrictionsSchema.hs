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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the schema that defines the configurable properties for this
-- product. All products have a schema, but this schema may be empty if no
-- managed configurations have been defined. This schema can be used to
-- populate a UI that allows an admin to configure the product. To apply a
-- managed configuration based on the schema obtained using this API, see
-- Managed Configurations through Play.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.getAppRestrictionsSchema@.
module Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema
    (
    -- * REST Resource
      ProductsGetAppRestrictionsSchemaResource

    -- * Creating a Request
    , productsGetAppRestrictionsSchema
    , ProductsGetAppRestrictionsSchema

    -- * Request Lenses
    , pgarsXgafv
    , pgarsUploadProtocol
    , pgarsEnterpriseId
    , pgarsAccessToken
    , pgarsUploadType
    , pgarsLanguage
    , pgarsProductId
    , pgarsCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.getAppRestrictionsSchema@ method which the
-- 'ProductsGetAppRestrictionsSchema' request conforms to.
type ProductsGetAppRestrictionsSchemaResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "appRestrictionsSchema" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "language" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] AppRestrictionsSchema

-- | Retrieves the schema that defines the configurable properties for this
-- product. All products have a schema, but this schema may be empty if no
-- managed configurations have been defined. This schema can be used to
-- populate a UI that allows an admin to configure the product. To apply a
-- managed configuration based on the schema obtained using this API, see
-- Managed Configurations through Play.
--
-- /See:/ 'productsGetAppRestrictionsSchema' smart constructor.
data ProductsGetAppRestrictionsSchema =
  ProductsGetAppRestrictionsSchema'
    { _pgarsXgafv :: !(Maybe Xgafv)
    , _pgarsUploadProtocol :: !(Maybe Text)
    , _pgarsEnterpriseId :: !Text
    , _pgarsAccessToken :: !(Maybe Text)
    , _pgarsUploadType :: !(Maybe Text)
    , _pgarsLanguage :: !(Maybe Text)
    , _pgarsProductId :: !Text
    , _pgarsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGetAppRestrictionsSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgarsXgafv'
--
-- * 'pgarsUploadProtocol'
--
-- * 'pgarsEnterpriseId'
--
-- * 'pgarsAccessToken'
--
-- * 'pgarsUploadType'
--
-- * 'pgarsLanguage'
--
-- * 'pgarsProductId'
--
-- * 'pgarsCallback'
productsGetAppRestrictionsSchema
    :: Text -- ^ 'pgarsEnterpriseId'
    -> Text -- ^ 'pgarsProductId'
    -> ProductsGetAppRestrictionsSchema
productsGetAppRestrictionsSchema pPgarsEnterpriseId_ pPgarsProductId_ =
  ProductsGetAppRestrictionsSchema'
    { _pgarsXgafv = Nothing
    , _pgarsUploadProtocol = Nothing
    , _pgarsEnterpriseId = pPgarsEnterpriseId_
    , _pgarsAccessToken = Nothing
    , _pgarsUploadType = Nothing
    , _pgarsLanguage = Nothing
    , _pgarsProductId = pPgarsProductId_
    , _pgarsCallback = Nothing
    }


-- | V1 error format.
pgarsXgafv :: Lens' ProductsGetAppRestrictionsSchema (Maybe Xgafv)
pgarsXgafv
  = lens _pgarsXgafv (\ s a -> s{_pgarsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgarsUploadProtocol :: Lens' ProductsGetAppRestrictionsSchema (Maybe Text)
pgarsUploadProtocol
  = lens _pgarsUploadProtocol
      (\ s a -> s{_pgarsUploadProtocol = a})

-- | The ID of the enterprise.
pgarsEnterpriseId :: Lens' ProductsGetAppRestrictionsSchema Text
pgarsEnterpriseId
  = lens _pgarsEnterpriseId
      (\ s a -> s{_pgarsEnterpriseId = a})

-- | OAuth access token.
pgarsAccessToken :: Lens' ProductsGetAppRestrictionsSchema (Maybe Text)
pgarsAccessToken
  = lens _pgarsAccessToken
      (\ s a -> s{_pgarsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgarsUploadType :: Lens' ProductsGetAppRestrictionsSchema (Maybe Text)
pgarsUploadType
  = lens _pgarsUploadType
      (\ s a -> s{_pgarsUploadType = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pgarsLanguage :: Lens' ProductsGetAppRestrictionsSchema (Maybe Text)
pgarsLanguage
  = lens _pgarsLanguage
      (\ s a -> s{_pgarsLanguage = a})

-- | The ID of the product.
pgarsProductId :: Lens' ProductsGetAppRestrictionsSchema Text
pgarsProductId
  = lens _pgarsProductId
      (\ s a -> s{_pgarsProductId = a})

-- | JSONP
pgarsCallback :: Lens' ProductsGetAppRestrictionsSchema (Maybe Text)
pgarsCallback
  = lens _pgarsCallback
      (\ s a -> s{_pgarsCallback = a})

instance GoogleRequest
           ProductsGetAppRestrictionsSchema
         where
        type Rs ProductsGetAppRestrictionsSchema =
             AppRestrictionsSchema
        type Scopes ProductsGetAppRestrictionsSchema =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsGetAppRestrictionsSchema'{..}
          = go _pgarsEnterpriseId _pgarsProductId _pgarsXgafv
              _pgarsUploadProtocol
              _pgarsAccessToken
              _pgarsUploadType
              _pgarsLanguage
              _pgarsCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProductsGetAppRestrictionsSchemaResource)
                      mempty
