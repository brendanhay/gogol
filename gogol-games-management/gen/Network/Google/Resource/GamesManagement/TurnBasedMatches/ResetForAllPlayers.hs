{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementTurnBasedMatchesResetForAllPlayers@.
module GamesManagement.TurnBasedMatches.ResetForAllPlayers
    (
    -- * REST Resource
      TurnBasedMatchesResetForAllPlayersAPI

    -- * Creating a Request
    , turnBasedMatchesResetForAllPlayers
    , TurnBasedMatchesResetForAllPlayers

    -- * Request Lenses
    , tbmrfapQuotaUser
    , tbmrfapPrettyPrint
    , tbmrfapUserIp
    , tbmrfapKey
    , tbmrfapOauthToken
    , tbmrfapFields
    , tbmrfapAlt
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementTurnBasedMatchesResetForAllPlayers@ which the
-- 'TurnBasedMatchesResetForAllPlayers' request conforms to.
type TurnBasedMatchesResetForAllPlayersAPI =
     "turnbasedmatches" :>
       "resetForAllPlayers" :> Post '[JSON] ()

-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'turnBasedMatchesResetForAllPlayers' smart constructor.
data TurnBasedMatchesResetForAllPlayers = TurnBasedMatchesResetForAllPlayers
    { _tbmrfapQuotaUser   :: !(Maybe Text)
    , _tbmrfapPrettyPrint :: !Bool
    , _tbmrfapUserIp      :: !(Maybe Text)
    , _tbmrfapKey         :: !(Maybe Text)
    , _tbmrfapOauthToken  :: !(Maybe Text)
    , _tbmrfapFields      :: !(Maybe Text)
    , _tbmrfapAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrfapQuotaUser'
--
-- * 'tbmrfapPrettyPrint'
--
-- * 'tbmrfapUserIp'
--
-- * 'tbmrfapKey'
--
-- * 'tbmrfapOauthToken'
--
-- * 'tbmrfapFields'
--
-- * 'tbmrfapAlt'
turnBasedMatchesResetForAllPlayers
    :: TurnBasedMatchesResetForAllPlayers
turnBasedMatchesResetForAllPlayers =
    TurnBasedMatchesResetForAllPlayers
    { _tbmrfapQuotaUser = Nothing
    , _tbmrfapPrettyPrint = True
    , _tbmrfapUserIp = Nothing
    , _tbmrfapKey = Nothing
    , _tbmrfapOauthToken = Nothing
    , _tbmrfapFields = Nothing
    , _tbmrfapAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmrfapQuotaUser :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapQuotaUser
  = lens _tbmrfapQuotaUser
      (\ s a -> s{_tbmrfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmrfapPrettyPrint :: Lens' TurnBasedMatchesResetForAllPlayers' Bool
tbmrfapPrettyPrint
  = lens _tbmrfapPrettyPrint
      (\ s a -> s{_tbmrfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmrfapUserIp :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapUserIp
  = lens _tbmrfapUserIp
      (\ s a -> s{_tbmrfapUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmrfapKey :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapKey
  = lens _tbmrfapKey (\ s a -> s{_tbmrfapKey = a})

-- | OAuth 2.0 token for the current user.
tbmrfapOauthToken :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapOauthToken
  = lens _tbmrfapOauthToken
      (\ s a -> s{_tbmrfapOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tbmrfapFields :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapFields
  = lens _tbmrfapFields
      (\ s a -> s{_tbmrfapFields = a})

-- | Data format for the response.
tbmrfapAlt :: Lens' TurnBasedMatchesResetForAllPlayers' Text
tbmrfapAlt
  = lens _tbmrfapAlt (\ s a -> s{_tbmrfapAlt = a})

instance GoogleRequest
         TurnBasedMatchesResetForAllPlayers' where
        type Rs TurnBasedMatchesResetForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          TurnBasedMatchesResetForAllPlayers{..}
          = go _tbmrfapQuotaUser _tbmrfapPrettyPrint
              _tbmrfapUserIp
              _tbmrfapKey
              _tbmrfapOauthToken
              _tbmrfapFields
              _tbmrfapAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy TurnBasedMatchesResetForAllPlayersAPI)
                      r
                      u
