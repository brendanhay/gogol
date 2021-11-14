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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.list@.
module Network.Google.Resource.Games.Achievements.List
    (
    -- * REST Resource
      AchievementsListResource

    -- * Creating a Request
    , achievementsList
    , AchievementsList

    -- * Request Lenses
    , alXgafv
    , alState
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alLanguage
    , alPageToken
    , alPlayerId
    , alMaxResults
    , alCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.list@ method which the
-- 'AchievementsList' request conforms to.
type AchievementsListResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "achievements" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "state" AchievementsListState :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "language" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] PlayerAchievementListResponse

-- | Lists the progress for all your application\'s achievements for the
-- currently authenticated player.
--
-- /See:/ 'achievementsList' smart constructor.
data AchievementsList =
  AchievementsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alState :: !(Maybe AchievementsListState)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alLanguage :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alPlayerId :: !Text
    , _alMaxResults :: !(Maybe (Textual Int32))
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alState'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alLanguage'
--
-- * 'alPageToken'
--
-- * 'alPlayerId'
--
-- * 'alMaxResults'
--
-- * 'alCallback'
achievementsList
    :: Text -- ^ 'alPlayerId'
    -> AchievementsList
achievementsList pAlPlayerId_ =
  AchievementsList'
    { _alXgafv = Nothing
    , _alState = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alLanguage = Nothing
    , _alPageToken = Nothing
    , _alPlayerId = pAlPlayerId_
    , _alMaxResults = Nothing
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AchievementsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Tells the server to return only achievements with the specified state.
-- If this parameter isn\'t specified, all achievements are returned.
alState :: Lens' AchievementsList (Maybe AchievementsListState)
alState = lens _alState (\ s a -> s{_alState = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AchievementsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AchievementsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AchievementsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | The preferred language to use for strings returned by this method.
alLanguage :: Lens' AchievementsList (Maybe Text)
alLanguage
  = lens _alLanguage (\ s a -> s{_alLanguage = a})

-- | The token returned by the previous request.
alPageToken :: Lens' AchievementsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | A player ID. A value of \`me\` may be used in place of the authenticated
-- player\'s ID.
alPlayerId :: Lens' AchievementsList Text
alPlayerId
  = lens _alPlayerId (\ s a -> s{_alPlayerId = a})

-- | The maximum number of achievement resources to return in the response,
-- used for paging. For any response, the actual number of achievement
-- resources returned may be less than the specified \`maxResults\`.
alMaxResults :: Lens' AchievementsList (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Coerce

-- | JSONP
alCallback :: Lens' AchievementsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AchievementsList where
        type Rs AchievementsList =
             PlayerAchievementListResponse
        type Scopes AchievementsList =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsList'{..}
          = go _alPlayerId _alXgafv _alState _alUploadProtocol
              _alAccessToken
              _alUploadType
              _alLanguage
              _alPageToken
              _alMaxResults
              _alCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsListResource)
                      mempty
