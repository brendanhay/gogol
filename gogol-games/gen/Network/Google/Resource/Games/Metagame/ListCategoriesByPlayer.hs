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
-- Module      : Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List play data aggregated per category for the player corresponding to
-- playerId.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.metagame.listCategoriesByPlayer@.
module Network.Google.Resource.Games.Metagame.ListCategoriesByPlayer
    (
    -- * REST Resource
      MetagameListCategoriesByPlayerResource

    -- * Creating a Request
    , metagameListCategoriesByPlayer
    , MetagameListCategoriesByPlayer

    -- * Request Lenses
    , mlcbpCollection
    , mlcbpLanguage
    , mlcbpPageToken
    , mlcbpPlayerId
    , mlcbpMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.metagame.listCategoriesByPlayer@ method which the
-- 'MetagameListCategoriesByPlayer' request conforms to.
type MetagameListCategoriesByPlayerResource =
     "games" :>
       "v1" :>
         "players" :>
           Capture "playerId" Text :>
             "categories" :>
               Capture "collection"
                 MetagameListCategoriesByPlayerCollection
                 :>
                 QueryParam "language" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CategoryListResponse

-- | List play data aggregated per category for the player corresponding to
-- playerId.
--
-- /See:/ 'metagameListCategoriesByPlayer' smart constructor.
data MetagameListCategoriesByPlayer = MetagameListCategoriesByPlayer'
    { _mlcbpCollection :: !MetagameListCategoriesByPlayerCollection
    , _mlcbpLanguage   :: !(Maybe Text)
    , _mlcbpPageToken  :: !(Maybe Text)
    , _mlcbpPlayerId   :: !Text
    , _mlcbpMaxResults :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetagameListCategoriesByPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlcbpCollection'
--
-- * 'mlcbpLanguage'
--
-- * 'mlcbpPageToken'
--
-- * 'mlcbpPlayerId'
--
-- * 'mlcbpMaxResults'
metagameListCategoriesByPlayer
    :: MetagameListCategoriesByPlayerCollection -- ^ 'mlcbpCollection'
    -> Text -- ^ 'mlcbpPlayerId'
    -> MetagameListCategoriesByPlayer
metagameListCategoriesByPlayer pMlcbpCollection_ pMlcbpPlayerId_ =
    MetagameListCategoriesByPlayer'
    { _mlcbpCollection = pMlcbpCollection_
    , _mlcbpLanguage = Nothing
    , _mlcbpPageToken = Nothing
    , _mlcbpPlayerId = pMlcbpPlayerId_
    , _mlcbpMaxResults = Nothing
    }

-- | The collection of categories for which data will be returned.
mlcbpCollection :: Lens' MetagameListCategoriesByPlayer MetagameListCategoriesByPlayerCollection
mlcbpCollection
  = lens _mlcbpCollection
      (\ s a -> s{_mlcbpCollection = a})

-- | The preferred language to use for strings returned by this method.
mlcbpLanguage :: Lens' MetagameListCategoriesByPlayer (Maybe Text)
mlcbpLanguage
  = lens _mlcbpLanguage
      (\ s a -> s{_mlcbpLanguage = a})

-- | The token returned by the previous request.
mlcbpPageToken :: Lens' MetagameListCategoriesByPlayer (Maybe Text)
mlcbpPageToken
  = lens _mlcbpPageToken
      (\ s a -> s{_mlcbpPageToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
mlcbpPlayerId :: Lens' MetagameListCategoriesByPlayer Text
mlcbpPlayerId
  = lens _mlcbpPlayerId
      (\ s a -> s{_mlcbpPlayerId = a})

-- | The maximum number of category resources to return in the response, used
-- for paging. For any response, the actual number of category resources
-- returned may be less than the specified maxResults.
mlcbpMaxResults :: Lens' MetagameListCategoriesByPlayer (Maybe Int32)
mlcbpMaxResults
  = lens _mlcbpMaxResults
      (\ s a -> s{_mlcbpMaxResults = a})
      . mapping _Coerce

instance GoogleRequest MetagameListCategoriesByPlayer
         where
        type Rs MetagameListCategoriesByPlayer =
             CategoryListResponse
        type Scopes MetagameListCategoriesByPlayer =
             '["https://www.googleapis.com/auth/games"]
        requestClient MetagameListCategoriesByPlayer'{..}
          = go _mlcbpPlayerId _mlcbpCollection _mlcbpLanguage
              _mlcbpPageToken
              _mlcbpMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MetagameListCategoriesByPlayerResource)
                      mempty
