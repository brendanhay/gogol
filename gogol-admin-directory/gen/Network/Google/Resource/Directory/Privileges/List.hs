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
-- Module      : Network.Google.Resource.Directory.Privileges.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.privileges.list@.
module Network.Google.Resource.Directory.Privileges.List
    (
    -- * REST Resource
      PrivilegesListResource

    -- * Creating a Request
    , privilegesList
    , PrivilegesList

    -- * Request Lenses
    , plCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.privileges.list@ method which the
-- 'PrivilegesList' request conforms to.
type PrivilegesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 "ALL" :>
                   "privileges" :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Privileges

-- | Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ 'privilegesList' smart constructor.
newtype PrivilegesList = PrivilegesList'
    { _plCustomer :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PrivilegesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plCustomer'
privilegesList
    :: Text -- ^ 'plCustomer'
    -> PrivilegesList
privilegesList pPlCustomer_ =
    PrivilegesList'
    { _plCustomer = pPlCustomer_
    }

-- | Immutable ID of the G Suite account.
plCustomer :: Lens' PrivilegesList Text
plCustomer
  = lens _plCustomer (\ s a -> s{_plCustomer = a})

instance GoogleRequest PrivilegesList where
        type Rs PrivilegesList = Privileges
        type Scopes PrivilegesList =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient PrivilegesList'{..}
          = go _plCustomer (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy PrivilegesListResource)
                      mempty
