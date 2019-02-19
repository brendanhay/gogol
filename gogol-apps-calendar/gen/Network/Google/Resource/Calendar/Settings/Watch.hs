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
-- Module      : Network.Google.Resource.Calendar.Settings.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes to Settings resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.watch@.
module Network.Google.Resource.Calendar.Settings.Watch
    (
    -- * REST Resource
      SettingsWatchResource

    -- * Creating a Request
    , settingsWatch
    , SettingsWatch

    -- * Request Lenses
    , swSyncToken
    , swPayload
    , swPageToken
    , swMaxResults
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.settings.watch@ method which the
-- 'SettingsWatch' request conforms to.
type SettingsWatchResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "settings" :>
               "watch" :>
                 QueryParam "syncToken" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes to Settings resources.
--
-- /See:/ 'settingsWatch' smart constructor.
data SettingsWatch =
  SettingsWatch'
    { _swSyncToken  :: !(Maybe Text)
    , _swPayload    :: !Channel
    , _swPageToken  :: !(Maybe Text)
    , _swMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'swSyncToken'
--
-- * 'swPayload'
--
-- * 'swPageToken'
--
-- * 'swMaxResults'
settingsWatch
    :: Channel -- ^ 'swPayload'
    -> SettingsWatch
settingsWatch pSwPayload_ =
  SettingsWatch'
    { _swSyncToken = Nothing
    , _swPayload = pSwPayload_
    , _swPageToken = Nothing
    , _swMaxResults = Nothing
    }


-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If the
-- syncToken expires, the server will respond with a 410 GONE response code
-- and the client should clear its storage and perform a full
-- synchronization without any syncToken. Learn more about incremental
-- synchronization. Optional. The default is to return all entries.
swSyncToken :: Lens' SettingsWatch (Maybe Text)
swSyncToken
  = lens _swSyncToken (\ s a -> s{_swSyncToken = a})

-- | Multipart request metadata.
swPayload :: Lens' SettingsWatch Channel
swPayload
  = lens _swPayload (\ s a -> s{_swPayload = a})

-- | Token specifying which result page to return. Optional.
swPageToken :: Lens' SettingsWatch (Maybe Text)
swPageToken
  = lens _swPageToken (\ s a -> s{_swPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
swMaxResults :: Lens' SettingsWatch (Maybe Int32)
swMaxResults
  = lens _swMaxResults (\ s a -> s{_swMaxResults = a})
      . mapping _Coerce

instance GoogleRequest SettingsWatch where
        type Rs SettingsWatch = Channel
        type Scopes SettingsWatch =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly",
               "https://www.googleapis.com/auth/calendar.settings.readonly"]
        requestClient SettingsWatch'{..}
          = go _swSyncToken _swPageToken _swMaxResults
              (Just AltJSON)
              _swPayload
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy SettingsWatchResource)
                      mempty
