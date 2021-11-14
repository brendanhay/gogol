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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      AchievementsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , achievementsResetMultipleForAllPlayers
    , AchievementsResetMultipleForAllPlayers

    -- * Request Lenses
    , armfapXgafv
    , armfapUploadProtocol
    , armfapAccessToken
    , armfapUploadType
    , armfapPayload
    , armfapCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetMultipleForAllPlayers@ method which the
-- 'AchievementsResetMultipleForAllPlayers' request conforms to.
type AchievementsResetMultipleForAllPlayersResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           "resetMultipleForAllPlayers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AchievementResetMultipleForAllRequest
                           :> Post '[JSON] ()

-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ 'achievementsResetMultipleForAllPlayers' smart constructor.
data AchievementsResetMultipleForAllPlayers =
  AchievementsResetMultipleForAllPlayers'
    { _armfapXgafv :: !(Maybe Xgafv)
    , _armfapUploadProtocol :: !(Maybe Text)
    , _armfapAccessToken :: !(Maybe Text)
    , _armfapUploadType :: !(Maybe Text)
    , _armfapPayload :: !AchievementResetMultipleForAllRequest
    , _armfapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsResetMultipleForAllPlayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'armfapXgafv'
--
-- * 'armfapUploadProtocol'
--
-- * 'armfapAccessToken'
--
-- * 'armfapUploadType'
--
-- * 'armfapPayload'
--
-- * 'armfapCallback'
achievementsResetMultipleForAllPlayers
    :: AchievementResetMultipleForAllRequest -- ^ 'armfapPayload'
    -> AchievementsResetMultipleForAllPlayers
achievementsResetMultipleForAllPlayers pArmfapPayload_ =
  AchievementsResetMultipleForAllPlayers'
    { _armfapXgafv = Nothing
    , _armfapUploadProtocol = Nothing
    , _armfapAccessToken = Nothing
    , _armfapUploadType = Nothing
    , _armfapPayload = pArmfapPayload_
    , _armfapCallback = Nothing
    }


-- | V1 error format.
armfapXgafv :: Lens' AchievementsResetMultipleForAllPlayers (Maybe Xgafv)
armfapXgafv
  = lens _armfapXgafv (\ s a -> s{_armfapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
armfapUploadProtocol :: Lens' AchievementsResetMultipleForAllPlayers (Maybe Text)
armfapUploadProtocol
  = lens _armfapUploadProtocol
      (\ s a -> s{_armfapUploadProtocol = a})

-- | OAuth access token.
armfapAccessToken :: Lens' AchievementsResetMultipleForAllPlayers (Maybe Text)
armfapAccessToken
  = lens _armfapAccessToken
      (\ s a -> s{_armfapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
armfapUploadType :: Lens' AchievementsResetMultipleForAllPlayers (Maybe Text)
armfapUploadType
  = lens _armfapUploadType
      (\ s a -> s{_armfapUploadType = a})

-- | Multipart request metadata.
armfapPayload :: Lens' AchievementsResetMultipleForAllPlayers AchievementResetMultipleForAllRequest
armfapPayload
  = lens _armfapPayload
      (\ s a -> s{_armfapPayload = a})

-- | JSONP
armfapCallback :: Lens' AchievementsResetMultipleForAllPlayers (Maybe Text)
armfapCallback
  = lens _armfapCallback
      (\ s a -> s{_armfapCallback = a})

instance GoogleRequest
           AchievementsResetMultipleForAllPlayers
         where
        type Rs AchievementsResetMultipleForAllPlayers = ()
        type Scopes AchievementsResetMultipleForAllPlayers =
             '["https://www.googleapis.com/auth/games"]
        requestClient
          AchievementsResetMultipleForAllPlayers'{..}
          = go _armfapXgafv _armfapUploadProtocol
              _armfapAccessToken
              _armfapUploadType
              _armfapCallback
              (Just AltJSON)
              _armfapPayload
              gamesManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AchievementsResetMultipleForAllPlayersResource)
                      mempty
