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
-- Module      : Network.Google.Resource.Directory.RoleAssignments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.roleAssignments.insert@.
module Network.Google.Resource.Directory.RoleAssignments.Insert
    (
    -- * REST Resource
      RoleAssignmentsInsertResource

    -- * Creating a Request
    , roleAssignmentsInsert
    , RoleAssignmentsInsert

    -- * Request Lenses
    , raiPayload
    , raiCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.roleAssignments.insert@ method which the
-- 'RoleAssignmentsInsert' request conforms to.
type RoleAssignmentsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roleassignments" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] RoleAssignment :>
                     Post '[JSON] RoleAssignment

-- | Creates a role assignment.
--
-- /See:/ 'roleAssignmentsInsert' smart constructor.
data RoleAssignmentsInsert = RoleAssignmentsInsert
    { _raiPayload  :: !RoleAssignment
    , _raiCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoleAssignmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raiPayload'
--
-- * 'raiCustomer'
roleAssignmentsInsert
    :: RoleAssignment -- ^ 'raiPayload'
    -> Text -- ^ 'raiCustomer'
    -> RoleAssignmentsInsert
roleAssignmentsInsert pRaiPayload_ pRaiCustomer_ =
    RoleAssignmentsInsert
    { _raiPayload = pRaiPayload_
    , _raiCustomer = pRaiCustomer_
    }

-- | Multipart request metadata.
raiPayload :: Lens' RoleAssignmentsInsert RoleAssignment
raiPayload
  = lens _raiPayload (\ s a -> s{_raiPayload = a})

-- | Immutable ID of the Google Apps account.
raiCustomer :: Lens' RoleAssignmentsInsert Text
raiCustomer
  = lens _raiCustomer (\ s a -> s{_raiCustomer = a})

instance GoogleRequest RoleAssignmentsInsert where
        type Rs RoleAssignmentsInsert = RoleAssignment
        requestClient RoleAssignmentsInsert{..}
          = go _raiCustomer (Just AltJSON) _raiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsInsertResource)
                      mempty
