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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.delete@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Delete
    (
    -- * REST Resource
      LeaderboardConfigurationsDeleteResource

    -- * Creating a Request
    , leaderboardConfigurationsDelete
    , LeaderboardConfigurationsDelete

    -- * Request Lenses
    , lcdXgafv
    , lcdUploadProtocol
    , lcdAccessToken
    , lcdUploadType
    , lcdLeaderboardId
    , lcdCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.delete@ method which the
-- 'LeaderboardConfigurationsDelete' request conforms to.
type LeaderboardConfigurationsDeleteResource =
     "games" :>
       "v1configuration" :>
         "leaderboards" :>
           Capture "leaderboardId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsDelete' smart constructor.
data LeaderboardConfigurationsDelete =
  LeaderboardConfigurationsDelete'
    { _lcdXgafv :: !(Maybe Xgafv)
    , _lcdUploadProtocol :: !(Maybe Text)
    , _lcdAccessToken :: !(Maybe Text)
    , _lcdUploadType :: !(Maybe Text)
    , _lcdLeaderboardId :: !Text
    , _lcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardConfigurationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcdXgafv'
--
-- * 'lcdUploadProtocol'
--
-- * 'lcdAccessToken'
--
-- * 'lcdUploadType'
--
-- * 'lcdLeaderboardId'
--
-- * 'lcdCallback'
leaderboardConfigurationsDelete
    :: Text -- ^ 'lcdLeaderboardId'
    -> LeaderboardConfigurationsDelete
leaderboardConfigurationsDelete pLcdLeaderboardId_ =
  LeaderboardConfigurationsDelete'
    { _lcdXgafv = Nothing
    , _lcdUploadProtocol = Nothing
    , _lcdAccessToken = Nothing
    , _lcdUploadType = Nothing
    , _lcdLeaderboardId = pLcdLeaderboardId_
    , _lcdCallback = Nothing
    }


-- | V1 error format.
lcdXgafv :: Lens' LeaderboardConfigurationsDelete (Maybe Xgafv)
lcdXgafv = lens _lcdXgafv (\ s a -> s{_lcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcdUploadProtocol :: Lens' LeaderboardConfigurationsDelete (Maybe Text)
lcdUploadProtocol
  = lens _lcdUploadProtocol
      (\ s a -> s{_lcdUploadProtocol = a})

-- | OAuth access token.
lcdAccessToken :: Lens' LeaderboardConfigurationsDelete (Maybe Text)
lcdAccessToken
  = lens _lcdAccessToken
      (\ s a -> s{_lcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcdUploadType :: Lens' LeaderboardConfigurationsDelete (Maybe Text)
lcdUploadType
  = lens _lcdUploadType
      (\ s a -> s{_lcdUploadType = a})

-- | The ID of the leaderboard.
lcdLeaderboardId :: Lens' LeaderboardConfigurationsDelete Text
lcdLeaderboardId
  = lens _lcdLeaderboardId
      (\ s a -> s{_lcdLeaderboardId = a})

-- | JSONP
lcdCallback :: Lens' LeaderboardConfigurationsDelete (Maybe Text)
lcdCallback
  = lens _lcdCallback (\ s a -> s{_lcdCallback = a})

instance GoogleRequest
           LeaderboardConfigurationsDelete
         where
        type Rs LeaderboardConfigurationsDelete = ()
        type Scopes LeaderboardConfigurationsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsDelete'{..}
          = go _lcdLeaderboardId _lcdXgafv _lcdUploadProtocol
              _lcdAccessToken
              _lcdUploadType
              _lcdCallback
              (Just AltJSON)
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsDeleteResource)
                      mempty
