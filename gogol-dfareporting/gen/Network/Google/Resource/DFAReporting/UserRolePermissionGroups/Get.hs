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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRolePermissionGroups.get@.
module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
    (
    -- * REST Resource
      UserRolePermissionGroupsGetResource

    -- * Creating a Request
    , userRolePermissionGroupsGet
    , UserRolePermissionGroupsGet

    -- * Request Lenses
    , urpggProFileId
    , urpggId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissionGroups.get@ method which the
-- 'UserRolePermissionGroupsGet' request conforms to.
type UserRolePermissionGroupsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissionGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] UserRolePermissionGroup

-- | Gets one user role permission group by ID.
--
-- /See:/ 'userRolePermissionGroupsGet' smart constructor.
data UserRolePermissionGroupsGet = UserRolePermissionGroupsGet
    { _urpggProFileId :: !(Textual Int64)
    , _urpggId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpggProFileId'
--
-- * 'urpggId'
userRolePermissionGroupsGet
    :: Int64 -- ^ 'urpggProFileId'
    -> Int64 -- ^ 'urpggId'
    -> UserRolePermissionGroupsGet
userRolePermissionGroupsGet pUrpggProFileId_ pUrpggId_ =
    UserRolePermissionGroupsGet
    { _urpggProFileId = _Coerce # pUrpggProFileId_
    , _urpggId = _Coerce # pUrpggId_
    }

-- | User profile ID associated with this request.
urpggProFileId :: Lens' UserRolePermissionGroupsGet Int64
urpggProFileId
  = lens _urpggProFileId
      (\ s a -> s{_urpggProFileId = a})
      . _Coerce

-- | User role permission group ID.
urpggId :: Lens' UserRolePermissionGroupsGet Int64
urpggId
  = lens _urpggId (\ s a -> s{_urpggId = a}) . _Coerce

instance GoogleRequest UserRolePermissionGroupsGet
         where
        type Rs UserRolePermissionGroupsGet =
             UserRolePermissionGroup
        type Scopes UserRolePermissionGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionGroupsGet{..}
          = go _urpggProFileId _urpggId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionGroupsGetResource)
                      mempty
