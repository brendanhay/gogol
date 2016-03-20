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
-- Module      : Network.Google.Resource.Directory.Roles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.roles.patch@.
module Network.Google.Resource.Directory.Roles.Patch
    (
    -- * REST Resource
      RolesPatchResource

    -- * Creating a Request
    , rolesPatch
    , RolesPatch

    -- * Request Lenses
    , rpPayload
    , rpRoleId
    , rpCustomer
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.roles.patch@ method which the
-- 'RolesPatch' request conforms to.
type RolesPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 Capture "roleId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Role :> Patch '[JSON] Role

-- | Updates a role. This method supports patch semantics.
--
-- /See:/ 'rolesPatch' smart constructor.
data RolesPatch = RolesPatch
    { _rpPayload  :: !Role
    , _rpRoleId   :: !Text
    , _rpCustomer :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpPayload'
--
-- * 'rpRoleId'
--
-- * 'rpCustomer'
rolesPatch
    :: Role -- ^ 'rpPayload'
    -> Text -- ^ 'rpRoleId'
    -> Text -- ^ 'rpCustomer'
    -> RolesPatch
rolesPatch pRpPayload_ pRpRoleId_ pRpCustomer_ =
    RolesPatch
    { _rpPayload = pRpPayload_
    , _rpRoleId = pRpRoleId_
    , _rpCustomer = pRpCustomer_
    }

-- | Multipart request metadata.
rpPayload :: Lens' RolesPatch Role
rpPayload
  = lens _rpPayload (\ s a -> s{_rpPayload = a})

-- | Immutable ID of the role.
rpRoleId :: Lens' RolesPatch Text
rpRoleId = lens _rpRoleId (\ s a -> s{_rpRoleId = a})

-- | Immutable ID of the Google Apps account.
rpCustomer :: Lens' RolesPatch Text
rpCustomer
  = lens _rpCustomer (\ s a -> s{_rpCustomer = a})

instance GoogleRequest RolesPatch where
        type Rs RolesPatch = Role
        requestClient RolesPatch{..}
          = go _rpCustomer _rpRoleId (Just AltJSON) _rpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesPatchResource)
                      mempty
