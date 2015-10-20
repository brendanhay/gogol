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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.insert@.
module Network.Google.Resource.DFAReporting.SubAccounts.Insert
    (
    -- * REST Resource
      SubAccountsInsertResource

    -- * Creating a Request
    , subAccountsInsert
    , SubAccountsInsert

    -- * Request Lenses
    , saiProFileId
    , saiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.insert@ method which the
-- 'SubAccountsInsert' request conforms to.
type SubAccountsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] SubAccount :> Post '[JSON] SubAccount

-- | Inserts a new subaccount.
--
-- /See:/ 'subAccountsInsert' smart constructor.
data SubAccountsInsert = SubAccountsInsert
    { _saiProFileId :: !Int64
    , _saiPayload   :: !SubAccount
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubAccountsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saiProFileId'
--
-- * 'saiPayload'
subAccountsInsert
    :: Int64 -- ^ 'saiProFileId'
    -> SubAccount -- ^ 'saiPayload'
    -> SubAccountsInsert
subAccountsInsert pSaiProFileId_ pSaiPayload_ =
    SubAccountsInsert
    { _saiProFileId = pSaiProFileId_
    , _saiPayload = pSaiPayload_
    }

-- | User profile ID associated with this request.
saiProFileId :: Lens' SubAccountsInsert Int64
saiProFileId
  = lens _saiProFileId (\ s a -> s{_saiProFileId = a})

-- | Multipart request metadata.
saiPayload :: Lens' SubAccountsInsert SubAccount
saiPayload
  = lens _saiPayload (\ s a -> s{_saiPayload = a})

instance GoogleRequest SubAccountsInsert where
        type Rs SubAccountsInsert = SubAccount
        requestClient SubAccountsInsert{..}
          = go _saiProFileId (Just AltJSON) _saiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsInsertResource)
                      mempty
