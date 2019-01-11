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
-- Module      : Network.Google.Resource.Directory.Roles.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.roles.insert@.
module Network.Google.Resource.Directory.Roles.Insert
    (
    -- * REST Resource
      RolesInsertResource

    -- * Creating a Request
    , rolesInsert
    , RolesInsert

    -- * Request Lenses
    , riPayload
    , riCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.roles.insert@ method which the
-- 'RolesInsert' request conforms to.
type RolesInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Role :> Post '[JSON] Role

-- | Creates a role.
--
-- /See:/ 'rolesInsert' smart constructor.
data RolesInsert = RolesInsert'
    { _riPayload  :: !Role
    , _riCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riPayload'
--
-- * 'riCustomer'
rolesInsert
    :: Role -- ^ 'riPayload'
    -> Text -- ^ 'riCustomer'
    -> RolesInsert
rolesInsert pRiPayload_ pRiCustomer_ =
    RolesInsert'
    { _riPayload = pRiPayload_
    , _riCustomer = pRiCustomer_
    }

-- | Multipart request metadata.
riPayload :: Lens' RolesInsert Role
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | Immutable ID of the G Suite account.
riCustomer :: Lens' RolesInsert Text
riCustomer
  = lens _riCustomer (\ s a -> s{_riCustomer = a})

instance GoogleRequest RolesInsert where
        type Rs RolesInsert = Role
        type Scopes RolesInsert =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RolesInsert'{..}
          = go _riCustomer (Just AltJSON) _riPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesInsertResource)
                      mempty
