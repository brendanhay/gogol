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
-- Module      : Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an approval request. Returns NOT_FOUND if the request does not
-- exist.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.approvalRequests.get@.
module Network.Google.Resource.AccessApproval.Projects.ApprovalRequests.Get
    (
    -- * REST Resource
      ProjectsApprovalRequestsGetResource

    -- * Creating a Request
    , projectsApprovalRequestsGet
    , ProjectsApprovalRequestsGet

    -- * Request Lenses
    , pargXgafv
    , pargUploadProtocol
    , pargAccessToken
    , pargUploadType
    , pargName
    , pargCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.approvalRequests.get@ method which the
-- 'ProjectsApprovalRequestsGet' request conforms to.
type ProjectsApprovalRequestsGetResource =
     "v1" :>
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
-- /See:/ 'projectsApprovalRequestsGet' smart constructor.
data ProjectsApprovalRequestsGet =
  ProjectsApprovalRequestsGet'
    { _pargXgafv :: !(Maybe Xgafv)
    , _pargUploadProtocol :: !(Maybe Text)
    , _pargAccessToken :: !(Maybe Text)
    , _pargUploadType :: !(Maybe Text)
    , _pargName :: !Text
    , _pargCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsApprovalRequestsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pargXgafv'
--
-- * 'pargUploadProtocol'
--
-- * 'pargAccessToken'
--
-- * 'pargUploadType'
--
-- * 'pargName'
--
-- * 'pargCallback'
projectsApprovalRequestsGet
    :: Text -- ^ 'pargName'
    -> ProjectsApprovalRequestsGet
projectsApprovalRequestsGet pPargName_ =
  ProjectsApprovalRequestsGet'
    { _pargXgafv = Nothing
    , _pargUploadProtocol = Nothing
    , _pargAccessToken = Nothing
    , _pargUploadType = Nothing
    , _pargName = pPargName_
    , _pargCallback = Nothing
    }


-- | V1 error format.
pargXgafv :: Lens' ProjectsApprovalRequestsGet (Maybe Xgafv)
pargXgafv
  = lens _pargXgafv (\ s a -> s{_pargXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pargUploadProtocol :: Lens' ProjectsApprovalRequestsGet (Maybe Text)
pargUploadProtocol
  = lens _pargUploadProtocol
      (\ s a -> s{_pargUploadProtocol = a})

-- | OAuth access token.
pargAccessToken :: Lens' ProjectsApprovalRequestsGet (Maybe Text)
pargAccessToken
  = lens _pargAccessToken
      (\ s a -> s{_pargAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pargUploadType :: Lens' ProjectsApprovalRequestsGet (Maybe Text)
pargUploadType
  = lens _pargUploadType
      (\ s a -> s{_pargUploadType = a})

-- | Name of the approval request to retrieve.
pargName :: Lens' ProjectsApprovalRequestsGet Text
pargName = lens _pargName (\ s a -> s{_pargName = a})

-- | JSONP
pargCallback :: Lens' ProjectsApprovalRequestsGet (Maybe Text)
pargCallback
  = lens _pargCallback (\ s a -> s{_pargCallback = a})

instance GoogleRequest ProjectsApprovalRequestsGet
         where
        type Rs ProjectsApprovalRequestsGet = ApprovalRequest
        type Scopes ProjectsApprovalRequestsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsApprovalRequestsGet'{..}
          = go _pargName _pargXgafv _pargUploadProtocol
              _pargAccessToken
              _pargUploadType
              _pargCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsApprovalRequestsGetResource)
                      mempty
