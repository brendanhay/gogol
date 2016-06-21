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
-- Module      : Network.Google.Resource.Games.Events.ListDefinitions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the event definitions in this application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.events.listDefinitions@.
module Network.Google.Resource.Games.Events.ListDefinitions
    (
    -- * REST Resource
      EventsListDefinitionsResource

    -- * Creating a Request
    , eventsListDefinitions
    , EventsListDefinitions

    -- * Request Lenses
    , eldConsistencyToken
    , eldLanguage
    , eldPageToken
    , eldMaxResults
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.events.listDefinitions@ method which the
-- 'EventsListDefinitions' request conforms to.
type EventsListDefinitionsResource =
     "games" :>
       "v1" :>
         "eventDefinitions" :>
           QueryParam "consistencyToken" (Textual Int64) :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Int32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] EventDefinitionListResponse

-- | Returns a list of the event definitions in this application.
--
-- /See:/ 'eventsListDefinitions' smart constructor.
data EventsListDefinitions = EventsListDefinitions'
    { _eldConsistencyToken :: !(Maybe (Textual Int64))
    , _eldLanguage         :: !(Maybe Text)
    , _eldPageToken        :: !(Maybe Text)
    , _eldMaxResults       :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsListDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldConsistencyToken'
--
-- * 'eldLanguage'
--
-- * 'eldPageToken'
--
-- * 'eldMaxResults'
eventsListDefinitions
    :: EventsListDefinitions
eventsListDefinitions =
    EventsListDefinitions'
    { _eldConsistencyToken = Nothing
    , _eldLanguage = Nothing
    , _eldPageToken = Nothing
    , _eldMaxResults = Nothing
    }

-- | The last-seen mutation timestamp.
eldConsistencyToken :: Lens' EventsListDefinitions (Maybe Int64)
eldConsistencyToken
  = lens _eldConsistencyToken
      (\ s a -> s{_eldConsistencyToken = a})
      . mapping _Coerce

-- | The preferred language to use for strings returned by this method.
eldLanguage :: Lens' EventsListDefinitions (Maybe Text)
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | The token returned by the previous request.
eldPageToken :: Lens' EventsListDefinitions (Maybe Text)
eldPageToken
  = lens _eldPageToken (\ s a -> s{_eldPageToken = a})

-- | The maximum number of event definitions to return in the response, used
-- for paging. For any response, the actual number of event definitions to
-- return may be less than the specified maxResults.
eldMaxResults :: Lens' EventsListDefinitions (Maybe Int32)
eldMaxResults
  = lens _eldMaxResults
      (\ s a -> s{_eldMaxResults = a})
      . mapping _Coerce

instance GoogleRequest EventsListDefinitions where
        type Rs EventsListDefinitions =
             EventDefinitionListResponse
        type Scopes EventsListDefinitions =
             '["https://www.googleapis.com/auth/games",
               "https://www.googleapis.com/auth/plus.login"]
        requestClient EventsListDefinitions'{..}
          = go _eldConsistencyToken _eldLanguage _eldPageToken
              _eldMaxResults
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy EventsListDefinitionsResource)
                      mempty
