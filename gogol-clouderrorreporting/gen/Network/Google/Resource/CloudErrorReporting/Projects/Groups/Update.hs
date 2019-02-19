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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replace the data for the specified group. Fails if the group does not
-- exist.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Stackdriver Error Reporting API Reference> for @clouderrorreporting.projects.groups.update@.
module Network.Google.Resource.CloudErrorReporting.Projects.Groups.Update
    (
    -- * REST Resource
      ProjectsGroupsUpdateResource

    -- * Creating a Request
    , projectsGroupsUpdate
    , ProjectsGroupsUpdate

    -- * Request Lenses
    , pguXgafv
    , pguUploadProtocol
    , pguAccessToken
    , pguUploadType
    , pguPayload
    , pguName
    , pguCallback
    ) where

import           Network.Google.CloudErrorReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.groups.update@ method which the
-- 'ProjectsGroupsUpdate' request conforms to.
type ProjectsGroupsUpdateResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ErrorGroup :> Put '[JSON] ErrorGroup

-- | Replace the data for the specified group. Fails if the group does not
-- exist.
--
-- /See:/ 'projectsGroupsUpdate' smart constructor.
data ProjectsGroupsUpdate =
  ProjectsGroupsUpdate'
    { _pguXgafv          :: !(Maybe Xgafv)
    , _pguUploadProtocol :: !(Maybe Text)
    , _pguAccessToken    :: !(Maybe Text)
    , _pguUploadType     :: !(Maybe Text)
    , _pguPayload        :: !ErrorGroup
    , _pguName           :: !Text
    , _pguCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguXgafv'
--
-- * 'pguUploadProtocol'
--
-- * 'pguAccessToken'
--
-- * 'pguUploadType'
--
-- * 'pguPayload'
--
-- * 'pguName'
--
-- * 'pguCallback'
projectsGroupsUpdate
    :: ErrorGroup -- ^ 'pguPayload'
    -> Text -- ^ 'pguName'
    -> ProjectsGroupsUpdate
projectsGroupsUpdate pPguPayload_ pPguName_ =
  ProjectsGroupsUpdate'
    { _pguXgafv = Nothing
    , _pguUploadProtocol = Nothing
    , _pguAccessToken = Nothing
    , _pguUploadType = Nothing
    , _pguPayload = pPguPayload_
    , _pguName = pPguName_
    , _pguCallback = Nothing
    }

-- | V1 error format.
pguXgafv :: Lens' ProjectsGroupsUpdate (Maybe Xgafv)
pguXgafv = lens _pguXgafv (\ s a -> s{_pguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pguUploadProtocol :: Lens' ProjectsGroupsUpdate (Maybe Text)
pguUploadProtocol
  = lens _pguUploadProtocol
      (\ s a -> s{_pguUploadProtocol = a})

-- | OAuth access token.
pguAccessToken :: Lens' ProjectsGroupsUpdate (Maybe Text)
pguAccessToken
  = lens _pguAccessToken
      (\ s a -> s{_pguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pguUploadType :: Lens' ProjectsGroupsUpdate (Maybe Text)
pguUploadType
  = lens _pguUploadType
      (\ s a -> s{_pguUploadType = a})

-- | Multipart request metadata.
pguPayload :: Lens' ProjectsGroupsUpdate ErrorGroup
pguPayload
  = lens _pguPayload (\ s a -> s{_pguPayload = a})

-- | The group resource name. Example:
-- 'projects\/my-project-123\/groups\/my-groupid'
pguName :: Lens' ProjectsGroupsUpdate Text
pguName = lens _pguName (\ s a -> s{_pguName = a})

-- | JSONP
pguCallback :: Lens' ProjectsGroupsUpdate (Maybe Text)
pguCallback
  = lens _pguCallback (\ s a -> s{_pguCallback = a})

instance GoogleRequest ProjectsGroupsUpdate where
        type Rs ProjectsGroupsUpdate = ErrorGroup
        type Scopes ProjectsGroupsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGroupsUpdate'{..}
          = go _pguName _pguXgafv _pguUploadProtocol
              _pguAccessToken
              _pguUploadType
              _pguCallback
              (Just AltJSON)
              _pguPayload
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsUpdateResource)
                      mempty
