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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the achievement configuration with the given
-- ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.get@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Get
    (
    -- * REST Resource
      AchievementConfigurationsGetResource

    -- * Creating a Request
    , achievementConfigurationsGet
    , AchievementConfigurationsGet

    -- * Request Lenses
    , acgXgafv
    , acgUploadProtocol
    , acgAchievementId
    , acgAccessToken
    , acgUploadType
    , acgCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.get@ method which the
-- 'AchievementConfigurationsGet' request conforms to.
type AchievementConfigurationsGetResource =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] AchievementConfiguration

-- | Retrieves the metadata of the achievement configuration with the given
-- ID.
--
-- /See:/ 'achievementConfigurationsGet' smart constructor.
data AchievementConfigurationsGet =
  AchievementConfigurationsGet'
    { _acgXgafv :: !(Maybe Xgafv)
    , _acgUploadProtocol :: !(Maybe Text)
    , _acgAchievementId :: !Text
    , _acgAccessToken :: !(Maybe Text)
    , _acgUploadType :: !(Maybe Text)
    , _acgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgXgafv'
--
-- * 'acgUploadProtocol'
--
-- * 'acgAchievementId'
--
-- * 'acgAccessToken'
--
-- * 'acgUploadType'
--
-- * 'acgCallback'
achievementConfigurationsGet
    :: Text -- ^ 'acgAchievementId'
    -> AchievementConfigurationsGet
achievementConfigurationsGet pAcgAchievementId_ =
  AchievementConfigurationsGet'
    { _acgXgafv = Nothing
    , _acgUploadProtocol = Nothing
    , _acgAchievementId = pAcgAchievementId_
    , _acgAccessToken = Nothing
    , _acgUploadType = Nothing
    , _acgCallback = Nothing
    }


-- | V1 error format.
acgXgafv :: Lens' AchievementConfigurationsGet (Maybe Xgafv)
acgXgafv = lens _acgXgafv (\ s a -> s{_acgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acgUploadProtocol :: Lens' AchievementConfigurationsGet (Maybe Text)
acgUploadProtocol
  = lens _acgUploadProtocol
      (\ s a -> s{_acgUploadProtocol = a})

-- | The ID of the achievement used by this method.
acgAchievementId :: Lens' AchievementConfigurationsGet Text
acgAchievementId
  = lens _acgAchievementId
      (\ s a -> s{_acgAchievementId = a})

-- | OAuth access token.
acgAccessToken :: Lens' AchievementConfigurationsGet (Maybe Text)
acgAccessToken
  = lens _acgAccessToken
      (\ s a -> s{_acgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acgUploadType :: Lens' AchievementConfigurationsGet (Maybe Text)
acgUploadType
  = lens _acgUploadType
      (\ s a -> s{_acgUploadType = a})

-- | JSONP
acgCallback :: Lens' AchievementConfigurationsGet (Maybe Text)
acgCallback
  = lens _acgCallback (\ s a -> s{_acgCallback = a})

instance GoogleRequest AchievementConfigurationsGet
         where
        type Rs AchievementConfigurationsGet =
             AchievementConfiguration
        type Scopes AchievementConfigurationsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsGet'{..}
          = go _acgAchievementId _acgXgafv _acgUploadProtocol
              _acgAccessToken
              _acgUploadType
              _acgCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementConfigurationsGetResource)
                      mempty
