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
-- Module      : Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Dismiss
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.organizations.approvalRequests.dismiss@.
module Network.Google.Resource.AccessApproval.Organizations.ApprovalRequests.Dismiss
    (
    -- * REST Resource
      OrganizationsApprovalRequestsDismissResource

    -- * Creating a Request
    , organizationsApprovalRequestsDismiss
    , OrganizationsApprovalRequestsDismiss

    -- * Request Lenses
    , oardXgafv
    , oardUploadProtocol
    , oardAccessToken
    , oardUploadType
    , oardPayload
    , oardName
    , oardCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.organizations.approvalRequests.dismiss@ method which the
-- 'OrganizationsApprovalRequestsDismiss' request conforms to.
type OrganizationsApprovalRequestsDismissResource =
     "v1" :>
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
-- /See:/ 'organizationsApprovalRequestsDismiss' smart constructor.
data OrganizationsApprovalRequestsDismiss =
  OrganizationsApprovalRequestsDismiss'
    { _oardXgafv :: !(Maybe Xgafv)
    , _oardUploadProtocol :: !(Maybe Text)
    , _oardAccessToken :: !(Maybe Text)
    , _oardUploadType :: !(Maybe Text)
    , _oardPayload :: !DismissApprovalRequestMessage
    , _oardName :: !Text
    , _oardCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsApprovalRequestsDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oardXgafv'
--
-- * 'oardUploadProtocol'
--
-- * 'oardAccessToken'
--
-- * 'oardUploadType'
--
-- * 'oardPayload'
--
-- * 'oardName'
--
-- * 'oardCallback'
organizationsApprovalRequestsDismiss
    :: DismissApprovalRequestMessage -- ^ 'oardPayload'
    -> Text -- ^ 'oardName'
    -> OrganizationsApprovalRequestsDismiss
organizationsApprovalRequestsDismiss pOardPayload_ pOardName_ =
  OrganizationsApprovalRequestsDismiss'
    { _oardXgafv = Nothing
    , _oardUploadProtocol = Nothing
    , _oardAccessToken = Nothing
    , _oardUploadType = Nothing
    , _oardPayload = pOardPayload_
    , _oardName = pOardName_
    , _oardCallback = Nothing
    }


-- | V1 error format.
oardXgafv :: Lens' OrganizationsApprovalRequestsDismiss (Maybe Xgafv)
oardXgafv
  = lens _oardXgafv (\ s a -> s{_oardXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oardUploadProtocol :: Lens' OrganizationsApprovalRequestsDismiss (Maybe Text)
oardUploadProtocol
  = lens _oardUploadProtocol
      (\ s a -> s{_oardUploadProtocol = a})

-- | OAuth access token.
oardAccessToken :: Lens' OrganizationsApprovalRequestsDismiss (Maybe Text)
oardAccessToken
  = lens _oardAccessToken
      (\ s a -> s{_oardAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oardUploadType :: Lens' OrganizationsApprovalRequestsDismiss (Maybe Text)
oardUploadType
  = lens _oardUploadType
      (\ s a -> s{_oardUploadType = a})

-- | Multipart request metadata.
oardPayload :: Lens' OrganizationsApprovalRequestsDismiss DismissApprovalRequestMessage
oardPayload
  = lens _oardPayload (\ s a -> s{_oardPayload = a})

-- | Name of the ApprovalRequest to dismiss.
oardName :: Lens' OrganizationsApprovalRequestsDismiss Text
oardName = lens _oardName (\ s a -> s{_oardName = a})

-- | JSONP
oardCallback :: Lens' OrganizationsApprovalRequestsDismiss (Maybe Text)
oardCallback
  = lens _oardCallback (\ s a -> s{_oardCallback = a})

instance GoogleRequest
           OrganizationsApprovalRequestsDismiss
         where
        type Rs OrganizationsApprovalRequestsDismiss =
             ApprovalRequest
        type Scopes OrganizationsApprovalRequestsDismiss =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsApprovalRequestsDismiss'{..}
          = go _oardName _oardXgafv _oardUploadProtocol
              _oardAccessToken
              _oardUploadType
              _oardCallback
              (Just AltJSON)
              _oardPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsApprovalRequestsDismissResource)
                      mempty
