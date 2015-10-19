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
-- Module      : Network.Google.Resource.AdSense.Alerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAlertsDelete@.
module Network.Google.Resource.AdSense.Alerts.Delete
    (
    -- * REST Resource
      AlertsDeleteResource

    -- * Creating a Request
    , alertsDelete'
    , AlertsDelete'

    -- * Request Lenses
    , adAlertId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAlertsDelete@ method which the
-- 'AlertsDelete'' request conforms to.
type AlertsDeleteResource =
     "alerts" :>
       Capture "alertId" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ 'alertsDelete'' smart constructor.
newtype AlertsDelete' = AlertsDelete'
    { _adAlertId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAlertId'
alertsDelete'
    :: Text -- ^ 'alertId'
    -> AlertsDelete'
alertsDelete' pAdAlertId_ =
    AlertsDelete'
    { _adAlertId = pAdAlertId_
    }

-- | Alert to delete.
adAlertId :: Lens' AlertsDelete' Text
adAlertId
  = lens _adAlertId (\ s a -> s{_adAlertId = a})

instance GoogleRequest AlertsDelete' where
        type Rs AlertsDelete' = ()
        requestClient AlertsDelete'{..}
          = go _adAlertId (Just AltJSON) adSenseService
          where go
                  = buildClient (Proxy :: Proxy AlertsDeleteResource)
                      mempty
