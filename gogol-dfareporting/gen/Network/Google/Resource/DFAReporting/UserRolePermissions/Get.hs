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
-- Copyright   : (c) 2015 Brendan Hay
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
    , userRolePermissionsGet'
    , UserRolePermissionsGet'

    -- * Request Lenses
    , urpgProFileId
    , urpgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.userRolePermissions.get@ method which the
-- 'UserRolePermissionsGet'' request conforms to.
type UserRolePermissionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissions" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet'' smart constructor.
data UserRolePermissionsGet' = UserRolePermissionsGet'
    { _urpgProFileId :: !Int64
    , _urpgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpgProFileId'
--
-- * 'urpgId'
userRolePermissionsGet'
    :: Int64 -- ^ 'urpgProFileId'
    -> Int64 -- ^ 'urpgId'
    -> UserRolePermissionsGet'
userRolePermissionsGet' pUrpgProFileId_ pUrpgId_ =
    UserRolePermissionsGet'
    { _urpgProFileId = pUrpgProFileId_
    , _urpgId = pUrpgId_
    }

-- | User profile ID associated with this request.
urpgProFileId :: Lens' UserRolePermissionsGet' Int64
urpgProFileId
  = lens _urpgProFileId
      (\ s a -> s{_urpgProFileId = a})

-- | User role permission ID.
urpgId :: Lens' UserRolePermissionsGet' Int64
urpgId = lens _urpgId (\ s a -> s{_urpgId = a})

instance GoogleRequest UserRolePermissionsGet' where
        type Rs UserRolePermissionsGet' = UserRolePermission
        requestClient UserRolePermissionsGet'{..}
          = go _urpgProFileId _urpgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolePermissionsGetResource)
                      mempty
