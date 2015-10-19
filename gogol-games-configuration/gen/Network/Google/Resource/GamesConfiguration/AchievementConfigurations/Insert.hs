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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new achievement configuration in this application.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Publishing API Reference> for @GamesConfigurationAchievementConfigurationsInsert@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
    (
    -- * REST Resource
      AchievementConfigurationsInsertResource

    -- * Creating a Request
    , achievementConfigurationsInsert'
    , AchievementConfigurationsInsert'

    -- * Request Lenses
    , aciPayload
    , aciApplicationId
    ) where

import           Network.Google.GamesConfiguration.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesConfigurationAchievementConfigurationsInsert@ method which the
-- 'AchievementConfigurationsInsert'' request conforms to.
type AchievementConfigurationsInsertResource =
     "applications" :>
       Capture "applicationId" Text :>
         "achievements" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AchievementConfiguration :>
               Post '[JSON] AchievementConfiguration

-- | Insert a new achievement configuration in this application.
--
-- /See:/ 'achievementConfigurationsInsert'' smart constructor.
data AchievementConfigurationsInsert' = AchievementConfigurationsInsert'
    { _aciPayload       :: !AchievementConfiguration
    , _aciApplicationId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementConfigurationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aciPayload'
--
-- * 'aciApplicationId'
achievementConfigurationsInsert'
    :: AchievementConfiguration -- ^ 'payload'
    -> Text -- ^ 'applicationId'
    -> AchievementConfigurationsInsert'
achievementConfigurationsInsert' pAciPayload_ pAciApplicationId_ =
    AchievementConfigurationsInsert'
    { _aciPayload = pAciPayload_
    , _aciApplicationId = pAciApplicationId_
    }

-- | Multipart request metadata.
aciPayload :: Lens' AchievementConfigurationsInsert' AchievementConfiguration
aciPayload
  = lens _aciPayload (\ s a -> s{_aciPayload = a})

-- | The application ID from the Google Play developer console.
aciApplicationId :: Lens' AchievementConfigurationsInsert' Text
aciApplicationId
  = lens _aciApplicationId
      (\ s a -> s{_aciApplicationId = a})

instance GoogleRequest
         AchievementConfigurationsInsert' where
        type Rs AchievementConfigurationsInsert' =
             AchievementConfiguration
        requestClient AchievementConfigurationsInsert'{..}
          = go _aciApplicationId (Just AltJSON) _aciPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsInsertResource)
                      mempty
