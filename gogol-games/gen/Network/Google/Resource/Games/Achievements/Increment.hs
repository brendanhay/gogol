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
-- Module      : Network.Google.Resource.Games.Achievements.Increment
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.increment@.
module Network.Google.Resource.Games.Achievements.Increment
    (
    -- * REST Resource
      AchievementsIncrementResource

    -- * Creating a Request
    , achievementsIncrement
    , AchievementsIncrement

    -- * Request Lenses
    , aiXgafv
    , aiRequestId
    , aiUploadProtocol
    , aiAchievementId
    , aiAccessToken
    , aiUploadType
    , aiStepsToIncrement
    , aiCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.increment@ method which the
-- 'AchievementsIncrement' request conforms to.
type AchievementsIncrementResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "increment" :>
               QueryParam "stepsToIncrement" (Textual Int32) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "requestId" (Textual Int64) :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] AchievementIncrementResponse

-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ 'achievementsIncrement' smart constructor.
data AchievementsIncrement =
  AchievementsIncrement'
    { _aiXgafv :: !(Maybe Xgafv)
    , _aiRequestId :: !(Maybe (Textual Int64))
    , _aiUploadProtocol :: !(Maybe Text)
    , _aiAchievementId :: !Text
    , _aiAccessToken :: !(Maybe Text)
    , _aiUploadType :: !(Maybe Text)
    , _aiStepsToIncrement :: !(Textual Int32)
    , _aiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsIncrement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiXgafv'
--
-- * 'aiRequestId'
--
-- * 'aiUploadProtocol'
--
-- * 'aiAchievementId'
--
-- * 'aiAccessToken'
--
-- * 'aiUploadType'
--
-- * 'aiStepsToIncrement'
--
-- * 'aiCallback'
achievementsIncrement
    :: Text -- ^ 'aiAchievementId'
    -> Int32 -- ^ 'aiStepsToIncrement'
    -> AchievementsIncrement
achievementsIncrement pAiAchievementId_ pAiStepsToIncrement_ =
  AchievementsIncrement'
    { _aiXgafv = Nothing
    , _aiRequestId = Nothing
    , _aiUploadProtocol = Nothing
    , _aiAchievementId = pAiAchievementId_
    , _aiAccessToken = Nothing
    , _aiUploadType = Nothing
    , _aiStepsToIncrement = _Coerce # pAiStepsToIncrement_
    , _aiCallback = Nothing
    }


-- | V1 error format.
aiXgafv :: Lens' AchievementsIncrement (Maybe Xgafv)
aiXgafv = lens _aiXgafv (\ s a -> s{_aiXgafv = a})

-- | A randomly generated numeric ID for each request specified by the
-- caller. This number is used at the server to ensure that the request is
-- handled correctly across retries.
aiRequestId :: Lens' AchievementsIncrement (Maybe Int64)
aiRequestId
  = lens _aiRequestId (\ s a -> s{_aiRequestId = a}) .
      mapping _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aiUploadProtocol :: Lens' AchievementsIncrement (Maybe Text)
aiUploadProtocol
  = lens _aiUploadProtocol
      (\ s a -> s{_aiUploadProtocol = a})

-- | The ID of the achievement used by this method.
aiAchievementId :: Lens' AchievementsIncrement Text
aiAchievementId
  = lens _aiAchievementId
      (\ s a -> s{_aiAchievementId = a})

-- | OAuth access token.
aiAccessToken :: Lens' AchievementsIncrement (Maybe Text)
aiAccessToken
  = lens _aiAccessToken
      (\ s a -> s{_aiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aiUploadType :: Lens' AchievementsIncrement (Maybe Text)
aiUploadType
  = lens _aiUploadType (\ s a -> s{_aiUploadType = a})

-- | The number of steps to increment.
aiStepsToIncrement :: Lens' AchievementsIncrement Int32
aiStepsToIncrement
  = lens _aiStepsToIncrement
      (\ s a -> s{_aiStepsToIncrement = a})
      . _Coerce

-- | JSONP
aiCallback :: Lens' AchievementsIncrement (Maybe Text)
aiCallback
  = lens _aiCallback (\ s a -> s{_aiCallback = a})

instance GoogleRequest AchievementsIncrement where
        type Rs AchievementsIncrement =
             AchievementIncrementResponse
        type Scopes AchievementsIncrement =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsIncrement'{..}
          = go _aiAchievementId (Just _aiStepsToIncrement)
              _aiXgafv
              _aiRequestId
              _aiUploadProtocol
              _aiAccessToken
              _aiUploadType
              _aiCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsIncrementResource)
                      mempty
