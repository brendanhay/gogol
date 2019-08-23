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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.update@.
module Network.Google.Resource.DFAReporting.SubAccounts.Update
    (
    -- * REST Resource
      SubAccountsUpdateResource

    -- * Creating a Request
    , subAccountsUpdate
    , SubAccountsUpdate

    -- * Request Lenses
    , sauProFileId
    , sauPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.update@ method which the
-- 'SubAccountsUpdate' request conforms to.
type SubAccountsUpdateResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "subaccounts" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] SubAccount :> Put '[JSON] SubAccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subAccountsUpdate' smart constructor.
data SubAccountsUpdate =
  SubAccountsUpdate'
    { _sauProFileId :: !(Textual Int64)
    , _sauPayload   :: !SubAccount
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sauProFileId'
--
-- * 'sauPayload'
subAccountsUpdate
    :: Int64 -- ^ 'sauProFileId'
    -> SubAccount -- ^ 'sauPayload'
    -> SubAccountsUpdate
subAccountsUpdate pSauProFileId_ pSauPayload_ =
  SubAccountsUpdate'
    {_sauProFileId = _Coerce # pSauProFileId_, _sauPayload = pSauPayload_}


-- | User profile ID associated with this request.
sauProFileId :: Lens' SubAccountsUpdate Int64
sauProFileId
  = lens _sauProFileId (\ s a -> s{_sauProFileId = a})
      . _Coerce

-- | Multipart request metadata.
sauPayload :: Lens' SubAccountsUpdate SubAccount
sauPayload
  = lens _sauPayload (\ s a -> s{_sauPayload = a})

instance GoogleRequest SubAccountsUpdate where
        type Rs SubAccountsUpdate = SubAccount
        type Scopes SubAccountsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsUpdate'{..}
          = go _sauProFileId (Just AltJSON) _sauPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsUpdateResource)
                      mempty
