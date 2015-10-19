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
-- Module      : Network.Google.Resource.AdSense.Accounts.Alerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismiss (delete) the specified alert from the specified publisher
-- AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.alerts.delete@.
module Network.Google.Resource.AdSense.Accounts.Alerts.Delete
    (
    -- * REST Resource
      AccountsAlertsDeleteResource

    -- * Creating a Request
    , accountsAlertsDelete'
    , AccountsAlertsDelete'

    -- * Request Lenses
    , aadAlertId
    , aadAccountId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.accounts.alerts.delete@ method which the
-- 'AccountsAlertsDelete'' request conforms to.
type AccountsAlertsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "alerts" :>
           Capture "alertId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Dismiss (delete) the specified alert from the specified publisher
-- AdSense account.
--
-- /See:/ 'accountsAlertsDelete'' smart constructor.
data AccountsAlertsDelete' = AccountsAlertsDelete'
    { _aadAlertId   :: !Text
    , _aadAccountId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAlertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aadAlertId'
--
-- * 'aadAccountId'
accountsAlertsDelete'
    :: Text -- ^ 'aadAlertId'
    -> Text -- ^ 'aadAccountId'
    -> AccountsAlertsDelete'
accountsAlertsDelete' pAadAlertId_ pAadAccountId_ =
    AccountsAlertsDelete'
    { _aadAlertId = pAadAlertId_
    , _aadAccountId = pAadAccountId_
    }

-- | Alert to delete.
aadAlertId :: Lens' AccountsAlertsDelete' Text
aadAlertId
  = lens _aadAlertId (\ s a -> s{_aadAlertId = a})

-- | Account which contains the ad unit.
aadAccountId :: Lens' AccountsAlertsDelete' Text
aadAccountId
  = lens _aadAccountId (\ s a -> s{_aadAccountId = a})

instance GoogleRequest AccountsAlertsDelete' where
        type Rs AccountsAlertsDelete' = ()
        requestClient AccountsAlertsDelete'{..}
          = go _aadAccountId _aadAlertId (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAlertsDeleteResource)
                      mempty
