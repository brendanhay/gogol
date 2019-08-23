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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists approval requests associated with a project, folder, or
-- organization. Approval requests can be filtered by state (pending,
-- active, dismissed). The order is reverse chronological.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.approvalRequests.list@.
module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.List
    (
    -- * REST Resource
      OrganizationsApprovalRequestsListResource

    -- * Creating a Request
    , organizationsApprovalRequestsList
    , OrganizationsApprovalRequestsList

    -- * Request Lenses
    , oarlParent
    , oarlXgafv
    , oarlUploadProtocol
    , oarlAccessToken
    , oarlUploadType
    , oarlFilter
    , oarlPageToken
    , oarlPageSize
    , oarlCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.approvalRequests.list@ method which the
-- 'OrganizationsApprovalRequestsList' request conforms to.
type OrganizationsApprovalRequestsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "approvalRequests" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListApprovalRequestsResponse

-- | Lists approval requests associated with a project, folder, or
-- organization. Approval requests can be filtered by state (pending,
-- active, dismissed). The order is reverse chronological.
--
-- /See:/ 'organizationsApprovalRequestsList' smart constructor.
data OrganizationsApprovalRequestsList =
  OrganizationsApprovalRequestsList'
    { _oarlParent         :: !Text
    , _oarlXgafv          :: !(Maybe Xgafv)
    , _oarlUploadProtocol :: !(Maybe Text)
    , _oarlAccessToken    :: !(Maybe Text)
    , _oarlUploadType     :: !(Maybe Text)
    , _oarlFilter         :: !(Maybe Text)
    , _oarlPageToken      :: !(Maybe Text)
    , _oarlPageSize       :: !(Maybe (Textual Int32))
    , _oarlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsApprovalRequestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarlParent'
--
-- * 'oarlXgafv'
--
-- * 'oarlUploadProtocol'
--
-- * 'oarlAccessToken'
--
-- * 'oarlUploadType'
--
-- * 'oarlFilter'
--
-- * 'oarlPageToken'
--
-- * 'oarlPageSize'
--
-- * 'oarlCallback'
organizationsApprovalRequestsList
    :: Text -- ^ 'oarlParent'
    -> OrganizationsApprovalRequestsList
organizationsApprovalRequestsList pOarlParent_ =
  OrganizationsApprovalRequestsList'
    { _oarlParent = pOarlParent_
    , _oarlXgafv = Nothing
    , _oarlUploadProtocol = Nothing
    , _oarlAccessToken = Nothing
    , _oarlUploadType = Nothing
    , _oarlFilter = Nothing
    , _oarlPageToken = Nothing
    , _oarlPageSize = Nothing
    , _oarlCallback = Nothing
    }


-- | The parent resource. This may be \"projects\/{project_id}\",
-- \"folders\/{folder_id}\", or \"organizations\/{organization_id}\".
oarlParent :: Lens' OrganizationsApprovalRequestsList Text
oarlParent
  = lens _oarlParent (\ s a -> s{_oarlParent = a})

-- | V1 error format.
oarlXgafv :: Lens' OrganizationsApprovalRequestsList (Maybe Xgafv)
oarlXgafv
  = lens _oarlXgafv (\ s a -> s{_oarlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oarlUploadProtocol :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlUploadProtocol
  = lens _oarlUploadProtocol
      (\ s a -> s{_oarlUploadProtocol = a})

-- | OAuth access token.
oarlAccessToken :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlAccessToken
  = lens _oarlAccessToken
      (\ s a -> s{_oarlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oarlUploadType :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlUploadType
  = lens _oarlUploadType
      (\ s a -> s{_oarlUploadType = a})

-- | A filter on the type of approval requests to retrieve. Must be one of
-- the following values:
--
-- 1.  [not set]: Requests that are pending or have active approvals.
-- 2.  ALL: All requests.
-- 3.  PENDING: Only pending requests.
-- 4.  ACTIVE: Only active (i.e. currently approved) requests.
-- 5.  DISMISSED: Only dismissed (including expired) requests.
oarlFilter :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlFilter
  = lens _oarlFilter (\ s a -> s{_oarlFilter = a})

-- | A token identifying the page of results to return.
oarlPageToken :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlPageToken
  = lens _oarlPageToken
      (\ s a -> s{_oarlPageToken = a})

-- | Requested page size.
oarlPageSize :: Lens' OrganizationsApprovalRequestsList (Maybe Int32)
oarlPageSize
  = lens _oarlPageSize (\ s a -> s{_oarlPageSize = a})
      . mapping _Coerce

-- | JSONP
oarlCallback :: Lens' OrganizationsApprovalRequestsList (Maybe Text)
oarlCallback
  = lens _oarlCallback (\ s a -> s{_oarlCallback = a})

instance GoogleRequest
           OrganizationsApprovalRequestsList
         where
        type Rs OrganizationsApprovalRequestsList =
             ListApprovalRequestsResponse
        type Scopes OrganizationsApprovalRequestsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsApprovalRequestsList'{..}
          = go _oarlParent _oarlXgafv _oarlUploadProtocol
              _oarlAccessToken
              _oarlUploadType
              _oarlFilter
              _oarlPageToken
              _oarlPageSize
              _oarlCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsApprovalRequestsListResource)
                      mempty
