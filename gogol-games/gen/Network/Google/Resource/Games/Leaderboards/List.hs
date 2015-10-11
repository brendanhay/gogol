{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Leaderboards.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesLeaderboardsList@.
module Network.Google.Resource.Games.Leaderboards.List
    (
    -- * REST Resource
      LeaderboardsListResource

    -- * Creating a Request
    , leaderboardsList'
    , LeaderboardsList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIP
    , llKey
    , llLanguage
    , llPageToken
    , llOAuthToken
    , llMaxResults
    , llFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesLeaderboardsList@ method which the
-- 'LeaderboardsList'' request conforms to.
type LeaderboardsListResource =
     "leaderboards" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LeaderboardListResponse

-- | Lists all the leaderboard metadata for your application.
--
-- /See:/ 'leaderboardsList'' smart constructor.
data LeaderboardsList' = LeaderboardsList'
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIP      :: !(Maybe Text)
    , _llKey         :: !(Maybe AuthKey)
    , _llLanguage    :: !(Maybe Text)
    , _llPageToken   :: !(Maybe Text)
    , _llOAuthToken  :: !(Maybe OAuthToken)
    , _llMaxResults  :: !(Maybe Int32)
    , _llFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIP'
--
-- * 'llKey'
--
-- * 'llLanguage'
--
-- * 'llPageToken'
--
-- * 'llOAuthToken'
--
-- * 'llMaxResults'
--
-- * 'llFields'
leaderboardsList'
    :: LeaderboardsList'
leaderboardsList' =
    LeaderboardsList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIP = Nothing
    , _llKey = Nothing
    , _llLanguage = Nothing
    , _llPageToken = Nothing
    , _llOAuthToken = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
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
llUserIP :: Lens' LeaderboardsList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LeaderboardsList' (Maybe AuthKey)
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
llOAuthToken :: Lens' LeaderboardsList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | The maximum number of leaderboards to return in the response. For any
-- response, the actual number of leaderboards returned may be less than
-- the specified maxResults.
llMaxResults :: Lens' LeaderboardsList' (Maybe Int32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LeaderboardsList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LeaderboardsList' where
        _AuthKey = llKey . _Just
        _AuthToken = llOAuthToken . _Just

instance GoogleRequest LeaderboardsList' where
        type Rs LeaderboardsList' = LeaderboardListResponse
        request = requestWith gamesRequest
        requestWith rq LeaderboardsList'{..}
          = go _llLanguage _llPageToken _llMaxResults
              _llQuotaUser
              (Just _llPrettyPrint)
              _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LeaderboardsListResource)
                      rq
