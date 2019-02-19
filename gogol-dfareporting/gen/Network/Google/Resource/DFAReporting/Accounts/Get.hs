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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.get@.
module Network.Google.Resource.DFAReporting.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , aggProFileId
    , aggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accounts" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet =
  AccountsGet'
    { _aggProFileId :: !(Textual Int64)
    , _aggId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggProFileId'
--
-- * 'aggId'
accountsGet
    :: Int64 -- ^ 'aggProFileId'
    -> Int64 -- ^ 'aggId'
    -> AccountsGet
accountsGet pAggProFileId_ pAggId_ =
  AccountsGet'
    {_aggProFileId = _Coerce # pAggProFileId_, _aggId = _Coerce # pAggId_}


-- | User profile ID associated with this request.
aggProFileId :: Lens' AccountsGet Int64
aggProFileId
  = lens _aggProFileId (\ s a -> s{_aggProFileId = a})
      . _Coerce

-- | Account ID.
aggId :: Lens' AccountsGet Int64
aggId
  = lens _aggId (\ s a -> s{_aggId = a}) . _Coerce

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountsGet'{..}
          = go _aggProFileId _aggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
