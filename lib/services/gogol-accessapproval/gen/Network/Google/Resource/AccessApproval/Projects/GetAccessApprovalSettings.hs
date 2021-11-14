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
-- Module      : Network.Google.Resource.AccessApproval.Projects.GetAccessApprovalSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings associated with a project, folder, or organization.
--
-- /See:/ <https://cloud.google.com/access-approval/docs Access Approval API Reference> for @accessapproval.projects.getAccessApprovalSettings@.
module Network.Google.Resource.AccessApproval.Projects.GetAccessApprovalSettings
    (
    -- * REST Resource
      ProjectsGetAccessApprovalSettingsResource

    -- * Creating a Request
    , projectsGetAccessApprovalSettings
    , ProjectsGetAccessApprovalSettings

    -- * Request Lenses
    , pgaasXgafv
    , pgaasUploadProtocol
    , pgaasAccessToken
    , pgaasUploadType
    , pgaasName
    , pgaasCallback
    ) where

import Network.Google.AccessApproval.Types
import Network.Google.Prelude

-- | A resource alias for @accessapproval.projects.getAccessApprovalSettings@ method which the
-- 'ProjectsGetAccessApprovalSettings' request conforms to.
type ProjectsGetAccessApprovalSettingsResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccessApprovalSettings

-- | Gets the settings associated with a project, folder, or organization.
--
-- /See:/ 'projectsGetAccessApprovalSettings' smart constructor.
data ProjectsGetAccessApprovalSettings =
  ProjectsGetAccessApprovalSettings'
    { _pgaasXgafv :: !(Maybe Xgafv)
    , _pgaasUploadProtocol :: !(Maybe Text)
    , _pgaasAccessToken :: !(Maybe Text)
    , _pgaasUploadType :: !(Maybe Text)
    , _pgaasName :: !Text
    , _pgaasCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetAccessApprovalSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgaasXgafv'
--
-- * 'pgaasUploadProtocol'
--
-- * 'pgaasAccessToken'
--
-- * 'pgaasUploadType'
--
-- * 'pgaasName'
--
-- * 'pgaasCallback'
projectsGetAccessApprovalSettings
    :: Text -- ^ 'pgaasName'
    -> ProjectsGetAccessApprovalSettings
projectsGetAccessApprovalSettings pPgaasName_ =
  ProjectsGetAccessApprovalSettings'
    { _pgaasXgafv = Nothing
    , _pgaasUploadProtocol = Nothing
    , _pgaasAccessToken = Nothing
    , _pgaasUploadType = Nothing
    , _pgaasName = pPgaasName_
    , _pgaasCallback = Nothing
    }


-- | V1 error format.
pgaasXgafv :: Lens' ProjectsGetAccessApprovalSettings (Maybe Xgafv)
pgaasXgafv
  = lens _pgaasXgafv (\ s a -> s{_pgaasXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgaasUploadProtocol :: Lens' ProjectsGetAccessApprovalSettings (Maybe Text)
pgaasUploadProtocol
  = lens _pgaasUploadProtocol
      (\ s a -> s{_pgaasUploadProtocol = a})

-- | OAuth access token.
pgaasAccessToken :: Lens' ProjectsGetAccessApprovalSettings (Maybe Text)
pgaasAccessToken
  = lens _pgaasAccessToken
      (\ s a -> s{_pgaasAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgaasUploadType :: Lens' ProjectsGetAccessApprovalSettings (Maybe Text)
pgaasUploadType
  = lens _pgaasUploadType
      (\ s a -> s{_pgaasUploadType = a})

-- | Name of the AccessApprovalSettings to retrieve.
pgaasName :: Lens' ProjectsGetAccessApprovalSettings Text
pgaasName
  = lens _pgaasName (\ s a -> s{_pgaasName = a})

-- | JSONP
pgaasCallback :: Lens' ProjectsGetAccessApprovalSettings (Maybe Text)
pgaasCallback
  = lens _pgaasCallback
      (\ s a -> s{_pgaasCallback = a})

instance GoogleRequest
           ProjectsGetAccessApprovalSettings
         where
        type Rs ProjectsGetAccessApprovalSettings =
             AccessApprovalSettings
        type Scopes ProjectsGetAccessApprovalSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetAccessApprovalSettings'{..}
          = go _pgaasName _pgaasXgafv _pgaasUploadProtocol
              _pgaasAccessToken
              _pgaasUploadType
              _pgaasCallback
              (Just AltJSON)
              accessApprovalService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsGetAccessApprovalSettingsResource)
                      mempty
