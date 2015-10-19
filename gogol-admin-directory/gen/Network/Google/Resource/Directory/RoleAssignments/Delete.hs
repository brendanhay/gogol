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
-- Module      : Network.Google.Resource.Directory.RoleAssignments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryRoleAssignmentsDelete@.
module Network.Google.Resource.Directory.RoleAssignments.Delete
    (
    -- * REST Resource
      RoleAssignmentsDeleteResource

    -- * Creating a Request
    , roleAssignmentsDelete'
    , RoleAssignmentsDelete'

    -- * Request Lenses
    , radCustomer
    , radRoleAssignmentId
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryRoleAssignmentsDelete@ method which the
-- 'RoleAssignmentsDelete'' request conforms to.
type RoleAssignmentsDeleteResource =
     "customer" :>
       Capture "customer" Text :>
         "roleassignments" :>
           Capture "roleAssignmentId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a role assignment.
--
-- /See:/ 'roleAssignmentsDelete'' smart constructor.
data RoleAssignmentsDelete' = RoleAssignmentsDelete'
    { _radCustomer         :: !Text
    , _radRoleAssignmentId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoleAssignmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radCustomer'
--
-- * 'radRoleAssignmentId'
roleAssignmentsDelete'
    :: Text -- ^ 'customer'
    -> Text -- ^ 'roleAssignmentId'
    -> RoleAssignmentsDelete'
roleAssignmentsDelete' pRadCustomer_ pRadRoleAssignmentId_ =
    RoleAssignmentsDelete'
    { _radCustomer = pRadCustomer_
    , _radRoleAssignmentId = pRadRoleAssignmentId_
    }

-- | Immutable ID of the Google Apps account.
radCustomer :: Lens' RoleAssignmentsDelete' Text
radCustomer
  = lens _radCustomer (\ s a -> s{_radCustomer = a})

-- | Immutable ID of the role assignment.
radRoleAssignmentId :: Lens' RoleAssignmentsDelete' Text
radRoleAssignmentId
  = lens _radRoleAssignmentId
      (\ s a -> s{_radRoleAssignmentId = a})

instance GoogleRequest RoleAssignmentsDelete' where
        type Rs RoleAssignmentsDelete' = ()
        requestClient RoleAssignmentsDelete'{..}
          = go _radCustomer _radRoleAssignmentId (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsDeleteResource)
                      mempty
