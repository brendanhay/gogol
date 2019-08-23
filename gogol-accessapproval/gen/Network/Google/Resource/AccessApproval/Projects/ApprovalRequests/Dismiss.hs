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
-- Module      : Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Dismiss
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dismisses a request. Returns the updated ApprovalRequest. NOTE: This
-- does not deny access to the resource if another request has been made
-- and approved. It is equivalent in effect to ignoring the request
-- altogether. Returns NOT_FOUND if the request does not exist. Returns
-- FAILED_PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.dismiss@.
module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Dismiss
    (
    -- * REST Resource
      ProjectsApprovalRequestsDismissResource

    -- * Creating a Request
    , projectsApprovalRequestsDismiss
    , ProjectsApprovalRequestsDismiss

    -- * Request Lenses
    , pardXgafv
    , pardUploadProtocol
    , pardAccessToken
    , pardUploadType
    , pardPayload
    , pardName
    , pardCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.approvalRequests.dismiss@ method which the
-- 'ProjectsApprovalRequestsDismiss' request conforms to.
type ProjectsApprovalRequestsDismissResource =
     "v1beta1" :>
       CaptureMode "name" "dismiss" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DismissApprovalRequestMessage :>
                       Post '[JSON] ApprovalRequest

-- | Dismisses a request. Returns the updated ApprovalRequest. NOTE: This
-- does not deny access to the resource if another request has been made
-- and approved. It is equivalent in effect to ignoring the request
-- altogether. Returns NOT_FOUND if the request does not exist. Returns
-- FAILED_PRECONDITION if the request exists but is not in a pending state.
--
-- /See:/ 'projectsApprovalRequestsDismiss' smart constructor.
data ProjectsApprovalRequestsDismiss =
  ProjectsApprovalRequestsDismiss'
    { _pardXgafv          :: !(Maybe Xgafv)
    , _pardUploadProtocol :: !(Maybe Text)
    , _pardAccessToken    :: !(Maybe Text)
    , _pardUploadType     :: !(Maybe Text)
    , _pardPayload        :: !DismissApprovalRequestMessage
    , _pardName           :: !Text
    , _pardCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsApprovalRequestsDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pardXgafv'
--
-- * 'pardUploadProtocol'
--
-- * 'pardAccessToken'
--
-- * 'pardUploadType'
--
-- * 'pardPayload'
--
-- * 'pardName'
--
-- * 'pardCallback'
projectsApprovalRequestsDismiss
    :: DismissApprovalRequestMessage -- ^ 'pardPayload'
    -> Text -- ^ 'pardName'
    -> ProjectsApprovalRequestsDismiss
projectsApprovalRequestsDismiss pPardPayload_ pPardName_ =
  ProjectsApprovalRequestsDismiss'
    { _pardXgafv = Nothing
    , _pardUploadProtocol = Nothing
    , _pardAccessToken = Nothing
    , _pardUploadType = Nothing
    , _pardPayload = pPardPayload_
    , _pardName = pPardName_
    , _pardCallback = Nothing
    }


-- | V1 error format.
pardXgafv :: Lens' ProjectsApprovalRequestsDismiss (Maybe Xgafv)
pardXgafv
  = lens _pardXgafv (\ s a -> s{_pardXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pardUploadProtocol :: Lens' ProjectsApprovalRequestsDismiss (Maybe Text)
pardUploadProtocol
  = lens _pardUploadProtocol
      (\ s a -> s{_pardUploadProtocol = a})

-- | OAuth access token.
pardAccessToken :: Lens' ProjectsApprovalRequestsDismiss (Maybe Text)
pardAccessToken
  = lens _pardAccessToken
      (\ s a -> s{_pardAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pardUploadType :: Lens' ProjectsApprovalRequestsDismiss (Maybe Text)
pardUploadType
  = lens _pardUploadType
      (\ s a -> s{_pardUploadType = a})

-- | Multipart request metadata.
pardPayload :: Lens' ProjectsApprovalRequestsDismiss DismissApprovalRequestMessage
pardPayload
  = lens _pardPayload (\ s a -> s{_pardPayload = a})

-- | Name of the ApprovalRequest to dismiss.
pardName :: Lens' ProjectsApprovalRequestsDismiss Text
pardName = lens _pardName (\ s a -> s{_pardName = a})

-- | JSONP
pardCallback :: Lens' ProjectsApprovalRequestsDismiss (Maybe Text)
pardCallback
  = lens _pardCallback (\ s a -> s{_pardCallback = a})

instance GoogleRequest
           ProjectsApprovalRequestsDismiss
         where
        type Rs ProjectsApprovalRequestsDismiss =
             ApprovalRequest
        type Scopes ProjectsApprovalRequestsDismiss =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsApprovalRequestsDismiss'{..}
          = go _pardName _pardXgafv _pardUploadProtocol
              _pardAccessToken
              _pardUploadType
              _pardCallback
              (Just AltJSON)
              _pardPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsApprovalRequestsDismissResource)
                      mempty
