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
-- Module      : Network.Google.Resource.Calendar.Settings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single user setting.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.settings.get@.
module Network.Google.Resource.Calendar.Settings.Get
    (
    -- * REST Resource
      SettingsGetResource

    -- * Creating a Request
    , settingsGet
    , SettingsGet

    -- * Request Lenses
    , sgSetting
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.settings.get@ method which the
-- 'SettingsGet' request conforms to.
type SettingsGetResource =
     "users" :>
       "me" :>
         "settings" :>
           Capture "setting" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Setting

-- | Returns a single user setting.
--
-- /See:/ 'settingsGet' smart constructor.
newtype SettingsGet = SettingsGet
    { _sgSetting :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgSetting'
settingsGet
    :: Text -- ^ 'sgSetting'
    -> SettingsGet
settingsGet pSgSetting_ =
    SettingsGet
    { _sgSetting = pSgSetting_
    }

-- | The id of the user setting.
sgSetting :: Lens' SettingsGet Text
sgSetting
  = lens _sgSetting (\ s a -> s{_sgSetting = a})

instance GoogleRequest SettingsGet where
        type Rs SettingsGet = Setting
        requestClient SettingsGet{..}
          = go _sgSetting (Just AltJSON) appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy SettingsGetResource)
                      mempty
