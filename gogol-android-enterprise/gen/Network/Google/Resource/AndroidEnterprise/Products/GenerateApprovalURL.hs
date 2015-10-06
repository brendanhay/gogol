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
-- | Generates a URL that can be rendered in an iframe to display the
-- permissions (if any) of a product. An enterprise admin must view these
-- permissions and accept them on behalf of their organization in order to
-- approve that product. Admins should accept the displayed permissions by
-- interacting with a separate UI element in the EMM console, which in turn
-- should trigger the use of this URL as the approvalUrlInfo.approvalUrl
-- property in a Products.approve call to approve the product. This URL can
-- only be used to display permissions for up to 1 day.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGenerateApprovalURL@.
module Network.Google.Resource.AndroidEnterprise.Products.GenerateApprovalURL
    (
    -- * REST Resource
      ProductsGenerateApprovalURLResource

    -- * Creating a Request
    , productsGenerateApprovalURL'
    , ProductsGenerateApprovalURL'

    -- * Request Lenses
    , pgauQuotaUser
    , pgauLanguageCode
    , pgauPrettyPrint
    , pgauEnterpriseId
    , pgauUserIP
    , pgauKey
    , pgauOAuthToken
    , pgauProductId
    , pgauFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGenerateApprovalURL@ which the
-- 'ProductsGenerateApprovalURL'' request conforms to.
type ProductsGenerateApprovalURLResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "generateApprovalUrl" :>
               QueryParam "languageCode" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
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
-- /See:/ 'productsGenerateApprovalURL'' smart constructor.
data ProductsGenerateApprovalURL' = ProductsGenerateApprovalURL'
    { _pgauQuotaUser    :: !(Maybe Text)
    , _pgauLanguageCode :: !(Maybe Text)
    , _pgauPrettyPrint  :: !Bool
    , _pgauEnterpriseId :: !Text
    , _pgauUserIP       :: !(Maybe Text)
    , _pgauKey          :: !(Maybe AuthKey)
    , _pgauOAuthToken   :: !(Maybe OAuthToken)
    , _pgauProductId    :: !Text
    , _pgauFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGenerateApprovalURL'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgauQuotaUser'
--
-- * 'pgauLanguageCode'
--
-- * 'pgauPrettyPrint'
--
-- * 'pgauEnterpriseId'
--
-- * 'pgauUserIP'
--
-- * 'pgauKey'
--
-- * 'pgauOAuthToken'
--
-- * 'pgauProductId'
--
-- * 'pgauFields'
productsGenerateApprovalURL'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGenerateApprovalURL'
productsGenerateApprovalURL' pPgauEnterpriseId_ pPgauProductId_ =
    ProductsGenerateApprovalURL'
    { _pgauQuotaUser = Nothing
    , _pgauLanguageCode = Nothing
    , _pgauPrettyPrint = True
    , _pgauEnterpriseId = pPgauEnterpriseId_
    , _pgauUserIP = Nothing
    , _pgauKey = Nothing
    , _pgauOAuthToken = Nothing
    , _pgauProductId = pPgauProductId_
    , _pgauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgauQuotaUser :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauQuotaUser
  = lens _pgauQuotaUser
      (\ s a -> s{_pgauQuotaUser = a})

-- | The BCP 47 language code used for permission names and descriptions in
-- the returned iframe, for instance \"en-US\".
pgauLanguageCode :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauLanguageCode
  = lens _pgauLanguageCode
      (\ s a -> s{_pgauLanguageCode = a})

-- | Returns response with indentations and line breaks.
pgauPrettyPrint :: Lens' ProductsGenerateApprovalURL' Bool
pgauPrettyPrint
  = lens _pgauPrettyPrint
      (\ s a -> s{_pgauPrettyPrint = a})

-- | The ID of the enterprise.
pgauEnterpriseId :: Lens' ProductsGenerateApprovalURL' Text
pgauEnterpriseId
  = lens _pgauEnterpriseId
      (\ s a -> s{_pgauEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgauUserIP :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauUserIP
  = lens _pgauUserIP (\ s a -> s{_pgauUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgauKey :: Lens' ProductsGenerateApprovalURL' (Maybe AuthKey)
pgauKey = lens _pgauKey (\ s a -> s{_pgauKey = a})

-- | OAuth 2.0 token for the current user.
pgauOAuthToken :: Lens' ProductsGenerateApprovalURL' (Maybe OAuthToken)
pgauOAuthToken
  = lens _pgauOAuthToken
      (\ s a -> s{_pgauOAuthToken = a})

-- | The ID of the product.
pgauProductId :: Lens' ProductsGenerateApprovalURL' Text
pgauProductId
  = lens _pgauProductId
      (\ s a -> s{_pgauProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgauFields :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauFields
  = lens _pgauFields (\ s a -> s{_pgauFields = a})

instance GoogleAuth ProductsGenerateApprovalURL'
         where
        _AuthKey = pgauKey . _Just
        _AuthToken = pgauOAuthToken . _Just

instance GoogleRequest ProductsGenerateApprovalURL'
         where
        type Rs ProductsGenerateApprovalURL' =
             ProductsGenerateApprovalURLResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq ProductsGenerateApprovalURL'{..}
          = go _pgauEnterpriseId _pgauProductId
              _pgauLanguageCode
              _pgauQuotaUser
              (Just _pgauPrettyPrint)
              _pgauUserIP
              _pgauFields
              _pgauKey
              _pgauOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductsGenerateApprovalURLResource)
                      rq
