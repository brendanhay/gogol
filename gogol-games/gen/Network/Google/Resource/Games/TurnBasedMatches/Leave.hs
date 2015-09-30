{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesLeave@.
module Games.TurnBasedMatches.Leave
    (
    -- * REST Resource
      TurnBasedMatchesLeaveAPI

    -- * Creating a Request
    , turnBasedMatchesLeave
    , TurnBasedMatchesLeave

    -- * Request Lenses
    , turQuotaUser
    , turPrettyPrint
    , turUserIp
    , turKey
    , turLanguage
    , turOauthToken
    , turMatchId
    , turFields
    , turAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesLeave@ which the
-- 'TurnBasedMatchesLeave' request conforms to.
type TurnBasedMatchesLeaveAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leave" :>
           QueryParam "language" Text :>
             Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ 'turnBasedMatchesLeave' smart constructor.
data TurnBasedMatchesLeave = TurnBasedMatchesLeave
    { _turQuotaUser   :: !(Maybe Text)
    , _turPrettyPrint :: !Bool
    , _turUserIp      :: !(Maybe Text)
    , _turKey         :: !(Maybe Text)
    , _turLanguage    :: !(Maybe Text)
    , _turOauthToken  :: !(Maybe Text)
    , _turMatchId     :: !Text
    , _turFields      :: !(Maybe Text)
    , _turAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turQuotaUser'
--
-- * 'turPrettyPrint'
--
-- * 'turUserIp'
--
-- * 'turKey'
--
-- * 'turLanguage'
--
-- * 'turOauthToken'
--
-- * 'turMatchId'
--
-- * 'turFields'
--
-- * 'turAlt'
turnBasedMatchesLeave
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesLeave
turnBasedMatchesLeave pTurMatchId_ =
    TurnBasedMatchesLeave
    { _turQuotaUser = Nothing
    , _turPrettyPrint = True
    , _turUserIp = Nothing
    , _turKey = Nothing
    , _turLanguage = Nothing
    , _turOauthToken = Nothing
    , _turMatchId = pTurMatchId_
    , _turFields = Nothing
    , _turAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
turQuotaUser :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turQuotaUser
  = lens _turQuotaUser (\ s a -> s{_turQuotaUser = a})

-- | Returns response with indentations and line breaks.
turPrettyPrint :: Lens' TurnBasedMatchesLeave' Bool
turPrettyPrint
  = lens _turPrettyPrint
      (\ s a -> s{_turPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
turUserIp :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turUserIp
  = lens _turUserIp (\ s a -> s{_turUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
turKey :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turKey = lens _turKey (\ s a -> s{_turKey = a})

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | OAuth 2.0 token for the current user.
turOauthToken :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turOauthToken
  = lens _turOauthToken
      (\ s a -> s{_turOauthToken = a})

-- | The ID of the match.
turMatchId :: Lens' TurnBasedMatchesLeave' Text
turMatchId
  = lens _turMatchId (\ s a -> s{_turMatchId = a})

-- | Selector specifying which fields to include in a partial response.
turFields :: Lens' TurnBasedMatchesLeave' (Maybe Text)
turFields
  = lens _turFields (\ s a -> s{_turFields = a})

-- | Data format for the response.
turAlt :: Lens' TurnBasedMatchesLeave' Text
turAlt = lens _turAlt (\ s a -> s{_turAlt = a})

instance GoogleRequest TurnBasedMatchesLeave' where
        type Rs TurnBasedMatchesLeave' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesLeave{..}
          = go _turQuotaUser _turPrettyPrint _turUserIp _turKey
              _turLanguage
              _turOauthToken
              _turMatchId
              _turFields
              _turAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesLeaveAPI)
                      r
                      u
