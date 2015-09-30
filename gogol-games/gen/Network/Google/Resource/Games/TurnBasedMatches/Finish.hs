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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Finish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesFinish@.
module Network.Google.Resource.Games.TurnBasedMatches.Finish
    (
    -- * REST Resource
      TurnBasedMatchesFinishResource

    -- * Creating a Request
    , turnBasedMatchesFinish'
    , TurnBasedMatchesFinish'

    -- * Request Lenses
    , tbmfQuotaUser
    , tbmfPrettyPrint
    , tbmfUserIp
    , tbmfKey
    , tbmfLanguage
    , tbmfOauthToken
    , tbmfMatchId
    , tbmfFields
    , tbmfAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesFinish@ which the
-- 'TurnBasedMatchesFinish'' request conforms to.
type TurnBasedMatchesFinishResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "finish" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] TurnBasedMatch

-- | Finish a turn-based match. Each player should make this call once, after
-- all results are in. Only the player whose turn it is may make the first
-- call to Finish, and can pass in the final match state.
--
-- /See:/ 'turnBasedMatchesFinish'' smart constructor.
data TurnBasedMatchesFinish' = TurnBasedMatchesFinish'
    { _tbmfQuotaUser   :: !(Maybe Text)
    , _tbmfPrettyPrint :: !Bool
    , _tbmfUserIp      :: !(Maybe Text)
    , _tbmfKey         :: !(Maybe Text)
    , _tbmfLanguage    :: !(Maybe Text)
    , _tbmfOauthToken  :: !(Maybe Text)
    , _tbmfMatchId     :: !Text
    , _tbmfFields      :: !(Maybe Text)
    , _tbmfAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesFinish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmfQuotaUser'
--
-- * 'tbmfPrettyPrint'
--
-- * 'tbmfUserIp'
--
-- * 'tbmfKey'
--
-- * 'tbmfLanguage'
--
-- * 'tbmfOauthToken'
--
-- * 'tbmfMatchId'
--
-- * 'tbmfFields'
--
-- * 'tbmfAlt'
turnBasedMatchesFinish'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesFinish'
turnBasedMatchesFinish' pTbmfMatchId_ =
    TurnBasedMatchesFinish'
    { _tbmfQuotaUser = Nothing
    , _tbmfPrettyPrint = True
    , _tbmfUserIp = Nothing
    , _tbmfKey = Nothing
    , _tbmfLanguage = Nothing
    , _tbmfOauthToken = Nothing
    , _tbmfMatchId = pTbmfMatchId_
    , _tbmfFields = Nothing
    , _tbmfAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmfQuotaUser :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfQuotaUser
  = lens _tbmfQuotaUser
      (\ s a -> s{_tbmfQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmfPrettyPrint :: Lens' TurnBasedMatchesFinish' Bool
tbmfPrettyPrint
  = lens _tbmfPrettyPrint
      (\ s a -> s{_tbmfPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmfUserIp :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfUserIp
  = lens _tbmfUserIp (\ s a -> s{_tbmfUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmfKey :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfKey = lens _tbmfKey (\ s a -> s{_tbmfKey = a})

-- | The preferred language to use for strings returned by this method.
tbmfLanguage :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfLanguage
  = lens _tbmfLanguage (\ s a -> s{_tbmfLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmfOauthToken :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfOauthToken
  = lens _tbmfOauthToken
      (\ s a -> s{_tbmfOauthToken = a})

-- | The ID of the match.
tbmfMatchId :: Lens' TurnBasedMatchesFinish' Text
tbmfMatchId
  = lens _tbmfMatchId (\ s a -> s{_tbmfMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmfFields :: Lens' TurnBasedMatchesFinish' (Maybe Text)
tbmfFields
  = lens _tbmfFields (\ s a -> s{_tbmfFields = a})

-- | Data format for the response.
tbmfAlt :: Lens' TurnBasedMatchesFinish' Alt
tbmfAlt = lens _tbmfAlt (\ s a -> s{_tbmfAlt = a})

instance GoogleRequest TurnBasedMatchesFinish' where
        type Rs TurnBasedMatchesFinish' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesFinish'{..}
          = go _tbmfQuotaUser (Just _tbmfPrettyPrint)
              _tbmfUserIp
              _tbmfKey
              _tbmfLanguage
              _tbmfOauthToken
              _tbmfMatchId
              _tbmfFields
              (Just _tbmfAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesFinishResource)
                      r
                      u
