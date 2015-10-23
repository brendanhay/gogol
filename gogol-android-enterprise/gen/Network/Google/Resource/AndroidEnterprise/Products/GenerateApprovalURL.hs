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
-- Copyright   : (c) 2015 Brendan Hay
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.products.generateApprovalUrl@.
module Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
    (
    -- * REST Resource
      ProductsGenerateApprovalURLResource

    -- * Creating a Request
    , productsGenerateApprovalURL
    , ProductsGenerateApprovalURL

    -- * Request Lenses
    , pgauLanguageCode
    , pgauEnterpriseId
    , pgauProductId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

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
                   QueryParam "languageCode" Text :>
                     QueryParam "alt" AltJSON :>
                       Post '[JSON] ProductsGenerateApprovalURLResponse

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
data ProductsGenerateApprovalURL = ProductsGenerateApprovalURL
    { _pgauLanguageCode :: !(Maybe Text)
    , _pgauEnterpriseId :: !Text
    , _pgauProductId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGenerateApprovalURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgauLanguageCode'
--
-- * 'pgauEnterpriseId'
--
-- * 'pgauProductId'
productsGenerateApprovalURL
    :: Text -- ^ 'pgauEnterpriseId'
    -> Text -- ^ 'pgauProductId'
    -> ProductsGenerateApprovalURL
productsGenerateApprovalURL pPgauEnterpriseId_ pPgauProductId_ =
    ProductsGenerateApprovalURL
    { _pgauLanguageCode = Nothing
    , _pgauEnterpriseId = pPgauEnterpriseId_
    , _pgauProductId = pPgauProductId_
    }

-- | The BCP 47 language code used for permission names and descriptions in
-- the returned iframe, for instance \"en-US\".
pgauLanguageCode :: Lens' ProductsGenerateApprovalURL (Maybe Text)
pgauLanguageCode
  = lens _pgauLanguageCode
      (\ s a -> s{_pgauLanguageCode = a})

-- | The ID of the enterprise.
pgauEnterpriseId :: Lens' ProductsGenerateApprovalURL Text
pgauEnterpriseId
  = lens _pgauEnterpriseId
      (\ s a -> s{_pgauEnterpriseId = a})

-- | The ID of the product.
pgauProductId :: Lens' ProductsGenerateApprovalURL Text
pgauProductId
  = lens _pgauProductId
      (\ s a -> s{_pgauProductId = a})

instance GoogleRequest ProductsGenerateApprovalURL
         where
        type Rs ProductsGenerateApprovalURL =
             ProductsGenerateApprovalURLResponse
        requestClient ProductsGenerateApprovalURL{..}
          = go _pgauEnterpriseId _pgauProductId
              _pgauLanguageCode
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductsGenerateApprovalURLResource)
                      mempty
