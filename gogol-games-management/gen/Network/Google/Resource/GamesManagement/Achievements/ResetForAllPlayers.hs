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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetForAllPlayers
    (
    -- * REST Resource
      AchievementsResetForAllPlayersResource

    -- * Creating a Request
    , achievementsResetForAllPlayers
    , AchievementsResetForAllPlayers

    -- * Request Lenses
    , arfapXgafv
    , arfapUploadProtocol
    , arfapAchievementId
    , arfapAccessToken
    , arfapUploadType
    , arfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetForAllPlayers@ method which the
-- 'AchievementsResetForAllPlayers' request conforms to.
type AchievementsResetForAllPlayersResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "resetForAllPlayers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Resets the achievement with the given ID for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements can be reset.
--
-- /See:/ 'achievementsResetForAllPlayers' smart constructor.
data AchievementsResetForAllPlayers =
  AchievementsResetForAllPlayers'
    { _arfapXgafv :: !(Maybe Xgafv)
    , _arfapUploadProtocol :: !(Maybe Text)
    , _arfapAchievementId :: !Text
    , _arfapAccessToken :: !(Maybe Text)
    , _arfapUploadType :: !(Maybe Text)
    , _arfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsResetForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arfapXgafv'
--
-- * 'arfapUploadProtocol'
--
-- * 'arfapAchievementId'
--
-- * 'arfapAccessToken'
--
-- * 'arfapUploadType'
--
-- * 'arfapCallback'
achievementsResetForAllPlayers
    :: Text -- ^ 'arfapAchievementId'
    -> AchievementsResetForAllPlayers
achievementsResetForAllPlayers pArfapAchievementId_ =
  AchievementsResetForAllPlayers'
    { _arfapXgafv = Nothing
    , _arfapUploadProtocol = Nothing
    , _arfapAchievementId = pArfapAchievementId_
    , _arfapAccessToken = Nothing
    , _arfapUploadType = Nothing
    , _arfapCallback = Nothing
    }


-- | V1 error format.
arfapXgafv :: Lens' AchievementsResetForAllPlayers (Maybe Xgafv)
arfapXgafv
  = lens _arfapXgafv (\ s a -> s{_arfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arfapUploadProtocol :: Lens' AchievementsResetForAllPlayers (Maybe Text)
arfapUploadProtocol
  = lens _arfapUploadProtocol
      (\ s a -> s{_arfapUploadProtocol = a})

-- | The ID of the achievement used by this method.
arfapAchievementId :: Lens' AchievementsResetForAllPlayers Text
arfapAchievementId
  = lens _arfapAchievementId
      (\ s a -> s{_arfapAchievementId = a})

-- | OAuth access token.
arfapAccessToken :: Lens' AchievementsResetForAllPlayers (Maybe Text)
arfapAccessToken
  = lens _arfapAccessToken
      (\ s a -> s{_arfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arfapUploadType :: Lens' AchievementsResetForAllPlayers (Maybe Text)
arfapUploadType
  = lens _arfapUploadType
      (\ s a -> s{_arfapUploadType = a})

-- | JSONP
arfapCallback :: Lens' AchievementsResetForAllPlayers (Maybe Text)
arfapCallback
  = lens _arfapCallback
      (\ s a -> s{_arfapCallback = a})

instance GoogleRequest AchievementsResetForAllPlayers
         where
        type Rs AchievementsResetForAllPlayers = ()
        type Scopes AchievementsResetForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsResetForAllPlayers'{..}
          = go _arfapAchievementId _arfapXgafv
              _arfapUploadProtocol
              _arfapAccessToken
              _arfapUploadType
              _arfapCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementsResetForAllPlayersResource)
                      mempty
