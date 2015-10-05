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
-- Module      : Network.Google.Resource.Games.Achievements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesAchievementsList@.
module Network.Google.Resource.Games.Achievements.List
    (
    -- * REST Resource
      AchievementsListResource

    -- * Creating a Request
    , achievementsList'
    , AchievementsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alState
    , alUserIP
    , alKey
    , alLanguage
    , alPageToken
    , alOAuthToken
    , alPlayerId
    , alMaxResults
    , alFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesAchievementsList@ which the
-- 'AchievementsList'' request conforms to.
type AchievementsListResource =
     "players" :>
       Capture "playerId" Text :>
         "achievements" :>
           QueryParam "state" AchievementsListState :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] PlayerAchievementListResponse

-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ 'achievementsList'' smart constructor.
data AchievementsList' = AchievementsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alState       :: !(Maybe AchievementsListState)
    , _alUserIP      :: !(Maybe Text)
    , _alKey         :: !(Maybe Key)
    , _alLanguage    :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOAuthToken  :: !(Maybe OAuthToken)
    , _alPlayerId    :: !Text
    , _alMaxResults  :: !(Maybe Int32)
    , _alFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'alUserIP'
--
-- * 'alKey'
--
-- * 'alLanguage'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alPlayerId'
--
-- * 'alMaxResults'
--
-- * 'alFields'
achievementsList'
    :: Text -- ^ 'playerId'
    -> AchievementsList'
achievementsList' pAlPlayerId_ =
    AchievementsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alState = Nothing
    , _alUserIP = Nothing
    , _alKey = Nothing
    , _alLanguage = Nothing
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alPlayerId = pAlPlayerId_
    , _alMaxResults = Nothing
    , _alFields = Nothing
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
alState :: Lens' AchievementsList' (Maybe AchievementsListState)
alState = lens _alState (\ s a -> s{_alState = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' AchievementsList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AchievementsList' (Maybe Key)
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
alOAuthToken :: Lens' AchievementsList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
alPlayerId :: Lens' AchievementsList' Text
alPlayerId
  = lens _alPlayerId (\ s a -> s{_alPlayerId = a})

-- | The maximum number of achievement resources to return in the response,
-- used for paging. For any response, the actual number of achievement
-- resources returned may be less than the specified maxResults.
alMaxResults :: Lens' AchievementsList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AchievementsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth AchievementsList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest AchievementsList' where
        type Rs AchievementsList' =
             PlayerAchievementListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u AchievementsList'{..}
          = go _alPlayerId _alState _alLanguage _alPageToken
              _alMaxResults
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AchievementsListResource)
                      r
                      u
