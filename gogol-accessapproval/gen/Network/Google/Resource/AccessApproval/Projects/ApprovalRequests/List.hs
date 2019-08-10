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
-- Module      : Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.List
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.list@.
module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.List
    (
    -- * REST Resource
      ProjectsApprovalRequestsListResource

    -- * Creating a Request
    , projectsApprovalRequestsList
    , ProjectsApprovalRequestsList

    -- * Request Lenses
    , parlParent
    , parlXgafv
    , parlUploadProtocol
    , parlAccessToken
    , parlUploadType
    , parlFilter
    , parlPageToken
    , parlPageSize
    , parlCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.approvalRequests.list@ method which the
-- 'ProjectsApprovalRequestsList' request conforms to.
type ProjectsApprovalRequestsListResource =
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
-- /See:/ 'projectsApprovalRequestsList' smart constructor.
data ProjectsApprovalRequestsList =
  ProjectsApprovalRequestsList'
    { _parlParent         :: !Text
    , _parlXgafv          :: !(Maybe Xgafv)
    , _parlUploadProtocol :: !(Maybe Text)
    , _parlAccessToken    :: !(Maybe Text)
    , _parlUploadType     :: !(Maybe Text)
    , _parlFilter         :: !(Maybe Text)
    , _parlPageToken      :: !(Maybe Text)
    , _parlPageSize       :: !(Maybe (Textual Int32))
    , _parlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsApprovalRequestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parlParent'
--
-- * 'parlXgafv'
--
-- * 'parlUploadProtocol'
--
-- * 'parlAccessToken'
--
-- * 'parlUploadType'
--
-- * 'parlFilter'
--
-- * 'parlPageToken'
--
-- * 'parlPageSize'
--
-- * 'parlCallback'
projectsApprovalRequestsList
    :: Text -- ^ 'parlParent'
    -> ProjectsApprovalRequestsList
projectsApprovalRequestsList pParlParent_ =
  ProjectsApprovalRequestsList'
    { _parlParent = pParlParent_
    , _parlXgafv = Nothing
    , _parlUploadProtocol = Nothing
    , _parlAccessToken = Nothing
    , _parlUploadType = Nothing
    , _parlFilter = Nothing
    , _parlPageToken = Nothing
    , _parlPageSize = Nothing
    , _parlCallback = Nothing
    }


-- | The parent resource. This may be \"projects\/{project_id}\",
-- \"folders\/{folder_id}\", or \"organizations\/{organization_id}\".
parlParent :: Lens' ProjectsApprovalRequestsList Text
parlParent
  = lens _parlParent (\ s a -> s{_parlParent = a})

-- | V1 error format.
parlXgafv :: Lens' ProjectsApprovalRequestsList (Maybe Xgafv)
parlXgafv
  = lens _parlXgafv (\ s a -> s{_parlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
parlUploadProtocol :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlUploadProtocol
  = lens _parlUploadProtocol
      (\ s a -> s{_parlUploadProtocol = a})

-- | OAuth access token.
parlAccessToken :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlAccessToken
  = lens _parlAccessToken
      (\ s a -> s{_parlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
parlUploadType :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlUploadType
  = lens _parlUploadType
      (\ s a -> s{_parlUploadType = a})

-- | A filter on the type of approval requests to retrieve. Must be one of
-- the following values:
--
-- 1.  [not set]: Requests that are pending or have active approvals.
-- 2.  ALL: All requests.
-- 3.  PENDING: Only pending requests.
-- 4.  ACTIVE: Only active (i.e. currently approved) requests.
-- 5.  DISMISSED: Only dismissed (including expired) requests.
parlFilter :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlFilter
  = lens _parlFilter (\ s a -> s{_parlFilter = a})

-- | A token identifying the page of results to return.
parlPageToken :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlPageToken
  = lens _parlPageToken
      (\ s a -> s{_parlPageToken = a})

-- | Requested page size.
parlPageSize :: Lens' ProjectsApprovalRequestsList (Maybe Int32)
parlPageSize
  = lens _parlPageSize (\ s a -> s{_parlPageSize = a})
      . mapping _Coerce

-- | JSONP
parlCallback :: Lens' ProjectsApprovalRequestsList (Maybe Text)
parlCallback
  = lens _parlCallback (\ s a -> s{_parlCallback = a})

instance GoogleRequest ProjectsApprovalRequestsList
         where
        type Rs ProjectsApprovalRequestsList =
             ListApprovalRequestsResponse
        type Scopes ProjectsApprovalRequestsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsApprovalRequestsList'{..}
          = go _parlParent _parlXgafv _parlUploadProtocol
              _parlAccessToken
              _parlUploadType
              _parlFilter
              _parlPageToken
              _parlPageSize
              _parlCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsApprovalRequestsListResource)
                      mempty
