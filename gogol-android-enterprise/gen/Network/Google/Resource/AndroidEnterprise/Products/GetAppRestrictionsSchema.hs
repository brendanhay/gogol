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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseProductsGetAppRestrictionsSchema@.
module Network.Google.Resource.AndroidEnterprise.Products.GetAppRestrictionsSchema
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
    , pgarsUserIP
    , pgarsKey
    , pgarsLanguage
    , pgarsOAuthToken
    , pgarsProductId
    , pgarsFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseProductsGetAppRestrictionsSchema@ method which the
-- 'ProductsGetAppRestrictionsSchema'' request conforms to.
type ProductsGetAppRestrictionsSchemaResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "products" :>
           Capture "productId" Text :>
             "appRestrictionsSchema" :>
               QueryParam "language" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
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
    , _pgarsUserIP       :: !(Maybe Text)
    , _pgarsKey          :: !(Maybe AuthKey)
    , _pgarsLanguage     :: !(Maybe Text)
    , _pgarsOAuthToken   :: !(Maybe OAuthToken)
    , _pgarsProductId    :: !Text
    , _pgarsFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pgarsUserIP'
--
-- * 'pgarsKey'
--
-- * 'pgarsLanguage'
--
-- * 'pgarsOAuthToken'
--
-- * 'pgarsProductId'
--
-- * 'pgarsFields'
productsGetAppRestrictionsSchema'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'productId'
    -> ProductsGetAppRestrictionsSchema'
productsGetAppRestrictionsSchema' pPgarsEnterpriseId_ pPgarsProductId_ =
    ProductsGetAppRestrictionsSchema'
    { _pgarsQuotaUser = Nothing
    , _pgarsPrettyPrint = True
    , _pgarsEnterpriseId = pPgarsEnterpriseId_
    , _pgarsUserIP = Nothing
    , _pgarsKey = Nothing
    , _pgarsLanguage = Nothing
    , _pgarsOAuthToken = Nothing
    , _pgarsProductId = pPgarsProductId_
    , _pgarsFields = Nothing
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
pgarsUserIP :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsUserIP
  = lens _pgarsUserIP (\ s a -> s{_pgarsUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgarsKey :: Lens' ProductsGetAppRestrictionsSchema' (Maybe AuthKey)
pgarsKey = lens _pgarsKey (\ s a -> s{_pgarsKey = a})

-- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\",
-- \"de\").
pgarsLanguage :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsLanguage
  = lens _pgarsLanguage
      (\ s a -> s{_pgarsLanguage = a})

-- | OAuth 2.0 token for the current user.
pgarsOAuthToken :: Lens' ProductsGetAppRestrictionsSchema' (Maybe OAuthToken)
pgarsOAuthToken
  = lens _pgarsOAuthToken
      (\ s a -> s{_pgarsOAuthToken = a})

-- | The ID of the product.
pgarsProductId :: Lens' ProductsGetAppRestrictionsSchema' Text
pgarsProductId
  = lens _pgarsProductId
      (\ s a -> s{_pgarsProductId = a})

-- | Selector specifying which fields to include in a partial response.
pgarsFields :: Lens' ProductsGetAppRestrictionsSchema' (Maybe Text)
pgarsFields
  = lens _pgarsFields (\ s a -> s{_pgarsFields = a})

instance GoogleAuth ProductsGetAppRestrictionsSchema'
         where
        _AuthKey = pgarsKey . _Just
        _AuthToken = pgarsOAuthToken . _Just

instance GoogleRequest
         ProductsGetAppRestrictionsSchema' where
        type Rs ProductsGetAppRestrictionsSchema' =
             AppRestrictionsSchema
        request = requestWith androidEnterpriseRequest
        requestWith rq ProductsGetAppRestrictionsSchema'{..}
          = go _pgarsEnterpriseId _pgarsProductId
              _pgarsLanguage
              _pgarsQuotaUser
              (Just _pgarsPrettyPrint)
              _pgarsUserIP
              _pgarsFields
              _pgarsKey
              _pgarsOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProductsGetAppRestrictionsSchemaResource)
                      rq
