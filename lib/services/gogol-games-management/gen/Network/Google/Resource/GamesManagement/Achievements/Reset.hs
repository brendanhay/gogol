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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.Reset
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.reset@.
module Network.Google.Resource.GamesManagement.Achievements.Reset
    (
    -- * REST Resource
      AchievementsResetResource

    -- * Creating a Request
    , achievementsReset
    , AchievementsReset

    -- * Request Lenses
    , arXgafv
    , arUploadProtocol
    , arAchievementId
    , arAccessToken
    , arUploadType
    , arCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.reset@ method which the
-- 'AchievementsReset' request conforms to.
type AchievementsResetResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "reset" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] AchievementResetResponse

-- | Resets the achievement with the given ID for the currently authenticated
-- player. This method is only accessible to whitelisted tester accounts
-- for your application.
--
-- /See:/ 'achievementsReset' smart constructor.
data AchievementsReset =
  AchievementsReset'
    { _arXgafv :: !(Maybe Xgafv)
    , _arUploadProtocol :: !(Maybe Text)
    , _arAchievementId :: !Text
    , _arAccessToken :: !(Maybe Text)
    , _arUploadType :: !(Maybe Text)
    , _arCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arXgafv'
--
-- * 'arUploadProtocol'
--
-- * 'arAchievementId'
--
-- * 'arAccessToken'
--
-- * 'arUploadType'
--
-- * 'arCallback'
achievementsReset
    :: Text -- ^ 'arAchievementId'
    -> AchievementsReset
achievementsReset pArAchievementId_ =
  AchievementsReset'
    { _arXgafv = Nothing
    , _arUploadProtocol = Nothing
    , _arAchievementId = pArAchievementId_
    , _arAccessToken = Nothing
    , _arUploadType = Nothing
    , _arCallback = Nothing
    }


-- | V1 error format.
arXgafv :: Lens' AchievementsReset (Maybe Xgafv)
arXgafv = lens _arXgafv (\ s a -> s{_arXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arUploadProtocol :: Lens' AchievementsReset (Maybe Text)
arUploadProtocol
  = lens _arUploadProtocol
      (\ s a -> s{_arUploadProtocol = a})

-- | The ID of the achievement used by this method.
arAchievementId :: Lens' AchievementsReset Text
arAchievementId
  = lens _arAchievementId
      (\ s a -> s{_arAchievementId = a})

-- | OAuth access token.
arAccessToken :: Lens' AchievementsReset (Maybe Text)
arAccessToken
  = lens _arAccessToken
      (\ s a -> s{_arAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arUploadType :: Lens' AchievementsReset (Maybe Text)
arUploadType
  = lens _arUploadType (\ s a -> s{_arUploadType = a})

-- | JSONP
arCallback :: Lens' AchievementsReset (Maybe Text)
arCallback
  = lens _arCallback (\ s a -> s{_arCallback = a})

instance GoogleRequest AchievementsReset where
        type Rs AchievementsReset = AchievementResetResponse
        type Scopes AchievementsReset =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsReset'{..}
          = go _arAchievementId _arXgafv _arUploadProtocol
              _arAccessToken
              _arUploadType
              _arCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsResetResource)
                      mempty
