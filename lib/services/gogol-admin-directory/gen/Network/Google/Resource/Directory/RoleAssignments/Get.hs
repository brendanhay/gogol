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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.get@.
module Network.Google.Resource.Directory.RoleAssignments.Get
    (
    -- * REST Resource
      RoleAssignmentsGetResource

    -- * Creating a Request
    , roleAssignmentsGet
    , RoleAssignmentsGet

    -- * Request Lenses
    , ragXgafv
    , ragUploadProtocol
    , ragAccessToken
    , ragUploadType
    , ragCustomer
    , ragRoleAssignmentId
    , ragCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roleAssignments.get@ method which the
-- 'RoleAssignmentsGet' request conforms to.
type RoleAssignmentsGetResource =
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
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] RoleAssignment

-- | Retrieves a role assignment.
--
-- /See:/ 'roleAssignmentsGet' smart constructor.
data RoleAssignmentsGet =
  RoleAssignmentsGet'
    { _ragXgafv :: !(Maybe Xgafv)
    , _ragUploadProtocol :: !(Maybe Text)
    , _ragAccessToken :: !(Maybe Text)
    , _ragUploadType :: !(Maybe Text)
    , _ragCustomer :: !Text
    , _ragRoleAssignmentId :: !Text
    , _ragCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ragXgafv'
--
-- * 'ragUploadProtocol'
--
-- * 'ragAccessToken'
--
-- * 'ragUploadType'
--
-- * 'ragCustomer'
--
-- * 'ragRoleAssignmentId'
--
-- * 'ragCallback'
roleAssignmentsGet
    :: Text -- ^ 'ragCustomer'
    -> Text -- ^ 'ragRoleAssignmentId'
    -> RoleAssignmentsGet
roleAssignmentsGet pRagCustomer_ pRagRoleAssignmentId_ =
  RoleAssignmentsGet'
    { _ragXgafv = Nothing
    , _ragUploadProtocol = Nothing
    , _ragAccessToken = Nothing
    , _ragUploadType = Nothing
    , _ragCustomer = pRagCustomer_
    , _ragRoleAssignmentId = pRagRoleAssignmentId_
    , _ragCallback = Nothing
    }


-- | V1 error format.
ragXgafv :: Lens' RoleAssignmentsGet (Maybe Xgafv)
ragXgafv = lens _ragXgafv (\ s a -> s{_ragXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ragUploadProtocol :: Lens' RoleAssignmentsGet (Maybe Text)
ragUploadProtocol
  = lens _ragUploadProtocol
      (\ s a -> s{_ragUploadProtocol = a})

-- | OAuth access token.
ragAccessToken :: Lens' RoleAssignmentsGet (Maybe Text)
ragAccessToken
  = lens _ragAccessToken
      (\ s a -> s{_ragAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ragUploadType :: Lens' RoleAssignmentsGet (Maybe Text)
ragUploadType
  = lens _ragUploadType
      (\ s a -> s{_ragUploadType = a})

-- | Immutable ID of the Google Workspace account.
ragCustomer :: Lens' RoleAssignmentsGet Text
ragCustomer
  = lens _ragCustomer (\ s a -> s{_ragCustomer = a})

-- | Immutable ID of the role assignment.
ragRoleAssignmentId :: Lens' RoleAssignmentsGet Text
ragRoleAssignmentId
  = lens _ragRoleAssignmentId
      (\ s a -> s{_ragRoleAssignmentId = a})

-- | JSONP
ragCallback :: Lens' RoleAssignmentsGet (Maybe Text)
ragCallback
  = lens _ragCallback (\ s a -> s{_ragCallback = a})

instance GoogleRequest RoleAssignmentsGet where
        type Rs RoleAssignmentsGet = RoleAssignment
        type Scopes RoleAssignmentsGet =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient RoleAssignmentsGet'{..}
          = go _ragCustomer _ragRoleAssignmentId _ragXgafv
              _ragUploadProtocol
              _ragAccessToken
              _ragUploadType
              _ragCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsGetResource)
                      mempty
