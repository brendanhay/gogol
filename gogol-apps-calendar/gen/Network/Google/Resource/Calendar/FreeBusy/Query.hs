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
-- Module      : Network.Google.Resource.Calendar.FreeBusy.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns free\/busy information for a set of calendars.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @calendar.freebusy.query@.
module Network.Google.Resource.Calendar.FreeBusy.Query
    (
    -- * REST Resource
      FreeBusyQueryResource

    -- * Creating a Request
    , freeBusyQuery
    , FreeBusyQuery

    -- * Request Lenses
    , fbqPayload
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @calendar.freebusy.query@ method which the
-- 'FreeBusyQuery' request conforms to.
type FreeBusyQueryResource =
     "freeBusy" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] FreeBusyRequest :>
           Post '[JSON] FreeBusyResponse

-- | Returns free\/busy information for a set of calendars.
--
-- /See:/ 'freeBusyQuery' smart constructor.
newtype FreeBusyQuery = FreeBusyQuery
    { _fbqPayload :: FreeBusyRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBusyQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbqPayload'
freeBusyQuery
    :: FreeBusyRequest -- ^ 'fbqPayload'
    -> FreeBusyQuery
freeBusyQuery pFbqPayload_ =
    FreeBusyQuery
    { _fbqPayload = pFbqPayload_
    }

-- | Multipart request metadata.
fbqPayload :: Lens' FreeBusyQuery FreeBusyRequest
fbqPayload
  = lens _fbqPayload (\ s a -> s{_fbqPayload = a})

instance GoogleRequest FreeBusyQuery where
        type Rs FreeBusyQuery = FreeBusyResponse
        requestClient FreeBusyQuery{..}
          = go (Just AltJSON) _fbqPayload appsCalendarService
          where go
                  = buildClient (Proxy :: Proxy FreeBusyQueryResource)
                      mempty
