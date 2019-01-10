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
-- Module      : Network.Google.Resource.Games.Quests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a list of quests for your application and the currently
-- authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.quests.list@.
module Network.Google.Resource.Games.Quests.List
    (
    -- * REST Resource
      QuestsListResource

    -- * Creating a Request
    , questsList
    , QuestsList

    -- * Request Lenses
    , qlLanguage
    , qlPageToken
    , qlPlayerId
    , qlMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.quests.list@ method which the
-- 'QuestsList' request conforms to.
type QuestsListResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "quests" :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] QuestListResponse

-- | Get a list of quests for your application and the currently
-- authenticated player.
--
-- /See:/ 'questsList' smart constructor.
data QuestsList = QuestsList'
    { _qlLanguage   :: !(Maybe Text)
    , _qlPageToken  :: !(Maybe Text)
    , _qlPlayerId   :: !Text
    , _qlMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlLanguage'
--
-- * 'qlPageToken'
--
-- * 'qlPlayerId'
--
-- * 'qlMaxResults'
questsList
    :: Text -- ^ 'qlPlayerId'
    -> QuestsList
questsList pQlPlayerId_ =
    QuestsList'
    { _qlLanguage = Nothing
    , _qlPageToken = Nothing
    , _qlPlayerId = pQlPlayerId_
    , _qlMaxResults = Nothing
    }

-- | The preferred language to use for strings returned by this method.
qlLanguage :: Lens' QuestsList (Maybe Text)
qlLanguage
  = lens _qlLanguage (\ s a -> s{_qlLanguage = a})

-- | The token returned by the previous request.
qlPageToken :: Lens' QuestsList (Maybe Text)
qlPageToken
  = lens _qlPageToken (\ s a -> s{_qlPageToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
qlPlayerId :: Lens' QuestsList Text
qlPlayerId
  = lens _qlPlayerId (\ s a -> s{_qlPlayerId = a})

-- | The maximum number of quest resources to return in the response, used
-- for paging. For any response, the actual number of quest resources
-- returned may be less than the specified maxResults. Acceptable values
-- are 1 to 50, inclusive. (Default: 50).
qlMaxResults :: Lens' QuestsList (Maybe Int32)
qlMaxResults
  = lens _qlMaxResults (\ s a -> s{_qlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest QuestsList where
        type Rs QuestsList = QuestListResponse
        type Scopes QuestsList =
             '["https://www.googleapis.com/auth/games"]
        requestClient QuestsList'{..}
          = go _qlPlayerId _qlLanguage _qlPageToken
              _qlMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient (Proxy :: Proxy QuestsListResource)
                      mempty
