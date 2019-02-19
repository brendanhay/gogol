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
-- Module      : Network.Google.Resource.Calendar.CalendarList.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the calendars on the user\'s calendar list.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.calendarList.list@.
module Network.Google.Resource.Calendar.CalendarList.List
    (
    -- * REST Resource
      CalendarListListResource

    -- * Creating a Request
    , calendarListList
    , CalendarListList

    -- * Request Lenses
    , cllSyncToken
    , cllMinAccessRole
    , cllShowDeleted
    , cllShowHidden
    , cllPageToken
    , cllMaxResults
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.calendarList.list@ method which the
-- 'CalendarListList' request conforms to.
type CalendarListListResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "calendarList" :>
               QueryParam "syncToken" Text :>
                 QueryParam "minAccessRole"
                   CalendarListListMinAccessRole
                   :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "showHidden" Bool :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] CalendarList

-- | Returns the calendars on the user\'s calendar list.
--
-- /See:/ 'calendarListList' smart constructor.
data CalendarListList =
  CalendarListList'
    { _cllSyncToken     :: !(Maybe Text)
    , _cllMinAccessRole :: !(Maybe CalendarListListMinAccessRole)
    , _cllShowDeleted   :: !(Maybe Bool)
    , _cllShowHidden    :: !(Maybe Bool)
    , _cllPageToken     :: !(Maybe Text)
    , _cllMaxResults    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CalendarListList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllSyncToken'
--
-- * 'cllMinAccessRole'
--
-- * 'cllShowDeleted'
--
-- * 'cllShowHidden'
--
-- * 'cllPageToken'
--
-- * 'cllMaxResults'
calendarListList
    :: CalendarListList
calendarListList =
  CalendarListList'
    { _cllSyncToken = Nothing
    , _cllMinAccessRole = Nothing
    , _cllShowDeleted = Nothing
    , _cllShowHidden = Nothing
    , _cllPageToken = Nothing
    , _cllMaxResults = Nothing
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
cllSyncToken :: Lens' CalendarListList (Maybe Text)
cllSyncToken
  = lens _cllSyncToken (\ s a -> s{_cllSyncToken = a})

-- | The minimum access role for the user in the returned entries. Optional.
-- The default is no restriction.
cllMinAccessRole :: Lens' CalendarListList (Maybe CalendarListListMinAccessRole)
cllMinAccessRole
  = lens _cllMinAccessRole
      (\ s a -> s{_cllMinAccessRole = a})

-- | Whether to include deleted calendar list entries in the result.
-- Optional. The default is False.
cllShowDeleted :: Lens' CalendarListList (Maybe Bool)
cllShowDeleted
  = lens _cllShowDeleted
      (\ s a -> s{_cllShowDeleted = a})

-- | Whether to show hidden entries. Optional. The default is False.
cllShowHidden :: Lens' CalendarListList (Maybe Bool)
cllShowHidden
  = lens _cllShowHidden
      (\ s a -> s{_cllShowHidden = a})

-- | Token specifying which result page to return. Optional.
cllPageToken :: Lens' CalendarListList (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
cllMaxResults :: Lens' CalendarListList (Maybe Int32)
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})
      . mapping _Coerce

instance GoogleRequest CalendarListList where
        type Rs CalendarListList = CalendarList
        type Scopes CalendarListList =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly"]
        requestClient CalendarListList'{..}
          = go _cllSyncToken _cllMinAccessRole _cllShowDeleted
              _cllShowHidden
              _cllPageToken
              _cllMaxResults
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient
                      (Proxy :: Proxy CalendarListListResource)
                      mempty
