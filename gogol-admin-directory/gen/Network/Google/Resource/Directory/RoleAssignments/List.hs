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
-- Module      : Network.Google.Resource.Directory.RoleAssignments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all roleAssignments.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roleAssignments.list@.
module Network.Google.Resource.Directory.RoleAssignments.List
    (
    -- * REST Resource
      RoleAssignmentsListResource

    -- * Creating a Request
    , roleAssignmentsList
    , RoleAssignmentsList

    -- * Request Lenses
    , ralXgafv
    , ralUploadProtocol
    , ralAccessToken
    , ralUploadType
    , ralRoleId
    , ralCustomer
    , ralPageToken
    , ralUserKey
    , ralMaxResults
    , ralCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.roleAssignments.list@ method which the
-- 'RoleAssignmentsList' request conforms to.
type RoleAssignmentsListResource =
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
                         QueryParam "roleId" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "userKey" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] RoleAssignments

-- | Retrieves a paginated list of all roleAssignments.
--
-- /See:/ 'roleAssignmentsList' smart constructor.
data RoleAssignmentsList =
  RoleAssignmentsList'
    { _ralXgafv :: !(Maybe Xgafv)
    , _ralUploadProtocol :: !(Maybe Text)
    , _ralAccessToken :: !(Maybe Text)
    , _ralUploadType :: !(Maybe Text)
    , _ralRoleId :: !(Maybe Text)
    , _ralCustomer :: !Text
    , _ralPageToken :: !(Maybe Text)
    , _ralUserKey :: !(Maybe Text)
    , _ralMaxResults :: !(Maybe (Textual Int32))
    , _ralCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoleAssignmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ralXgafv'
--
-- * 'ralUploadProtocol'
--
-- * 'ralAccessToken'
--
-- * 'ralUploadType'
--
-- * 'ralRoleId'
--
-- * 'ralCustomer'
--
-- * 'ralPageToken'
--
-- * 'ralUserKey'
--
-- * 'ralMaxResults'
--
-- * 'ralCallback'
roleAssignmentsList
    :: Text -- ^ 'ralCustomer'
    -> RoleAssignmentsList
roleAssignmentsList pRalCustomer_ =
  RoleAssignmentsList'
    { _ralXgafv = Nothing
    , _ralUploadProtocol = Nothing
    , _ralAccessToken = Nothing
    , _ralUploadType = Nothing
    , _ralRoleId = Nothing
    , _ralCustomer = pRalCustomer_
    , _ralPageToken = Nothing
    , _ralUserKey = Nothing
    , _ralMaxResults = Nothing
    , _ralCallback = Nothing
    }


-- | V1 error format.
ralXgafv :: Lens' RoleAssignmentsList (Maybe Xgafv)
ralXgafv = lens _ralXgafv (\ s a -> s{_ralXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ralUploadProtocol :: Lens' RoleAssignmentsList (Maybe Text)
ralUploadProtocol
  = lens _ralUploadProtocol
      (\ s a -> s{_ralUploadProtocol = a})

-- | OAuth access token.
ralAccessToken :: Lens' RoleAssignmentsList (Maybe Text)
ralAccessToken
  = lens _ralAccessToken
      (\ s a -> s{_ralAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ralUploadType :: Lens' RoleAssignmentsList (Maybe Text)
ralUploadType
  = lens _ralUploadType
      (\ s a -> s{_ralUploadType = a})

-- | Immutable ID of a role. If included in the request, returns only role
-- assignments containing this role ID.
ralRoleId :: Lens' RoleAssignmentsList (Maybe Text)
ralRoleId
  = lens _ralRoleId (\ s a -> s{_ralRoleId = a})

-- | Immutable ID of the Google Workspace account.
ralCustomer :: Lens' RoleAssignmentsList Text
ralCustomer
  = lens _ralCustomer (\ s a -> s{_ralCustomer = a})

-- | Token to specify the next page in the list.
ralPageToken :: Lens' RoleAssignmentsList (Maybe Text)
ralPageToken
  = lens _ralPageToken (\ s a -> s{_ralPageToken = a})

-- | The user\'s primary email address, alias email address, or unique user
-- ID. If included in the request, returns role assignments only for this
-- user.
ralUserKey :: Lens' RoleAssignmentsList (Maybe Text)
ralUserKey
  = lens _ralUserKey (\ s a -> s{_ralUserKey = a})

-- | Maximum number of results to return.
ralMaxResults :: Lens' RoleAssignmentsList (Maybe Int32)
ralMaxResults
  = lens _ralMaxResults
      (\ s a -> s{_ralMaxResults = a})
      . mapping _Coerce

-- | JSONP
ralCallback :: Lens' RoleAssignmentsList (Maybe Text)
ralCallback
  = lens _ralCallback (\ s a -> s{_ralCallback = a})

instance GoogleRequest RoleAssignmentsList where
        type Rs RoleAssignmentsList = RoleAssignments
        type Scopes RoleAssignmentsList =
             '["https://www.googleapis.com/auth/admin.directory.rolemanagement",
               "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"]
        requestClient RoleAssignmentsList'{..}
          = go _ralCustomer _ralXgafv _ralUploadProtocol
              _ralAccessToken
              _ralUploadType
              _ralRoleId
              _ralPageToken
              _ralUserKey
              _ralMaxResults
              _ralCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy RoleAssignmentsListResource)
                      mempty
