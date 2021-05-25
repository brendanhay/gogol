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
-- Module      : Network.Google.Resource.Games.Achievements.UpdateMultiple
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates multiple achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.updateMultiple@.
module Network.Google.Resource.Games.Achievements.UpdateMultiple
    (
    -- * REST Resource
      AchievementsUpdateMultipleResource

    -- * Creating a Request
    , achievementsUpdateMultiple
    , AchievementsUpdateMultiple

    -- * Request Lenses
    , aumXgafv
    , aumUploadProtocol
    , aumAccessToken
    , aumUploadType
    , aumPayload
    , aumCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.updateMultiple@ method which the
-- 'AchievementsUpdateMultiple' request conforms to.
type AchievementsUpdateMultipleResource =
     "games" :>
       "v1" :>
         "achievements" :>
           "updateMultiple" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AchievementUpdateMultipleRequest :>
                           Post '[JSON] AchievementUpdateMultipleResponse

-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ 'achievementsUpdateMultiple' smart constructor.
data AchievementsUpdateMultiple =
  AchievementsUpdateMultiple'
    { _aumXgafv :: !(Maybe Xgafv)
    , _aumUploadProtocol :: !(Maybe Text)
    , _aumAccessToken :: !(Maybe Text)
    , _aumUploadType :: !(Maybe Text)
    , _aumPayload :: !AchievementUpdateMultipleRequest
    , _aumCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsUpdateMultiple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumXgafv'
--
-- * 'aumUploadProtocol'
--
-- * 'aumAccessToken'
--
-- * 'aumUploadType'
--
-- * 'aumPayload'
--
-- * 'aumCallback'
achievementsUpdateMultiple
    :: AchievementUpdateMultipleRequest -- ^ 'aumPayload'
    -> AchievementsUpdateMultiple
achievementsUpdateMultiple pAumPayload_ =
  AchievementsUpdateMultiple'
    { _aumXgafv = Nothing
    , _aumUploadProtocol = Nothing
    , _aumAccessToken = Nothing
    , _aumUploadType = Nothing
    , _aumPayload = pAumPayload_
    , _aumCallback = Nothing
    }


-- | V1 error format.
aumXgafv :: Lens' AchievementsUpdateMultiple (Maybe Xgafv)
aumXgafv = lens _aumXgafv (\ s a -> s{_aumXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aumUploadProtocol :: Lens' AchievementsUpdateMultiple (Maybe Text)
aumUploadProtocol
  = lens _aumUploadProtocol
      (\ s a -> s{_aumUploadProtocol = a})

-- | OAuth access token.
aumAccessToken :: Lens' AchievementsUpdateMultiple (Maybe Text)
aumAccessToken
  = lens _aumAccessToken
      (\ s a -> s{_aumAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aumUploadType :: Lens' AchievementsUpdateMultiple (Maybe Text)
aumUploadType
  = lens _aumUploadType
      (\ s a -> s{_aumUploadType = a})

-- | Multipart request metadata.
aumPayload :: Lens' AchievementsUpdateMultiple AchievementUpdateMultipleRequest
aumPayload
  = lens _aumPayload (\ s a -> s{_aumPayload = a})

-- | JSONP
aumCallback :: Lens' AchievementsUpdateMultiple (Maybe Text)
aumCallback
  = lens _aumCallback (\ s a -> s{_aumCallback = a})

instance GoogleRequest AchievementsUpdateMultiple
         where
        type Rs AchievementsUpdateMultiple =
             AchievementUpdateMultipleResponse
        type Scopes AchievementsUpdateMultiple =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsUpdateMultiple'{..}
          = go _aumXgafv _aumUploadProtocol _aumAccessToken
              _aumUploadType
              _aumCallback
              (Just AltJSON)
              _aumPayload
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsUpdateMultipleResource)
                      mempty
