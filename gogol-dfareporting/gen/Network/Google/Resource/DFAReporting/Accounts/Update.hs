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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsUpdate@.
module Network.Google.Resource.DFAReporting.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate'
    , AccountsUpdate'

    -- * Request Lenses
    , auProFileId
    , auPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsUpdate@ method which the
-- 'AccountsUpdate'' request conforms to.
type AccountsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate'' smart constructor.
data AccountsUpdate' = AccountsUpdate'
    { _auProFileId :: !Int64
    , _auPayload   :: !Account
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auProFileId'
--
-- * 'auPayload'
accountsUpdate'
    :: Int64 -- ^ 'profileId'
    -> Account -- ^ 'payload'
    -> AccountsUpdate'
accountsUpdate' pAuProFileId_ pAuPayload_ =
    AccountsUpdate'
    { _auProFileId = pAuProFileId_
    , _auPayload = pAuPayload_
    }

-- | User profile ID associated with this request.
auProFileId :: Lens' AccountsUpdate' Int64
auProFileId
  = lens _auProFileId (\ s a -> s{_auProFileId = a})

-- | Multipart request metadata.
auPayload :: Lens' AccountsUpdate' Account
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

instance GoogleRequest AccountsUpdate' where
        type Rs AccountsUpdate' = Account
        requestClient AccountsUpdate'{..}
          = go _auProFileId (Just AltJSON) _auPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
