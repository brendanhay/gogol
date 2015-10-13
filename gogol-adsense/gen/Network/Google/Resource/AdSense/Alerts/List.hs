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
-- Module      : Network.Google.Resource.AdSense.Alerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the alerts for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAlertsList@.
module Network.Google.Resource.AdSense.Alerts.List
    (
    -- * REST Resource
      AlertsListResource

    -- * Creating a Request
    , alertsList'
    , AlertsList'

    -- * Request Lenses
    , alLocale
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAlertsList@ method which the
-- 'AlertsList'' request conforms to.
type AlertsListResource =
     "alerts" :>
       QueryParam "locale" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] Alerts

-- | List the alerts for this AdSense account.
--
-- /See:/ 'alertsList'' smart constructor.
newtype AlertsList' = AlertsList'
    { _alLocale :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alLocale'
alertsList'
    :: AlertsList'
alertsList' =
    AlertsList'
    { _alLocale = Nothing
    }

-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
alLocale :: Lens' AlertsList' (Maybe Text)
alLocale = lens _alLocale (\ s a -> s{_alLocale = a})

instance GoogleRequest AlertsList' where
        type Rs AlertsList' = Alerts
        requestClient AlertsList'{..}
          = go _alLocale (Just AltJSON) adSenseService
          where go
                  = buildClient (Proxy :: Proxy AlertsListResource)
                      mempty
