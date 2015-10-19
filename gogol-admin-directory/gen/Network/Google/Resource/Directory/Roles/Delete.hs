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
-- Module      : Network.Google.Resource.Directory.Roles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryRolesDelete@.
module Network.Google.Resource.Directory.Roles.Delete
    (
    -- * REST Resource
      RolesDeleteResource

    -- * Creating a Request
    , rolesDelete'
    , RolesDelete'

    -- * Request Lenses
    , rdRoleId
    , rdCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryRolesDelete@ method which the
-- 'RolesDelete'' request conforms to.
type RolesDeleteResource =
     "customer" :>
       Capture "customer" Text :>
         "roles" :>
           Capture "roleId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a role.
--
-- /See:/ 'rolesDelete'' smart constructor.
data RolesDelete' = RolesDelete'
    { _rdRoleId   :: !Text
    , _rdCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRoleId'
--
-- * 'rdCustomer'
rolesDelete'
    :: Text -- ^ 'roleId'
    -> Text -- ^ 'customer'
    -> RolesDelete'
rolesDelete' pRdRoleId_ pRdCustomer_ =
    RolesDelete'
    { _rdRoleId = pRdRoleId_
    , _rdCustomer = pRdCustomer_
    }

-- | Immutable ID of the role.
rdRoleId :: Lens' RolesDelete' Text
rdRoleId = lens _rdRoleId (\ s a -> s{_rdRoleId = a})

-- | Immutable ID of the Google Apps account.
rdCustomer :: Lens' RolesDelete' Text
rdCustomer
  = lens _rdCustomer (\ s a -> s{_rdCustomer = a})

instance GoogleRequest RolesDelete' where
        type Rs RolesDelete' = ()
        requestClient RolesDelete'{..}
          = go _rdCustomer _rdRoleId (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesDeleteResource)
                      mempty
