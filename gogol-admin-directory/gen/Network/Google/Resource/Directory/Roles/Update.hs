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
-- Module      : Network.Google.Resource.Directory.Roles.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.roles.update@.
module Network.Google.Resource.Directory.Roles.Update
    (
    -- * REST Resource
      RolesUpdateResource

    -- * Creating a Request
    , rolesUpdate
    , RolesUpdate

    -- * Request Lenses
    , ruPayload
    , ruRoleId
    , ruCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.roles.update@ method which the
-- 'RolesUpdate' request conforms to.
type RolesUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 Capture "roleId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Role :> Put '[JSON] Role

-- | Updates a role.
--
-- /See:/ 'rolesUpdate' smart constructor.
data RolesUpdate = RolesUpdate'
    { _ruPayload  :: !Role
    , _ruRoleId   :: !Text
    , _ruCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruPayload'
--
-- * 'ruRoleId'
--
-- * 'ruCustomer'
rolesUpdate
    :: Role -- ^ 'ruPayload'
    -> Text -- ^ 'ruRoleId'
    -> Text -- ^ 'ruCustomer'
    -> RolesUpdate
rolesUpdate pRuPayload_ pRuRoleId_ pRuCustomer_ =
    RolesUpdate'
    { _ruPayload = pRuPayload_
    , _ruRoleId = pRuRoleId_
    , _ruCustomer = pRuCustomer_
    }

-- | Multipart request metadata.
ruPayload :: Lens' RolesUpdate Role
ruPayload
  = lens _ruPayload (\ s a -> s{_ruPayload = a})

-- | Immutable ID of the role.
ruRoleId :: Lens' RolesUpdate Text
ruRoleId = lens _ruRoleId (\ s a -> s{_ruRoleId = a})

-- | Immutable ID of the Google Apps account.
ruCustomer :: Lens' RolesUpdate Text
ruCustomer
  = lens _ruCustomer (\ s a -> s{_ruCustomer = a})

instance GoogleRequest RolesUpdate where
        type Rs RolesUpdate = Role
        type Scopes RolesUpdate =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RolesUpdate'{..}
          = go _ruCustomer _ruRoleId (Just AltJSON) _ruPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesUpdateResource)
                      mempty
