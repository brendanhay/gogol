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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Approve
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.approvalRequests.approve@.
module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Approve
    (
    -- * REST Resource
      OrganizationsApprovalRequestsApproveResource

    -- * Creating a Request
    , organizationsApprovalRequestsApprove
    , OrganizationsApprovalRequestsApprove

    -- * Request Lenses
    , oaraXgafv
    , oaraUploadProtocol
    , oaraAccessToken
    , oaraUploadType
    , oaraPayload
    , oaraName
    , oaraCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.approvalRequests.approve@ method which the
-- 'OrganizationsApprovalRequestsApprove' request conforms to.
type OrganizationsApprovalRequestsApproveResource =
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
-- /See:/ 'organizationsApprovalRequestsApprove' smart constructor.
data OrganizationsApprovalRequestsApprove =
  OrganizationsApprovalRequestsApprove'
    { _oaraXgafv :: !(Maybe Xgafv)
    , _oaraUploadProtocol :: !(Maybe Text)
    , _oaraAccessToken :: !(Maybe Text)
    , _oaraUploadType :: !(Maybe Text)
    , _oaraPayload :: !ApproveApprovalRequestMessage
    , _oaraName :: !Text
    , _oaraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsApprovalRequestsApprove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaraXgafv'
--
-- * 'oaraUploadProtocol'
--
-- * 'oaraAccessToken'
--
-- * 'oaraUploadType'
--
-- * 'oaraPayload'
--
-- * 'oaraName'
--
-- * 'oaraCallback'
organizationsApprovalRequestsApprove
    :: ApproveApprovalRequestMessage -- ^ 'oaraPayload'
    -> Text -- ^ 'oaraName'
    -> OrganizationsApprovalRequestsApprove
organizationsApprovalRequestsApprove pOaraPayload_ pOaraName_ =
  OrganizationsApprovalRequestsApprove'
    { _oaraXgafv = Nothing
    , _oaraUploadProtocol = Nothing
    , _oaraAccessToken = Nothing
    , _oaraUploadType = Nothing
    , _oaraPayload = pOaraPayload_
    , _oaraName = pOaraName_
    , _oaraCallback = Nothing
    }


-- | V1 error format.
oaraXgafv :: Lens' OrganizationsApprovalRequestsApprove (Maybe Xgafv)
oaraXgafv
  = lens _oaraXgafv (\ s a -> s{_oaraXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oaraUploadProtocol :: Lens' OrganizationsApprovalRequestsApprove (Maybe Text)
oaraUploadProtocol
  = lens _oaraUploadProtocol
      (\ s a -> s{_oaraUploadProtocol = a})

-- | OAuth access token.
oaraAccessToken :: Lens' OrganizationsApprovalRequestsApprove (Maybe Text)
oaraAccessToken
  = lens _oaraAccessToken
      (\ s a -> s{_oaraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oaraUploadType :: Lens' OrganizationsApprovalRequestsApprove (Maybe Text)
oaraUploadType
  = lens _oaraUploadType
      (\ s a -> s{_oaraUploadType = a})

-- | Multipart request metadata.
oaraPayload :: Lens' OrganizationsApprovalRequestsApprove ApproveApprovalRequestMessage
oaraPayload
  = lens _oaraPayload (\ s a -> s{_oaraPayload = a})

-- | Name of the approval request to approve.
oaraName :: Lens' OrganizationsApprovalRequestsApprove Text
oaraName = lens _oaraName (\ s a -> s{_oaraName = a})

-- | JSONP
oaraCallback :: Lens' OrganizationsApprovalRequestsApprove (Maybe Text)
oaraCallback
  = lens _oaraCallback (\ s a -> s{_oaraCallback = a})

instance GoogleRequest
           OrganizationsApprovalRequestsApprove
         where
        type Rs OrganizationsApprovalRequestsApprove =
             ApprovalRequest
        type Scopes OrganizationsApprovalRequestsApprove =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsApprovalRequestsApprove'{..}
          = go _oaraName _oaraXgafv _oaraUploadProtocol
              _oaraAccessToken
              _oaraUploadType
              _oaraCallback
              (Just AltJSON)
              _oaraPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsApprovalRequestsApproveResource)
                      mempty
