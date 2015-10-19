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
-- Module      : Network.Google.Resource.Directory.RoleAssignments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryRoleAssignmentsGet@.
module Network.Google.Resource.Directory.RoleAssignments.Get
    (
    -- * REST Resource
      RoleAssignmentsGetResource

    -- * Creating a Request
    , roleAssignmentsGet'
    , RoleAssignmentsGet'

    -- * Request Lenses
    , ragCustomer
    , ragRoleAssignmentId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryRoleAssignmentsGet@ method which the
-- 'RoleAssignmentsGet'' request conforms to.
type RoleAssignmentsGetResource =
     "customer" :>
       Capture "customer" Text :>
         "roleassignments" :>
           Capture "roleAssignmentId" Text :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] RoleAssignment

-- | Retrieve a role assignment.
--
-- /See:/ 'roleAssignmentsGet'' smart constructor.
data RoleAssignmentsGet' = RoleAssignmentsGet'
    { _ragCustomer         :: !Text
    , _ragRoleAssignmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoleAssignmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ragCustomer'
--
-- * 'ragRoleAssignmentId'
roleAssignmentsGet'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'roleAssignmentId'
    -> RoleAssignmentsGet'
roleAssignmentsGet' pRagCustomer_ pRagRoleAssignmentId_ =
    RoleAssignmentsGet'
    { _ragCustomer = pRagCustomer_
    , _ragRoleAssignmentId = pRagRoleAssignmentId_
    }

-- | Immutable ID of the Google Apps account.
ragCustomer :: Lens' RoleAssignmentsGet' Text
ragCustomer
  = lens _ragCustomer (\ s a -> s{_ragCustomer = a})

-- | Immutable ID of the role assignment.
ragRoleAssignmentId :: Lens' RoleAssignmentsGet' Text
ragRoleAssignmentId
  = lens _ragRoleAssignmentId
      (\ s a -> s{_ragRoleAssignmentId = a})

instance GoogleRequest RoleAssignmentsGet' where
        type Rs RoleAssignmentsGet' = RoleAssignment
        requestClient RoleAssignmentsGet'{..}
          = go _ragCustomer _ragRoleAssignmentId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsGetResource)
                      mempty
