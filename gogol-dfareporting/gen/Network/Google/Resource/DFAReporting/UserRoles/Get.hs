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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesGet@.
module Network.Google.Resource.DFAReporting.UserRoles.Get
    (
    -- * REST Resource
      UserRolesGetResource

    -- * Creating a Request
    , userRolesGet'
    , UserRolesGet'

    -- * Request Lenses
    , urgProFileId
    , urgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesGet@ method which the
-- 'UserRolesGet'' request conforms to.
type UserRolesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] UserRole

-- | Gets one user role by ID.
--
-- /See:/ 'userRolesGet'' smart constructor.
data UserRolesGet' = UserRolesGet'
    { _urgProFileId :: !Int64
    , _urgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urgProFileId'
--
-- * 'urgId'
userRolesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesGet'
userRolesGet' pUrgProFileId_ pUrgId_ =
    UserRolesGet'
    { _urgProFileId = pUrgProFileId_
    , _urgId = pUrgId_
    }

-- | User profile ID associated with this request.
urgProFileId :: Lens' UserRolesGet' Int64
urgProFileId
  = lens _urgProFileId (\ s a -> s{_urgProFileId = a})

-- | User role ID.
urgId :: Lens' UserRolesGet' Int64
urgId = lens _urgId (\ s a -> s{_urgId = a})

instance GoogleRequest UserRolesGet' where
        type Rs UserRolesGet' = UserRole
        requestClient UserRolesGet'{..}
          = go _urgProFileId _urgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy UserRolesGetResource)
                      mempty
