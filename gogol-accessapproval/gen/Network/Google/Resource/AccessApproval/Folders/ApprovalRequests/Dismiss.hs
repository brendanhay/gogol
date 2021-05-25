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
-- Module      : Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Dismiss
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
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.dismiss@.
module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Dismiss
    (
    -- * REST Resource
      FoldersApprovalRequestsDismissResource

    -- * Creating a Request
    , foldersApprovalRequestsDismiss
    , FoldersApprovalRequestsDismiss

    -- * Request Lenses
    , fardXgafv
    , fardUploadProtocol
    , fardAccessToken
    , fardUploadType
    , fardPayload
    , fardName
    , fardCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.approvalRequests.dismiss@ method which the
-- 'FoldersApprovalRequestsDismiss' request conforms to.
type FoldersApprovalRequestsDismissResource =
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
-- /See:/ 'foldersApprovalRequestsDismiss' smart constructor.
data FoldersApprovalRequestsDismiss =
  FoldersApprovalRequestsDismiss'
    { _fardXgafv :: !(Maybe Xgafv)
    , _fardUploadProtocol :: !(Maybe Text)
    , _fardAccessToken :: !(Maybe Text)
    , _fardUploadType :: !(Maybe Text)
    , _fardPayload :: !DismissApprovalRequestMessage
    , _fardName :: !Text
    , _fardCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersApprovalRequestsDismiss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fardXgafv'
--
-- * 'fardUploadProtocol'
--
-- * 'fardAccessToken'
--
-- * 'fardUploadType'
--
-- * 'fardPayload'
--
-- * 'fardName'
--
-- * 'fardCallback'
foldersApprovalRequestsDismiss
    :: DismissApprovalRequestMessage -- ^ 'fardPayload'
    -> Text -- ^ 'fardName'
    -> FoldersApprovalRequestsDismiss
foldersApprovalRequestsDismiss pFardPayload_ pFardName_ =
  FoldersApprovalRequestsDismiss'
    { _fardXgafv = Nothing
    , _fardUploadProtocol = Nothing
    , _fardAccessToken = Nothing
    , _fardUploadType = Nothing
    , _fardPayload = pFardPayload_
    , _fardName = pFardName_
    , _fardCallback = Nothing
    }


-- | V1 error format.
fardXgafv :: Lens' FoldersApprovalRequestsDismiss (Maybe Xgafv)
fardXgafv
  = lens _fardXgafv (\ s a -> s{_fardXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fardUploadProtocol :: Lens' FoldersApprovalRequestsDismiss (Maybe Text)
fardUploadProtocol
  = lens _fardUploadProtocol
      (\ s a -> s{_fardUploadProtocol = a})

-- | OAuth access token.
fardAccessToken :: Lens' FoldersApprovalRequestsDismiss (Maybe Text)
fardAccessToken
  = lens _fardAccessToken
      (\ s a -> s{_fardAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fardUploadType :: Lens' FoldersApprovalRequestsDismiss (Maybe Text)
fardUploadType
  = lens _fardUploadType
      (\ s a -> s{_fardUploadType = a})

-- | Multipart request metadata.
fardPayload :: Lens' FoldersApprovalRequestsDismiss DismissApprovalRequestMessage
fardPayload
  = lens _fardPayload (\ s a -> s{_fardPayload = a})

-- | Name of the ApprovalRequest to dismiss.
fardName :: Lens' FoldersApprovalRequestsDismiss Text
fardName = lens _fardName (\ s a -> s{_fardName = a})

-- | JSONP
fardCallback :: Lens' FoldersApprovalRequestsDismiss (Maybe Text)
fardCallback
  = lens _fardCallback (\ s a -> s{_fardCallback = a})

instance GoogleRequest FoldersApprovalRequestsDismiss
         where
        type Rs FoldersApprovalRequestsDismiss =
             ApprovalRequest
        type Scopes FoldersApprovalRequestsDismiss =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersApprovalRequestsDismiss'{..}
          = go _fardName _fardXgafv _fardUploadProtocol
              _fardAccessToken
              _fardUploadType
              _fardCallback
              (Just AltJSON)
              _fardPayload
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FoldersApprovalRequestsDismissResource)
                      mempty
