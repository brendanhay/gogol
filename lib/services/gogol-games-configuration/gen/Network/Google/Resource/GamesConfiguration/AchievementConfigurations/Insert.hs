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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new achievement configuration in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.insert@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Insert
    (
    -- * REST Resource
      AchievementConfigurationsInsertResource

    -- * Creating a Request
    , achievementConfigurationsInsert
    , AchievementConfigurationsInsert

    -- * Request Lenses
    , aciXgafv
    , aciUploadProtocol
    , aciAccessToken
    , aciUploadType
    , aciPayload
    , aciApplicationId
    , aciCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.insert@ method which the
-- 'AchievementConfigurationsInsert' request conforms to.
type AchievementConfigurationsInsertResource =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "achievements" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AchievementConfiguration :>
                             Post '[JSON] AchievementConfiguration

-- | Insert a new achievement configuration in this application.
--
-- /See:/ 'achievementConfigurationsInsert' smart constructor.
data AchievementConfigurationsInsert =
  AchievementConfigurationsInsert'
    { _aciXgafv :: !(Maybe Xgafv)
    , _aciUploadProtocol :: !(Maybe Text)
    , _aciAccessToken :: !(Maybe Text)
    , _aciUploadType :: !(Maybe Text)
    , _aciPayload :: !AchievementConfiguration
    , _aciApplicationId :: !Text
    , _aciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementConfigurationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aciXgafv'
--
-- * 'aciUploadProtocol'
--
-- * 'aciAccessToken'
--
-- * 'aciUploadType'
--
-- * 'aciPayload'
--
-- * 'aciApplicationId'
--
-- * 'aciCallback'
achievementConfigurationsInsert
    :: AchievementConfiguration -- ^ 'aciPayload'
    -> Text -- ^ 'aciApplicationId'
    -> AchievementConfigurationsInsert
achievementConfigurationsInsert pAciPayload_ pAciApplicationId_ =
  AchievementConfigurationsInsert'
    { _aciXgafv = Nothing
    , _aciUploadProtocol = Nothing
    , _aciAccessToken = Nothing
    , _aciUploadType = Nothing
    , _aciPayload = pAciPayload_
    , _aciApplicationId = pAciApplicationId_
    , _aciCallback = Nothing
    }


-- | V1 error format.
aciXgafv :: Lens' AchievementConfigurationsInsert (Maybe Xgafv)
aciXgafv = lens _aciXgafv (\ s a -> s{_aciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aciUploadProtocol :: Lens' AchievementConfigurationsInsert (Maybe Text)
aciUploadProtocol
  = lens _aciUploadProtocol
      (\ s a -> s{_aciUploadProtocol = a})

-- | OAuth access token.
aciAccessToken :: Lens' AchievementConfigurationsInsert (Maybe Text)
aciAccessToken
  = lens _aciAccessToken
      (\ s a -> s{_aciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aciUploadType :: Lens' AchievementConfigurationsInsert (Maybe Text)
aciUploadType
  = lens _aciUploadType
      (\ s a -> s{_aciUploadType = a})

-- | Multipart request metadata.
aciPayload :: Lens' AchievementConfigurationsInsert AchievementConfiguration
aciPayload
  = lens _aciPayload (\ s a -> s{_aciPayload = a})

-- | The application ID from the Google Play developer console.
aciApplicationId :: Lens' AchievementConfigurationsInsert Text
aciApplicationId
  = lens _aciApplicationId
      (\ s a -> s{_aciApplicationId = a})

-- | JSONP
aciCallback :: Lens' AchievementConfigurationsInsert (Maybe Text)
aciCallback
  = lens _aciCallback (\ s a -> s{_aciCallback = a})

instance GoogleRequest
           AchievementConfigurationsInsert
         where
        type Rs AchievementConfigurationsInsert =
             AchievementConfiguration
        type Scopes AchievementConfigurationsInsert =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsInsert'{..}
          = go _aciApplicationId _aciXgafv _aciUploadProtocol
              _aciAccessToken
              _aciUploadType
              _aciCallback
              (Just AltJSON)
              _aciPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsInsertResource)
                      mempty
