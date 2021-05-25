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
-- Module      : Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Approve
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves a request and returns the updated ApprovalRequest. Returns
-- NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if
-- the request exists but is not in a pending state.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.approve@.
module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Approve
    (
    -- * REST Resource
      FoldersApprovalRequestsApproveResource

    -- * Creating a Request
    , foldersApprovalRequestsApprove
    , FoldersApprovalRequestsApprove

    -- * Request Lenses
    , faraXgafv
    , faraUploadProtocol
    , faraAccessToken
    , faraUploadType
    , faraPayload
    , faraName
    , faraCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.approvalRequests.approve@ method which the
-- 'FoldersApprovalRequestsApprove' request conforms to.
type FoldersApprovalRequestsApproveResource =
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
-- /See:/ 'foldersApprovalRequestsApprove' smart constructor.
data FoldersApprovalRequestsApprove =
  FoldersApprovalRequestsApprove'
    { _faraXgafv :: !(Maybe Xgafv)
    , _faraUploadProtocol :: !(Maybe Text)
    , _faraAccessToken :: !(Maybe Text)
    , _faraUploadType :: !(Maybe Text)
    , _faraPayload :: !ApproveApprovalRequestMessage
    , _faraName :: !Text
    , _faraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersApprovalRequestsApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faraXgafv'
--
-- * 'faraUploadProtocol'
--
-- * 'faraAccessToken'
--
-- * 'faraUploadType'
--
-- * 'faraPayload'
--
-- * 'faraName'
--
-- * 'faraCallback'
foldersApprovalRequestsApprove
    :: ApproveApprovalRequestMessage -- ^ 'faraPayload'
    -> Text -- ^ 'faraName'
    -> FoldersApprovalRequestsApprove
foldersApprovalRequestsApprove pFaraPayload_ pFaraName_ =
  FoldersApprovalRequestsApprove'
    { _faraXgafv = Nothing
    , _faraUploadProtocol = Nothing
    , _faraAccessToken = Nothing
    , _faraUploadType = Nothing
    , _faraPayload = pFaraPayload_
    , _faraName = pFaraName_
    , _faraCallback = Nothing
    }


-- | V1 error format.
faraXgafv :: Lens' FoldersApprovalRequestsApprove (Maybe Xgafv)
faraXgafv
  = lens _faraXgafv (\ s a -> s{_faraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faraUploadProtocol :: Lens' FoldersApprovalRequestsApprove (Maybe Text)
faraUploadProtocol
  = lens _faraUploadProtocol
      (\ s a -> s{_faraUploadProtocol = a})

-- | OAuth access token.
faraAccessToken :: Lens' FoldersApprovalRequestsApprove (Maybe Text)
faraAccessToken
  = lens _faraAccessToken
      (\ s a -> s{_faraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faraUploadType :: Lens' FoldersApprovalRequestsApprove (Maybe Text)
faraUploadType
  = lens _faraUploadType
      (\ s a -> s{_faraUploadType = a})

-- | Multipart request metadata.
faraPayload :: Lens' FoldersApprovalRequestsApprove ApproveApprovalRequestMessage
faraPayload
  = lens _faraPayload (\ s a -> s{_faraPayload = a})

-- | Name of the approval request to approve.
faraName :: Lens' FoldersApprovalRequestsApprove Text
faraName = lens _faraName (\ s a -> s{_faraName = a})

-- | JSONP
faraCallback :: Lens' FoldersApprovalRequestsApprove (Maybe Text)
faraCallback
  = lens _faraCallback (\ s a -> s{_faraCallback = a})

instance GoogleRequest FoldersApprovalRequestsApprove
         where
        type Rs FoldersApprovalRequestsApprove =
             ApprovalRequest
        type Scopes FoldersApprovalRequestsApprove =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersApprovalRequestsApprove'{..}
          = go _faraName _faraXgafv _faraUploadProtocol
              _faraAccessToken
              _faraUploadType
              _faraCallback
              (Just AltJSON)
              _faraPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersApprovalRequestsApproveResource)
                      mempty
