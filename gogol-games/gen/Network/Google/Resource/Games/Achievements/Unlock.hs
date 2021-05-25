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
-- Module      : Network.Google.Resource.Games.Achievements.Unlock
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unlocks this achievement for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.unlock@.
module Network.Google.Resource.Games.Achievements.Unlock
    (
    -- * REST Resource
      AchievementsUnlockResource

    -- * Creating a Request
    , achievementsUnlock
    , AchievementsUnlock

    -- * Request Lenses
    , auXgafv
    , auUploadProtocol
    , auAchievementId
    , auAccessToken
    , auUploadType
    , auCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.unlock@ method which the
-- 'AchievementsUnlock' request conforms to.
type AchievementsUnlockResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "unlock" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] AchievementUnlockResponse

-- | Unlocks this achievement for the currently authenticated player.
--
-- /See:/ 'achievementsUnlock' smart constructor.
data AchievementsUnlock =
  AchievementsUnlock'
    { _auXgafv :: !(Maybe Xgafv)
    , _auUploadProtocol :: !(Maybe Text)
    , _auAchievementId :: !Text
    , _auAccessToken :: !(Maybe Text)
    , _auUploadType :: !(Maybe Text)
    , _auCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsUnlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auUploadProtocol'
--
-- * 'auAchievementId'
--
-- * 'auAccessToken'
--
-- * 'auUploadType'
--
-- * 'auCallback'
achievementsUnlock
    :: Text -- ^ 'auAchievementId'
    -> AchievementsUnlock
achievementsUnlock pAuAchievementId_ =
  AchievementsUnlock'
    { _auXgafv = Nothing
    , _auUploadProtocol = Nothing
    , _auAchievementId = pAuAchievementId_
    , _auAccessToken = Nothing
    , _auUploadType = Nothing
    , _auCallback = Nothing
    }


-- | V1 error format.
auXgafv :: Lens' AchievementsUnlock (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AchievementsUnlock (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | The ID of the achievement used by this method.
auAchievementId :: Lens' AchievementsUnlock Text
auAchievementId
  = lens _auAchievementId
      (\ s a -> s{_auAchievementId = a})

-- | OAuth access token.
auAccessToken :: Lens' AchievementsUnlock (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AchievementsUnlock (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | JSONP
auCallback :: Lens' AchievementsUnlock (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AchievementsUnlock where
        type Rs AchievementsUnlock =
             AchievementUnlockResponse
        type Scopes AchievementsUnlock =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsUnlock'{..}
          = go _auAchievementId _auXgafv _auUploadProtocol
              _auAccessToken
              _auUploadType
              _auCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsUnlockResource)
                      mempty
