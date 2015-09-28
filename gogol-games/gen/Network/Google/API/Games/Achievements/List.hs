{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Achievements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.list@.
module Network.Google.API.Games.Achievements.List
    (
    -- * REST Resource
      AchievementsListAPI

    -- * Creating a Request
    , achievementsList'
    , AchievementsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alState
    , alUserIp
    , alKey
    , alLanguage
    , alPageToken
    , alOauthToken
    , alPlayerId
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.achievements.list which the
-- 'AchievementsList'' request conforms to.
type AchievementsListAPI =
     "players" :>
       Capture "playerId" Text :>
         "achievements" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "state" AchievementsList'State :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "language" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Nat :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] PlayerAchievementListResponse

-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ 'achievementsList'' smart constructor.
data AchievementsList' = AchievementsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alState       :: !(Maybe AchievementsList'State)
    , _alUserIp      :: !(Maybe Text)
    , _alKey         :: !(Maybe Text)
    , _alLanguage    :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alPlayerId    :: !Text
    , _alMaxResults  :: !(Maybe Nat)
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alState'
--
-- * 'alUserIp'
--
-- * 'alKey'
--
-- * 'alLanguage'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alPlayerId'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
achievementsList'
    :: Text -- ^ 'playerId'
    -> AchievementsList'
achievementsList' pAlPlayerId_ =
    AchievementsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alState = Nothing
    , _alUserIp = Nothing
    , _alKey = Nothing
    , _alLanguage = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alPlayerId = pAlPlayerId_
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AchievementsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AchievementsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Tells the server to return only achievements with the specified state.
-- If this parameter isn\'t specified, all achievements are returned.
alState :: Lens' AchievementsList' (Maybe AchievementsList'State)
alState = lens _alState (\ s a -> s{_alState = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AchievementsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AchievementsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | The preferred language to use for strings returned by this method.
alLanguage :: Lens' AchievementsList' (Maybe Text)
alLanguage
  = lens _alLanguage (\ s a -> s{_alLanguage = a})

-- | The token returned by the previous request.
alPageToken :: Lens' AchievementsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AchievementsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
alPlayerId :: Lens' AchievementsList' Text
alPlayerId
  = lens _alPlayerId (\ s a -> s{_alPlayerId = a})

-- | The maximum number of achievement resources to return in the response,
-- used for paging. For any response, the actual number of achievement
-- resources returned may be less than the specified maxResults.
alMaxResults :: Lens' AchievementsList' (Maybe Natural)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AchievementsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AchievementsList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AchievementsList' where
        type Rs AchievementsList' =
             PlayerAchievementListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alState
              _alUserIp
              _alKey
              _alLanguage
              _alPageToken
              _alOauthToken
              _alPlayerId
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsListAPI)
                      r
                      u
