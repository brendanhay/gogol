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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetAll
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Management Reference> for @gamesManagement.achievements.resetAll@.
module Network.Google.Resource.GamesManagement.Achievements.ResetAll
    (
    -- * REST Resource
      AchievementsResetAllResource

    -- * Creating a Request
    , achievementsResetAll
    , AchievementsResetAll

    -- * Request Lenses
    , araXgafv
    , araUploadProtocol
    , araAccessToken
    , araUploadType
    , araCallback
    ) where

import Network.Google.GamesManagement.Types
import Network.Google.Prelude

-- | A resource alias for @gamesManagement.achievements.resetAll@ method which the
-- 'AchievementsResetAll' request conforms to.
type AchievementsResetAllResource =
     "games" :>
       "v1management" :>
         "achievements" :>
           "reset" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] AchievementResetAllResponse

-- | Resets all achievements for the currently authenticated player for your
-- application. This method is only accessible to whitelisted tester
-- accounts for your application.
--
-- /See:/ 'achievementsResetAll' smart constructor.
data AchievementsResetAll =
  AchievementsResetAll'
    { _araXgafv :: !(Maybe Xgafv)
    , _araUploadProtocol :: !(Maybe Text)
    , _araAccessToken :: !(Maybe Text)
    , _araUploadType :: !(Maybe Text)
    , _araCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsResetAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'araXgafv'
--
-- * 'araUploadProtocol'
--
-- * 'araAccessToken'
--
-- * 'araUploadType'
--
-- * 'araCallback'
achievementsResetAll
    :: AchievementsResetAll
achievementsResetAll =
  AchievementsResetAll'
    { _araXgafv = Nothing
    , _araUploadProtocol = Nothing
    , _araAccessToken = Nothing
    , _araUploadType = Nothing
    , _araCallback = Nothing
    }


-- | V1 error format.
araXgafv :: Lens' AchievementsResetAll (Maybe Xgafv)
araXgafv = lens _araXgafv (\ s a -> s{_araXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
araUploadProtocol :: Lens' AchievementsResetAll (Maybe Text)
araUploadProtocol
  = lens _araUploadProtocol
      (\ s a -> s{_araUploadProtocol = a})

-- | OAuth access token.
araAccessToken :: Lens' AchievementsResetAll (Maybe Text)
araAccessToken
  = lens _araAccessToken
      (\ s a -> s{_araAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
araUploadType :: Lens' AchievementsResetAll (Maybe Text)
araUploadType
  = lens _araUploadType
      (\ s a -> s{_araUploadType = a})

-- | JSONP
araCallback :: Lens' AchievementsResetAll (Maybe Text)
araCallback
  = lens _araCallback (\ s a -> s{_araCallback = a})

instance GoogleRequest AchievementsResetAll where
        type Rs AchievementsResetAll =
             AchievementResetAllResponse
        type Scopes AchievementsResetAll =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsResetAll'{..}
          = go _araXgafv _araUploadProtocol _araAccessToken
              _araUploadType
              _araCallback
              (Just AltJSON)
              gamesManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsResetAllResource)
                      mempty
