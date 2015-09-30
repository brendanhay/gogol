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
module Network.Google.Resource.Games.TurnBasedMatches.Decline
    (
    -- * REST Resource
      TurnBasedMatchesDeclineResource

    -- * Creating a Request
    , turnBasedMatchesDecline'
    , TurnBasedMatchesDecline'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tLanguage
    , tOauthToken
    , tMatchId
    , tFields
    , tAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDecline@ which the
-- 'TurnBasedMatchesDecline'' request conforms to.
type TurnBasedMatchesDeclineResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "decline" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] TurnBasedMatch

-- | Decline an invitation to play a turn-based match.
--
-- /See:/ 'turnBasedMatchesDecline'' smart constructor.
data TurnBasedMatchesDecline' = TurnBasedMatchesDecline'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tLanguage    :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tMatchId     :: !Text
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tLanguage'
--
-- * 'tOauthToken'
--
-- * 'tMatchId'
--
-- * 'tFields'
--
-- * 'tAlt'
turnBasedMatchesDecline'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDecline'
turnBasedMatchesDecline' pTMatchId_ =
    TurnBasedMatchesDecline'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tLanguage = Nothing
    , _tOauthToken = Nothing
    , _tMatchId = pTMatchId_
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TurnBasedMatchesDecline' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The preferred language to use for strings returned by this method.
tLanguage :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tLanguage
  = lens _tLanguage (\ s a -> s{_tLanguage = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | The ID of the match.
tMatchId :: Lens' TurnBasedMatchesDecline' Text
tMatchId = lens _tMatchId (\ s a -> s{_tMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TurnBasedMatchesDecline' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TurnBasedMatchesDecline' where
        type Rs TurnBasedMatchesDecline' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesDecline'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tLanguage
              _tOauthToken
              _tMatchId
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesDeclineResource)
                      r
                      u
