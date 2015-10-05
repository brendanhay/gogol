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
-- Module      : Network.Google.Resource.Games.Pushtokens.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Registers a push token for the current user and application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPushtokensUpdate@.
module Network.Google.Resource.Games.Pushtokens.Update
    (
    -- * REST Resource
      PushtokensUpdateResource

    -- * Creating a Request
    , pushtokensUpdate'
    , PushtokensUpdate'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIP
    , puPayload
    , puKey
    , puOAuthToken
    , puFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPushtokensUpdate@ which the
-- 'PushtokensUpdate'' request conforms to.
type PushtokensUpdateResource =
     "pushtokens" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PushToken :> Put '[JSON] ()

-- | Registers a push token for the current user and application.
--
-- /See:/ 'pushtokensUpdate'' smart constructor.
data PushtokensUpdate' = PushtokensUpdate'
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIP      :: !(Maybe Text)
    , _puPayload     :: !PushToken
    , _puKey         :: !(Maybe AuthKey)
    , _puOAuthToken  :: !(Maybe OAuthToken)
    , _puFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIP'
--
-- * 'puPayload'
--
-- * 'puKey'
--
-- * 'puOAuthToken'
--
-- * 'puFields'
pushtokensUpdate'
    :: PushToken -- ^ 'payload'
    -> PushtokensUpdate'
pushtokensUpdate' pPuPayload_ =
    PushtokensUpdate'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIP = Nothing
    , _puPayload = pPuPayload_
    , _puKey = Nothing
    , _puOAuthToken = Nothing
    , _puFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PushtokensUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PushtokensUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PushtokensUpdate' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | Multipart request metadata.
puPayload :: Lens' PushtokensUpdate' PushToken
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PushtokensUpdate' (Maybe AuthKey)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PushtokensUpdate' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PushtokensUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PushtokensUpdate' where
        authKey = puKey . _Just
        authToken = puOAuthToken . _Just

instance GoogleRequest PushtokensUpdate' where
        type Rs PushtokensUpdate' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PushtokensUpdate'{..}
          = go _puQuotaUser (Just _puPrettyPrint) _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
              _puPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PushtokensUpdateResource)
                      r
                      u
