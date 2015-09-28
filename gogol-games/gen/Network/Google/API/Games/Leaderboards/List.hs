{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Leaderboards.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.leaderboards.list@.
module Network.Google.API.Games.Leaderboards.List
    (
    -- * REST Resource
      LeaderboardsListAPI

    -- * Creating a Request
    , leaderboardsList'
    , LeaderboardsList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIp
    , llKey
    , llLanguage
    , llPageToken
    , llOauthToken
    , llMaxResults
    , llFields
    , llAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.leaderboards.list which the
-- 'LeaderboardsList'' request conforms to.
type LeaderboardsListAPI =
     "leaderboards" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Nat :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] LeaderboardListResponse

-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ 'leaderboardsList'' smart constructor.
data LeaderboardsList' = LeaderboardsList'
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIp      :: !(Maybe Text)
    , _llKey         :: !(Maybe Text)
    , _llLanguage    :: !(Maybe Text)
    , _llPageToken   :: !(Maybe Text)
    , _llOauthToken  :: !(Maybe Text)
    , _llMaxResults  :: !(Maybe Nat)
    , _llFields      :: !(Maybe Text)
    , _llAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIp'
--
-- * 'llKey'
--
-- * 'llLanguage'
--
-- * 'llPageToken'
--
-- * 'llOauthToken'
--
-- * 'llMaxResults'
--
-- * 'llFields'
--
-- * 'llAlt'
leaderboardsList'
    :: LeaderboardsList'
leaderboardsList' =
    LeaderboardsList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIp = Nothing
    , _llKey = Nothing
    , _llLanguage = Nothing
    , _llPageToken = Nothing
    , _llOauthToken = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
    , _llAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LeaderboardsList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LeaderboardsList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIp :: Lens' LeaderboardsList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LeaderboardsList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | The preferred language to use for strings returned by this method.
llLanguage :: Lens' LeaderboardsList' (Maybe Text)
llLanguage
  = lens _llLanguage (\ s a -> s{_llLanguage = a})

-- | The token returned by the previous request.
llPageToken :: Lens' LeaderboardsList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | OAuth 2.0 token for the current user.
llOauthToken :: Lens' LeaderboardsList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

-- | The maximum number of leaderboards to return in the response. For any
-- response, the actual number of leaderboards returned may be less than
-- the specified maxResults.
llMaxResults :: Lens' LeaderboardsList' (Maybe Natural)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LeaderboardsList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

-- | Data format for the response.
llAlt :: Lens' LeaderboardsList' Alt
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LeaderboardsList' where
        type Rs LeaderboardsList' = LeaderboardListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u LeaderboardsList'{..}
          = go _llQuotaUser (Just _llPrettyPrint) _llUserIp
              _llKey
              _llLanguage
              _llPageToken
              _llOauthToken
              _llMaxResults
              _llFields
              (Just _llAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LeaderboardsListAPI)
                      r
                      u
