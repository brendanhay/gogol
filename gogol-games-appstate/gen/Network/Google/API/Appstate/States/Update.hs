{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Appstate.States.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.update@.
module Network.Google.API.Appstate.States.Update
    (
    -- * REST Resource
      StatesUpdateAPI

    -- * Creating a Request
    , statesUpdate'
    , StatesUpdate'

    -- * Request Lenses
    , suCurrentStateVersion
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suStateKey
    , suKey
    , suOauthToken
    , suFields
    , suAlt
    ) where

import           Network.Google.Games.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for appstate.states.update which the
-- 'StatesUpdate'' request conforms to.
type StatesUpdateAPI =
     "states" :>
       Capture "stateKey" Int32 :>
         QueryParam "currentStateVersion" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] WriteResult

-- | Update the data associated with the input key if and only if the passed
-- version matches the currently stored version. This method is safe in the
-- face of concurrent writes. Maximum per-key size is 128KB.
--
-- /See:/ 'statesUpdate'' smart constructor.
data StatesUpdate' = StatesUpdate'
    { _suCurrentStateVersion :: !(Maybe Text)
    , _suQuotaUser           :: !(Maybe Text)
    , _suPrettyPrint         :: !Bool
    , _suUserIp              :: !(Maybe Text)
    , _suStateKey            :: !Int32
    , _suKey                 :: !(Maybe Text)
    , _suOauthToken          :: !(Maybe Text)
    , _suFields              :: !(Maybe Text)
    , _suAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suCurrentStateVersion'
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suStateKey'
--
-- * 'suKey'
--
-- * 'suOauthToken'
--
-- * 'suFields'
--
-- * 'suAlt'
statesUpdate'
    :: Int32 -- ^ 'stateKey'
    -> StatesUpdate'
statesUpdate' pSuStateKey_ =
    StatesUpdate'
    { _suCurrentStateVersion = Nothing
    , _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suStateKey = pSuStateKey_
    , _suKey = Nothing
    , _suOauthToken = Nothing
    , _suFields = Nothing
    , _suAlt = JSON
    }

-- | The version of the app state your application is attempting to update.
-- If this does not match the current version, this method will return a
-- conflict error. If there is no data stored on the server for this key,
-- the update will succeed irrespective of the value of this parameter.
suCurrentStateVersion :: Lens' StatesUpdate' (Maybe Text)
suCurrentStateVersion
  = lens _suCurrentStateVersion
      (\ s a -> s{_suCurrentStateVersion = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' StatesUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' StatesUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIp :: Lens' StatesUpdate' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | The key for the data to be retrieved.
suStateKey :: Lens' StatesUpdate' Int32
suStateKey
  = lens _suStateKey (\ s a -> s{_suStateKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' StatesUpdate' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' StatesUpdate' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' StatesUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' StatesUpdate' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest StatesUpdate' where
        type Rs StatesUpdate' = WriteResult
        request = requestWithRoute defReq gamesAppStateURL
        requestWithRoute r u StatesUpdate'{..}
          = go _suCurrentStateVersion _suQuotaUser
              (Just _suPrettyPrint)
              _suUserIp
              _suStateKey
              _suKey
              _suOauthToken
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StatesUpdateAPI) r
                      u
