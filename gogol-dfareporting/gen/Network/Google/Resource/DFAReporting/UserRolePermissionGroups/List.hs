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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all supported user role permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRolePermissionGroups.list@.
module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.List
    (
    -- * REST Resource
      UserRolePermissionGroupsListResource

    -- * Creating a Request
    , userRolePermissionGroupsList
    , UserRolePermissionGroupsList

    -- * Request Lenses
    , urpglProFileId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissionGroups.list@ method which the
-- 'UserRolePermissionGroupsList' request conforms to.
type UserRolePermissionGroupsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissionGroups" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] UserRolePermissionGroupsListResponse

-- | Gets a list of all supported user role permission groups.
--
-- /See:/ 'userRolePermissionGroupsList' smart constructor.
newtype UserRolePermissionGroupsList = UserRolePermissionGroupsList'
    { _urpglProFileId :: Textual Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpglProFileId'
userRolePermissionGroupsList
    :: Int64 -- ^ 'urpglProFileId'
    -> UserRolePermissionGroupsList
userRolePermissionGroupsList pUrpglProFileId_ =
    UserRolePermissionGroupsList'
    { _urpglProFileId = _Coerce # pUrpglProFileId_
    }

-- | User profile ID associated with this request.
urpglProFileId :: Lens' UserRolePermissionGroupsList Int64
urpglProFileId
  = lens _urpglProFileId
      (\ s a -> s{_urpglProFileId = a})
      . _Coerce

instance GoogleRequest UserRolePermissionGroupsList
         where
        type Rs UserRolePermissionGroupsList =
             UserRolePermissionGroupsListResponse
        type Scopes UserRolePermissionGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionGroupsList'{..}
          = go _urpglProFileId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionGroupsListResource)
                      mempty
