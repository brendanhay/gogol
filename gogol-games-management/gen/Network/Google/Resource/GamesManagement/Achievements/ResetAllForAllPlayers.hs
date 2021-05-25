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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetAllForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetAllForAllPlayers
    (
    -- * REST Resource
      AchievementsResetAllForAllPlayersResource

    -- * Creating a Request
    , achievementsResetAllForAllPlayers
    , AchievementsResetAllForAllPlayers

    -- * Request Lenses
    , arafapXgafv
    , arafapUploadProtocol
    , arafapAccessToken
    , arafapUploadType
    , arafapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetAllForAllPlayers@ method which the
-- 'AchievementsResetAllForAllPlayers' request conforms to.
type AchievementsResetAllForAllPlayersResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           "resetAllForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets all draft achievements for all players. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'achievementsResetAllForAllPlayers' smart constructor.
data AchievementsResetAllForAllPlayers =
  AchievementsResetAllForAllPlayers'
    { _arafapXgafv :: !(Maybe Xgafv)
    , _arafapUploadProtocol :: !(Maybe Text)
    , _arafapAccessToken :: !(Maybe Text)
    , _arafapUploadType :: !(Maybe Text)
    , _arafapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsResetAllForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arafapXgafv'
--
-- * 'arafapUploadProtocol'
--
-- * 'arafapAccessToken'
--
-- * 'arafapUploadType'
--
-- * 'arafapCallback'
achievementsResetAllForAllPlayers
    :: AchievementsResetAllForAllPlayers
achievementsResetAllForAllPlayers =
  AchievementsResetAllForAllPlayers'
    { _arafapXgafv = Nothing
    , _arafapUploadProtocol = Nothing
    , _arafapAccessToken = Nothing
    , _arafapUploadType = Nothing
    , _arafapCallback = Nothing
    }


-- | V1 error format.
arafapXgafv :: Lens' AchievementsResetAllForAllPlayers (Maybe Xgafv)
arafapXgafv
  = lens _arafapXgafv (\ s a -> s{_arafapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arafapUploadProtocol :: Lens' AchievementsResetAllForAllPlayers (Maybe Text)
arafapUploadProtocol
  = lens _arafapUploadProtocol
      (\ s a -> s{_arafapUploadProtocol = a})

-- | OAuth access token.
arafapAccessToken :: Lens' AchievementsResetAllForAllPlayers (Maybe Text)
arafapAccessToken
  = lens _arafapAccessToken
      (\ s a -> s{_arafapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arafapUploadType :: Lens' AchievementsResetAllForAllPlayers (Maybe Text)
arafapUploadType
  = lens _arafapUploadType
      (\ s a -> s{_arafapUploadType = a})

-- | JSONP
arafapCallback :: Lens' AchievementsResetAllForAllPlayers (Maybe Text)
arafapCallback
  = lens _arafapCallback
      (\ s a -> s{_arafapCallback = a})

instance GoogleRequest
           AchievementsResetAllForAllPlayers
         where
        type Rs AchievementsResetAllForAllPlayers = ()
        type Scopes AchievementsResetAllForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsResetAllForAllPlayers'{..}
          = go _arafapXgafv _arafapUploadProtocol
              _arafapAccessToken
              _arafapUploadType
              _arafapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementsResetAllForAllPlayersResource)
                      mempty
