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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing group. You can change any group attributes except
-- name.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.update@.
module Network.Google.Resource.Monitoring.Projects.Groups.Update
    (
    -- * REST Resource
      ProjectsGroupsUpdateResource

    -- * Creating a Request
    , projectsGroupsUpdate
    , ProjectsGroupsUpdate

    -- * Request Lenses
    , pguXgafv
    , pguValidateOnly
    , pguUploadProtocol
    , pguAccessToken
    , pguUploadType
    , pguPayload
    , pguName
    , pguCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.update@ method which the
-- 'ProjectsGroupsUpdate' request conforms to.
type ProjectsGroupsUpdateResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "validateOnly" Bool :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Updates an existing group. You can change any group attributes except
-- name.
--
-- /See:/ 'projectsGroupsUpdate' smart constructor.
data ProjectsGroupsUpdate =
  ProjectsGroupsUpdate'
    { _pguXgafv :: !(Maybe Xgafv)
    , _pguValidateOnly :: !(Maybe Bool)
    , _pguUploadProtocol :: !(Maybe Text)
    , _pguAccessToken :: !(Maybe Text)
    , _pguUploadType :: !(Maybe Text)
    , _pguPayload :: !Group
    , _pguName :: !Text
    , _pguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguXgafv'
--
-- * 'pguValidateOnly'
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
    :: Group -- ^ 'pguPayload'
    -> Text -- ^ 'pguName'
    -> ProjectsGroupsUpdate
projectsGroupsUpdate pPguPayload_ pPguName_ =
  ProjectsGroupsUpdate'
    { _pguXgafv = Nothing
    , _pguValidateOnly = Nothing
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

-- | If true, validate this request but do not update the existing group.
pguValidateOnly :: Lens' ProjectsGroupsUpdate (Maybe Bool)
pguValidateOnly
  = lens _pguValidateOnly
      (\ s a -> s{_pguValidateOnly = a})

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
pguPayload :: Lens' ProjectsGroupsUpdate Group
pguPayload
  = lens _pguPayload (\ s a -> s{_pguPayload = a})

-- | Output only. The name of this group. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/groups\/[GROUP_ID] When creating a
-- group, this field is ignored and a new name is created consisting of the
-- project specified in the call to CreateGroup and a unique [GROUP_ID]
-- that is generated automatically.
pguName :: Lens' ProjectsGroupsUpdate Text
pguName = lens _pguName (\ s a -> s{_pguName = a})

-- | JSONP
pguCallback :: Lens' ProjectsGroupsUpdate (Maybe Text)
pguCallback
  = lens _pguCallback (\ s a -> s{_pguCallback = a})

instance GoogleRequest ProjectsGroupsUpdate where
        type Rs ProjectsGroupsUpdate = Group
        type Scopes ProjectsGroupsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsGroupsUpdate'{..}
          = go _pguName _pguXgafv _pguValidateOnly
              _pguUploadProtocol
              _pguAccessToken
              _pguUploadType
              _pguCallback
              (Just AltJSON)
              _pguPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsUpdateResource)
                      mempty
