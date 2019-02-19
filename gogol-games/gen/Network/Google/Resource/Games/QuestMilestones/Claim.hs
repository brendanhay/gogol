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
-- Module      : Network.Google.Resource.Games.QuestMilestones.Claim
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report that a reward for the milestone corresponding to milestoneId for
-- the quest corresponding to questId has been claimed by the currently
-- authorized user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.questMilestones.claim@.
module Network.Google.Resource.Games.QuestMilestones.Claim
    (
    -- * REST Resource
      QuestMilestonesClaimResource

    -- * Creating a Request
    , questMilestonesClaim
    , QuestMilestonesClaim

    -- * Request Lenses
    , qmcRequestId
    , qmcMilestoneId
    , qmcQuestId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.questMilestones.claim@ method which the
-- 'QuestMilestonesClaim' request conforms to.
type QuestMilestonesClaimResource =
     "games" :>
       "v1" :>
         "quests" :>
           Capture "questId" Text :>
             "milestones" :>
               Capture "milestoneId" Text :>
                 "claim" :>
                   QueryParam "requestId" (Textual Int64) :>
                     QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Report that a reward for the milestone corresponding to milestoneId for
-- the quest corresponding to questId has been claimed by the currently
-- authorized user.
--
-- /See:/ 'questMilestonesClaim' smart constructor.
data QuestMilestonesClaim =
  QuestMilestonesClaim'
    { _qmcRequestId   :: !(Textual Int64)
    , _qmcMilestoneId :: !Text
    , _qmcQuestId     :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QuestMilestonesClaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qmcRequestId'
--
-- * 'qmcMilestoneId'
--
-- * 'qmcQuestId'
questMilestonesClaim
    :: Int64 -- ^ 'qmcRequestId'
    -> Text -- ^ 'qmcMilestoneId'
    -> Text -- ^ 'qmcQuestId'
    -> QuestMilestonesClaim
questMilestonesClaim pQmcRequestId_ pQmcMilestoneId_ pQmcQuestId_ =
  QuestMilestonesClaim'
    { _qmcRequestId = _Coerce # pQmcRequestId_
    , _qmcMilestoneId = pQmcMilestoneId_
    , _qmcQuestId = pQmcQuestId_
    }

-- | A numeric ID to ensure that the request is handled correctly across
-- retries. Your client application must generate this ID randomly.
qmcRequestId :: Lens' QuestMilestonesClaim Int64
qmcRequestId
  = lens _qmcRequestId (\ s a -> s{_qmcRequestId = a})
      . _Coerce

-- | The ID of the milestone.
qmcMilestoneId :: Lens' QuestMilestonesClaim Text
qmcMilestoneId
  = lens _qmcMilestoneId
      (\ s a -> s{_qmcMilestoneId = a})

-- | The ID of the quest.
qmcQuestId :: Lens' QuestMilestonesClaim Text
qmcQuestId
  = lens _qmcQuestId (\ s a -> s{_qmcQuestId = a})

instance GoogleRequest QuestMilestonesClaim where
        type Rs QuestMilestonesClaim = ()
        type Scopes QuestMilestonesClaim =
             '["https://www.googleapis.com/auth/games"]
        requestClient QuestMilestonesClaim'{..}
          = go _qmcQuestId _qmcMilestoneId (Just _qmcRequestId)
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy QuestMilestonesClaimResource)
                      mempty
