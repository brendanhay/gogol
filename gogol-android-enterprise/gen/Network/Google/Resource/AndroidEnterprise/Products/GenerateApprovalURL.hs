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
-- Module      : Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a URL that can be rendered in an iframe to display the
-- permissions (if any) of a product. An enterprise admin must view these
-- permissions and accept them on behalf of their organization in order to
-- approve that product. Admins should accept the displayed permissions by
-- interacting with a separate UI element in the EMM console, which in turn
-- should trigger the use of this URL as the approvalUrlInfo.approvalUrl
-- property in a Products.approve call to approve the product. This URL can
-- only be used to display permissions for up to 1 day.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.generateApprovalUrl@.
module Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
    (
    -- * REST Resource
      ProductsGenerateApprovalURLResource

    -- * Creating a Request
    , productsGenerateApprovalURL
    , ProductsGenerateApprovalURL

    -- * Request Lenses
    , pgauXgafv
    , pgauLanguageCode
    , pgauUploadProtocol
    , pgauEnterpriseId
    , pgauAccessToken
    , pgauUploadType
    , pgauProductId
    , pgauCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.products.generateApprovalUrl@ method which the
-- 'ProductsGenerateApprovalURL' request conforms to.
type ProductsGenerateApprovalURLResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "generateApprovalUrl" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "languageCode" Text :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   ProductsGenerateApprovalURLResponse

-- | Generates a URL that can be rendered in an iframe to display the
-- permissions (if any) of a product. An enterprise admin must view these
-- permissions and accept them on behalf of their organization in order to
-- approve that product. Admins should accept the displayed permissions by
-- interacting with a separate UI element in the EMM console, which in turn
-- should trigger the use of this URL as the approvalUrlInfo.approvalUrl
-- property in a Products.approve call to approve the product. This URL can
-- only be used to display permissions for up to 1 day.
--
-- /See:/ 'productsGenerateApprovalURL' smart constructor.
data ProductsGenerateApprovalURL =
  ProductsGenerateApprovalURL'
    { _pgauXgafv :: !(Maybe Xgafv)
    , _pgauLanguageCode :: !(Maybe Text)
    , _pgauUploadProtocol :: !(Maybe Text)
    , _pgauEnterpriseId :: !Text
    , _pgauAccessToken :: !(Maybe Text)
    , _pgauUploadType :: !(Maybe Text)
    , _pgauProductId :: !Text
    , _pgauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsGenerateApprovalURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgauXgafv'
--
-- * 'pgauLanguageCode'
--
-- * 'pgauUploadProtocol'
--
-- * 'pgauEnterpriseId'
--
-- * 'pgauAccessToken'
--
-- * 'pgauUploadType'
--
-- * 'pgauProductId'
--
-- * 'pgauCallback'
productsGenerateApprovalURL
    :: Text -- ^ 'pgauEnterpriseId'
    -> Text -- ^ 'pgauProductId'
    -> ProductsGenerateApprovalURL
productsGenerateApprovalURL pPgauEnterpriseId_ pPgauProductId_ =
  ProductsGenerateApprovalURL'
    { _pgauXgafv = Nothing
    , _pgauLanguageCode = Nothing
    , _pgauUploadProtocol = Nothing
    , _pgauEnterpriseId = pPgauEnterpriseId_
    , _pgauAccessToken = Nothing
    , _pgauUploadType = Nothing
    , _pgauProductId = pPgauProductId_
    , _pgauCallback = Nothing
    }


-- | V1 error format.
pgauXgafv :: Lens' ProductsGenerateApprovalURL (Maybe Xgafv)
pgauXgafv
  = lens _pgauXgafv (\ s a -> s{_pgauXgafv = a})

-- | The BCP 47 language code used for permission names and descriptions in
-- the returned iframe, for instance \"en-US\".
pgauLanguageCode :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauLanguageCode
  = lens _pgauLanguageCode
      (\ s a -> s{_pgauLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgauUploadProtocol :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauUploadProtocol
  = lens _pgauUploadProtocol
      (\ s a -> s{_pgauUploadProtocol = a})

-- | The ID of the enterprise.
pgauEnterpriseId :: Lens' ProductsGenerateApprovalURL Text
pgauEnterpriseId
  = lens _pgauEnterpriseId
      (\ s a -> s{_pgauEnterpriseId = a})

-- | OAuth access token.
pgauAccessToken :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauAccessToken
  = lens _pgauAccessToken
      (\ s a -> s{_pgauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgauUploadType :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauUploadType
  = lens _pgauUploadType
      (\ s a -> s{_pgauUploadType = a})

-- | The ID of the product.
pgauProductId :: Lens' ProductsGenerateApprovalURL Text
pgauProductId
  = lens _pgauProductId
      (\ s a -> s{_pgauProductId = a})

-- | JSONP
pgauCallback :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauCallback
  = lens _pgauCallback (\ s a -> s{_pgauCallback = a})

instance GoogleRequest ProductsGenerateApprovalURL
         where
        type Rs ProductsGenerateApprovalURL =
             ProductsGenerateApprovalURLResponse
        type Scopes ProductsGenerateApprovalURL =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ProductsGenerateApprovalURL'{..}
          = go _pgauEnterpriseId _pgauProductId _pgauXgafv
              _pgauLanguageCode
              _pgauUploadProtocol
              _pgauAccessToken
              _pgauUploadType
              _pgauCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsGenerateApprovalURLResource)
                      mempty
