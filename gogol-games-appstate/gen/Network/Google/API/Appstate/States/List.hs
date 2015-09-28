{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Appstate.States.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the states keys, and optionally the state data.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.list@.
module Network.Google.API.Appstate.States.List
    (
    -- * REST Resource
      StatesListAPI

    -- * Creating a Request
    , statesList'
    , StatesList'

    -- * Request Lenses
    , slIncludeData
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slKey
    , slOauthToken
    , slFields
    , slAlt
    ) where

import           Network.Google.Games.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for appstate.states.list which the
-- 'StatesList'' request conforms to.
type StatesListAPI =
     "states" :>
       QueryParam "includeData" Bool :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] ListResponse

-- | Lists all the states keys, and optionally the state data.
--
-- /See:/ 'statesList'' smart constructor.
data StatesList' = StatesList'
    { _slIncludeData :: !Bool
    , _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slKey         :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slIncludeData'
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slKey'
--
-- * 'slOauthToken'
--
-- * 'slFields'
--
-- * 'slAlt'
statesList'
    :: StatesList'
statesList' =
    StatesList'
    { _slIncludeData = False
    , _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slKey = Nothing
    , _slOauthToken = Nothing
    , _slFields = Nothing
    , _slAlt = JSON
    }

-- | Whether to include the full data in addition to the version number
slIncludeData :: Lens' StatesList' Bool
slIncludeData
  = lens _slIncludeData
      (\ s a -> s{_slIncludeData = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' StatesList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' StatesList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' StatesList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' StatesList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' StatesList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' StatesList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' StatesList' Alt
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest StatesList' where
        type Rs StatesList' = ListResponse
        request = requestWithRoute defReq gamesAppStateURL
        requestWithRoute r u StatesList'{..}
          = go (Just _slIncludeData) _slQuotaUser
              (Just _slPrettyPrint)
              _slUserIp
              _slKey
              _slOauthToken
              _slFields
              (Just _slAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StatesListAPI) r u
