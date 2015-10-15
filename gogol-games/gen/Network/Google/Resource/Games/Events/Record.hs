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
-- Module      : Network.Google.Resource.Games.Events.Record
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesEventsRecord@.
module Network.Google.Resource.Games.Events.Record
    (
    -- * REST Resource
      EventsRecordResource

    -- * Creating a Request
    , eventsRecord'
    , EventsRecord'

    -- * Request Lenses
    , erPayload
    , erLanguage
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesEventsRecord@ method which the
-- 'EventsRecord'' request conforms to.
type EventsRecordResource =
     "events" :>
       QueryParam "language" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] EventRecordRequest :>
             Post '[JSON] EventUpdateResponse

-- | Records a batch of changes to the number of times events have occurred
-- for the currently authenticated user of this application.
--
-- /See:/ 'eventsRecord'' smart constructor.
data EventsRecord' = EventsRecord'
    { _erPayload  :: !EventRecordRequest
    , _erLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsRecord'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erPayload'
--
-- * 'erLanguage'
eventsRecord'
    :: EventRecordRequest -- ^ 'payload'
    -> EventsRecord'
eventsRecord' pErPayload_ =
    EventsRecord'
    { _erPayload = pErPayload_
    , _erLanguage = Nothing
    }

-- | Multipart request metadata.
erPayload :: Lens' EventsRecord' EventRecordRequest
erPayload
  = lens _erPayload (\ s a -> s{_erPayload = a})

-- | The preferred language to use for strings returned by this method.
erLanguage :: Lens' EventsRecord' (Maybe Text)
erLanguage
  = lens _erLanguage (\ s a -> s{_erLanguage = a})

instance GoogleRequest EventsRecord' where
        type Rs EventsRecord' = EventUpdateResponse
        requestClient EventsRecord'{..}
          = go _erLanguage (Just AltJSON) _erPayload games
          where go
                  = buildClient (Proxy :: Proxy EventsRecordResource)
                      mempty
