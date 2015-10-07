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
-- Module      : Network.Google.Resource.Games.Leaderboards.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesLeaderboardsGet@.
module Network.Google.Resource.Games.Leaderboards.Get
    (
    -- * REST Resource
      LeaderboardsGetResource

    -- * Creating a Request
    , leaderboardsGet'
    , LeaderboardsGet'

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIP
    , lgLeaderboardId
    , lgKey
    , lgLanguage
    , lgOAuthToken
    , lgFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesLeaderboardsGet@ method which the
-- 'LeaderboardsGet'' request conforms to.
type LeaderboardsGetResource =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Leaderboard

-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ 'leaderboardsGet'' smart constructor.
data LeaderboardsGet' = LeaderboardsGet'
    { _lgQuotaUser     :: !(Maybe Text)
    , _lgPrettyPrint   :: !Bool
    , _lgUserIP        :: !(Maybe Text)
    , _lgLeaderboardId :: !Text
    , _lgKey           :: !(Maybe AuthKey)
    , _lgLanguage      :: !(Maybe Text)
    , _lgOAuthToken    :: !(Maybe OAuthToken)
    , _lgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIP'
--
-- * 'lgLeaderboardId'
--
-- * 'lgKey'
--
-- * 'lgLanguage'
--
-- * 'lgOAuthToken'
--
-- * 'lgFields'
leaderboardsGet'
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardsGet'
leaderboardsGet' pLgLeaderboardId_ =
    LeaderboardsGet'
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIP = Nothing
    , _lgLeaderboardId = pLgLeaderboardId_
    , _lgKey = Nothing
    , _lgLanguage = Nothing
    , _lgOAuthToken = Nothing
    , _lgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LeaderboardsGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LeaderboardsGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIP :: Lens' LeaderboardsGet' (Maybe Text)
lgUserIP = lens _lgUserIP (\ s a -> s{_lgUserIP = a})

-- | The ID of the leaderboard.
lgLeaderboardId :: Lens' LeaderboardsGet' Text
lgLeaderboardId
  = lens _lgLeaderboardId
      (\ s a -> s{_lgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LeaderboardsGet' (Maybe AuthKey)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The preferred language to use for strings returned by this method.
lgLanguage :: Lens' LeaderboardsGet' (Maybe Text)
lgLanguage
  = lens _lgLanguage (\ s a -> s{_lgLanguage = a})

-- | OAuth 2.0 token for the current user.
lgOAuthToken :: Lens' LeaderboardsGet' (Maybe OAuthToken)
lgOAuthToken
  = lens _lgOAuthToken (\ s a -> s{_lgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LeaderboardsGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

instance GoogleAuth LeaderboardsGet' where
        _AuthKey = lgKey . _Just
        _AuthToken = lgOAuthToken . _Just

instance GoogleRequest LeaderboardsGet' where
        type Rs LeaderboardsGet' = Leaderboard
        request = requestWith gamesRequest
        requestWith rq LeaderboardsGet'{..}
          = go _lgLeaderboardId _lgLanguage _lgQuotaUser
              (Just _lgPrettyPrint)
              _lgUserIP
              _lgFields
              _lgKey
              _lgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LeaderboardsGetResource)
                      rq
