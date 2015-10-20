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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountPermissionGroups.get@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
    (
    -- * REST Resource
      AccountPermissionGroupsGetResource

    -- * Creating a Request
    , accountPermissionGroupsGet
    , AccountPermissionGroupsGet

    -- * Request Lenses
    , apggProFileId
    , apggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissionGroups.get@ method which the
-- 'AccountPermissionGroupsGet' request conforms to.
type AccountPermissionGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountPermissionGroups" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountPermissionGroup

-- | Gets one account permission group by ID.
--
-- /See:/ 'accountPermissionGroupsGet' smart constructor.
data AccountPermissionGroupsGet = AccountPermissionGroupsGet
    { _apggProFileId :: !Int64
    , _apggId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apggProFileId'
--
-- * 'apggId'
accountPermissionGroupsGet
    :: Int64 -- ^ 'apggProFileId'
    -> Int64 -- ^ 'apggId'
    -> AccountPermissionGroupsGet
accountPermissionGroupsGet pApggProFileId_ pApggId_ =
    AccountPermissionGroupsGet
    { _apggProFileId = pApggProFileId_
    , _apggId = pApggId_
    }

-- | User profile ID associated with this request.
apggProFileId :: Lens' AccountPermissionGroupsGet Int64
apggProFileId
  = lens _apggProFileId
      (\ s a -> s{_apggProFileId = a})

-- | Account permission group ID.
apggId :: Lens' AccountPermissionGroupsGet Int64
apggId = lens _apggId (\ s a -> s{_apggId = a})

instance GoogleRequest AccountPermissionGroupsGet
         where
        type Rs AccountPermissionGroupsGet =
             AccountPermissionGroup
        requestClient AccountPermissionGroupsGet{..}
          = go _apggProFileId _apggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionGroupsGetResource)
                      mempty
