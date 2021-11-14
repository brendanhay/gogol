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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.update@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Update
    (
    -- * REST Resource
      LeaderboardConfigurationsUpdateResource

    -- * Creating a Request
    , leaderboardConfigurationsUpdate
    , LeaderboardConfigurationsUpdate

    -- * Request Lenses
    , lcuXgafv
    , lcuUploadProtocol
    , lcuAccessToken
    , lcuUploadType
    , lcuPayload
    , lcuLeaderboardId
    , lcuCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.update@ method which the
-- 'LeaderboardConfigurationsUpdate' request conforms to.
type LeaderboardConfigurationsUpdateResource =
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
                         ReqBody '[JSON] LeaderboardConfiguration :>
                           Put '[JSON] LeaderboardConfiguration

-- | Update the metadata of the leaderboard configuration with the given ID.
--
-- /See:/ 'leaderboardConfigurationsUpdate' smart constructor.
data LeaderboardConfigurationsUpdate =
  LeaderboardConfigurationsUpdate'
    { _lcuXgafv :: !(Maybe Xgafv)
    , _lcuUploadProtocol :: !(Maybe Text)
    , _lcuAccessToken :: !(Maybe Text)
    , _lcuUploadType :: !(Maybe Text)
    , _lcuPayload :: !LeaderboardConfiguration
    , _lcuLeaderboardId :: !Text
    , _lcuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardConfigurationsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcuXgafv'
--
-- * 'lcuUploadProtocol'
--
-- * 'lcuAccessToken'
--
-- * 'lcuUploadType'
--
-- * 'lcuPayload'
--
-- * 'lcuLeaderboardId'
--
-- * 'lcuCallback'
leaderboardConfigurationsUpdate
    :: LeaderboardConfiguration -- ^ 'lcuPayload'
    -> Text -- ^ 'lcuLeaderboardId'
    -> LeaderboardConfigurationsUpdate
leaderboardConfigurationsUpdate pLcuPayload_ pLcuLeaderboardId_ =
  LeaderboardConfigurationsUpdate'
    { _lcuXgafv = Nothing
    , _lcuUploadProtocol = Nothing
    , _lcuAccessToken = Nothing
    , _lcuUploadType = Nothing
    , _lcuPayload = pLcuPayload_
    , _lcuLeaderboardId = pLcuLeaderboardId_
    , _lcuCallback = Nothing
    }


-- | V1 error format.
lcuXgafv :: Lens' LeaderboardConfigurationsUpdate (Maybe Xgafv)
lcuXgafv = lens _lcuXgafv (\ s a -> s{_lcuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcuUploadProtocol :: Lens' LeaderboardConfigurationsUpdate (Maybe Text)
lcuUploadProtocol
  = lens _lcuUploadProtocol
      (\ s a -> s{_lcuUploadProtocol = a})

-- | OAuth access token.
lcuAccessToken :: Lens' LeaderboardConfigurationsUpdate (Maybe Text)
lcuAccessToken
  = lens _lcuAccessToken
      (\ s a -> s{_lcuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcuUploadType :: Lens' LeaderboardConfigurationsUpdate (Maybe Text)
lcuUploadType
  = lens _lcuUploadType
      (\ s a -> s{_lcuUploadType = a})

-- | Multipart request metadata.
lcuPayload :: Lens' LeaderboardConfigurationsUpdate LeaderboardConfiguration
lcuPayload
  = lens _lcuPayload (\ s a -> s{_lcuPayload = a})

-- | The ID of the leaderboard.
lcuLeaderboardId :: Lens' LeaderboardConfigurationsUpdate Text
lcuLeaderboardId
  = lens _lcuLeaderboardId
      (\ s a -> s{_lcuLeaderboardId = a})

-- | JSONP
lcuCallback :: Lens' LeaderboardConfigurationsUpdate (Maybe Text)
lcuCallback
  = lens _lcuCallback (\ s a -> s{_lcuCallback = a})

instance GoogleRequest
           LeaderboardConfigurationsUpdate
         where
        type Rs LeaderboardConfigurationsUpdate =
             LeaderboardConfiguration
        type Scopes LeaderboardConfigurationsUpdate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsUpdate'{..}
          = go _lcuLeaderboardId _lcuXgafv _lcuUploadProtocol
              _lcuAccessToken
              _lcuUploadType
              _lcuCallback
              (Just AltJSON)
              _lcuPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsUpdateResource)
                      mempty
