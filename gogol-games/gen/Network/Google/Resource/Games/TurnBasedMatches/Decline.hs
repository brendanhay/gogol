{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Decline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decline an invitation to play a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesDecline@.
module Games.TurnBasedMatches.Decline
    (
    -- * REST Resource
      TurnBasedMatchesDeclineAPI

    -- * Creating a Request
    , turnBasedMatchesDecline
    , TurnBasedMatchesDecline

    -- * Request Lenses
    , tbmdQuotaUser
    , tbmdPrettyPrint
    , tbmdUserIp
    , tbmdKey
    , tbmdLanguage
    , tbmdOauthToken
    , tbmdMatchId
    , tbmdFields
    , tbmdAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDecline@ which the
-- 'TurnBasedMatchesDecline' request conforms to.
type TurnBasedMatchesDeclineAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "decline" :>
           QueryParam "language" Text :>
             Put '[JSON] TurnBasedMatch

-- | Decline an invitation to play a turn-based match.
--
-- /See:/ 'turnBasedMatchesDecline' smart constructor.
data TurnBasedMatchesDecline = TurnBasedMatchesDecline
    { _tbmdQuotaUser   :: !(Maybe Text)
    , _tbmdPrettyPrint :: !Bool
    , _tbmdUserIp      :: !(Maybe Text)
    , _tbmdKey         :: !(Maybe Text)
    , _tbmdLanguage    :: !(Maybe Text)
    , _tbmdOauthToken  :: !(Maybe Text)
    , _tbmdMatchId     :: !Text
    , _tbmdFields      :: !(Maybe Text)
    , _tbmdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmdQuotaUser'
--
-- * 'tbmdPrettyPrint'
--
-- * 'tbmdUserIp'
--
-- * 'tbmdKey'
--
-- * 'tbmdLanguage'
--
-- * 'tbmdOauthToken'
--
-- * 'tbmdMatchId'
--
-- * 'tbmdFields'
--
-- * 'tbmdAlt'
turnBasedMatchesDecline
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDecline
turnBasedMatchesDecline pTbmdMatchId_ =
    TurnBasedMatchesDecline
    { _tbmdQuotaUser = Nothing
    , _tbmdPrettyPrint = True
    , _tbmdUserIp = Nothing
    , _tbmdKey = Nothing
    , _tbmdLanguage = Nothing
    , _tbmdOauthToken = Nothing
    , _tbmdMatchId = pTbmdMatchId_
    , _tbmdFields = Nothing
    , _tbmdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmdQuotaUser :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdQuotaUser
  = lens _tbmdQuotaUser
      (\ s a -> s{_tbmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmdPrettyPrint :: Lens' TurnBasedMatchesDecline' Bool
tbmdPrettyPrint
  = lens _tbmdPrettyPrint
      (\ s a -> s{_tbmdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmdUserIp :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdUserIp
  = lens _tbmdUserIp (\ s a -> s{_tbmdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmdKey :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdKey = lens _tbmdKey (\ s a -> s{_tbmdKey = a})

-- | The preferred language to use for strings returned by this method.
tbmdLanguage :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdLanguage
  = lens _tbmdLanguage (\ s a -> s{_tbmdLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmdOauthToken :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdOauthToken
  = lens _tbmdOauthToken
      (\ s a -> s{_tbmdOauthToken = a})

-- | The ID of the match.
tbmdMatchId :: Lens' TurnBasedMatchesDecline' Text
tbmdMatchId
  = lens _tbmdMatchId (\ s a -> s{_tbmdMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmdFields :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tbmdFields
  = lens _tbmdFields (\ s a -> s{_tbmdFields = a})

-- | Data format for the response.
tbmdAlt :: Lens' TurnBasedMatchesDecline' Text
tbmdAlt = lens _tbmdAlt (\ s a -> s{_tbmdAlt = a})

instance GoogleRequest TurnBasedMatchesDecline' where
        type Rs TurnBasedMatchesDecline' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesDecline{..}
          = go _tbmdQuotaUser _tbmdPrettyPrint _tbmdUserIp
              _tbmdKey
              _tbmdLanguage
              _tbmdOauthToken
              _tbmdMatchId
              _tbmdFields
              _tbmdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesDeclineAPI)
                      r
                      u
