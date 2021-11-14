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
-- Module      : Network.Google.Resource.Calendar.CalendarList.Watch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes to CalendarList resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.watch@.
module Network.Google.Resource.Calendar.CalendarList.Watch
    (
    -- * REST Resource
      CalendarListWatchResource

    -- * Creating a Request
    , calendarListWatch
    , CalendarListWatch

    -- * Request Lenses
    , clwSyncToken
    , clwMinAccessRole
    , clwShowDeleted
    , clwPayload
    , clwShowHidden
    , clwPageToken
    , clwMaxResults
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.watch@ method which the
-- 'CalendarListWatch' request conforms to.
type CalendarListWatchResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "minAccessRole"
                     CalendarListWatchMinAccessRole
                     :>
                     QueryParam "showDeleted" Bool :>
                       QueryParam "showHidden" Bool :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes to CalendarList resources.
--
-- /See:/ 'calendarListWatch' smart constructor.
data CalendarListWatch =
  CalendarListWatch'
    { _clwSyncToken :: !(Maybe Text)
    , _clwMinAccessRole :: !(Maybe CalendarListWatchMinAccessRole)
    , _clwShowDeleted :: !(Maybe Bool)
    , _clwPayload :: !Channel
    , _clwShowHidden :: !(Maybe Bool)
    , _clwPageToken :: !(Maybe Text)
    , _clwMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarListWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clwSyncToken'
--
-- * 'clwMinAccessRole'
--
-- * 'clwShowDeleted'
--
-- * 'clwPayload'
--
-- * 'clwShowHidden'
--
-- * 'clwPageToken'
--
-- * 'clwMaxResults'
calendarListWatch
    :: Channel -- ^ 'clwPayload'
    -> CalendarListWatch
calendarListWatch pClwPayload_ =
  CalendarListWatch'
    { _clwSyncToken = Nothing
    , _clwMinAccessRole = Nothing
    , _clwShowDeleted = Nothing
    , _clwPayload = pClwPayload_
    , _clwShowHidden = Nothing
    , _clwPageToken = Nothing
    , _clwMaxResults = Nothing
    }


-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If only
-- read-only fields such as calendar properties or ACLs have changed, the
-- entry won\'t be returned. All entries deleted and hidden since the
-- previous list request will always be in the result set and it is not
-- allowed to set showDeleted neither showHidden to False. To ensure client
-- state consistency minAccessRole query parameter cannot be specified
-- together with nextSyncToken. If the syncToken expires, the server will
-- respond with a 410 GONE response code and the client should clear its
-- storage and perform a full synchronization without any syncToken. Learn
-- more about incremental synchronization. Optional. The default is to
-- return all entries.
clwSyncToken :: Lens' CalendarListWatch (Maybe Text)
clwSyncToken
  = lens _clwSyncToken (\ s a -> s{_clwSyncToken = a})

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
clwMinAccessRole :: Lens' CalendarListWatch (Maybe CalendarListWatchMinAccessRole)
clwMinAccessRole
  = lens _clwMinAccessRole
      (\ s a -> s{_clwMinAccessRole = a})

-- | Whether to include deleted calendar list entries in the result.
-- Optional. The default is False.
clwShowDeleted :: Lens' CalendarListWatch (Maybe Bool)
clwShowDeleted
  = lens _clwShowDeleted
      (\ s a -> s{_clwShowDeleted = a})

-- | Multipart request metadata.
clwPayload :: Lens' CalendarListWatch Channel
clwPayload
  = lens _clwPayload (\ s a -> s{_clwPayload = a})

-- | Whether to show hidden entries. Optional. The default is False.
clwShowHidden :: Lens' CalendarListWatch (Maybe Bool)
clwShowHidden
  = lens _clwShowHidden
      (\ s a -> s{_clwShowHidden = a})

-- | Token specifying which result page to return. Optional.
clwPageToken :: Lens' CalendarListWatch (Maybe Text)
clwPageToken
  = lens _clwPageToken (\ s a -> s{_clwPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
clwMaxResults :: Lens' CalendarListWatch (Maybe Int32)
clwMaxResults
  = lens _clwMaxResults
      (\ s a -> s{_clwMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CalendarListWatch where
        type Rs CalendarListWatch = Channel
        type Scopes CalendarListWatch =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarListWatch'{..}
          = go _clwSyncToken _clwMinAccessRole _clwShowDeleted
              _clwShowHidden
              _clwPageToken
              _clwMaxResults
              (Just AltJSON)
              _clwPayload
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListWatchResource)
                      mempty
