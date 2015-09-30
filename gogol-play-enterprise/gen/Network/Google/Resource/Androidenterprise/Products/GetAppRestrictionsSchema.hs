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
-- Module      : Network.Google.Resource.Androidenterprise.Products.GetAppRestrictionsSchema
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the schema defining app restrictions configurable for this
-- product. All products have a schema, but this may be empty if no app
-- restrictions are defined.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseProductsGetAppRestrictionsSchema@.
module Network.Google.Resource.Androidenterprise.Products.GetAppRestrictionsSchema
    (
    -- * REST Resource
      ProductsGetAppRestrictionsSchemaResource

    -- * Creating a Request
    , productsGetAppRestrictionsSchema'
    , ProductsGetAppRestrictionsSchema'

    -- * Request Lenses
    , pgarsQuotaUser
    , pgarsPrettyPrint
    , pgarsEnterpriseId
    , pgarsUserIp
    , pgarsKey
    , pgarsLanguage
    , pgarsOauthToken
    , pgarsProductId
    , pgarsFields
    , pgarsAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseProductsGetAppRestrictionsSchema@ which the
-- 'ProductsGetAppRestrictionsSchema'' request conforms to.
type ProductsGetAppRestrictionsSchemaResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "appRestrictionsSchema" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "language" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] AppRestrictionsSchema

-- | Retrieves the schema defining app restrictions configurable for this
-- product. All products have a schema, but this may be empty if no app
-- restrictions are defined.
--
-- /See:/ 'productsGetAppRestrictionsSchema'' smart constructor.
data ProductsGetAppRestrictionsSchema' = ProductsGetAppRestrictionsSchema'
    { _pgarsQuotaUser    :: !(Maybe Text)
    , _pgarsPrettyPrint  :: !Bool
    , _pgarsEnterpriseId :: !Text
    , _pgarsUserIp       :: !(Maybe Text)
    , _pgarsKey          :: !(Maybe Text)
    , _pgarsLanguage     :: !(Maybe Text)
    , _pgarsOauthToken   :: !(Maybe Text)
    , _pgarsProductId    :: !Text
    , _pgarsFields       :: !(Maybe Text)
    , _pgarsAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsGetAppRestrictionsSchema'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgarsQuotaUser'
--
-- * 'pgarsPrettyPrint'
--
-- * 'pgarsEnterpriseId'
--
-- * 'pgarsUserIp'
--
-- * 'pgarsKey'
--
-- * 'pgarsLanguage'
--
-- * 'pgarsOauthToken'
--
-- * 'pgarsProductId'
--
-- * 'pgarsFields'
--
-- * 'pgarsAlt'
productsGetAppRestrictionsSchema'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGetAppRestrictionsSchema'
productsGetAppRestrictionsSchema' pPgarsEnterpriseId_ pPgarsProductId_ =
    ProductsGetAppRestrictionsSchema'
    { _pgarsQuotaUser = Nothing
    , _pgarsPrettyPrint = True
    , _pgarsEnterpriseId = pPgarsEnterpriseId_
    , _pgarsUserIp = Nothing
    , _pgarsKey = Nothing
    , _pgarsLanguage = Nothing
    , _pgarsOauthToken = Nothing
    , _pgarsProductId = pPgarsProductId_
    , _pgarsFields = Nothing
    , _pgarsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgarsQuotaUser :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsQuotaUser
  = lens _pgarsQuotaUser
      (\ s a -> s{_pgarsQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgarsPrettyPrint :: Lens' ProductsGetAppRestrictionsSchema' Bool
pgarsPrettyPrint
  = lens _pgarsPrettyPrint
      (\ s a -> s{_pgarsPrettyPrint = a})

-- | The ID of the enterprise.
pgarsEnterpriseId :: Lens' ProductsGetAppRestrictionsSchema' Text
pgarsEnterpriseId
  = lens _pgarsEnterpriseId
      (\ s a -> s{_pgarsEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgarsUserIp :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsUserIp
  = lens _pgarsUserIp (\ s a -> s{_pgarsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgarsKey :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsKey = lens _pgarsKey (\ s a -> s{_pgarsKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pgarsLanguage :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsLanguage
  = lens _pgarsLanguage
      (\ s a -> s{_pgarsLanguage = a})

-- | OAuth 2.0 token for the current user.
pgarsOauthToken :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsOauthToken
  = lens _pgarsOauthToken
      (\ s a -> s{_pgarsOauthToken = a})

-- | The ID of the product.
pgarsProductId :: Lens' ProductsGetAppRestrictionsSchema' Text
pgarsProductId
  = lens _pgarsProductId
      (\ s a -> s{_pgarsProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgarsFields :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsFields
  = lens _pgarsFields (\ s a -> s{_pgarsFields = a})

-- | Data format for the response.
pgarsAlt :: Lens' ProductsGetAppRestrictionsSchema' Alt
pgarsAlt = lens _pgarsAlt (\ s a -> s{_pgarsAlt = a})

instance GoogleRequest
         ProductsGetAppRestrictionsSchema' where
        type Rs ProductsGetAppRestrictionsSchema' =
             AppRestrictionsSchema
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u
          ProductsGetAppRestrictionsSchema'{..}
          = go _pgarsQuotaUser (Just _pgarsPrettyPrint)
              _pgarsEnterpriseId
              _pgarsUserIp
              _pgarsKey
              _pgarsLanguage
              _pgarsOauthToken
              _pgarsProductId
              _pgarsFields
              (Just _pgarsAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProductsGetAppRestrictionsSchemaResource)
                      r
                      u
