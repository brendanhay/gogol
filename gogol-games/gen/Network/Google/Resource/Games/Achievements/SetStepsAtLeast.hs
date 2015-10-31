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
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.setStepsAtLeast@.
module Network.Google.Resource.Games.Achievements.SetStepsAtLeast
    (
    -- * REST Resource
      AchievementsSetStepsAtLeastResource

    -- * Creating a Request
    , achievementsSetStepsAtLeast
    , AchievementsSetStepsAtLeast

    -- * Request Lenses
    , assalAchievementId
    , assalSteps
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievements.setStepsAtLeast@ method which the
-- 'AchievementsSetStepsAtLeast' request conforms to.
type AchievementsSetStepsAtLeastResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "setStepsAtLeast" :>
               QueryParam "steps" (Textual Int32) :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] AchievementSetStepsAtLeastResponse

-- | Sets the steps for the currently authenticated player towards unlocking
-- an achievement. If the steps parameter is less than the current number
-- of steps that the player already gained for the achievement, the
-- achievement is not modified.
--
-- /See:/ 'achievementsSetStepsAtLeast' smart constructor.
data AchievementsSetStepsAtLeast = AchievementsSetStepsAtLeast
    { _assalAchievementId :: !Text
    , _assalSteps         :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsSetStepsAtLeast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assalAchievementId'
--
-- * 'assalSteps'
achievementsSetStepsAtLeast
    :: Text -- ^ 'assalAchievementId'
    -> Int32 -- ^ 'assalSteps'
    -> AchievementsSetStepsAtLeast
achievementsSetStepsAtLeast pAssalAchievementId_ pAssalSteps_ =
    AchievementsSetStepsAtLeast
    { _assalAchievementId = pAssalAchievementId_
    , _assalSteps = _Coerce # pAssalSteps_
    }

-- | The ID of the achievement used by this method.
assalAchievementId :: Lens' AchievementsSetStepsAtLeast Text
assalAchievementId
  = lens _assalAchievementId
      (\ s a -> s{_assalAchievementId = a})

-- | The minimum value to set the steps to.
assalSteps :: Lens' AchievementsSetStepsAtLeast Int32
assalSteps
  = lens _assalSteps (\ s a -> s{_assalSteps = a}) .
      _Coerce

instance GoogleRequest AchievementsSetStepsAtLeast
         where
        type Rs AchievementsSetStepsAtLeast =
             AchievementSetStepsAtLeastResponse
        type Scopes AchievementsSetStepsAtLeast =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient AchievementsSetStepsAtLeast{..}
          = go _assalAchievementId (Just _assalSteps)
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsSetStepsAtLeastResource)
                      mempty
