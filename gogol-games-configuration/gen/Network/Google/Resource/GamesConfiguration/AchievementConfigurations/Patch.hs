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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsPatch@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Patch
    (
    -- * REST Resource
      AchievementConfigurationsPatchResource

    -- * Creating a Request
    , achievementConfigurationsPatch'
    , AchievementConfigurationsPatch'

    -- * Request Lenses
    , acpAchievementId
    , acpPayload
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsPatch@ method which the
-- 'AchievementConfigurationsPatch'' request conforms to.
type AchievementConfigurationsPatchResource =
     "achievements" :>
       Capture "achievementId" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AchievementConfiguration :>
             Patch '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
-- This method supports patch semantics.
--
-- /See:/ 'achievementConfigurationsPatch'' smart constructor.
data AchievementConfigurationsPatch' = AchievementConfigurationsPatch'
    { _acpAchievementId :: !Text
    , _acpPayload       :: !AchievementConfiguration
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acpAchievementId'
--
-- * 'acpPayload'
achievementConfigurationsPatch'
    :: Text -- ^ 'achievementId'
    -> AchievementConfiguration -- ^ 'payload'
    -> AchievementConfigurationsPatch'
achievementConfigurationsPatch' pAcpAchievementId_ pAcpPayload_ =
    AchievementConfigurationsPatch'
    { _acpAchievementId = pAcpAchievementId_
    , _acpPayload = pAcpPayload_
    }

-- | The ID of the achievement used by this method.
acpAchievementId :: Lens' AchievementConfigurationsPatch' Text
acpAchievementId
  = lens _acpAchievementId
      (\ s a -> s{_acpAchievementId = a})

-- | Multipart request metadata.
acpPayload :: Lens' AchievementConfigurationsPatch' AchievementConfiguration
acpPayload
  = lens _acpPayload (\ s a -> s{_acpPayload = a})

instance GoogleRequest
         AchievementConfigurationsPatch' where
        type Rs AchievementConfigurationsPatch' =
             AchievementConfiguration
        requestClient AchievementConfigurationsPatch'{..}
          = go _acpAchievementId (Just AltJSON) _acpPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsPatchResource)
                      mempty
