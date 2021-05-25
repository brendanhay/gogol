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
-- Module      : Network.Google.Resource.Games.Achievements.Reveal
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the state of the achievement with the given ID to \`REVEALED\` for
-- the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.reveal@.
module Network.Google.Resource.Games.Achievements.Reveal
    (
    -- * REST Resource
      AchievementsRevealResource

    -- * Creating a Request
    , achievementsReveal
    , AchievementsReveal

    -- * Request Lenses
    , arXgafv
    , arUploadProtocol
    , arAchievementId
    , arAccessToken
    , arUploadType
    , arCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.reveal@ method which the
-- 'AchievementsReveal' request conforms to.
type AchievementsRevealResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "reveal" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] AchievementRevealResponse

-- | Sets the state of the achievement with the given ID to \`REVEALED\` for
-- the currently authenticated player.
--
-- /See:/ 'achievementsReveal' smart constructor.
data AchievementsReveal =
  AchievementsReveal'
    { _arXgafv :: !(Maybe Xgafv)
    , _arUploadProtocol :: !(Maybe Text)
    , _arAchievementId :: !Text
    , _arAccessToken :: !(Maybe Text)
    , _arUploadType :: !(Maybe Text)
    , _arCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsReveal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arXgafv'
--
-- * 'arUploadProtocol'
--
-- * 'arAchievementId'
--
-- * 'arAccessToken'
--
-- * 'arUploadType'
--
-- * 'arCallback'
achievementsReveal
    :: Text -- ^ 'arAchievementId'
    -> AchievementsReveal
achievementsReveal pArAchievementId_ =
  AchievementsReveal'
    { _arXgafv = Nothing
    , _arUploadProtocol = Nothing
    , _arAchievementId = pArAchievementId_
    , _arAccessToken = Nothing
    , _arUploadType = Nothing
    , _arCallback = Nothing
    }


-- | V1 error format.
arXgafv :: Lens' AchievementsReveal (Maybe Xgafv)
arXgafv = lens _arXgafv (\ s a -> s{_arXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arUploadProtocol :: Lens' AchievementsReveal (Maybe Text)
arUploadProtocol
  = lens _arUploadProtocol
      (\ s a -> s{_arUploadProtocol = a})

-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReveal Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

-- | OAuth access token.
arAccessToken :: Lens' AchievementsReveal (Maybe Text)
arAccessToken
  = lens _arAccessToken
      (\ s a -> s{_arAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arUploadType :: Lens' AchievementsReveal (Maybe Text)
arUploadType
  = lens _arUploadType (\ s a -> s{_arUploadType = a})

-- | JSONP
arCallback :: Lens' AchievementsReveal (Maybe Text)
arCallback
  = lens _arCallback (\ s a -> s{_arCallback = a})

instance GoogleRequest AchievementsReveal where
        type Rs AchievementsReveal =
             AchievementRevealResponse
        type Scopes AchievementsReveal =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsReveal'{..}
          = go _arAchievementId _arXgafv _arUploadProtocol
              _arAccessToken
              _arUploadType
              _arCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsRevealResource)
                      mempty
