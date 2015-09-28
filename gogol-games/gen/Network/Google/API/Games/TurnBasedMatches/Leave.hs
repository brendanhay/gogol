{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.TurnBasedMatches.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.leave@.
module Network.Google.API.Games.TurnBasedMatches.Leave
    (
    -- * REST Resource
      TurnBasedMatchesLeaveAPI

    -- * Creating a Request
    , turnBasedMatchesLeave'
    , TurnBasedMatchesLeave'

    -- * Request Lenses
    , tbmlQuotaUser
    , tbmlPrettyPrint
    , tbmlUserIp
    , tbmlKey
    , tbmlLanguage
    , tbmlOauthToken
    , tbmlMatchId
    , tbmlFields
    , tbmlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.turnBasedMatches.leave which the
-- 'TurnBasedMatchesLeave'' request conforms to.
type TurnBasedMatchesLeaveAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leave" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ 'turnBasedMatchesLeave'' smart constructor.
data TurnBasedMatchesLeave' = TurnBasedMatchesLeave'
    { _tbmlQuotaUser   :: !(Maybe Text)
    , _tbmlPrettyPrint :: !Bool
    , _tbmlUserIp      :: !(Maybe Text)
    , _tbmlKey         :: !(Maybe Text)
    , _tbmlLanguage    :: !(Maybe Text)
    , _tbmlOauthToken  :: !(Maybe Text)
    , _tbmlMatchId     :: !Text
    , _tbmlFields      :: !(Maybe Text)
    , _tbmlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmlQuotaUser'
--
-- * 'tbmlPrettyPrint'
--
-- * 'tbmlUserIp'
--
-- * 'tbmlKey'
--
-- * 'tbmlLanguage'
--
-- * 'tbmlOauthToken'
--
-- * 'tbmlMatchId'
--
-- * 'tbmlFields'
--
-- * 'tbmlAlt'
turnBasedMatchesLeave'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesLeave'
turnBasedMatchesLeave' pTbmlMatchId_ =
    TurnBasedMatchesLeave'
    { _tbmlQuotaUser = Nothing
    , _tbmlPrettyPrint = True
    , _tbmlUserIp = Nothing
    , _tbmlKey = Nothing
    , _tbmlLanguage = Nothing
    , _tbmlOauthToken = Nothing
    , _tbmlMatchId = pTbmlMatchId_
    , _tbmlFields = Nothing
    , _tbmlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmlQuotaUser :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlQuotaUser
  = lens _tbmlQuotaUser
      (\ s a -> s{_tbmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmlPrettyPrint :: Lens' TurnBasedMatchesLeave' Bool
tbmlPrettyPrint
  = lens _tbmlPrettyPrint
      (\ s a -> s{_tbmlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmlUserIp :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlUserIp
  = lens _tbmlUserIp (\ s a -> s{_tbmlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmlKey :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlKey = lens _tbmlKey (\ s a -> s{_tbmlKey = a})

-- | The preferred language to use for strings returned by this method.
tbmlLanguage :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlLanguage
  = lens _tbmlLanguage (\ s a -> s{_tbmlLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmlOauthToken :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlOauthToken
  = lens _tbmlOauthToken
      (\ s a -> s{_tbmlOauthToken = a})

-- | The ID of the match.
tbmlMatchId :: Lens' TurnBasedMatchesLeave' Text
tbmlMatchId
  = lens _tbmlMatchId (\ s a -> s{_tbmlMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmlFields :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlFields
  = lens _tbmlFields (\ s a -> s{_tbmlFields = a})

-- | Data format for the response.
tbmlAlt :: Lens' TurnBasedMatchesLeave' Alt
tbmlAlt = lens _tbmlAlt (\ s a -> s{_tbmlAlt = a})

instance GoogleRequest TurnBasedMatchesLeave' where
        type Rs TurnBasedMatchesLeave' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesLeave'{..}
          = go _tbmlQuotaUser (Just _tbmlPrettyPrint)
              _tbmlUserIp
              _tbmlKey
              _tbmlLanguage
              _tbmlOauthToken
              _tbmlMatchId
              _tbmlFields
              (Just _tbmlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesLeaveAPI)
                      r
                      u
