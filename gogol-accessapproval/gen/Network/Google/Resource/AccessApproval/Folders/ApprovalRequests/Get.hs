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
-- Module      : Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an approval request. Returns NOT_FOUND if the request does not
-- exist.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.folders.approvalRequests.get@.
module Network.Google.Resource.AccessApproval.Folders.ApprovalRequests.Get
    (
    -- * REST Resource
      FoldersApprovalRequestsGetResource

    -- * Creating a Request
    , foldersApprovalRequestsGet
    , FoldersApprovalRequestsGet

    -- * Request Lenses
    , fargXgafv
    , fargUploadProtocol
    , fargAccessToken
    , fargUploadType
    , fargName
    , fargCallback
    ) where

import           Network.Google.AccessApproval.Types
import           Network.Google.Prelude

-- | A resource alias for @accessapproval.folders.approvalRequests.get@ method which the
-- 'FoldersApprovalRequestsGet' request conforms to.
type FoldersApprovalRequestsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ApprovalRequest

-- | Gets an approval request. Returns NOT_FOUND if the request does not
-- exist.
--
-- /See:/ 'foldersApprovalRequestsGet' smart constructor.
data FoldersApprovalRequestsGet =
  FoldersApprovalRequestsGet'
    { _fargXgafv          :: !(Maybe Xgafv)
    , _fargUploadProtocol :: !(Maybe Text)
    , _fargAccessToken    :: !(Maybe Text)
    , _fargUploadType     :: !(Maybe Text)
    , _fargName           :: !Text
    , _fargCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersApprovalRequestsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fargXgafv'
--
-- * 'fargUploadProtocol'
--
-- * 'fargAccessToken'
--
-- * 'fargUploadType'
--
-- * 'fargName'
--
-- * 'fargCallback'
foldersApprovalRequestsGet
    :: Text -- ^ 'fargName'
    -> FoldersApprovalRequestsGet
foldersApprovalRequestsGet pFargName_ =
  FoldersApprovalRequestsGet'
    { _fargXgafv = Nothing
    , _fargUploadProtocol = Nothing
    , _fargAccessToken = Nothing
    , _fargUploadType = Nothing
    , _fargName = pFargName_
    , _fargCallback = Nothing
    }


-- | V1 error format.
fargXgafv :: Lens' FoldersApprovalRequestsGet (Maybe Xgafv)
fargXgafv
  = lens _fargXgafv (\ s a -> s{_fargXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fargUploadProtocol :: Lens' FoldersApprovalRequestsGet (Maybe Text)
fargUploadProtocol
  = lens _fargUploadProtocol
      (\ s a -> s{_fargUploadProtocol = a})

-- | OAuth access token.
fargAccessToken :: Lens' FoldersApprovalRequestsGet (Maybe Text)
fargAccessToken
  = lens _fargAccessToken
      (\ s a -> s{_fargAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fargUploadType :: Lens' FoldersApprovalRequestsGet (Maybe Text)
fargUploadType
  = lens _fargUploadType
      (\ s a -> s{_fargUploadType = a})

-- | Name of the approval request to retrieve.
fargName :: Lens' FoldersApprovalRequestsGet Text
fargName = lens _fargName (\ s a -> s{_fargName = a})

-- | JSONP
fargCallback :: Lens' FoldersApprovalRequestsGet (Maybe Text)
fargCallback
  = lens _fargCallback (\ s a -> s{_fargCallback = a})

instance GoogleRequest FoldersApprovalRequestsGet
         where
        type Rs FoldersApprovalRequestsGet = ApprovalRequest
        type Scopes FoldersApprovalRequestsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient FoldersApprovalRequestsGet'{..}
          = go _fargName _fargXgafv _fargUploadProtocol
              _fargAccessToken
              _fargUploadType
              _fargCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersApprovalRequestsGetResource)
                      mempty
