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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.update@.
module Network.Google.Resource.DFAReporting.Accounts.Update
    (
    -- * REST Resource
      AccountsUpdateResource

    -- * Creating a Request
    , accountsUpdate
    , AccountsUpdate

    -- * Request Lenses
    , auuProFileId
    , auuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.update@ method which the
-- 'AccountsUpdate' request conforms to.
type AccountsUpdateResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accounts" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Account :> Put '[JSON] Account

-- | Updates an existing account.
--
-- /See:/ 'accountsUpdate' smart constructor.
data AccountsUpdate =
  AccountsUpdate'
    { _auuProFileId :: !(Textual Int64)
    , _auuPayload   :: !Account
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuProFileId'
--
-- * 'auuPayload'
accountsUpdate
    :: Int64 -- ^ 'auuProFileId'
    -> Account -- ^ 'auuPayload'
    -> AccountsUpdate
accountsUpdate pAuuProFileId_ pAuuPayload_ =
  AccountsUpdate'
    {_auuProFileId = _Coerce # pAuuProFileId_, _auuPayload = pAuuPayload_}


-- | User profile ID associated with this request.
auuProFileId :: Lens' AccountsUpdate Int64
auuProFileId
  = lens _auuProFileId (\ s a -> s{_auuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
auuPayload :: Lens' AccountsUpdate Account
auuPayload
  = lens _auuPayload (\ s a -> s{_auuPayload = a})

instance GoogleRequest AccountsUpdate where
        type Rs AccountsUpdate = Account
        type Scopes AccountsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountsUpdate'{..}
          = go _auuProFileId (Just AltJSON) _auuPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsUpdateResource)
                      mempty
