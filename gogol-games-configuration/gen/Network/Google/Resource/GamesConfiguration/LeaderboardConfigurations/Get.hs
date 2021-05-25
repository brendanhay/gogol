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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.get@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Get
    (
    -- * REST Resource
      LeaderboardConfigurationsGetResource

    -- * Creating a Request
    , leaderboardConfigurationsGet
    , LeaderboardConfigurationsGet

    -- * Request Lenses
    , lcgXgafv
    , lcgUploadProtocol
    , lcgAccessToken
    , lcgUploadType
    , lcgLeaderboardId
    , lcgCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.get@ method which the
-- 'LeaderboardConfigurationsGet' request conforms to.
type LeaderboardConfigurationsGetResource =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LeaderboardConfiguration

-- | Retrieves the metadata of the leaderboard configuration with the given
-- ID.
--
-- /See:/ 'leaderboardConfigurationsGet' smart constructor.
data LeaderboardConfigurationsGet =
  LeaderboardConfigurationsGet'
    { _lcgXgafv :: !(Maybe Xgafv)
    , _lcgUploadProtocol :: !(Maybe Text)
    , _lcgAccessToken :: !(Maybe Text)
    , _lcgUploadType :: !(Maybe Text)
    , _lcgLeaderboardId :: !Text
    , _lcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcgXgafv'
--
-- * 'lcgUploadProtocol'
--
-- * 'lcgAccessToken'
--
-- * 'lcgUploadType'
--
-- * 'lcgLeaderboardId'
--
-- * 'lcgCallback'
leaderboardConfigurationsGet
    :: Text -- ^ 'lcgLeaderboardId'
    -> LeaderboardConfigurationsGet
leaderboardConfigurationsGet pLcgLeaderboardId_ =
  LeaderboardConfigurationsGet'
    { _lcgXgafv = Nothing
    , _lcgUploadProtocol = Nothing
    , _lcgAccessToken = Nothing
    , _lcgUploadType = Nothing
    , _lcgLeaderboardId = pLcgLeaderboardId_
    , _lcgCallback = Nothing
    }


-- | V1 error format.
lcgXgafv :: Lens' LeaderboardConfigurationsGet (Maybe Xgafv)
lcgXgafv = lens _lcgXgafv (\ s a -> s{_lcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcgUploadProtocol :: Lens' LeaderboardConfigurationsGet (Maybe Text)
lcgUploadProtocol
  = lens _lcgUploadProtocol
      (\ s a -> s{_lcgUploadProtocol = a})

-- | OAuth access token.
lcgAccessToken :: Lens' LeaderboardConfigurationsGet (Maybe Text)
lcgAccessToken
  = lens _lcgAccessToken
      (\ s a -> s{_lcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcgUploadType :: Lens' LeaderboardConfigurationsGet (Maybe Text)
lcgUploadType
  = lens _lcgUploadType
      (\ s a -> s{_lcgUploadType = a})

-- | The ID of the leaderboard.
lcgLeaderboardId :: Lens' LeaderboardConfigurationsGet Text
lcgLeaderboardId
  = lens _lcgLeaderboardId
      (\ s a -> s{_lcgLeaderboardId = a})

-- | JSONP
lcgCallback :: Lens' LeaderboardConfigurationsGet (Maybe Text)
lcgCallback
  = lens _lcgCallback (\ s a -> s{_lcgCallback = a})

instance GoogleRequest LeaderboardConfigurationsGet
         where
        type Rs LeaderboardConfigurationsGet =
             LeaderboardConfiguration
        type Scopes LeaderboardConfigurationsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsGet'{..}
          = go _lcgLeaderboardId _lcgXgafv _lcgUploadProtocol
              _lcgAccessToken
              _lcgUploadType
              _lcgCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy :: Proxy LeaderboardConfigurationsGetResource)
                      mempty
