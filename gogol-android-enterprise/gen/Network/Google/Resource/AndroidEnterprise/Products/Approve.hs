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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.Approve
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves the specified product and the relevant app permissions, if any.
-- The maximum number of products that you can approve per enterprise
-- customer is 1,000. To learn how to use managed Google Play to design and
-- create a store layout to display approved products to your users, see
-- Store Layout Design.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.approve@.
module Network.Google.Resource.AndroidEnterprise.Products.Approve
    (
    -- * REST Resource
      ProductsApproveResource

    -- * Creating a Request
    , productsApprove
    , ProductsApprove

    -- * Request Lenses
    , paXgafv
    , paUploadProtocol
    , paEnterpriseId
    , paAccessToken
    , paUploadType
    , paPayload
    , paProductId
    , paCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.approve@ method which the
-- 'ProductsApprove' request conforms to.
type ProductsApproveResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "approve" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ProductsApproveRequest :>
                                 Post '[JSON] ()

-- | Approves the specified product and the relevant app permissions, if any.
-- The maximum number of products that you can approve per enterprise
-- customer is 1,000. To learn how to use managed Google Play to design and
-- create a store layout to display approved products to your users, see
-- Store Layout Design.
--
-- /See:/ 'productsApprove' smart constructor.
data ProductsApprove =
  ProductsApprove'
    { _paXgafv :: !(Maybe Xgafv)
    , _paUploadProtocol :: !(Maybe Text)
    , _paEnterpriseId :: !Text
    , _paAccessToken :: !(Maybe Text)
    , _paUploadType :: !(Maybe Text)
    , _paPayload :: !ProductsApproveRequest
    , _paProductId :: !Text
    , _paCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paXgafv'
--
-- * 'paUploadProtocol'
--
-- * 'paEnterpriseId'
--
-- * 'paAccessToken'
--
-- * 'paUploadType'
--
-- * 'paPayload'
--
-- * 'paProductId'
--
-- * 'paCallback'
productsApprove
    :: Text -- ^ 'paEnterpriseId'
    -> ProductsApproveRequest -- ^ 'paPayload'
    -> Text -- ^ 'paProductId'
    -> ProductsApprove
productsApprove pPaEnterpriseId_ pPaPayload_ pPaProductId_ =
  ProductsApprove'
    { _paXgafv = Nothing
    , _paUploadProtocol = Nothing
    , _paEnterpriseId = pPaEnterpriseId_
    , _paAccessToken = Nothing
    , _paUploadType = Nothing
    , _paPayload = pPaPayload_
    , _paProductId = pPaProductId_
    , _paCallback = Nothing
    }


-- | V1 error format.
paXgafv :: Lens' ProductsApprove (Maybe Xgafv)
paXgafv = lens _paXgafv (\ s a -> s{_paXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paUploadProtocol :: Lens' ProductsApprove (Maybe Text)
paUploadProtocol
  = lens _paUploadProtocol
      (\ s a -> s{_paUploadProtocol = a})

-- | The ID of the enterprise.
paEnterpriseId :: Lens' ProductsApprove Text
paEnterpriseId
  = lens _paEnterpriseId
      (\ s a -> s{_paEnterpriseId = a})

-- | OAuth access token.
paAccessToken :: Lens' ProductsApprove (Maybe Text)
paAccessToken
  = lens _paAccessToken
      (\ s a -> s{_paAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paUploadType :: Lens' ProductsApprove (Maybe Text)
paUploadType
  = lens _paUploadType (\ s a -> s{_paUploadType = a})

-- | Multipart request metadata.
paPayload :: Lens' ProductsApprove ProductsApproveRequest
paPayload
  = lens _paPayload (\ s a -> s{_paPayload = a})

-- | The ID of the product.
paProductId :: Lens' ProductsApprove Text
paProductId
  = lens _paProductId (\ s a -> s{_paProductId = a})

-- | JSONP
paCallback :: Lens' ProductsApprove (Maybe Text)
paCallback
  = lens _paCallback (\ s a -> s{_paCallback = a})

instance GoogleRequest ProductsApprove where
        type Rs ProductsApprove = ()
        type Scopes ProductsApprove =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsApprove'{..}
          = go _paEnterpriseId _paProductId _paXgafv
              _paUploadProtocol
              _paAccessToken
              _paUploadType
              _paCallback
              (Just AltJSON)
              _paPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsApproveResource)
                      mempty
