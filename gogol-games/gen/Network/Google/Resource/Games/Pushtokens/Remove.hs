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
-- Module      : Network.Google.Resource.Games.Pushtokens.Remove
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a push token for the current user and application. Removing a
-- non-existent push token will report success.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPushtokensRemove@.
module Network.Google.Resource.Games.Pushtokens.Remove
    (
    -- * REST Resource
      PushtokensRemoveResource

    -- * Creating a Request
    , pushtokensRemove'
    , PushtokensRemove'

    -- * Request Lenses
    , prQuotaUser
    , prPrettyPrint
    , prUserIP
    , prKey
    , prPushTokenId
    , prOAuthToken
    , prFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPushtokensRemove@ which the
-- 'PushtokensRemove'' request conforms to.
type PushtokensRemoveResource =
     "pushtokens" :>
       "remove" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PushTokenId :> Post '[JSON] ()

-- | Removes a push token for the current user and application. Removing a
-- non-existent push token will report success.
--
-- /See:/ 'pushtokensRemove'' smart constructor.
data PushtokensRemove' = PushtokensRemove'
    { _prQuotaUser   :: !(Maybe Text)
    , _prPrettyPrint :: !Bool
    , _prUserIP      :: !(Maybe Text)
    , _prKey         :: !(Maybe Key)
    , _prPushTokenId :: !PushTokenId
    , _prOAuthToken  :: !(Maybe OAuthToken)
    , _prFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensRemove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIP'
--
-- * 'prKey'
--
-- * 'prPushTokenId'
--
-- * 'prOAuthToken'
--
-- * 'prFields'
pushtokensRemove'
    :: PushTokenId -- ^ 'PushTokenId'
    -> PushtokensRemove'
pushtokensRemove' pPrPushTokenId_ =
    PushtokensRemove'
    { _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIP = Nothing
    , _prKey = Nothing
    , _prPushTokenId = pPrPushTokenId_
    , _prOAuthToken = Nothing
    , _prFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PushtokensRemove' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PushtokensRemove' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIP :: Lens' PushtokensRemove' (Maybe Text)
prUserIP = lens _prUserIP (\ s a -> s{_prUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PushtokensRemove' (Maybe Key)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | Multipart request metadata.
prPushTokenId :: Lens' PushtokensRemove' PushTokenId
prPushTokenId
  = lens _prPushTokenId
      (\ s a -> s{_prPushTokenId = a})

-- | OAuth 2.0 token for the current user.
prOAuthToken :: Lens' PushtokensRemove' (Maybe OAuthToken)
prOAuthToken
  = lens _prOAuthToken (\ s a -> s{_prOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PushtokensRemove' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

instance GoogleAuth PushtokensRemove' where
        authKey = prKey . _Just
        authToken = prOAuthToken . _Just

instance GoogleRequest PushtokensRemove' where
        type Rs PushtokensRemove' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PushtokensRemove'{..}
          = go _prQuotaUser (Just _prPrettyPrint) _prUserIP
              _prKey
              _prOAuthToken
              _prFields
              (Just AltJSON)
              _prPushTokenId
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PushtokensRemoveResource)
                      r
                      u
