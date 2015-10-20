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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates multiple achievements for the currently authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.achievements.updateMultiple@.
module Network.Google.Resource.Games.Achievements.UpdateMultiple
    (
    -- * REST Resource
      AchievementsUpdateMultipleResource

    -- * Creating a Request
    , achievementsUpdateMultiple
    , AchievementsUpdateMultiple

    -- * Request Lenses
    , aumPayload
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.achievements.updateMultiple@ method which the
-- 'AchievementsUpdateMultiple' request conforms to.
type AchievementsUpdateMultipleResource =
     "achievements" :>
       "updateMultiple" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AchievementUpdateMultipleRequest :>
             Post '[JSON] AchievementUpdateMultipleResponse

-- | Updates multiple achievements for the currently authenticated player.
--
-- /See:/ 'achievementsUpdateMultiple' smart constructor.
newtype AchievementsUpdateMultiple = AchievementsUpdateMultiple
    { _aumPayload :: AchievementUpdateMultipleRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsUpdateMultiple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aumPayload'
achievementsUpdateMultiple
    :: AchievementUpdateMultipleRequest -- ^ 'aumPayload'
    -> AchievementsUpdateMultiple
achievementsUpdateMultiple pAumPayload_ =
    AchievementsUpdateMultiple
    { _aumPayload = pAumPayload_
    }

-- | Multipart request metadata.
aumPayload :: Lens' AchievementsUpdateMultiple AchievementUpdateMultipleRequest
aumPayload
  = lens _aumPayload (\ s a -> s{_aumPayload = a})

instance GoogleRequest AchievementsUpdateMultiple
         where
        type Rs AchievementsUpdateMultiple =
             AchievementUpdateMultipleResponse
        requestClient AchievementsUpdateMultiple{..}
          = go (Just AltJSON) _aumPayload gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy AchievementsUpdateMultipleResource)
                      mempty
