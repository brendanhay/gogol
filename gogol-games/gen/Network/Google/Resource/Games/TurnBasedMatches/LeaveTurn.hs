{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesLeaveTurn@.
module Games.TurnBasedMatches.LeaveTurn
    (
    -- * REST Resource
      TurnBasedMatchesLeaveTurnAPI

    -- * Creating a Request
    , turnBasedMatchesLeaveTurn
    , TurnBasedMatchesLeaveTurn

    -- * Request Lenses
    , tbmltQuotaUser
    , tbmltPrettyPrint
    , tbmltUserIp
    , tbmltKey
    , tbmltLanguage
    , tbmltPendingParticipantId
    , tbmltOauthToken
    , tbmltMatchId
    , tbmltMatchVersion
    , tbmltFields
    , tbmltAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesLeaveTurn@ which the
-- 'TurnBasedMatchesLeaveTurn' request conforms to.
type TurnBasedMatchesLeaveTurnAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leaveTurn" :>
           QueryParam "language" Text :>
             QueryParam "pendingParticipantId" Text :>
               QueryParam "matchVersion" Int32 :>
                 Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ 'turnBasedMatchesLeaveTurn' smart constructor.
data TurnBasedMatchesLeaveTurn = TurnBasedMatchesLeaveTurn
    { _tbmltQuotaUser            :: !(Maybe Text)
    , _tbmltPrettyPrint          :: !Bool
    , _tbmltUserIp               :: !(Maybe Text)
    , _tbmltKey                  :: !(Maybe Text)
    , _tbmltLanguage             :: !(Maybe Text)
    , _tbmltPendingParticipantId :: !(Maybe Text)
    , _tbmltOauthToken           :: !(Maybe Text)
    , _tbmltMatchId              :: !Text
    , _tbmltMatchVersion         :: !Int32
    , _tbmltFields               :: !(Maybe Text)
    , _tbmltAlt                  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeaveTurn'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmltQuotaUser'
--
-- * 'tbmltPrettyPrint'
--
-- * 'tbmltUserIp'
--
-- * 'tbmltKey'
--
-- * 'tbmltLanguage'
--
-- * 'tbmltPendingParticipantId'
--
-- * 'tbmltOauthToken'
--
-- * 'tbmltMatchId'
--
-- * 'tbmltMatchVersion'
--
-- * 'tbmltFields'
--
-- * 'tbmltAlt'
turnBasedMatchesLeaveTurn
    :: Text -- ^ 'matchId'
    -> Int32 -- ^ 'matchVersion'
    -> TurnBasedMatchesLeaveTurn
turnBasedMatchesLeaveTurn pTbmltMatchId_ pTbmltMatchVersion_ =
    TurnBasedMatchesLeaveTurn
    { _tbmltQuotaUser = Nothing
    , _tbmltPrettyPrint = True
    , _tbmltUserIp = Nothing
    , _tbmltKey = Nothing
    , _tbmltLanguage = Nothing
    , _tbmltPendingParticipantId = Nothing
    , _tbmltOauthToken = Nothing
    , _tbmltMatchId = pTbmltMatchId_
    , _tbmltMatchVersion = pTbmltMatchVersion_
    , _tbmltFields = Nothing
    , _tbmltAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmltQuotaUser :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltQuotaUser
  = lens _tbmltQuotaUser
      (\ s a -> s{_tbmltQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmltPrettyPrint :: Lens' TurnBasedMatchesLeaveTurn' Bool
tbmltPrettyPrint
  = lens _tbmltPrettyPrint
      (\ s a -> s{_tbmltPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmltUserIp :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltUserIp
  = lens _tbmltUserIp (\ s a -> s{_tbmltUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmltKey :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltKey = lens _tbmltKey (\ s a -> s{_tbmltKey = a})

-- | The preferred language to use for strings returned by this method.
tbmltLanguage :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltLanguage
  = lens _tbmltLanguage
      (\ s a -> s{_tbmltLanguage = a})

-- | The ID of another participant who should take their turn next. If not
-- set, the match will wait for other player(s) to join via automatching;
-- this is only valid if automatch criteria is set on the match with
-- remaining slots for automatched players.
tbmltPendingParticipantId :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltPendingParticipantId
  = lens _tbmltPendingParticipantId
      (\ s a -> s{_tbmltPendingParticipantId = a})

-- | OAuth 2.0 token for the current user.
tbmltOauthToken :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltOauthToken
  = lens _tbmltOauthToken
      (\ s a -> s{_tbmltOauthToken = a})

-- | The ID of the match.
tbmltMatchId :: Lens' TurnBasedMatchesLeaveTurn' Text
tbmltMatchId
  = lens _tbmltMatchId (\ s a -> s{_tbmltMatchId = a})

-- | The version of the match being updated.
tbmltMatchVersion :: Lens' TurnBasedMatchesLeaveTurn' Int32
tbmltMatchVersion
  = lens _tbmltMatchVersion
      (\ s a -> s{_tbmltMatchVersion = a})

-- | Selector specifying which fields to include in a partial response.
tbmltFields :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltFields
  = lens _tbmltFields (\ s a -> s{_tbmltFields = a})

-- | Data format for the response.
tbmltAlt :: Lens' TurnBasedMatchesLeaveTurn' Text
tbmltAlt = lens _tbmltAlt (\ s a -> s{_tbmltAlt = a})

instance GoogleRequest TurnBasedMatchesLeaveTurn'
         where
        type Rs TurnBasedMatchesLeaveTurn' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesLeaveTurn{..}
          = go _tbmltQuotaUser _tbmltPrettyPrint _tbmltUserIp
              _tbmltKey
              _tbmltLanguage
              _tbmltPendingParticipantId
              _tbmltOauthToken
              _tbmltMatchId
              (Just _tbmltMatchVersion)
              _tbmltFields
              _tbmltAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesLeaveTurnAPI)
                      r
                      u
