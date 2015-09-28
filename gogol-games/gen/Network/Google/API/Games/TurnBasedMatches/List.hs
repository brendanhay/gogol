{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.TurnBasedMatches.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.turnBasedMatches.list@.
module Network.Google.API.Games.TurnBasedMatches.List
    (
    -- * REST Resource
      TurnBasedMatchesListAPI

    -- * Creating a Request
    , turnBasedMatchesList'
    , TurnBasedMatchesList'

    -- * Request Lenses
    , turMaxCompletedMatches
    , turQuotaUser
    , turPrettyPrint
    , turUserIp
    , turKey
    , turIncludeMatchData
    , turLanguage
    , turPageToken
    , turOauthToken
    , turMaxResults
    , turFields
    , turAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.turnBasedMatches.list which the
-- 'TurnBasedMatchesList'' request conforms to.
type TurnBasedMatchesListAPI =
     "turnbasedmatches" :>
       QueryParam "maxCompletedMatches" Int32 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "includeMatchData" Bool :>
                   QueryParam "language" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] TurnBasedMatchList

-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ 'turnBasedMatchesList'' smart constructor.
data TurnBasedMatchesList' = TurnBasedMatchesList'
    { _turMaxCompletedMatches :: !(Maybe Int32)
    , _turQuotaUser           :: !(Maybe Text)
    , _turPrettyPrint         :: !Bool
    , _turUserIp              :: !(Maybe Text)
    , _turKey                 :: !(Maybe Text)
    , _turIncludeMatchData    :: !(Maybe Bool)
    , _turLanguage            :: !(Maybe Text)
    , _turPageToken           :: !(Maybe Text)
    , _turOauthToken          :: !(Maybe Text)
    , _turMaxResults          :: !(Maybe Nat)
    , _turFields              :: !(Maybe Text)
    , _turAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turMaxCompletedMatches'
--
-- * 'turQuotaUser'
--
-- * 'turPrettyPrint'
--
-- * 'turUserIp'
--
-- * 'turKey'
--
-- * 'turIncludeMatchData'
--
-- * 'turLanguage'
--
-- * 'turPageToken'
--
-- * 'turOauthToken'
--
-- * 'turMaxResults'
--
-- * 'turFields'
--
-- * 'turAlt'
turnBasedMatchesList'
    :: TurnBasedMatchesList'
turnBasedMatchesList' =
    TurnBasedMatchesList'
    { _turMaxCompletedMatches = Nothing
    , _turQuotaUser = Nothing
    , _turPrettyPrint = True
    , _turUserIp = Nothing
    , _turKey = Nothing
    , _turIncludeMatchData = Nothing
    , _turLanguage = Nothing
    , _turPageToken = Nothing
    , _turOauthToken = Nothing
    , _turMaxResults = Nothing
    , _turFields = Nothing
    , _turAlt = JSON
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
turMaxCompletedMatches :: Lens' TurnBasedMatchesList' (Maybe Int32)
turMaxCompletedMatches
  = lens _turMaxCompletedMatches
      (\ s a -> s{_turMaxCompletedMatches = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
turQuotaUser :: Lens' TurnBasedMatchesList' (Maybe Text)
turQuotaUser
  = lens _turQuotaUser (\ s a -> s{_turQuotaUser = a})

-- | Returns response with indentations and line breaks.
turPrettyPrint :: Lens' TurnBasedMatchesList' Bool
turPrettyPrint
  = lens _turPrettyPrint
      (\ s a -> s{_turPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
turUserIp :: Lens' TurnBasedMatchesList' (Maybe Text)
turUserIp
  = lens _turUserIp (\ s a -> s{_turUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
turKey :: Lens' TurnBasedMatchesList' (Maybe Text)
turKey = lens _turKey (\ s a -> s{_turKey = a})

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
turIncludeMatchData :: Lens' TurnBasedMatchesList' (Maybe Bool)
turIncludeMatchData
  = lens _turIncludeMatchData
      (\ s a -> s{_turIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesList' (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | The token returned by the previous request.
turPageToken :: Lens' TurnBasedMatchesList' (Maybe Text)
turPageToken
  = lens _turPageToken (\ s a -> s{_turPageToken = a})

-- | OAuth 2.0 token for the current user.
turOauthToken :: Lens' TurnBasedMatchesList' (Maybe Text)
turOauthToken
  = lens _turOauthToken
      (\ s a -> s{_turOauthToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
turMaxResults :: Lens' TurnBasedMatchesList' (Maybe Natural)
turMaxResults
  = lens _turMaxResults
      (\ s a -> s{_turMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
turFields :: Lens' TurnBasedMatchesList' (Maybe Text)
turFields
  = lens _turFields (\ s a -> s{_turFields = a})

-- | Data format for the response.
turAlt :: Lens' TurnBasedMatchesList' Alt
turAlt = lens _turAlt (\ s a -> s{_turAlt = a})

instance GoogleRequest TurnBasedMatchesList' where
        type Rs TurnBasedMatchesList' = TurnBasedMatchList
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesList'{..}
          = go _turMaxCompletedMatches _turQuotaUser
              (Just _turPrettyPrint)
              _turUserIp
              _turKey
              _turIncludeMatchData
              _turLanguage
              _turPageToken
              _turOauthToken
              _turMaxResults
              _turFields
              (Just _turAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesListAPI)
                      r
                      u
