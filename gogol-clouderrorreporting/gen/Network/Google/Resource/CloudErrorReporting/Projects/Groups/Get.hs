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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.Groups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified group.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.groups.get@.
module Network.Google.Resource.CloudErrorReporting.Projects.Groups.Get
    (
    -- * REST Resource
      ProjectsGroupsGetResource

    -- * Creating a Request
    , projectsGroupsGet
    , ProjectsGroupsGet

    -- * Request Lenses
    , pggXgafv
    , pggUploadProtocol
    , pggAccessToken
    , pggUploadType
    , pggGroupName
    , pggCallback
    ) where

import Network.Google.CloudErrorReporting.Types
import Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.groups.get@ method which the
-- 'ProjectsGroupsGet' request conforms to.
type ProjectsGroupsGetResource =
     "v1beta1" :>
       Capture "groupName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ErrorGroup

-- | Get the specified group.
--
-- /See:/ 'projectsGroupsGet' smart constructor.
data ProjectsGroupsGet =
  ProjectsGroupsGet'
    { _pggXgafv :: !(Maybe Xgafv)
    , _pggUploadProtocol :: !(Maybe Text)
    , _pggAccessToken :: !(Maybe Text)
    , _pggUploadType :: !(Maybe Text)
    , _pggGroupName :: !Text
    , _pggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggXgafv'
--
-- * 'pggUploadProtocol'
--
-- * 'pggAccessToken'
--
-- * 'pggUploadType'
--
-- * 'pggGroupName'
--
-- * 'pggCallback'
projectsGroupsGet
    :: Text -- ^ 'pggGroupName'
    -> ProjectsGroupsGet
projectsGroupsGet pPggGroupName_ =
  ProjectsGroupsGet'
    { _pggXgafv = Nothing
    , _pggUploadProtocol = Nothing
    , _pggAccessToken = Nothing
    , _pggUploadType = Nothing
    , _pggGroupName = pPggGroupName_
    , _pggCallback = Nothing
    }


-- | V1 error format.
pggXgafv :: Lens' ProjectsGroupsGet (Maybe Xgafv)
pggXgafv = lens _pggXgafv (\ s a -> s{_pggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pggUploadProtocol :: Lens' ProjectsGroupsGet (Maybe Text)
pggUploadProtocol
  = lens _pggUploadProtocol
      (\ s a -> s{_pggUploadProtocol = a})

-- | OAuth access token.
pggAccessToken :: Lens' ProjectsGroupsGet (Maybe Text)
pggAccessToken
  = lens _pggAccessToken
      (\ s a -> s{_pggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pggUploadType :: Lens' ProjectsGroupsGet (Maybe Text)
pggUploadType
  = lens _pggUploadType
      (\ s a -> s{_pggUploadType = a})

-- | Required. The group resource name. Written as
-- \`projects\/{projectID}\/groups\/{group_name}\`. Call
-- [\`groupStats.list\`](https:\/\/cloud.google.com\/error-reporting\/reference\/rest\/v1beta1\/projects.groupStats\/list)
-- to return a list of groups belonging to this project. Example:
-- \`projects\/my-project-123\/groups\/my-group\`
pggGroupName :: Lens' ProjectsGroupsGet Text
pggGroupName
  = lens _pggGroupName (\ s a -> s{_pggGroupName = a})

-- | JSONP
pggCallback :: Lens' ProjectsGroupsGet (Maybe Text)
pggCallback
  = lens _pggCallback (\ s a -> s{_pggCallback = a})

instance GoogleRequest ProjectsGroupsGet where
        type Rs ProjectsGroupsGet = ErrorGroup
        type Scopes ProjectsGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGroupsGet'{..}
          = go _pggGroupName _pggXgafv _pggUploadProtocol
              _pggAccessToken
              _pggUploadType
              _pggCallback
              (Just AltJSON)
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsGetResource)
                      mempty
