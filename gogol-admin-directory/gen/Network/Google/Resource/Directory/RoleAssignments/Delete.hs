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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.delete@.
module Network.Google.Resource.Directory.RoleAssignments.Delete
    (
    -- * REST Resource
      RoleAssignmentsDeleteResource

    -- * Creating a Request
    , roleAssignmentsDelete
    , RoleAssignmentsDelete

    -- * Request Lenses
    , radXgafv
    , radUploadProtocol
    , radAccessToken
    , radUploadType
    , radCustomer
    , radRoleAssignmentId
    , radCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roleAssignments.delete@ method which the
-- 'RoleAssignmentsDelete' request conforms to.
type RoleAssignmentsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roleassignments" :>
                 Capture "roleAssignmentId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a role assignment.
--
-- /See:/ 'roleAssignmentsDelete' smart constructor.
data RoleAssignmentsDelete =
  RoleAssignmentsDelete'
    { _radXgafv :: !(Maybe Xgafv)
    , _radUploadProtocol :: !(Maybe Text)
    , _radAccessToken :: !(Maybe Text)
    , _radUploadType :: !(Maybe Text)
    , _radCustomer :: !Text
    , _radRoleAssignmentId :: !Text
    , _radCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radXgafv'
--
-- * 'radUploadProtocol'
--
-- * 'radAccessToken'
--
-- * 'radUploadType'
--
-- * 'radCustomer'
--
-- * 'radRoleAssignmentId'
--
-- * 'radCallback'
roleAssignmentsDelete
    :: Text -- ^ 'radCustomer'
    -> Text -- ^ 'radRoleAssignmentId'
    -> RoleAssignmentsDelete
roleAssignmentsDelete pRadCustomer_ pRadRoleAssignmentId_ =
  RoleAssignmentsDelete'
    { _radXgafv = Nothing
    , _radUploadProtocol = Nothing
    , _radAccessToken = Nothing
    , _radUploadType = Nothing
    , _radCustomer = pRadCustomer_
    , _radRoleAssignmentId = pRadRoleAssignmentId_
    , _radCallback = Nothing
    }


-- | V1 error format.
radXgafv :: Lens' RoleAssignmentsDelete (Maybe Xgafv)
radXgafv = lens _radXgafv (\ s a -> s{_radXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
radUploadProtocol :: Lens' RoleAssignmentsDelete (Maybe Text)
radUploadProtocol
  = lens _radUploadProtocol
      (\ s a -> s{_radUploadProtocol = a})

-- | OAuth access token.
radAccessToken :: Lens' RoleAssignmentsDelete (Maybe Text)
radAccessToken
  = lens _radAccessToken
      (\ s a -> s{_radAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
radUploadType :: Lens' RoleAssignmentsDelete (Maybe Text)
radUploadType
  = lens _radUploadType
      (\ s a -> s{_radUploadType = a})

-- | Immutable ID of the Google Workspace account.
radCustomer :: Lens' RoleAssignmentsDelete Text
radCustomer
  = lens _radCustomer (\ s a -> s{_radCustomer = a})

-- | Immutable ID of the role assignment.
radRoleAssignmentId :: Lens' RoleAssignmentsDelete Text
radRoleAssignmentId
  = lens _radRoleAssignmentId
      (\ s a -> s{_radRoleAssignmentId = a})

-- | JSONP
radCallback :: Lens' RoleAssignmentsDelete (Maybe Text)
radCallback
  = lens _radCallback (\ s a -> s{_radCallback = a})

instance GoogleRequest RoleAssignmentsDelete where
        type Rs RoleAssignmentsDelete = ()
        type Scopes RoleAssignmentsDelete =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RoleAssignmentsDelete'{..}
          = go _radCustomer _radRoleAssignmentId _radXgafv
              _radUploadProtocol
              _radAccessToken
              _radUploadType
              _radCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsDeleteResource)
                      mempty
