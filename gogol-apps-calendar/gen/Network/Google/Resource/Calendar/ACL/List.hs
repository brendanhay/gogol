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
-- Module      : Network.Google.Resource.Calendar.ACL.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the rules in the access control list for the calendar.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.acl.list@.
module Network.Google.Resource.Calendar.ACL.List
    (
    -- * REST Resource
      ACLListResource

    -- * Creating a Request
    , aclList
    , ACLList

    -- * Request Lenses
    , alSyncToken
    , alCalendarId
    , alShowDeleted
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.acl.list@ method which the
-- 'ACLList' request conforms to.
type ACLListResource =
     "calendar" :>
       "v3" :>
         "calendars" :>
           Capture "calendarId" Text :>
             "acl" :>
               QueryParam "syncToken" Text :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (JSONText Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ACL

-- | Returns the rules in the access control list for the calendar.
--
-- /See:/ 'aclList' smart constructor.
data ACLList = ACLList
    { _alSyncToken   :: !(Maybe Text)
    , _alCalendarId  :: !Text
    , _alShowDeleted :: !(Maybe Bool)
    , _alPageToken   :: !(Maybe Text)
    , _alMaxResults  :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alSyncToken'
--
-- * 'alCalendarId'
--
-- * 'alShowDeleted'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
aclList
    :: Text -- ^ 'alCalendarId'
    -> ACLList
aclList pAlCalendarId_ =
    ACLList
    { _alSyncToken = Nothing
    , _alCalendarId = pAlCalendarId_
    , _alShowDeleted = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. All entries
-- deleted since the previous list request will always be in the result set
-- and it is not allowed to set showDeleted to False. If the syncToken
-- expires, the server will respond with a 410 GONE response code and the
-- client should clear its storage and perform a full synchronization
-- without any syncToken. Learn more about incremental synchronization.
-- Optional. The default is to return all entries.
alSyncToken :: Lens' ACLList (Maybe Text)
alSyncToken
  = lens _alSyncToken (\ s a -> s{_alSyncToken = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
alCalendarId :: Lens' ACLList Text
alCalendarId
  = lens _alCalendarId (\ s a -> s{_alCalendarId = a})

-- | Whether to include deleted ACLs in the result. Deleted ACLs are
-- represented by role equal to \"none\". Deleted ACLs will always be
-- included if syncToken is provided. Optional. The default is False.
alShowDeleted :: Lens' ACLList (Maybe Bool)
alShowDeleted
  = lens _alShowDeleted
      (\ s a -> s{_alShowDeleted = a})

-- | Token specifying which result page to return. Optional.
alPageToken :: Lens' ACLList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
alMaxResults :: Lens' ACLList (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ACLList where
        type Rs ACLList = ACL
        requestClient ACLList{..}
          = go _alCalendarId _alSyncToken _alShowDeleted
              _alPageToken
              _alMaxResults
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLListResource) mempty
