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
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsDelete@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.Delete
    (
    -- * REST Resource
      InappproductsDeleteResource

    -- * Creating a Request
    , inappproductsDelete'
    , InappproductsDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idPackageName
    , idUserIP
    , idKey
    , idSKU
    , idOAuthToken
    , idFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsDelete@ which the
-- 'InappproductsDelete'' request conforms to.
type InappproductsDeleteResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an in-app product for an app.
--
-- /See:/ 'inappproductsDelete'' smart constructor.
data InappproductsDelete' = InappproductsDelete'
    { _idQuotaUser   :: !(Maybe Text)
    , _idPrettyPrint :: !Bool
    , _idPackageName :: !Text
    , _idUserIP      :: !(Maybe Text)
    , _idKey         :: !(Maybe Key)
    , _idSKU         :: !Text
    , _idOAuthToken  :: !(Maybe OAuthToken)
    , _idFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idQuotaUser'
--
-- * 'idPrettyPrint'
--
-- * 'idPackageName'
--
-- * 'idUserIP'
--
-- * 'idKey'
--
-- * 'idSKU'
--
-- * 'idOAuthToken'
--
-- * 'idFields'
inappproductsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsDelete'
inappproductsDelete' pIdPackageName_ pIdSKU_ =
    InappproductsDelete'
    { _idQuotaUser = Nothing
    , _idPrettyPrint = True
    , _idPackageName = pIdPackageName_
    , _idUserIP = Nothing
    , _idKey = Nothing
    , _idSKU = pIdSKU_
    , _idOAuthToken = Nothing
    , _idFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idQuotaUser :: Lens' InappproductsDelete' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' InappproductsDelete' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | Unique identifier for the Android app with the in-app product; for
-- example, \"com.spiffygame\".
idPackageName :: Lens' InappproductsDelete' Text
idPackageName
  = lens _idPackageName
      (\ s a -> s{_idPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idUserIP :: Lens' InappproductsDelete' (Maybe Text)
idUserIP = lens _idUserIP (\ s a -> s{_idUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InappproductsDelete' (Maybe Key)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | Unique identifier for the in-app product.
idSKU :: Lens' InappproductsDelete' Text
idSKU = lens _idSKU (\ s a -> s{_idSKU = a})

-- | OAuth 2.0 token for the current user.
idOAuthToken :: Lens' InappproductsDelete' (Maybe OAuthToken)
idOAuthToken
  = lens _idOAuthToken (\ s a -> s{_idOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InappproductsDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

instance GoogleAuth InappproductsDelete' where
        authKey = idKey . _Just
        authToken = idOAuthToken . _Just

instance GoogleRequest InappproductsDelete' where
        type Rs InappproductsDelete' = ()
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsDelete'{..}
          = go _idPackageName _idSKU _idQuotaUser
              (Just _idPrettyPrint)
              _idUserIP
              _idFields
              _idKey
              _idOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsDeleteResource)
                      r
                      u
