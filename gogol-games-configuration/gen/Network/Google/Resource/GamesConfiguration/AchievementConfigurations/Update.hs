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
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.update@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Update
    (
    -- * REST Resource
      AchievementConfigurationsUpdateResource

    -- * Creating a Request
    , achievementConfigurationsUpdate
    , AchievementConfigurationsUpdate

    -- * Request Lenses
    , acuXgafv
    , acuUploadProtocol
    , acuAchievementId
    , acuAccessToken
    , acuUploadType
    , acuPayload
    , acuCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.update@ method which the
-- 'AchievementConfigurationsUpdate' request conforms to.
type AchievementConfigurationsUpdateResource =
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
                         ReqBody '[JSON] AchievementConfiguration :>
                           Put '[JSON] AchievementConfiguration

-- | Update the metadata of the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsUpdate' smart constructor.
data AchievementConfigurationsUpdate =
  AchievementConfigurationsUpdate'
    { _acuXgafv :: !(Maybe Xgafv)
    , _acuUploadProtocol :: !(Maybe Text)
    , _acuAchievementId :: !Text
    , _acuAccessToken :: !(Maybe Text)
    , _acuUploadType :: !(Maybe Text)
    , _acuPayload :: !AchievementConfiguration
    , _acuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuXgafv'
--
-- * 'acuUploadProtocol'
--
-- * 'acuAchievementId'
--
-- * 'acuAccessToken'
--
-- * 'acuUploadType'
--
-- * 'acuPayload'
--
-- * 'acuCallback'
achievementConfigurationsUpdate
    :: Text -- ^ 'acuAchievementId'
    -> AchievementConfiguration -- ^ 'acuPayload'
    -> AchievementConfigurationsUpdate
achievementConfigurationsUpdate pAcuAchievementId_ pAcuPayload_ =
  AchievementConfigurationsUpdate'
    { _acuXgafv = Nothing
    , _acuUploadProtocol = Nothing
    , _acuAchievementId = pAcuAchievementId_
    , _acuAccessToken = Nothing
    , _acuUploadType = Nothing
    , _acuPayload = pAcuPayload_
    , _acuCallback = Nothing
    }


-- | V1 error format.
acuXgafv :: Lens' AchievementConfigurationsUpdate (Maybe Xgafv)
acuXgafv = lens _acuXgafv (\ s a -> s{_acuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acuUploadProtocol :: Lens' AchievementConfigurationsUpdate (Maybe Text)
acuUploadProtocol
  = lens _acuUploadProtocol
      (\ s a -> s{_acuUploadProtocol = a})

-- | The ID of the achievement used by this method.
acuAchievementId :: Lens' AchievementConfigurationsUpdate Text
acuAchievementId
  = lens _acuAchievementId
      (\ s a -> s{_acuAchievementId = a})

-- | OAuth access token.
acuAccessToken :: Lens' AchievementConfigurationsUpdate (Maybe Text)
acuAccessToken
  = lens _acuAccessToken
      (\ s a -> s{_acuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acuUploadType :: Lens' AchievementConfigurationsUpdate (Maybe Text)
acuUploadType
  = lens _acuUploadType
      (\ s a -> s{_acuUploadType = a})

-- | Multipart request metadata.
acuPayload :: Lens' AchievementConfigurationsUpdate AchievementConfiguration
acuPayload
  = lens _acuPayload (\ s a -> s{_acuPayload = a})

-- | JSONP
acuCallback :: Lens' AchievementConfigurationsUpdate (Maybe Text)
acuCallback
  = lens _acuCallback (\ s a -> s{_acuCallback = a})

instance GoogleRequest
           AchievementConfigurationsUpdate
         where
        type Rs AchievementConfigurationsUpdate =
             AchievementConfiguration
        type Scopes AchievementConfigurationsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsUpdate'{..}
          = go _acuAchievementId _acuXgafv _acuUploadProtocol
              _acuAccessToken
              _acuUploadType
              _acuCallback
              (Just AltJSON)
              _acuPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsUpdateResource)
                      mempty
