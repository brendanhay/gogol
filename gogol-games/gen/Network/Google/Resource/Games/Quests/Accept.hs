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
-- Module      : Network.Google.Resource.Games.Quests.Accept
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Indicates that the currently authorized user will participate in the
-- quest.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.quests.accept@.
module Network.Google.Resource.Games.Quests.Accept
    (
    -- * REST Resource
      QuestsAcceptResource

    -- * Creating a Request
    , questsAccept
    , QuestsAccept

    -- * Request Lenses
    , qaConsistencyToken
    , qaLanguage
    , qaQuestId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.quests.accept@ method which the
-- 'QuestsAccept' request conforms to.
type QuestsAcceptResource =
     "games" :>
       "v1" :>
         "quests" :>
           Capture "questId" Text :>
             "accept" :>
               QueryParam "consistencyToken" (Textual Int64) :>
                 QueryParam "language" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Quest

-- | Indicates that the currently authorized user will participate in the
-- quest.
--
-- /See:/ 'questsAccept' smart constructor.
data QuestsAccept = QuestsAccept'
    { _qaConsistencyToken :: !(Maybe (Textual Int64))
    , _qaLanguage         :: !(Maybe Text)
    , _qaQuestId          :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsAccept' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qaConsistencyToken'
--
-- * 'qaLanguage'
--
-- * 'qaQuestId'
questsAccept
    :: Text -- ^ 'qaQuestId'
    -> QuestsAccept
questsAccept pQaQuestId_ =
    QuestsAccept'
    { _qaConsistencyToken = Nothing
    , _qaLanguage = Nothing
    , _qaQuestId = pQaQuestId_
    }

-- | The last-seen mutation timestamp.
qaConsistencyToken :: Lens' QuestsAccept (Maybe Int64)
qaConsistencyToken
  = lens _qaConsistencyToken
      (\ s a -> s{_qaConsistencyToken = a})
      . mapping _Coerce

-- | The preferred language to use for strings returned by this method.
qaLanguage :: Lens' QuestsAccept (Maybe Text)
qaLanguage
  = lens _qaLanguage (\ s a -> s{_qaLanguage = a})

-- | The ID of the quest.
qaQuestId :: Lens' QuestsAccept Text
qaQuestId
  = lens _qaQuestId (\ s a -> s{_qaQuestId = a})

instance GoogleRequest QuestsAccept where
        type Rs QuestsAccept = Quest
        type Scopes QuestsAccept =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient QuestsAccept'{..}
          = go _qaQuestId _qaConsistencyToken _qaLanguage
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy QuestsAcceptResource)
                      mempty
