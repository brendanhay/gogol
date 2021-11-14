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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the achievement configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.delete@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.Delete
    (
    -- * REST Resource
      AchievementConfigurationsDeleteResource

    -- * Creating a Request
    , achievementConfigurationsDelete
    , AchievementConfigurationsDelete

    -- * Request Lenses
    , acdXgafv
    , acdUploadProtocol
    , acdAchievementId
    , acdAccessToken
    , acdUploadType
    , acdCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.delete@ method which the
-- 'AchievementConfigurationsDelete' request conforms to.
type AchievementConfigurationsDeleteResource =
     "games" :>
       "v1configuration" :>
         "achievements" :>
           Capture "achievementId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete the achievement configuration with the given ID.
--
-- /See:/ 'achievementConfigurationsDelete' smart constructor.
data AchievementConfigurationsDelete =
  AchievementConfigurationsDelete'
    { _acdXgafv :: !(Maybe Xgafv)
    , _acdUploadProtocol :: !(Maybe Text)
    , _acdAchievementId :: !Text
    , _acdAccessToken :: !(Maybe Text)
    , _acdUploadType :: !(Maybe Text)
    , _acdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementConfigurationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdXgafv'
--
-- * 'acdUploadProtocol'
--
-- * 'acdAchievementId'
--
-- * 'acdAccessToken'
--
-- * 'acdUploadType'
--
-- * 'acdCallback'
achievementConfigurationsDelete
    :: Text -- ^ 'acdAchievementId'
    -> AchievementConfigurationsDelete
achievementConfigurationsDelete pAcdAchievementId_ =
  AchievementConfigurationsDelete'
    { _acdXgafv = Nothing
    , _acdUploadProtocol = Nothing
    , _acdAchievementId = pAcdAchievementId_
    , _acdAccessToken = Nothing
    , _acdUploadType = Nothing
    , _acdCallback = Nothing
    }


-- | V1 error format.
acdXgafv :: Lens' AchievementConfigurationsDelete (Maybe Xgafv)
acdXgafv = lens _acdXgafv (\ s a -> s{_acdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acdUploadProtocol :: Lens' AchievementConfigurationsDelete (Maybe Text)
acdUploadProtocol
  = lens _acdUploadProtocol
      (\ s a -> s{_acdUploadProtocol = a})

-- | The ID of the achievement used by this method.
acdAchievementId :: Lens' AchievementConfigurationsDelete Text
acdAchievementId
  = lens _acdAchievementId
      (\ s a -> s{_acdAchievementId = a})

-- | OAuth access token.
acdAccessToken :: Lens' AchievementConfigurationsDelete (Maybe Text)
acdAccessToken
  = lens _acdAccessToken
      (\ s a -> s{_acdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acdUploadType :: Lens' AchievementConfigurationsDelete (Maybe Text)
acdUploadType
  = lens _acdUploadType
      (\ s a -> s{_acdUploadType = a})

-- | JSONP
acdCallback :: Lens' AchievementConfigurationsDelete (Maybe Text)
acdCallback
  = lens _acdCallback (\ s a -> s{_acdCallback = a})

instance GoogleRequest
           AchievementConfigurationsDelete
         where
        type Rs AchievementConfigurationsDelete = ()
        type Scopes AchievementConfigurationsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsDelete'{..}
          = go _acdAchievementId _acdXgafv _acdUploadProtocol
              _acdAccessToken
              _acdUploadType
              _acdCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsDeleteResource)
                      mempty
