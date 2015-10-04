{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about the in-app product specified.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsGet@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Get
    (
    -- * REST Resource
      InappproductsGetResource

    -- * Creating a Request
    , inappproductsGet'
    , InappproductsGet'

    -- * Request Lenses
    , igQuotaUser
    , igPrettyPrint
    , igPackageName
    , igUserIP
    , igKey
    , igSKU
    , igOAuthToken
    , igFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsGet@ which the
-- 'InappproductsGet'' request conforms to.
type InappproductsGetResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] InAppProduct

-- | Returns information about the in-app product specified.
--
-- /See:/ 'inappproductsGet'' smart constructor.
data InappproductsGet' = InappproductsGet'
    { _igQuotaUser   :: !(Maybe Text)
    , _igPrettyPrint :: !Bool
    , _igPackageName :: !Text
    , _igUserIP      :: !(Maybe Text)
    , _igKey         :: !(Maybe Key)
    , _igSKU         :: !Text
    , _igOAuthToken  :: !(Maybe OAuthToken)
    , _igFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igPrettyPrint'
--
-- * 'igPackageName'
--
-- * 'igUserIP'
--
-- * 'igKey'
--
-- * 'igSKU'
--
-- * 'igOAuthToken'
--
-- * 'igFields'
inappproductsGet'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsGet'
inappproductsGet' pIgPackageName_ pIgSKU_ =
    InappproductsGet'
    { _igQuotaUser = Nothing
    , _igPrettyPrint = True
    , _igPackageName = pIgPackageName_
    , _igUserIP = Nothing
    , _igKey = Nothing
    , _igSKU = pIgSKU_
    , _igOAuthToken = Nothing
    , _igFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' InappproductsGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' InappproductsGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

igPackageName :: Lens' InappproductsGet' Text
igPackageName
  = lens _igPackageName
      (\ s a -> s{_igPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIP :: Lens' InappproductsGet' (Maybe Text)
igUserIP = lens _igUserIP (\ s a -> s{_igUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' InappproductsGet' (Maybe Key)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | Unique identifier for the in-app product.
igSKU :: Lens' InappproductsGet' Text
igSKU = lens _igSKU (\ s a -> s{_igSKU = a})

-- | OAuth 2.0 token for the current user.
igOAuthToken :: Lens' InappproductsGet' (Maybe OAuthToken)
igOAuthToken
  = lens _igOAuthToken (\ s a -> s{_igOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' InappproductsGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

instance GoogleAuth InappproductsGet' where
        authKey = igKey . _Just
        authToken = igOAuthToken . _Just

instance GoogleRequest InappproductsGet' where
        type Rs InappproductsGet' = InAppProduct
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsGet'{..}
          = go _igPackageName _igSKU _igQuotaUser
              (Just _igPrettyPrint)
              _igUserIP
              _igFields
              _igKey
              _igOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsGetResource)
                      r
                      u
