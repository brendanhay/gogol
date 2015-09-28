{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Inappproducts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an in-app product for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.delete@.
module Network.Google.API.Androidpublisher.Inappproducts.Delete
    (
    -- * REST Resource
      InappproductsDeleteAPI

    -- * Creating a Request
    , inappproductsDelete'
    , InappproductsDelete'

    -- * Request Lenses
    , idQuotaUser
    , idPrettyPrint
    , idPackageName
    , idUserIp
    , idKey
    , idSku
    , idOauthToken
    , idFields
    , idAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.inappproducts.delete which the
-- 'InappproductsDelete'' request conforms to.
type InappproductsDeleteAPI =
     Capture "packageName" Text :>
       "inappproducts" :>
         Capture "sku" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete an in-app product for an app.
--
-- /See:/ 'inappproductsDelete'' smart constructor.
data InappproductsDelete' = InappproductsDelete'
    { _idQuotaUser   :: !(Maybe Text)
    , _idPrettyPrint :: !Bool
    , _idPackageName :: !Text
    , _idUserIp      :: !(Maybe Text)
    , _idKey         :: !(Maybe Text)
    , _idSku         :: !Text
    , _idOauthToken  :: !(Maybe Text)
    , _idFields      :: !(Maybe Text)
    , _idAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'idUserIp'
--
-- * 'idKey'
--
-- * 'idSku'
--
-- * 'idOauthToken'
--
-- * 'idFields'
--
-- * 'idAlt'
inappproductsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'sku'
    -> InappproductsDelete'
inappproductsDelete' pIdPackageName_ pIdSku_ =
    InappproductsDelete'
    { _idQuotaUser = Nothing
    , _idPrettyPrint = True
    , _idPackageName = pIdPackageName_
    , _idUserIp = Nothing
    , _idKey = Nothing
    , _idSku = pIdSku_
    , _idOauthToken = Nothing
    , _idFields = Nothing
    , _idAlt = JSON
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
idUserIp :: Lens' InappproductsDelete' (Maybe Text)
idUserIp = lens _idUserIp (\ s a -> s{_idUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InappproductsDelete' (Maybe Text)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | Unique identifier for the in-app product.
idSku :: Lens' InappproductsDelete' Text
idSku = lens _idSku (\ s a -> s{_idSku = a})

-- | OAuth 2.0 token for the current user.
idOauthToken :: Lens' InappproductsDelete' (Maybe Text)
idOauthToken
  = lens _idOauthToken (\ s a -> s{_idOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InappproductsDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Data format for the response.
idAlt :: Lens' InappproductsDelete' Alt
idAlt = lens _idAlt (\ s a -> s{_idAlt = a})

instance GoogleRequest InappproductsDelete' where
        type Rs InappproductsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsDelete'{..}
          = go _idQuotaUser (Just _idPrettyPrint)
              _idPackageName
              _idUserIp
              _idKey
              _idSku
              _idOauthToken
              _idFields
              (Just _idAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsDeleteAPI)
                      r
                      u
