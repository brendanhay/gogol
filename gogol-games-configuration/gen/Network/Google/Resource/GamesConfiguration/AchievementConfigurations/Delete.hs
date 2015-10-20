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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.delete@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
    (
    -- * REST Resource
      AchievementConfigurationsDeleteResource

    -- * Creating a Request
    , achievementConfigurationsDelete
    , AchievementConfigurationsDelete

    -- * Request Lenses
    , acdAchievementId
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.delete@ method which the
-- 'AchievementConfigurationsDelete' request conforms to.
type AchievementConfigurationsDeleteResource =
     "achievements" :>
       Capture "achievementId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsDelete' smart constructor.
newtype AchievementConfigurationsDelete = AchievementConfigurationsDelete
    { _acdAchievementId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdAchievementId'
achievementConfigurationsDelete
    :: Text -- ^ 'acdAchievementId'
    -> AchievementConfigurationsDelete
achievementConfigurationsDelete pAcdAchievementId_ =
    AchievementConfigurationsDelete
    { _acdAchievementId = pAcdAchievementId_
    }

-- | The ID of the achievement used by this method.
acdAchievementId :: Lens' AchievementConfigurationsDelete Text
acdAchievementId
  = lens _acdAchievementId
      (\ s a -> s{_acdAchievementId = a})

instance GoogleRequest
         AchievementConfigurationsDelete where
        type Rs AchievementConfigurationsDelete = ()
        requestClient AchievementConfigurationsDelete{..}
          = go _acdAchievementId (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsDeleteResource)
                      mempty
