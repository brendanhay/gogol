{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.TurnBasedMatches.TakeTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit the results of a player turn.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.takeTurn@.
module Network.Google.API.Games.TurnBasedMatches.TakeTurn
    (
    -- * REST Resource
      TurnBasedMatchesTakeTurnAPI

    -- * Creating a Request
    , turnBasedMatchesTakeTurn'
    , TurnBasedMatchesTakeTurn'

    -- * Request Lenses
    , tbmttQuotaUser
    , tbmttPrettyPrint
    , tbmttUserIp
    , tbmttKey
    , tbmttLanguage
    , tbmttOauthToken
    , tbmttMatchId
    , tbmttFields
    , tbmttAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.turnBasedMatches.takeTurn which the
-- 'TurnBasedMatchesTakeTurn'' request conforms to.
type TurnBasedMatchesTakeTurnAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "turn" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] TurnBasedMatch

-- | Commit the results of a player turn.
--
-- /See:/ 'turnBasedMatchesTakeTurn'' smart constructor.
data TurnBasedMatchesTakeTurn' = TurnBasedMatchesTakeTurn'
    { _tbmttQuotaUser   :: !(Maybe Text)
    , _tbmttPrettyPrint :: !Bool
    , _tbmttUserIp      :: !(Maybe Text)
    , _tbmttKey         :: !(Maybe Text)
    , _tbmttLanguage    :: !(Maybe Text)
    , _tbmttOauthToken  :: !(Maybe Text)
    , _tbmttMatchId     :: !Text
    , _tbmttFields      :: !(Maybe Text)
    , _tbmttAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesTakeTurn'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmttQuotaUser'
--
-- * 'tbmttPrettyPrint'
--
-- * 'tbmttUserIp'
--
-- * 'tbmttKey'
--
-- * 'tbmttLanguage'
--
-- * 'tbmttOauthToken'
--
-- * 'tbmttMatchId'
--
-- * 'tbmttFields'
--
-- * 'tbmttAlt'
turnBasedMatchesTakeTurn'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesTakeTurn'
turnBasedMatchesTakeTurn' pTbmttMatchId_ =
    TurnBasedMatchesTakeTurn'
    { _tbmttQuotaUser = Nothing
    , _tbmttPrettyPrint = True
    , _tbmttUserIp = Nothing
    , _tbmttKey = Nothing
    , _tbmttLanguage = Nothing
    , _tbmttOauthToken = Nothing
    , _tbmttMatchId = pTbmttMatchId_
    , _tbmttFields = Nothing
    , _tbmttAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmttQuotaUser :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttQuotaUser
  = lens _tbmttQuotaUser
      (\ s a -> s{_tbmttQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmttPrettyPrint :: Lens' TurnBasedMatchesTakeTurn' Bool
tbmttPrettyPrint
  = lens _tbmttPrettyPrint
      (\ s a -> s{_tbmttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmttUserIp :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttUserIp
  = lens _tbmttUserIp (\ s a -> s{_tbmttUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmttKey :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttKey = lens _tbmttKey (\ s a -> s{_tbmttKey = a})

-- | The preferred language to use for strings returned by this method.
tbmttLanguage :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttLanguage
  = lens _tbmttLanguage
      (\ s a -> s{_tbmttLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmttOauthToken :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttOauthToken
  = lens _tbmttOauthToken
      (\ s a -> s{_tbmttOauthToken = a})

-- | The ID of the match.
tbmttMatchId :: Lens' TurnBasedMatchesTakeTurn' Text
tbmttMatchId
  = lens _tbmttMatchId (\ s a -> s{_tbmttMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmttFields :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttFields
  = lens _tbmttFields (\ s a -> s{_tbmttFields = a})

-- | Data format for the response.
tbmttAlt :: Lens' TurnBasedMatchesTakeTurn' Alt
tbmttAlt = lens _tbmttAlt (\ s a -> s{_tbmttAlt = a})

instance GoogleRequest TurnBasedMatchesTakeTurn'
         where
        type Rs TurnBasedMatchesTakeTurn' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesTakeTurn'{..}
          = go _tbmttQuotaUser (Just _tbmttPrettyPrint)
              _tbmttUserIp
              _tbmttKey
              _tbmttLanguage
              _tbmttOauthToken
              _tbmttMatchId
              _tbmttFields
              (Just _tbmttAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesTakeTurnAPI)
                      r
                      u
