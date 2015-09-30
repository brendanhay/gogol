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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresResetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      ScoresResetMultipleForAllPlayersResource

    -- * Creating a Request
    , scoresResetMultipleForAllPlayers'
    , ScoresResetMultipleForAllPlayers'

    -- * Request Lenses
    , srmfapQuotaUser
    , srmfapPrettyPrint
    , srmfapUserIp
    , srmfapKey
    , srmfapOauthToken
    , srmfapFields
    , srmfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetMultipleForAllPlayers@ which the
-- 'ScoresResetMultipleForAllPlayers'' request conforms to.
type ScoresResetMultipleForAllPlayersResource =
     "scores" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] ()

-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ 'scoresResetMultipleForAllPlayers'' smart constructor.
data ScoresResetMultipleForAllPlayers' = ScoresResetMultipleForAllPlayers'
    { _srmfapQuotaUser   :: !(Maybe Text)
    , _srmfapPrettyPrint :: !Bool
    , _srmfapUserIp      :: !(Maybe Text)
    , _srmfapKey         :: !(Maybe Text)
    , _srmfapOauthToken  :: !(Maybe Text)
    , _srmfapFields      :: !(Maybe Text)
    , _srmfapAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srmfapQuotaUser'
--
-- * 'srmfapPrettyPrint'
--
-- * 'srmfapUserIp'
--
-- * 'srmfapKey'
--
-- * 'srmfapOauthToken'
--
-- * 'srmfapFields'
--
-- * 'srmfapAlt'
scoresResetMultipleForAllPlayers'
    :: ScoresResetMultipleForAllPlayers'
scoresResetMultipleForAllPlayers' =
    ScoresResetMultipleForAllPlayers'
    { _srmfapQuotaUser = Nothing
    , _srmfapPrettyPrint = True
    , _srmfapUserIp = Nothing
    , _srmfapKey = Nothing
    , _srmfapOauthToken = Nothing
    , _srmfapFields = Nothing
    , _srmfapAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
srmfapQuotaUser :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapQuotaUser
  = lens _srmfapQuotaUser
      (\ s a -> s{_srmfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
srmfapPrettyPrint :: Lens' ScoresResetMultipleForAllPlayers' Bool
srmfapPrettyPrint
  = lens _srmfapPrettyPrint
      (\ s a -> s{_srmfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
srmfapUserIp :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapUserIp
  = lens _srmfapUserIp (\ s a -> s{_srmfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srmfapKey :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapKey
  = lens _srmfapKey (\ s a -> s{_srmfapKey = a})

-- | OAuth 2.0 token for the current user.
srmfapOauthToken :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapOauthToken
  = lens _srmfapOauthToken
      (\ s a -> s{_srmfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
srmfapFields :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapFields
  = lens _srmfapFields (\ s a -> s{_srmfapFields = a})

-- | Data format for the response.
srmfapAlt :: Lens' ScoresResetMultipleForAllPlayers' Alt
srmfapAlt
  = lens _srmfapAlt (\ s a -> s{_srmfapAlt = a})

instance GoogleRequest
         ScoresResetMultipleForAllPlayers' where
        type Rs ScoresResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          ScoresResetMultipleForAllPlayers'{..}
          = go _srmfapQuotaUser (Just _srmfapPrettyPrint)
              _srmfapUserIp
              _srmfapKey
              _srmfapOauthToken
              _srmfapFields
              (Just _srmfapAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ScoresResetMultipleForAllPlayersResource)
                      r
                      u
