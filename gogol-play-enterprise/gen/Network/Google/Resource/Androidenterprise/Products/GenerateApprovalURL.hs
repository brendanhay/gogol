{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Products.GenerateApprovalURL
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseProductsGenerateApprovalURL@.
module Network.Google.Resource.Androidenterprise.Products.GenerateApprovalURL
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
    , pgauUserIp
    , pgauKey
    , pgauOauthToken
    , pgauProductId
    , pgauFields
    , pgauAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseProductsGenerateApprovalURL@ which the
-- 'ProductsGenerateApprovalURL'' request conforms to.
type ProductsGenerateApprovalURLResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "generateApprovalUrl" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "languageCode" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
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
    , _pgauUserIp       :: !(Maybe Text)
    , _pgauKey          :: !(Maybe Text)
    , _pgauOauthToken   :: !(Maybe Text)
    , _pgauProductId    :: !Text
    , _pgauFields       :: !(Maybe Text)
    , _pgauAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pgauUserIp'
--
-- * 'pgauKey'
--
-- * 'pgauOauthToken'
--
-- * 'pgauProductId'
--
-- * 'pgauFields'
--
-- * 'pgauAlt'
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
    , _pgauUserIp = Nothing
    , _pgauKey = Nothing
    , _pgauOauthToken = Nothing
    , _pgauProductId = pPgauProductId_
    , _pgauFields = Nothing
    , _pgauAlt = JSON
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
pgauUserIp :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauUserIp
  = lens _pgauUserIp (\ s a -> s{_pgauUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgauKey :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauKey = lens _pgauKey (\ s a -> s{_pgauKey = a})

-- | OAuth 2.0 token for the current user.
pgauOauthToken :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauOauthToken
  = lens _pgauOauthToken
      (\ s a -> s{_pgauOauthToken = a})

-- | The ID of the product.
pgauProductId :: Lens' ProductsGenerateApprovalURL' Text
pgauProductId
  = lens _pgauProductId
      (\ s a -> s{_pgauProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgauFields :: Lens' ProductsGenerateApprovalURL' (Maybe Text)
pgauFields
  = lens _pgauFields (\ s a -> s{_pgauFields = a})

-- | Data format for the response.
pgauAlt :: Lens' ProductsGenerateApprovalURL' Alt
pgauAlt = lens _pgauAlt (\ s a -> s{_pgauAlt = a})

instance GoogleRequest ProductsGenerateApprovalURL'
         where
        type Rs ProductsGenerateApprovalURL' =
             ProductsGenerateApprovalURLResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsGenerateApprovalURL'{..}
          = go _pgauQuotaUser _pgauLanguageCode
              (Just _pgauPrettyPrint)
              _pgauEnterpriseId
              _pgauUserIp
              _pgauKey
              _pgauOauthToken
              _pgauProductId
              _pgauFields
              (Just _pgauAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProductsGenerateApprovalURLResource)
                      r
                      u
