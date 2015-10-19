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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountPermissionsGet@.
module Network.Google.Resource.DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetResource

    -- * Creating a Request
    , accountPermissionsGet'
    , AccountPermissionsGet'

    -- * Request Lenses
    , accProFileId
    , accId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountPermissionsGet@ method which the
-- 'AccountPermissionsGet'' request conforms to.
type AccountPermissionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissions" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet'' smart constructor.
data AccountPermissionsGet' = AccountPermissionsGet'
    { _accProFileId :: !Int64
    , _accId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accProFileId'
--
-- * 'accId'
accountPermissionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountPermissionsGet'
accountPermissionsGet' pAccProFileId_ pAccId_ =
    AccountPermissionsGet'
    { _accProFileId = pAccProFileId_
    , _accId = pAccId_
    }

-- | User profile ID associated with this request.
accProFileId :: Lens' AccountPermissionsGet' Int64
accProFileId
  = lens _accProFileId (\ s a -> s{_accProFileId = a})

-- | Account permission ID.
accId :: Lens' AccountPermissionsGet' Int64
accId = lens _accId (\ s a -> s{_accId = a})

instance GoogleRequest AccountPermissionsGet' where
        type Rs AccountPermissionsGet' = AccountPermission
        requestClient AccountPermissionsGet'{..}
          = go _accProFileId _accId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionsGetResource)
                      mempty
