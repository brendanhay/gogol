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
-- Module      : Network.Google.Resource.Calendar.Colors.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the color definitions for calendars and events.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.colors.get@.
module Network.Google.Resource.Calendar.Colors.Get
    (
    -- * REST Resource
      ColorsGetResource

    -- * Creating a Request
    , colorsGet'
    , ColorsGet'

    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.colors.get@ method which the
-- 'ColorsGet'' request conforms to.
type ColorsGetResource =
     "colors" :>
       QueryParam "alt" AltJSON :> Get '[JSON] Colors

-- | Returns the color definitions for calendars and events.
--
-- /See:/ 'colorsGet'' smart constructor.
data ColorsGet' =
    ColorsGet'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsGet'' with the minimum fields required to make a request.
--
colorsGet'
    :: ColorsGet'
colorsGet' = ColorsGet'

instance GoogleRequest ColorsGet' where
        type Rs ColorsGet' = Colors
        requestClient ColorsGet'{}
          = go (Just AltJSON) appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy ColorsGetResource)
                      mempty
