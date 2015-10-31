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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user role permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRolePermissions.get@.
module Network.Google.Resource.DFAReporting.UserRolePermissions.Get
    (
    -- * REST Resource
      UserRolePermissionsGetResource

    -- * Creating a Request
    , userRolePermissionsGet
    , UserRolePermissionsGet

    -- * Request Lenses
    , uProFileId
    , uId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissions.get@ method which the
-- 'UserRolePermissionsGet' request conforms to.
type UserRolePermissionsGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRolePermissions" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet' smart constructor.
data UserRolePermissionsGet = UserRolePermissionsGet
    { _uProFileId :: !(Textual Int64)
    , _uId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uProFileId'
--
-- * 'uId'
userRolePermissionsGet
    :: Int64 -- ^ 'uProFileId'
    -> Int64 -- ^ 'uId'
    -> UserRolePermissionsGet
userRolePermissionsGet pUProFileId_ pUId_ =
    UserRolePermissionsGet
    { _uProFileId = _Coerce # pUProFileId_
    , _uId = _Coerce # pUId_
    }

-- | User profile ID associated with this request.
uProFileId :: Lens' UserRolePermissionsGet Int64
uProFileId
  = lens _uProFileId (\ s a -> s{_uProFileId = a}) .
      _Coerce

-- | User role permission ID.
uId :: Lens' UserRolePermissionsGet Int64
uId = lens _uId (\ s a -> s{_uId = a}) . _Coerce

instance GoogleRequest UserRolePermissionsGet where
        type Rs UserRolePermissionsGet = UserRolePermission
        type Scopes UserRolePermissionsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolePermissionsGet{..}
          = go _uProFileId _uId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionsGetResource)
                      mempty
