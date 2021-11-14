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
-- Module      : Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Approve
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves a request and returns the updated ApprovalRequest. Returns
-- NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if
-- the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.approve@.
module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Approve
    (
    -- * REST Resource
      ProjectsApprovalRequestsApproveResource

    -- * Creating a Request
    , projectsApprovalRequestsApprove
    , ProjectsApprovalRequestsApprove

    -- * Request Lenses
    , paraXgafv
    , paraUploadProtocol
    , paraAccessToken
    , paraUploadType
    , paraPayload
    , paraName
    , paraCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.approvalRequests.approve@ method which the
-- 'ProjectsApprovalRequestsApprove' request conforms to.
type ProjectsApprovalRequestsApproveResource =
     "v1" :>
       CaptureMode "name" "approve" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ApproveApprovalRequestMessage :>
                       Post '[JSON] ApprovalRequest

-- | Approves a request and returns the updated ApprovalRequest. Returns
-- NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if
-- the request exists but is not in a pending state.
--
-- /See:/ 'projectsApprovalRequestsApprove' smart constructor.
data ProjectsApprovalRequestsApprove =
  ProjectsApprovalRequestsApprove'
    { _paraXgafv :: !(Maybe Xgafv)
    , _paraUploadProtocol :: !(Maybe Text)
    , _paraAccessToken :: !(Maybe Text)
    , _paraUploadType :: !(Maybe Text)
    , _paraPayload :: !ApproveApprovalRequestMessage
    , _paraName :: !Text
    , _paraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsApprovalRequestsApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paraXgafv'
--
-- * 'paraUploadProtocol'
--
-- * 'paraAccessToken'
--
-- * 'paraUploadType'
--
-- * 'paraPayload'
--
-- * 'paraName'
--
-- * 'paraCallback'
projectsApprovalRequestsApprove
    :: ApproveApprovalRequestMessage -- ^ 'paraPayload'
    -> Text -- ^ 'paraName'
    -> ProjectsApprovalRequestsApprove
projectsApprovalRequestsApprove pParaPayload_ pParaName_ =
  ProjectsApprovalRequestsApprove'
    { _paraXgafv = Nothing
    , _paraUploadProtocol = Nothing
    , _paraAccessToken = Nothing
    , _paraUploadType = Nothing
    , _paraPayload = pParaPayload_
    , _paraName = pParaName_
    , _paraCallback = Nothing
    }


-- | V1 error format.
paraXgafv :: Lens' ProjectsApprovalRequestsApprove (Maybe Xgafv)
paraXgafv
  = lens _paraXgafv (\ s a -> s{_paraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paraUploadProtocol :: Lens' ProjectsApprovalRequestsApprove (Maybe Text)
paraUploadProtocol
  = lens _paraUploadProtocol
      (\ s a -> s{_paraUploadProtocol = a})

-- | OAuth access token.
paraAccessToken :: Lens' ProjectsApprovalRequestsApprove (Maybe Text)
paraAccessToken
  = lens _paraAccessToken
      (\ s a -> s{_paraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paraUploadType :: Lens' ProjectsApprovalRequestsApprove (Maybe Text)
paraUploadType
  = lens _paraUploadType
      (\ s a -> s{_paraUploadType = a})

-- | Multipart request metadata.
paraPayload :: Lens' ProjectsApprovalRequestsApprove ApproveApprovalRequestMessage
paraPayload
  = lens _paraPayload (\ s a -> s{_paraPayload = a})

-- | Name of the approval request to approve.
paraName :: Lens' ProjectsApprovalRequestsApprove Text
paraName = lens _paraName (\ s a -> s{_paraName = a})

-- | JSONP
paraCallback :: Lens' ProjectsApprovalRequestsApprove (Maybe Text)
paraCallback
  = lens _paraCallback (\ s a -> s{_paraCallback = a})

instance GoogleRequest
           ProjectsApprovalRequestsApprove
         where
        type Rs ProjectsApprovalRequestsApprove =
             ApprovalRequest
        type Scopes ProjectsApprovalRequestsApprove =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsApprovalRequestsApprove'{..}
          = go _paraName _paraXgafv _paraUploadProtocol
              _paraAccessToken
              _paraUploadType
              _paraCallback
              (Just AltJSON)
              _paraPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsApprovalRequestsApproveResource)
                      mempty
