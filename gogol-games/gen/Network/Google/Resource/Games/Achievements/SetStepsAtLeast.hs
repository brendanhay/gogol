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
-- Module      : Network.Google.Resource.Games.Achievements.SetStepsAtLeast
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.achievements.setStepsAtLeast@.
module Network.Google.Resource.Games.Achievements.SetStepsAtLeast
    (
    -- * REST Resource
      AchievementsSetStepsAtLeastResource

    -- * Creating a Request
    , achievementsSetStepsAtLeast
    , AchievementsSetStepsAtLeast

    -- * Request Lenses
    , assalXgafv
    , assalUploadProtocol
    , assalAchievementId
    , assalAccessToken
    , assalUploadType
    , assalSteps
    , assalCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.achievements.setStepsAtLeast@ method which the
-- 'AchievementsSetStepsAtLeast' request conforms to.
type AchievementsSetStepsAtLeastResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "setStepsAtLeast" :>
               QueryParam "steps" (Textual Int32) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] AchievementSetStepsAtLeastResponse

-- | Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
--
-- /See:/ 'achievementsSetStepsAtLeast' smart constructor.
data AchievementsSetStepsAtLeast =
  AchievementsSetStepsAtLeast'
    { _assalXgafv :: !(Maybe Xgafv)
    , _assalUploadProtocol :: !(Maybe Text)
    , _assalAchievementId :: !Text
    , _assalAccessToken :: !(Maybe Text)
    , _assalUploadType :: !(Maybe Text)
    , _assalSteps :: !(Textual Int32)
    , _assalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AchievementsSetStepsAtLeast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assalXgafv'
--
-- * 'assalUploadProtocol'
--
-- * 'assalAchievementId'
--
-- * 'assalAccessToken'
--
-- * 'assalUploadType'
--
-- * 'assalSteps'
--
-- * 'assalCallback'
achievementsSetStepsAtLeast
    :: Text -- ^ 'assalAchievementId'
    -> Int32 -- ^ 'assalSteps'
    -> AchievementsSetStepsAtLeast
achievementsSetStepsAtLeast pAssalAchievementId_ pAssalSteps_ =
  AchievementsSetStepsAtLeast'
    { _assalXgafv = Nothing
    , _assalUploadProtocol = Nothing
    , _assalAchievementId = pAssalAchievementId_
    , _assalAccessToken = Nothing
    , _assalUploadType = Nothing
    , _assalSteps = _Coerce # pAssalSteps_
    , _assalCallback = Nothing
    }


-- | V1 error format.
assalXgafv :: Lens' AchievementsSetStepsAtLeast (Maybe Xgafv)
assalXgafv
  = lens _assalXgafv (\ s a -> s{_assalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
assalUploadProtocol :: Lens' AchievementsSetStepsAtLeast (Maybe Text)
assalUploadProtocol
  = lens _assalUploadProtocol
      (\ s a -> s{_assalUploadProtocol = a})

-- | The ID of the achievement used by this method.
assalAchievementId :: Lens' AchievementsSetStepsAtLeast Text
assalAchievementId
  = lens _assalAchievementId
      (\ s a -> s{_assalAchievementId = a})

-- | OAuth access token.
assalAccessToken :: Lens' AchievementsSetStepsAtLeast (Maybe Text)
assalAccessToken
  = lens _assalAccessToken
      (\ s a -> s{_assalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
assalUploadType :: Lens' AchievementsSetStepsAtLeast (Maybe Text)
assalUploadType
  = lens _assalUploadType
      (\ s a -> s{_assalUploadType = a})

-- | The minimum value to set the steps to.
assalSteps :: Lens' AchievementsSetStepsAtLeast Int32
assalSteps
  = lens _assalSteps (\ s a -> s{_assalSteps = a}) .
      _Coerce

-- | JSONP
assalCallback :: Lens' AchievementsSetStepsAtLeast (Maybe Text)
assalCallback
  = lens _assalCallback
      (\ s a -> s{_assalCallback = a})

instance GoogleRequest AchievementsSetStepsAtLeast
         where
        type Rs AchievementsSetStepsAtLeast =
             AchievementSetStepsAtLeastResponse
        type Scopes AchievementsSetStepsAtLeast =
             '["https://www.googleapis.com/auth/games"]
        requestClient AchievementsSetStepsAtLeast'{..}
          = go _assalAchievementId (Just _assalSteps)
              _assalXgafv
              _assalUploadProtocol
              _assalAccessToken
              _assalUploadType
              _assalCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsSetStepsAtLeastResource)
                      mempty
