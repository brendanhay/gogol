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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.delete@.
module Network.Google.Resource.Directory.Roles.Delete
    (
    -- * REST Resource
      RolesDeleteResource

    -- * Creating a Request
    , rolesDelete
    , RolesDelete

    -- * Request Lenses
    , rdXgafv
    , rdUploadProtocol
    , rdAccessToken
    , rdUploadType
    , rdRoleId
    , rdCustomer
    , rdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roles.delete@ method which the
-- 'RolesDelete' request conforms to.
type RolesDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roles" :>
                 Capture "roleId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a role.
--
-- /See:/ 'rolesDelete' smart constructor.
data RolesDelete =
  RolesDelete'
    { _rdXgafv :: !(Maybe Xgafv)
    , _rdUploadProtocol :: !(Maybe Text)
    , _rdAccessToken :: !(Maybe Text)
    , _rdUploadType :: !(Maybe Text)
    , _rdRoleId :: !Text
    , _rdCustomer :: !Text
    , _rdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RolesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdXgafv'
--
-- * 'rdUploadProtocol'
--
-- * 'rdAccessToken'
--
-- * 'rdUploadType'
--
-- * 'rdRoleId'
--
-- * 'rdCustomer'
--
-- * 'rdCallback'
rolesDelete
    :: Text -- ^ 'rdRoleId'
    -> Text -- ^ 'rdCustomer'
    -> RolesDelete
rolesDelete pRdRoleId_ pRdCustomer_ =
  RolesDelete'
    { _rdXgafv = Nothing
    , _rdUploadProtocol = Nothing
    , _rdAccessToken = Nothing
    , _rdUploadType = Nothing
    , _rdRoleId = pRdRoleId_
    , _rdCustomer = pRdCustomer_
    , _rdCallback = Nothing
    }


-- | V1 error format.
rdXgafv :: Lens' RolesDelete (Maybe Xgafv)
rdXgafv = lens _rdXgafv (\ s a -> s{_rdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rdUploadProtocol :: Lens' RolesDelete (Maybe Text)
rdUploadProtocol
  = lens _rdUploadProtocol
      (\ s a -> s{_rdUploadProtocol = a})

-- | OAuth access token.
rdAccessToken :: Lens' RolesDelete (Maybe Text)
rdAccessToken
  = lens _rdAccessToken
      (\ s a -> s{_rdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rdUploadType :: Lens' RolesDelete (Maybe Text)
rdUploadType
  = lens _rdUploadType (\ s a -> s{_rdUploadType = a})

-- | Immutable ID of the role.
rdRoleId :: Lens' RolesDelete Text
rdRoleId = lens _rdRoleId (\ s a -> s{_rdRoleId = a})

-- | Immutable ID of the Google Workspace account.
rdCustomer :: Lens' RolesDelete Text
rdCustomer
  = lens _rdCustomer (\ s a -> s{_rdCustomer = a})

-- | JSONP
rdCallback :: Lens' RolesDelete (Maybe Text)
rdCallback
  = lens _rdCallback (\ s a -> s{_rdCallback = a})

instance GoogleRequest RolesDelete where
        type Rs RolesDelete = ()
        type Scopes RolesDelete =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RolesDelete'{..}
          = go _rdCustomer _rdRoleId _rdXgafv _rdUploadProtocol
              _rdAccessToken
              _rdUploadType
              _rdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy RolesDeleteResource)
                      mempty
