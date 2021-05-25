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
-- Module      : Network.Google.Resource.Calendar.Settings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all user settings for the authenticated user.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.list@.
module Network.Google.Resource.Calendar.Settings.List
    (
    -- * REST Resource
      SettingsListResource

    -- * Creating a Request
    , settingsList
    , SettingsList

    -- * Request Lenses
    , slSyncToken
    , slPageToken
    , slMaxResults
    ) where

import Network.Google.AppsCalendar.Types
import Network.Google.Prelude

-- | A resource alias for @calendar.settings.list@ method which the
-- 'SettingsList' request conforms to.
type SettingsListResource =
     "calendar" :>
       "v3" :>
         "users" :>
           "me" :>
             "settings" :>
               QueryParam "syncToken" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Int32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Settings

-- | Returns all user settings for the authenticated user.
--
-- /See:/ 'settingsList' smart constructor.
data SettingsList =
  SettingsList'
    { _slSyncToken :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slSyncToken'
--
-- * 'slPageToken'
--
-- * 'slMaxResults'
settingsList
    :: SettingsList
settingsList =
  SettingsList'
    {_slSyncToken = Nothing, _slPageToken = Nothing, _slMaxResults = Nothing}


-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. If the
-- syncToken expires, the server will respond with a 410 GONE response code
-- and the client should clear its storage and perform a full
-- synchronization without any syncToken. Learn more about incremental
-- synchronization. Optional. The default is to return all entries.
slSyncToken :: Lens' SettingsList (Maybe Text)
slSyncToken
  = lens _slSyncToken (\ s a -> s{_slSyncToken = a})

-- | Token specifying which result page to return. Optional.
slPageToken :: Lens' SettingsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
slMaxResults :: Lens' SettingsList (Maybe Int32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

instance GoogleRequest SettingsList where
        type Rs SettingsList = Settings
        type Scopes SettingsList =
             '["https://www.googleapis.com/auth/calendar",
               "https://www.googleapis.com/auth/calendar.readonly",
               "https://www.googleapis.com/auth/calendar.settings.readonly"]
        requestClient SettingsList'{..}
          = go _slSyncToken _slPageToken _slMaxResults
              (Just AltJSON)
              appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy SettingsListResource)
                      mempty
