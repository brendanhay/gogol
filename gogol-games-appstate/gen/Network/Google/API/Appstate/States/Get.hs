{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Appstate.States.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the data corresponding to the passed key. If the key does not
-- exist on the server, an HTTP 404 will be returned.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.get@.
module Network.Google.API.Appstate.States.Get
    (
    -- * REST Resource
      StatesGetAPI

    -- * Creating a Request
    , statesGet'
    , StatesGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgStateKey
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Games.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for appstate.states.get which the
-- 'StatesGet'' request conforms to.
type StatesGetAPI =
     "states" :>
       Capture "stateKey" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] GetResponse

-- | Retrieves the data corresponding to the passed key. If the key does not
-- exist on the server, an HTTP 404 will be returned.
--
-- /See:/ 'statesGet'' smart constructor.
data StatesGet' = StatesGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgStateKey    :: !Int32
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgStateKey'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
statesGet'
    :: Int32 -- ^ 'stateKey'
    -> StatesGet'
statesGet' pSgStateKey_ =
    StatesGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgStateKey = pSgStateKey_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' StatesGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' StatesGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' StatesGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | The key for the data to be retrieved.
sgStateKey :: Lens' StatesGet' Int32
sgStateKey
  = lens _sgStateKey (\ s a -> s{_sgStateKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' StatesGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' StatesGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' StatesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' StatesGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest StatesGet' where
        type Rs StatesGet' = GetResponse
        request = requestWithRoute defReq gamesAppStateURL
        requestWithRoute r u StatesGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIp
              _sgStateKey
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StatesGetAPI) r u
