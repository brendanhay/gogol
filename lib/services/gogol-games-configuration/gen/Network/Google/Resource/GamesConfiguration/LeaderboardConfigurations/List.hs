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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the leaderboard configurations in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.list@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.List
    (
    -- * REST Resource
      LeaderboardConfigurationsListResource

    -- * Creating a Request
    , leaderboardConfigurationsList
    , LeaderboardConfigurationsList

    -- * Request Lenses
    , lclXgafv
    , lclUploadProtocol
    , lclAccessToken
    , lclUploadType
    , lclApplicationId
    , lclPageToken
    , lclMaxResults
    , lclCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.list@ method which the
-- 'LeaderboardConfigurationsList' request conforms to.
type LeaderboardConfigurationsListResource =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "leaderboards" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] LeaderboardConfigurationListResponse

-- | Returns a list of the leaderboard configurations in this application.
--
-- /See:/ 'leaderboardConfigurationsList' smart constructor.
data LeaderboardConfigurationsList =
  LeaderboardConfigurationsList'
    { _lclXgafv :: !(Maybe Xgafv)
    , _lclUploadProtocol :: !(Maybe Text)
    , _lclAccessToken :: !(Maybe Text)
    , _lclUploadType :: !(Maybe Text)
    , _lclApplicationId :: !Text
    , _lclPageToken :: !(Maybe Text)
    , _lclMaxResults :: !(Maybe (Textual Int32))
    , _lclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lclXgafv'
--
-- * 'lclUploadProtocol'
--
-- * 'lclAccessToken'
--
-- * 'lclUploadType'
--
-- * 'lclApplicationId'
--
-- * 'lclPageToken'
--
-- * 'lclMaxResults'
--
-- * 'lclCallback'
leaderboardConfigurationsList
    :: Text -- ^ 'lclApplicationId'
    -> LeaderboardConfigurationsList
leaderboardConfigurationsList pLclApplicationId_ =
  LeaderboardConfigurationsList'
    { _lclXgafv = Nothing
    , _lclUploadProtocol = Nothing
    , _lclAccessToken = Nothing
    , _lclUploadType = Nothing
    , _lclApplicationId = pLclApplicationId_
    , _lclPageToken = Nothing
    , _lclMaxResults = Nothing
    , _lclCallback = Nothing
    }


-- | V1 error format.
lclXgafv :: Lens' LeaderboardConfigurationsList (Maybe Xgafv)
lclXgafv = lens _lclXgafv (\ s a -> s{_lclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lclUploadProtocol :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclUploadProtocol
  = lens _lclUploadProtocol
      (\ s a -> s{_lclUploadProtocol = a})

-- | OAuth access token.
lclAccessToken :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclAccessToken
  = lens _lclAccessToken
      (\ s a -> s{_lclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lclUploadType :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclUploadType
  = lens _lclUploadType
      (\ s a -> s{_lclUploadType = a})

-- | The application ID from the Google Play developer console.
lclApplicationId :: Lens' LeaderboardConfigurationsList Text
lclApplicationId
  = lens _lclApplicationId
      (\ s a -> s{_lclApplicationId = a})

-- | The token returned by the previous request.
lclPageToken :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclPageToken
  = lens _lclPageToken (\ s a -> s{_lclPageToken = a})

-- | The maximum number of resource configurations to return in the response,
-- used for paging. For any response, the actual number of resources
-- returned may be less than the specified \`maxResults\`.
lclMaxResults :: Lens' LeaderboardConfigurationsList (Maybe Int32)
lclMaxResults
  = lens _lclMaxResults
      (\ s a -> s{_lclMaxResults = a})
      . mapping _Coerce

-- | JSONP
lclCallback :: Lens' LeaderboardConfigurationsList (Maybe Text)
lclCallback
  = lens _lclCallback (\ s a -> s{_lclCallback = a})

instance GoogleRequest LeaderboardConfigurationsList
         where
        type Rs LeaderboardConfigurationsList =
             LeaderboardConfigurationListResponse
        type Scopes LeaderboardConfigurationsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsList'{..}
          = go _lclApplicationId _lclXgafv _lclUploadProtocol
              _lclAccessToken
              _lclUploadType
              _lclPageToken
              _lclMaxResults
              _lclCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsListResource)
                      mempty
