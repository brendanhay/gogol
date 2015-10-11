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
-- Module      : Network.Google.Resource.Content.Products.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductsCustombatch@.
module Network.Google.Resource.Content.Products.Custombatch
    (
    -- * REST Resource
      ProductsCustombatchResource

    -- * Creating a Request
    , productsCustombatch'
    , ProductsCustombatch'

    -- * Request Lenses
    , pQuotaUser
    , pPrettyPrint
    , pUserIP
    , pPayload
    , pKey
    , pOAuthToken
    , pDryRun
    , pFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductsCustombatch@ method which the
-- 'ProductsCustombatch'' request conforms to.
type ProductsCustombatchResource =
     "products" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ProductsCustomBatchRequest :>
                           Post '[JSON] ProductsCustomBatchResponse

-- | Retrieves, inserts, and deletes multiple products in a single request.
--
-- /See:/ 'productsCustombatch'' smart constructor.
data ProductsCustombatch' = ProductsCustombatch'
    { _pQuotaUser   :: !(Maybe Text)
    , _pPrettyPrint :: !Bool
    , _pUserIP      :: !(Maybe Text)
    , _pPayload     :: !ProductsCustomBatchRequest
    , _pKey         :: !(Maybe AuthKey)
    , _pOAuthToken  :: !(Maybe OAuthToken)
    , _pDryRun      :: !(Maybe Bool)
    , _pFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pQuotaUser'
--
-- * 'pPrettyPrint'
--
-- * 'pUserIP'
--
-- * 'pPayload'
--
-- * 'pKey'
--
-- * 'pOAuthToken'
--
-- * 'pDryRun'
--
-- * 'pFields'
productsCustombatch'
    :: ProductsCustomBatchRequest -- ^ 'payload'
    -> ProductsCustombatch'
productsCustombatch' pPPayload_ =
    ProductsCustombatch'
    { _pQuotaUser = Nothing
    , _pPrettyPrint = True
    , _pUserIP = Nothing
    , _pPayload = pPPayload_
    , _pKey = Nothing
    , _pOAuthToken = Nothing
    , _pDryRun = Nothing
    , _pFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pQuotaUser :: Lens' ProductsCustombatch' (Maybe Text)
pQuotaUser
  = lens _pQuotaUser (\ s a -> s{_pQuotaUser = a})

-- | Returns response with indentations and line breaks.
pPrettyPrint :: Lens' ProductsCustombatch' Bool
pPrettyPrint
  = lens _pPrettyPrint (\ s a -> s{_pPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pUserIP :: Lens' ProductsCustombatch' (Maybe Text)
pUserIP = lens _pUserIP (\ s a -> s{_pUserIP = a})

-- | Multipart request metadata.
pPayload :: Lens' ProductsCustombatch' ProductsCustomBatchRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pKey :: Lens' ProductsCustombatch' (Maybe AuthKey)
pKey = lens _pKey (\ s a -> s{_pKey = a})

-- | OAuth 2.0 token for the current user.
pOAuthToken :: Lens' ProductsCustombatch' (Maybe OAuthToken)
pOAuthToken
  = lens _pOAuthToken (\ s a -> s{_pOAuthToken = a})

-- | Flag to run the request in dry-run mode.
pDryRun :: Lens' ProductsCustombatch' (Maybe Bool)
pDryRun = lens _pDryRun (\ s a -> s{_pDryRun = a})

-- | Selector specifying which fields to include in a partial response.
pFields :: Lens' ProductsCustombatch' (Maybe Text)
pFields = lens _pFields (\ s a -> s{_pFields = a})

instance GoogleAuth ProductsCustombatch' where
        _AuthKey = pKey . _Just
        _AuthToken = pOAuthToken . _Just

instance GoogleRequest ProductsCustombatch' where
        type Rs ProductsCustombatch' =
             ProductsCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq ProductsCustombatch'{..}
          = go _pDryRun _pQuotaUser (Just _pPrettyPrint)
              _pUserIP
              _pFields
              _pKey
              _pOAuthToken
              (Just AltJSON)
              _pPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductsCustombatchResource)
                      rq
