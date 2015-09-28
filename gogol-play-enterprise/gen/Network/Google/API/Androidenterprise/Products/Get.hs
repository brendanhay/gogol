{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Products.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.products.get@.
module Network.Google.API.Androidenterprise.Products.Get
    (
    -- * REST Resource
      ProductsGetAPI

    -- * Creating a Request
    , productsGet'
    , ProductsGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgEnterpriseId
    , pgUserIp
    , pgKey
    , pgLanguage
    , pgOauthToken
    , pgProductId
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.products.get which the
-- 'ProductsGet'' request conforms to.
type ProductsGetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "language" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'productsGet'' smart constructor.
data ProductsGet' = ProductsGet'
    { _pgQuotaUser    :: !(Maybe Text)
    , _pgPrettyPrint  :: !Bool
    , _pgEnterpriseId :: !Text
    , _pgUserIp       :: !(Maybe Text)
    , _pgKey          :: !(Maybe Text)
    , _pgLanguage     :: !(Maybe Text)
    , _pgOauthToken   :: !(Maybe Text)
    , _pgProductId    :: !Text
    , _pgFields       :: !(Maybe Text)
    , _pgAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgEnterpriseId'
--
-- * 'pgUserIp'
--
-- * 'pgKey'
--
-- * 'pgLanguage'
--
-- * 'pgOauthToken'
--
-- * 'pgProductId'
--
-- * 'pgFields'
--
-- * 'pgAlt'
productsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGet'
productsGet' pPgEnterpriseId_ pPgProductId_ =
    ProductsGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgEnterpriseId = pPgEnterpriseId_
    , _pgUserIp = Nothing
    , _pgKey = Nothing
    , _pgLanguage = Nothing
    , _pgOauthToken = Nothing
    , _pgProductId = pPgProductId_
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' ProductsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' ProductsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | The ID of the enterprise.
pgEnterpriseId :: Lens' ProductsGet' Text
pgEnterpriseId
  = lens _pgEnterpriseId
      (\ s a -> s{_pgEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' ProductsGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ProductsGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pgLanguage :: Lens' ProductsGet' (Maybe Text)
pgLanguage
  = lens _pgLanguage (\ s a -> s{_pgLanguage = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' ProductsGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | The ID of the product, e.g. \"app:com.google.android.gm\".
pgProductId :: Lens' ProductsGet' Text
pgProductId
  = lens _pgProductId (\ s a -> s{_pgProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ProductsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' ProductsGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest ProductsGet' where
        type Rs ProductsGet' = Product
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u ProductsGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint)
              _pgEnterpriseId
              _pgUserIp
              _pgKey
              _pgLanguage
              _pgOauthToken
              _pgProductId
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ProductsGetAPI) r u
