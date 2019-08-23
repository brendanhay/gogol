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
-- Module      : Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.List
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.list@.
module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.List
    (
    -- * REST Resource
      FoldersApprovalRequestsListResource

    -- * Creating a Request
    , foldersApprovalRequestsList
    , FoldersApprovalRequestsList

    -- * Request Lenses
    , farlParent
    , farlXgafv
    , farlUploadProtocol
    , farlAccessToken
    , farlUploadType
    , farlFilter
    , farlPageToken
    , farlPageSize
    , farlCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.approvalRequests.list@ method which the
-- 'FoldersApprovalRequestsList' request conforms to.
type FoldersApprovalRequestsListResource =
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
-- /See:/ 'foldersApprovalRequestsList' smart constructor.
data FoldersApprovalRequestsList =
  FoldersApprovalRequestsList'
    { _farlParent         :: !Text
    , _farlXgafv          :: !(Maybe Xgafv)
    , _farlUploadProtocol :: !(Maybe Text)
    , _farlAccessToken    :: !(Maybe Text)
    , _farlUploadType     :: !(Maybe Text)
    , _farlFilter         :: !(Maybe Text)
    , _farlPageToken      :: !(Maybe Text)
    , _farlPageSize       :: !(Maybe (Textual Int32))
    , _farlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersApprovalRequestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'farlParent'
--
-- * 'farlXgafv'
--
-- * 'farlUploadProtocol'
--
-- * 'farlAccessToken'
--
-- * 'farlUploadType'
--
-- * 'farlFilter'
--
-- * 'farlPageToken'
--
-- * 'farlPageSize'
--
-- * 'farlCallback'
foldersApprovalRequestsList
    :: Text -- ^ 'farlParent'
    -> FoldersApprovalRequestsList
foldersApprovalRequestsList pFarlParent_ =
  FoldersApprovalRequestsList'
    { _farlParent = pFarlParent_
    , _farlXgafv = Nothing
    , _farlUploadProtocol = Nothing
    , _farlAccessToken = Nothing
    , _farlUploadType = Nothing
    , _farlFilter = Nothing
    , _farlPageToken = Nothing
    , _farlPageSize = Nothing
    , _farlCallback = Nothing
    }


-- | The parent resource. This may be \"projects\/{project_id}\",
-- \"folders\/{folder_id}\", or \"organizations\/{organization_id}\".
farlParent :: Lens' FoldersApprovalRequestsList Text
farlParent
  = lens _farlParent (\ s a -> s{_farlParent = a})

-- | V1 error format.
farlXgafv :: Lens' FoldersApprovalRequestsList (Maybe Xgafv)
farlXgafv
  = lens _farlXgafv (\ s a -> s{_farlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
farlUploadProtocol :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlUploadProtocol
  = lens _farlUploadProtocol
      (\ s a -> s{_farlUploadProtocol = a})

-- | OAuth access token.
farlAccessToken :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlAccessToken
  = lens _farlAccessToken
      (\ s a -> s{_farlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
farlUploadType :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlUploadType
  = lens _farlUploadType
      (\ s a -> s{_farlUploadType = a})

-- | A filter on the type of approval requests to retrieve. Must be one of
-- the following values:
--
-- 1.  [not set]: Requests that are pending or have active approvals.
-- 2.  ALL: All requests.
-- 3.  PENDING: Only pending requests.
-- 4.  ACTIVE: Only active (i.e. currently approved) requests.
-- 5.  DISMISSED: Only dismissed (including expired) requests.
farlFilter :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlFilter
  = lens _farlFilter (\ s a -> s{_farlFilter = a})

-- | A token identifying the page of results to return.
farlPageToken :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlPageToken
  = lens _farlPageToken
      (\ s a -> s{_farlPageToken = a})

-- | Requested page size.
farlPageSize :: Lens' FoldersApprovalRequestsList (Maybe Int32)
farlPageSize
  = lens _farlPageSize (\ s a -> s{_farlPageSize = a})
      . mapping _Coerce

-- | JSONP
farlCallback :: Lens' FoldersApprovalRequestsList (Maybe Text)
farlCallback
  = lens _farlCallback (\ s a -> s{_farlCallback = a})

instance GoogleRequest FoldersApprovalRequestsList
         where
        type Rs FoldersApprovalRequestsList =
             ListApprovalRequestsResponse
        type Scopes FoldersApprovalRequestsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersApprovalRequestsList'{..}
          = go _farlParent _farlXgafv _farlUploadProtocol
              _farlAccessToken
              _farlUploadType
              _farlFilter
              _farlPageToken
              _farlPageSize
              _farlCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersApprovalRequestsListResource)
                      mempty
