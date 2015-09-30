{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Games.Pushtokens.Update
    (
    -- * REST Resource
      PushtokensUpdateAPI

    -- * Creating a Request
    , pushtokensUpdate
    , PushtokensUpdate

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIp
    , puKey
    , puOauthToken
    , puFields
    , puAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPushtokensUpdate@ which the
-- 'PushtokensUpdate' request conforms to.
type PushtokensUpdateAPI =
     "pushtokens" :> Put '[JSON] ()

-- | Registers a push token for the current user and application.
--
-- /See:/ 'pushtokensUpdate' smart constructor.
data PushtokensUpdate = PushtokensUpdate
    { _puQuotaUser   :: !(Maybe Text)
    , _puPrettyPrint :: !Bool
    , _puUserIp      :: !(Maybe Text)
    , _puKey         :: !(Maybe Text)
    , _puOauthToken  :: !(Maybe Text)
    , _puFields      :: !(Maybe Text)
    , _puAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PushtokensUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIp'
--
-- * 'puKey'
--
-- * 'puOauthToken'
--
-- * 'puFields'
--
-- * 'puAlt'
pushtokensUpdate
    :: PushtokensUpdate
pushtokensUpdate =
    PushtokensUpdate
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIp = Nothing
    , _puKey = Nothing
    , _puOauthToken = Nothing
    , _puFields = Nothing
    , _puAlt = "json"
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
puUserIp :: Lens' PushtokensUpdate' (Maybe Text)
puUserIp = lens _puUserIp (\ s a -> s{_puUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PushtokensUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' PushtokensUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PushtokensUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | Data format for the response.
puAlt :: Lens' PushtokensUpdate' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest PushtokensUpdate' where
        type Rs PushtokensUpdate' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PushtokensUpdate{..}
          = go _puQuotaUser _puPrettyPrint _puUserIp _puKey
              _puOauthToken
              _puFields
              _puAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PushtokensUpdateAPI)
                      r
                      u
