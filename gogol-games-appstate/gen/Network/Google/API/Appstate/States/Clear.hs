{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Appstate.States.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ <https://developers.google.com/games/services/web/api/states Google App State API Reference> for @appstate.states.clear@.
module Network.Google.API.Appstate.States.Clear
    (
    -- * REST Resource
      StatesClearAPI

    -- * Creating a Request
    , statesClear'
    , StatesClear'

    -- * Request Lenses
    , scQuotaUser
    , scPrettyPrint
    , scUserIp
    , scStateKey
    , scCurrentDataVersion
    , scKey
    , scOauthToken
    , scFields
    , scAlt
    ) where

import           Network.Google.Games.AppState.Types
import           Network.Google.Prelude

-- | A resource alias for appstate.states.clear which the
-- 'StatesClear'' request conforms to.
type StatesClearAPI =
     "states" :>
       Capture "stateKey" Int32 :>
         "clear" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "currentDataVersion" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] WriteResult

-- | Clears (sets to empty) the data for the passed key if and only if the
-- passed version matches the currently stored version. This method results
-- in a conflict error on version mismatch.
--
-- /See:/ 'statesClear'' smart constructor.
data StatesClear' = StatesClear'
    { _scQuotaUser          :: !(Maybe Text)
    , _scPrettyPrint        :: !Bool
    , _scUserIp             :: !(Maybe Text)
    , _scStateKey           :: !Int32
    , _scCurrentDataVersion :: !(Maybe Text)
    , _scKey                :: !(Maybe Text)
    , _scOauthToken         :: !(Maybe Text)
    , _scFields             :: !(Maybe Text)
    , _scAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatesClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scQuotaUser'
--
-- * 'scPrettyPrint'
--
-- * 'scUserIp'
--
-- * 'scStateKey'
--
-- * 'scCurrentDataVersion'
--
-- * 'scKey'
--
-- * 'scOauthToken'
--
-- * 'scFields'
--
-- * 'scAlt'
statesClear'
    :: Int32 -- ^ 'stateKey'
    -> StatesClear'
statesClear' pScStateKey_ =
    StatesClear'
    { _scQuotaUser = Nothing
    , _scPrettyPrint = True
    , _scUserIp = Nothing
    , _scStateKey = pScStateKey_
    , _scCurrentDataVersion = Nothing
    , _scKey = Nothing
    , _scOauthToken = Nothing
    , _scFields = Nothing
    , _scAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
scQuotaUser :: Lens' StatesClear' (Maybe Text)
scQuotaUser
  = lens _scQuotaUser (\ s a -> s{_scQuotaUser = a})

-- | Returns response with indentations and line breaks.
scPrettyPrint :: Lens' StatesClear' Bool
scPrettyPrint
  = lens _scPrettyPrint
      (\ s a -> s{_scPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
scUserIp :: Lens' StatesClear' (Maybe Text)
scUserIp = lens _scUserIp (\ s a -> s{_scUserIp = a})

-- | The key for the data to be retrieved.
scStateKey :: Lens' StatesClear' Int32
scStateKey
  = lens _scStateKey (\ s a -> s{_scStateKey = a})

-- | The version of the data to be cleared. Version strings are returned by
-- the server.
scCurrentDataVersion :: Lens' StatesClear' (Maybe Text)
scCurrentDataVersion
  = lens _scCurrentDataVersion
      (\ s a -> s{_scCurrentDataVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
scKey :: Lens' StatesClear' (Maybe Text)
scKey = lens _scKey (\ s a -> s{_scKey = a})

-- | OAuth 2.0 token for the current user.
scOauthToken :: Lens' StatesClear' (Maybe Text)
scOauthToken
  = lens _scOauthToken (\ s a -> s{_scOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
scFields :: Lens' StatesClear' (Maybe Text)
scFields = lens _scFields (\ s a -> s{_scFields = a})

-- | Data format for the response.
scAlt :: Lens' StatesClear' Alt
scAlt = lens _scAlt (\ s a -> s{_scAlt = a})

instance GoogleRequest StatesClear' where
        type Rs StatesClear' = WriteResult
        request = requestWithRoute defReq gamesAppStateURL
        requestWithRoute r u StatesClear'{..}
          = go _scQuotaUser (Just _scPrettyPrint) _scUserIp
              _scStateKey
              _scCurrentDataVersion
              _scKey
              _scOauthToken
              _scFields
              (Just _scAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy StatesClearAPI) r u
