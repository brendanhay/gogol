{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Join
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Join a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesJoin@.
module Games.TurnBasedMatches.Join
    (
    -- * REST Resource
      TurnBasedMatchesJoinAPI

    -- * Creating a Request
    , turnBasedMatchesJoin
    , TurnBasedMatchesJoin

    -- * Request Lenses
    , tbmjQuotaUser
    , tbmjPrettyPrint
    , tbmjUserIp
    , tbmjKey
    , tbmjLanguage
    , tbmjOauthToken
    , tbmjMatchId
    , tbmjFields
    , tbmjAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesJoin@ which the
-- 'TurnBasedMatchesJoin' request conforms to.
type TurnBasedMatchesJoinAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "join" :>
           QueryParam "language" Text :>
             Put '[JSON] TurnBasedMatch

-- | Join a turn-based match.
--
-- /See:/ 'turnBasedMatchesJoin' smart constructor.
data TurnBasedMatchesJoin = TurnBasedMatchesJoin
    { _tbmjQuotaUser   :: !(Maybe Text)
    , _tbmjPrettyPrint :: !Bool
    , _tbmjUserIp      :: !(Maybe Text)
    , _tbmjKey         :: !(Maybe Text)
    , _tbmjLanguage    :: !(Maybe Text)
    , _tbmjOauthToken  :: !(Maybe Text)
    , _tbmjMatchId     :: !Text
    , _tbmjFields      :: !(Maybe Text)
    , _tbmjAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesJoin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmjQuotaUser'
--
-- * 'tbmjPrettyPrint'
--
-- * 'tbmjUserIp'
--
-- * 'tbmjKey'
--
-- * 'tbmjLanguage'
--
-- * 'tbmjOauthToken'
--
-- * 'tbmjMatchId'
--
-- * 'tbmjFields'
--
-- * 'tbmjAlt'
turnBasedMatchesJoin
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesJoin
turnBasedMatchesJoin pTbmjMatchId_ =
    TurnBasedMatchesJoin
    { _tbmjQuotaUser = Nothing
    , _tbmjPrettyPrint = True
    , _tbmjUserIp = Nothing
    , _tbmjKey = Nothing
    , _tbmjLanguage = Nothing
    , _tbmjOauthToken = Nothing
    , _tbmjMatchId = pTbmjMatchId_
    , _tbmjFields = Nothing
    , _tbmjAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmjQuotaUser :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjQuotaUser
  = lens _tbmjQuotaUser
      (\ s a -> s{_tbmjQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmjPrettyPrint :: Lens' TurnBasedMatchesJoin' Bool
tbmjPrettyPrint
  = lens _tbmjPrettyPrint
      (\ s a -> s{_tbmjPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmjUserIp :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjUserIp
  = lens _tbmjUserIp (\ s a -> s{_tbmjUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmjKey :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjKey = lens _tbmjKey (\ s a -> s{_tbmjKey = a})

-- | The preferred language to use for strings returned by this method.
tbmjLanguage :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjLanguage
  = lens _tbmjLanguage (\ s a -> s{_tbmjLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmjOauthToken :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjOauthToken
  = lens _tbmjOauthToken
      (\ s a -> s{_tbmjOauthToken = a})

-- | The ID of the match.
tbmjMatchId :: Lens' TurnBasedMatchesJoin' Text
tbmjMatchId
  = lens _tbmjMatchId (\ s a -> s{_tbmjMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmjFields :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjFields
  = lens _tbmjFields (\ s a -> s{_tbmjFields = a})

-- | Data format for the response.
tbmjAlt :: Lens' TurnBasedMatchesJoin' Text
tbmjAlt = lens _tbmjAlt (\ s a -> s{_tbmjAlt = a})

instance GoogleRequest TurnBasedMatchesJoin' where
        type Rs TurnBasedMatchesJoin' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesJoin{..}
          = go _tbmjQuotaUser _tbmjPrettyPrint _tbmjUserIp
              _tbmjKey
              _tbmjLanguage
              _tbmjOauthToken
              _tbmjMatchId
              _tbmjFields
              _tbmjAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesJoinAPI)
                      r
                      u
