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
-- Module      : Network.Google.Resource.Calendar.ACL.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes to ACL resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLWatch@.
module Network.Google.Resource.Calendar.ACL.Watch
    (
    -- * REST Resource
      ACLWatchResource

    -- * Creating a Request
    , aclWatch'
    , ACLWatch'

    -- * Request Lenses
    , awSyncToken
    , awCalendarId
    , awShowDeleted
    , awPayload
    , awPageToken
    , awMaxResults
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLWatch@ method which the
-- 'ACLWatch'' request conforms to.
type ACLWatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           "watch" :>
             QueryParam "syncToken" Text :>
               QueryParam "showDeleted" Bool :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes to ACL resources.
--
-- /See:/ 'aclWatch'' smart constructor.
data ACLWatch' = ACLWatch'
    { _awSyncToken   :: !(Maybe Text)
    , _awCalendarId  :: !Text
    , _awShowDeleted :: !(Maybe Bool)
    , _awPayload     :: !Channel
    , _awPageToken   :: !(Maybe Text)
    , _awMaxResults  :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awSyncToken'
--
-- * 'awCalendarId'
--
-- * 'awShowDeleted'
--
-- * 'awPayload'
--
-- * 'awPageToken'
--
-- * 'awMaxResults'
aclWatch'
    :: Text -- ^ 'calendarId'
    -> Channel -- ^ 'payload'
    -> ACLWatch'
aclWatch' pAwCalendarId_ pAwPayload_ =
    ACLWatch'
    { _awSyncToken = Nothing
    , _awCalendarId = pAwCalendarId_
    , _awShowDeleted = Nothing
    , _awPayload = pAwPayload_
    , _awPageToken = Nothing
    , _awMaxResults = Nothing
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
awSyncToken :: Lens' ACLWatch' (Maybe Text)
awSyncToken
  = lens _awSyncToken (\ s a -> s{_awSyncToken = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
awCalendarId :: Lens' ACLWatch' Text
awCalendarId
  = lens _awCalendarId (\ s a -> s{_awCalendarId = a})

-- | Whether to include deleted ACLs in the result. Deleted ACLs are
-- represented by role equal to \"none\". Deleted ACLs will always be
-- included if syncToken is provided. Optional. The default is False.
awShowDeleted :: Lens' ACLWatch' (Maybe Bool)
awShowDeleted
  = lens _awShowDeleted
      (\ s a -> s{_awShowDeleted = a})

-- | Multipart request metadata.
awPayload :: Lens' ACLWatch' Channel
awPayload
  = lens _awPayload (\ s a -> s{_awPayload = a})

-- | Token specifying which result page to return. Optional.
awPageToken :: Lens' ACLWatch' (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
awMaxResults :: Lens' ACLWatch' (Maybe Int32)
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})

instance GoogleRequest ACLWatch' where
        type Rs ACLWatch' = Channel
        requestClient ACLWatch'{..}
          = go _awCalendarId _awSyncToken _awShowDeleted
              _awPageToken
              _awMaxResults
              (Just AltJSON)
              _awPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ACLWatchResource)
                      mempty
