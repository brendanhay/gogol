{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Games.Leaderboards.Get
    (
    -- * REST Resource
      LeaderboardsGetAPI

    -- * Creating a Request
    , leaderboardsGet
    , LeaderboardsGet

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIp
    , lgLeaderboardId
    , lgKey
    , lgLanguage
    , lgOauthToken
    , lgFields
    , lgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesLeaderboardsGet@ which the
-- 'LeaderboardsGet' request conforms to.
type LeaderboardsGetAPI =
     "leaderboards" :>
       Capture "leaderboardId" Text :>
         QueryParam "language" Text :> Get '[JSON] Leaderboard

-- | Retrieves the metadata of the leaderboard with the given ID.
--
-- /See:/ 'leaderboardsGet' smart constructor.
data LeaderboardsGet = LeaderboardsGet
    { _lgQuotaUser     :: !(Maybe Text)
    , _lgPrettyPrint   :: !Bool
    , _lgUserIp        :: !(Maybe Text)
    , _lgLeaderboardId :: !Text
    , _lgKey           :: !(Maybe Text)
    , _lgLanguage      :: !(Maybe Text)
    , _lgOauthToken    :: !(Maybe Text)
    , _lgFields        :: !(Maybe Text)
    , _lgAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LeaderboardsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIp'
--
-- * 'lgLeaderboardId'
--
-- * 'lgKey'
--
-- * 'lgLanguage'
--
-- * 'lgOauthToken'
--
-- * 'lgFields'
--
-- * 'lgAlt'
leaderboardsGet
    :: Text -- ^ 'leaderboardId'
    -> LeaderboardsGet
leaderboardsGet pLgLeaderboardId_ =
    LeaderboardsGet
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIp = Nothing
    , _lgLeaderboardId = pLgLeaderboardId_
    , _lgKey = Nothing
    , _lgLanguage = Nothing
    , _lgOauthToken = Nothing
    , _lgFields = Nothing
    , _lgAlt = "json"
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
lgUserIp :: Lens' LeaderboardsGet' (Maybe Text)
lgUserIp = lens _lgUserIp (\ s a -> s{_lgUserIp = a})

-- | The ID of the leaderboard.
lgLeaderboardId :: Lens' LeaderboardsGet' Text
lgLeaderboardId
  = lens _lgLeaderboardId
      (\ s a -> s{_lgLeaderboardId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LeaderboardsGet' (Maybe Text)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The preferred language to use for strings returned by this method.
lgLanguage :: Lens' LeaderboardsGet' (Maybe Text)
lgLanguage
  = lens _lgLanguage (\ s a -> s{_lgLanguage = a})

-- | OAuth 2.0 token for the current user.
lgOauthToken :: Lens' LeaderboardsGet' (Maybe Text)
lgOauthToken
  = lens _lgOauthToken (\ s a -> s{_lgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LeaderboardsGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | Data format for the response.
lgAlt :: Lens' LeaderboardsGet' Text
lgAlt = lens _lgAlt (\ s a -> s{_lgAlt = a})

instance GoogleRequest LeaderboardsGet' where
        type Rs LeaderboardsGet' = Leaderboard
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u LeaderboardsGet{..}
          = go _lgQuotaUser _lgPrettyPrint _lgUserIp
              _lgLeaderboardId
              _lgKey
              _lgLanguage
              _lgOauthToken
              _lgFields
              _lgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LeaderboardsGetAPI)
                      r
                      u
