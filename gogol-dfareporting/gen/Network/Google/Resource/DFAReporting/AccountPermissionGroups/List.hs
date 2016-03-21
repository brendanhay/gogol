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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of account permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountPermissionGroups.list@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
    (
    -- * REST Resource
      AccountPermissionGroupsListResource

    -- * Creating a Request
    , accountPermissionGroupsList
    , AccountPermissionGroupsList

    -- * Request Lenses
    , apglProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissionGroups.list@ method which the
-- 'AccountPermissionGroupsList' request conforms to.
type AccountPermissionGroupsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissionGroups" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] AccountPermissionGroupsListResponse

-- | Retrieves the list of account permission groups.
--
-- /See:/ 'accountPermissionGroupsList' smart constructor.
newtype AccountPermissionGroupsList = AccountPermissionGroupsList'
    { _apglProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissionGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apglProFileId'
accountPermissionGroupsList
    :: Int64 -- ^ 'apglProFileId'
    -> AccountPermissionGroupsList
accountPermissionGroupsList pApglProFileId_ =
    AccountPermissionGroupsList'
    { _apglProFileId = _Coerce # pApglProFileId_
    }

-- | User profile ID associated with this request.
apglProFileId :: Lens' AccountPermissionGroupsList Int64
apglProFileId
  = lens _apglProFileId
      (\ s a -> s{_apglProFileId = a})
      . _Coerce

instance GoogleRequest AccountPermissionGroupsList
         where
        type Rs AccountPermissionGroupsList =
             AccountPermissionGroupsListResponse
        type Scopes AccountPermissionGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionGroupsList'{..}
          = go _apglProFileId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionGroupsListResource)
                      mempty
