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
-- Module      : Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert a new leaderboard configuration in this application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Publishing API Reference> for @gamesConfiguration.leaderboardConfigurations.insert@.
module Network.Google.Resource.GamesConfiguration.LeaderboardConfigurations.Insert
    (
    -- * REST Resource
      LeaderboardConfigurationsInsertResource

    -- * Creating a Request
    , leaderboardConfigurationsInsert
    , LeaderboardConfigurationsInsert

    -- * Request Lenses
    , lciXgafv
    , lciUploadProtocol
    , lciAccessToken
    , lciUploadType
    , lciPayload
    , lciApplicationId
    , lciCallback
    ) where

import Network.Google.GamesConfiguration.Types
import Network.Google.Prelude

-- | A resource alias for @gamesConfiguration.leaderboardConfigurations.insert@ method which the
-- 'LeaderboardConfigurationsInsert' request conforms to.
type LeaderboardConfigurationsInsertResource =
     "games" :>
       "v1configuration" :>
         "applications" :>
           Capture "applicationId" Text :>
             "leaderboards" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LeaderboardConfiguration :>
                             Post '[JSON] LeaderboardConfiguration

-- | Insert a new leaderboard configuration in this application.
--
-- /See:/ 'leaderboardConfigurationsInsert' smart constructor.
data LeaderboardConfigurationsInsert =
  LeaderboardConfigurationsInsert'
    { _lciXgafv :: !(Maybe Xgafv)
    , _lciUploadProtocol :: !(Maybe Text)
    , _lciAccessToken :: !(Maybe Text)
    , _lciUploadType :: !(Maybe Text)
    , _lciPayload :: !LeaderboardConfiguration
    , _lciApplicationId :: !Text
    , _lciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LeaderboardConfigurationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lciXgafv'
--
-- * 'lciUploadProtocol'
--
-- * 'lciAccessToken'
--
-- * 'lciUploadType'
--
-- * 'lciPayload'
--
-- * 'lciApplicationId'
--
-- * 'lciCallback'
leaderboardConfigurationsInsert
    :: LeaderboardConfiguration -- ^ 'lciPayload'
    -> Text -- ^ 'lciApplicationId'
    -> LeaderboardConfigurationsInsert
leaderboardConfigurationsInsert pLciPayload_ pLciApplicationId_ =
  LeaderboardConfigurationsInsert'
    { _lciXgafv = Nothing
    , _lciUploadProtocol = Nothing
    , _lciAccessToken = Nothing
    , _lciUploadType = Nothing
    , _lciPayload = pLciPayload_
    , _lciApplicationId = pLciApplicationId_
    , _lciCallback = Nothing
    }


-- | V1 error format.
lciXgafv :: Lens' LeaderboardConfigurationsInsert (Maybe Xgafv)
lciXgafv = lens _lciXgafv (\ s a -> s{_lciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lciUploadProtocol :: Lens' LeaderboardConfigurationsInsert (Maybe Text)
lciUploadProtocol
  = lens _lciUploadProtocol
      (\ s a -> s{_lciUploadProtocol = a})

-- | OAuth access token.
lciAccessToken :: Lens' LeaderboardConfigurationsInsert (Maybe Text)
lciAccessToken
  = lens _lciAccessToken
      (\ s a -> s{_lciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lciUploadType :: Lens' LeaderboardConfigurationsInsert (Maybe Text)
lciUploadType
  = lens _lciUploadType
      (\ s a -> s{_lciUploadType = a})

-- | Multipart request metadata.
lciPayload :: Lens' LeaderboardConfigurationsInsert LeaderboardConfiguration
lciPayload
  = lens _lciPayload (\ s a -> s{_lciPayload = a})

-- | The application ID from the Google Play developer console.
lciApplicationId :: Lens' LeaderboardConfigurationsInsert Text
lciApplicationId
  = lens _lciApplicationId
      (\ s a -> s{_lciApplicationId = a})

-- | JSONP
lciCallback :: Lens' LeaderboardConfigurationsInsert (Maybe Text)
lciCallback
  = lens _lciCallback (\ s a -> s{_lciCallback = a})

instance GoogleRequest
           LeaderboardConfigurationsInsert
         where
        type Rs LeaderboardConfigurationsInsert =
             LeaderboardConfiguration
        type Scopes LeaderboardConfigurationsInsert =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient LeaderboardConfigurationsInsert'{..}
          = go _lciApplicationId _lciXgafv _lciUploadProtocol
              _lciAccessToken
              _lciUploadType
              _lciCallback
              (Just AltJSON)
              _lciPayload
              gamesConfigurationService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy LeaderboardConfigurationsInsertResource)
                      mempty
