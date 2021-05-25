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
-- Module      : Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the achievement configurations in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.achievementConfigurations.list@.
module Network.Google.Resource.GamesConfiguration.AchievementConfigurations.List
    (
    -- * REST Resource
      AchievementConfigurationsListResource

    -- * Creating a Request
    , achievementConfigurationsList
    , AchievementConfigurationsList

    -- * Request Lenses
    , aclXgafv
    , aclUploadProtocol
    , aclAccessToken
    , aclUploadType
    , aclApplicationId
    , aclPageToken
    , aclMaxResults
    , aclCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.achievementConfigurations.list@ method which the
-- 'AchievementConfigurationsList' request conforms to.
type AchievementConfigurationsListResource =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "achievements" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] AchievementConfigurationListResponse

-- | Returns a list of the achievement configurations in this application.
--
-- /See:/ 'achievementConfigurationsList' smart constructor.
data AchievementConfigurationsList =
  AchievementConfigurationsList'
    { _aclXgafv :: !(Maybe Xgafv)
    , _aclUploadProtocol :: !(Maybe Text)
    , _aclAccessToken :: !(Maybe Text)
    , _aclUploadType :: !(Maybe Text)
    , _aclApplicationId :: !Text
    , _aclPageToken :: !(Maybe Text)
    , _aclMaxResults :: !(Maybe (Textual Int32))
    , _aclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclXgafv'
--
-- * 'aclUploadProtocol'
--
-- * 'aclAccessToken'
--
-- * 'aclUploadType'
--
-- * 'aclApplicationId'
--
-- * 'aclPageToken'
--
-- * 'aclMaxResults'
--
-- * 'aclCallback'
achievementConfigurationsList
    :: Text -- ^ 'aclApplicationId'
    -> AchievementConfigurationsList
achievementConfigurationsList pAclApplicationId_ =
  AchievementConfigurationsList'
    { _aclXgafv = Nothing
    , _aclUploadProtocol = Nothing
    , _aclAccessToken = Nothing
    , _aclUploadType = Nothing
    , _aclApplicationId = pAclApplicationId_
    , _aclPageToken = Nothing
    , _aclMaxResults = Nothing
    , _aclCallback = Nothing
    }


-- | V1 error format.
aclXgafv :: Lens' AchievementConfigurationsList (Maybe Xgafv)
aclXgafv = lens _aclXgafv (\ s a -> s{_aclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aclUploadProtocol :: Lens' AchievementConfigurationsList (Maybe Text)
aclUploadProtocol
  = lens _aclUploadProtocol
      (\ s a -> s{_aclUploadProtocol = a})

-- | OAuth access token.
aclAccessToken :: Lens' AchievementConfigurationsList (Maybe Text)
aclAccessToken
  = lens _aclAccessToken
      (\ s a -> s{_aclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aclUploadType :: Lens' AchievementConfigurationsList (Maybe Text)
aclUploadType
  = lens _aclUploadType
      (\ s a -> s{_aclUploadType = a})

-- | The application ID from the Google Play developer console.
aclApplicationId :: Lens' AchievementConfigurationsList Text
aclApplicationId
  = lens _aclApplicationId
      (\ s a -> s{_aclApplicationId = a})

-- | The token returned by the previous request.
aclPageToken :: Lens' AchievementConfigurationsList (Maybe Text)
aclPageToken
  = lens _aclPageToken (\ s a -> s{_aclPageToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified \`maxResults\`.
aclMaxResults :: Lens' AchievementConfigurationsList (Maybe Int32)
aclMaxResults
  = lens _aclMaxResults
      (\ s a -> s{_aclMaxResults = a})
      . mapping _Coerce

-- | JSONP
aclCallback :: Lens' AchievementConfigurationsList (Maybe Text)
aclCallback
  = lens _aclCallback (\ s a -> s{_aclCallback = a})

instance GoogleRequest AchievementConfigurationsList
         where
        type Rs AchievementConfigurationsList =
             AchievementConfigurationListResponse
        type Scopes AchievementConfigurationsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient AchievementConfigurationsList'{..}
          = go _aclApplicationId _aclXgafv _aclUploadProtocol
              _aclAccessToken
              _aclUploadType
              _aclPageToken
              _aclMaxResults
              _aclCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementConfigurationsListResource)
                      mempty
