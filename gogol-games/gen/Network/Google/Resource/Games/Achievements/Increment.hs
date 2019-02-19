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
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.increment@.
module Network.Google.Resource.Games.Achievements.Increment
    (
    -- * REST Resource
      AchievementsIncrementResource

    -- * Creating a Request
    , achievementsIncrement
    , AchievementsIncrement

    -- * Request Lenses
    , aiRequestId
    , aiAchievementId
    , aiStepsToIncrement
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievements.increment@ method which the
-- 'AchievementsIncrement' request conforms to.
type AchievementsIncrementResource =
     "games" :>
       "v1" :>
         "achievements" :>
           Capture "achievementId" Text :>
             "increment" :>
               QueryParam "stepsToIncrement" (Textual Int32) :>
                 QueryParam "requestId" (Textual Int64) :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] AchievementIncrementResponse

-- | Increments the steps of the achievement with the given ID for the
-- currently authenticated player.
--
-- /See:/ 'achievementsIncrement' smart constructor.
data AchievementsIncrement =
  AchievementsIncrement'
    { _aiRequestId        :: !(Maybe (Textual Int64))
    , _aiAchievementId    :: !Text
    , _aiStepsToIncrement :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AchievementsIncrement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiRequestId'
--
-- * 'aiAchievementId'
--
-- * 'aiStepsToIncrement'
achievementsIncrement
    :: Text -- ^ 'aiAchievementId'
    -> Int32 -- ^ 'aiStepsToIncrement'
    -> AchievementsIncrement
achievementsIncrement pAiAchievementId_ pAiStepsToIncrement_ =
  AchievementsIncrement'
    { _aiRequestId = Nothing
    , _aiAchievementId = pAiAchievementId_
    , _aiStepsToIncrement = _Coerce # pAiStepsToIncrement_
    }

-- | A randomly generated numeric ID for each request specified by the
-- caller. This number is used at the server to ensure that the request is
-- handled correctly across retries.
aiRequestId :: Lens' AchievementsIncrement (Maybe Int64)
aiRequestId
  = lens _aiRequestId (\ s a -> s{_aiRequestId = a}) .
      mapping _Coerce

-- | The ID of the achievement used by this method.
aiAchievementId :: Lens' AchievementsIncrement Text
aiAchievementId
  = lens _aiAchievementId
      (\ s a -> s{_aiAchievementId = a})

-- | The number of steps to increment.
aiStepsToIncrement :: Lens' AchievementsIncrement Int32
aiStepsToIncrement
  = lens _aiStepsToIncrement
      (\ s a -> s{_aiStepsToIncrement = a})
      . _Coerce

instance GoogleRequest AchievementsIncrement where
        type Rs AchievementsIncrement =
             AchievementIncrementResponse
        type Scopes AchievementsIncrement =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.me"]
        requestClient AchievementsIncrement'{..}
          = go _aiAchievementId (Just _aiStepsToIncrement)
              _aiRequestId
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsIncrementResource)
                      mempty
