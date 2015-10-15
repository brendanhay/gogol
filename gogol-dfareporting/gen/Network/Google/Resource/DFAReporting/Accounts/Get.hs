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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsGet@.
module Network.Google.Resource.DFAReporting.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet'
    , AccountsGet'

    -- * Request Lenses
    , ag1ProFileId
    , ag1Id
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsGet@ method which the
-- 'AccountsGet'' request conforms to.
type AccountsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet'' smart constructor.
data AccountsGet' = AccountsGet'
    { _ag1ProFileId :: !Int64
    , _ag1Id        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ag1ProFileId'
--
-- * 'ag1Id'
accountsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountsGet'
accountsGet' pAg1ProFileId_ pAg1Id_ =
    AccountsGet'
    { _ag1ProFileId = pAg1ProFileId_
    , _ag1Id = pAg1Id_
    }

-- | User profile ID associated with this request.
ag1ProFileId :: Lens' AccountsGet' Int64
ag1ProFileId
  = lens _ag1ProFileId (\ s a -> s{_ag1ProFileId = a})

-- | Account ID.
ag1Id :: Lens' AccountsGet' Int64
ag1Id = lens _ag1Id (\ s a -> s{_ag1Id = a})

instance GoogleRequest AccountsGet' where
        type Rs AccountsGet' = Account
        requestClient AccountsGet'{..}
          = go _ag1ProFileId _ag1Id (Just AltJSON) dFAReporting
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
