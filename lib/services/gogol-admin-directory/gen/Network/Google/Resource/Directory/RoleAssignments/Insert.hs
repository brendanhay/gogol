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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role assignment.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.insert@.
module Network.Google.Resource.Directory.RoleAssignments.Insert
    (
    -- * REST Resource
      RoleAssignmentsInsertResource

    -- * Creating a Request
    , roleAssignmentsInsert
    , RoleAssignmentsInsert

    -- * Request Lenses
    , raiXgafv
    , raiUploadProtocol
    , raiAccessToken
    , raiUploadType
    , raiPayload
    , raiCustomer
    , raiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roleAssignments.insert@ method which the
-- 'RoleAssignmentsInsert' request conforms to.
type RoleAssignmentsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "roleassignments" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RoleAssignment :>
                               Post '[JSON] RoleAssignment

-- | Creates a role assignment.
--
-- /See:/ 'roleAssignmentsInsert' smart constructor.
data RoleAssignmentsInsert =
  RoleAssignmentsInsert'
    { _raiXgafv :: !(Maybe Xgafv)
    , _raiUploadProtocol :: !(Maybe Text)
    , _raiAccessToken :: !(Maybe Text)
    , _raiUploadType :: !(Maybe Text)
    , _raiPayload :: !RoleAssignment
    , _raiCustomer :: !Text
    , _raiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignmentsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raiXgafv'
--
-- * 'raiUploadProtocol'
--
-- * 'raiAccessToken'
--
-- * 'raiUploadType'
--
-- * 'raiPayload'
--
-- * 'raiCustomer'
--
-- * 'raiCallback'
roleAssignmentsInsert
    :: RoleAssignment -- ^ 'raiPayload'
    -> Text -- ^ 'raiCustomer'
    -> RoleAssignmentsInsert
roleAssignmentsInsert pRaiPayload_ pRaiCustomer_ =
  RoleAssignmentsInsert'
    { _raiXgafv = Nothing
    , _raiUploadProtocol = Nothing
    , _raiAccessToken = Nothing
    , _raiUploadType = Nothing
    , _raiPayload = pRaiPayload_
    , _raiCustomer = pRaiCustomer_
    , _raiCallback = Nothing
    }


-- | V1 error format.
raiXgafv :: Lens' RoleAssignmentsInsert (Maybe Xgafv)
raiXgafv = lens _raiXgafv (\ s a -> s{_raiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
raiUploadProtocol :: Lens' RoleAssignmentsInsert (Maybe Text)
raiUploadProtocol
  = lens _raiUploadProtocol
      (\ s a -> s{_raiUploadProtocol = a})

-- | OAuth access token.
raiAccessToken :: Lens' RoleAssignmentsInsert (Maybe Text)
raiAccessToken
  = lens _raiAccessToken
      (\ s a -> s{_raiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
raiUploadType :: Lens' RoleAssignmentsInsert (Maybe Text)
raiUploadType
  = lens _raiUploadType
      (\ s a -> s{_raiUploadType = a})

-- | Multipart request metadata.
raiPayload :: Lens' RoleAssignmentsInsert RoleAssignment
raiPayload
  = lens _raiPayload (\ s a -> s{_raiPayload = a})

-- | Immutable ID of the Google Workspace account.
raiCustomer :: Lens' RoleAssignmentsInsert Text
raiCustomer
  = lens _raiCustomer (\ s a -> s{_raiCustomer = a})

-- | JSONP
raiCallback :: Lens' RoleAssignmentsInsert (Maybe Text)
raiCallback
  = lens _raiCallback (\ s a -> s{_raiCallback = a})

instance GoogleRequest RoleAssignmentsInsert where
        type Rs RoleAssignmentsInsert = RoleAssignment
        type Scopes RoleAssignmentsInsert =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement"]
        requestClient RoleAssignmentsInsert'{..}
          = go _raiCustomer _raiXgafv _raiUploadProtocol
              _raiAccessToken
              _raiUploadType
              _raiCallback
              (Just AltJSON)
              _raiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsInsertResource)
                      mempty
