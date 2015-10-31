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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.update@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
    (
    -- * REST Resource
      AchievementConfigurationsUpdateResource

    -- * Creating a Request
    , achievementConfigurationsUpdate
    , AchievementConfigurationsUpdate

    -- * Request Lenses
    , acuAchievementId
    , acuPayload
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.update@ method which the
-- 'AchievementConfigurationsUpdate' request conforms to.
type AchievementConfigurationsUpdateResource =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AchievementConfiguration :>
                 Put '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsUpdate' smart constructor.
data AchievementConfigurationsUpdate = AchievementConfigurationsUpdate
    { _acuAchievementId :: !Text
    , _acuPayload       :: !AchievementConfiguration
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuAchievementId'
--
-- * 'acuPayload'
achievementConfigurationsUpdate
    :: Text -- ^ 'acuAchievementId'
    -> AchievementConfiguration -- ^ 'acuPayload'
    -> AchievementConfigurationsUpdate
achievementConfigurationsUpdate pAcuAchievementId_ pAcuPayload_ =
    AchievementConfigurationsUpdate
    { _acuAchievementId = pAcuAchievementId_
    , _acuPayload = pAcuPayload_
    }

-- | The ID of the achievement used by this method.
acuAchievementId :: Lens' AchievementConfigurationsUpdate Text
acuAchievementId
  = lens _acuAchievementId
      (\ s a -> s{_acuAchievementId = a})

-- | Multipart request metadata.
acuPayload :: Lens' AchievementConfigurationsUpdate AchievementConfiguration
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

instance GoogleRequest
         AchievementConfigurationsUpdate where
        type Rs AchievementConfigurationsUpdate =
             AchievementConfiguration
        type Scopes AchievementConfigurationsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsUpdate{..}
          = go _acuAchievementId (Just AltJSON) _acuPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsUpdateResource)
                      mempty
